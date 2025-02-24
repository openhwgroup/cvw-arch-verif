///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-slt.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.496683
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x2273402a40698be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc854275cb8c35498 # initialize rs1
li x2, 0x51767c1d529b7179 # initialize rs2
slt x0, x6, x2 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x259d167f93ae33e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5df95642f0362f3c # initialize rs1
li x17, 0xfbe7529118234af8 # initialize rs2
slt x1, x8, x17 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x27d4d23c9f4647ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6fc9d5ecad670e3b # initialize rs1
li x6, 0xa37ae9c62026e69d # initialize rs2
slt x2, x17, x6 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x06ab0c617869ec3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa6e0960db5048527 # initialize rs1
li x24, 0x949dbaadf63eb809 # initialize rs2
slt x3, x13, x24 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x4d98b91db159f498 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8e5f5840ad61dcce # initialize rs1
li x11, 0xca4c80cdf612bae4 # initialize rs2
slt x4, x22, x11 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xadc29eb0fed3edb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x061c41e86ac5c1fc # initialize rs1
li x7, 0x372cda2363e35a33 # initialize rs2
slt x5, x26, x7 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xd992d0b25c399627 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb31d17a2bed32ab9 # initialize rs1
li x5, 0x791b1f1608c598ea # initialize rs2
slt x6, x16, x5 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xbac75d0a9fda5f76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x095d1e74682ade3f # initialize rs1
li x19, 0xf607ba38e0daf040 # initialize rs2
slt x7, x18, x19 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x9f1dbb58c2b6cd72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd461b7be9537b435 # initialize rs1
li x12, 0x947c5b3076b7da0a # initialize rs2
slt x8, x28, x12 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x8d7a42e5b43ed132 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xdc544f0be3a9eb8f # initialize rs1
li x26, 0x72a418104c2390ce # initialize rs2
slt x9, x20, x26 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xc097b9e1a308057a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x172302f8ef1fd7ff # initialize rs1
li x25, 0x5b0420f5a9892404 # initialize rs2
slt x10, x19, x25 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x43c6ccf95ce5bf13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x598f42459e6d9b33 # initialize rs1
li x11, 0xc4e29b2875bb00ab # initialize rs2
slt x11, x26, x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x5d0956cf380c9913 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x72331cf2b7ed99b8 # initialize rs1
li x7, 0xfd95a2523a433055 # initialize rs2
slt x12, x3, x7 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x300233436a39c2f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfd2d5c63777a7a01 # initialize rs1
li x21, 0x8fd449b264469c6d # initialize rs2
slt x13, x27, x21 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xaec99d3a808b9b27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7a2a552c742e4e31 # initialize rs1
li x23, 0x362f6620c87ca257 # initialize rs2
slt x14, x21, x23 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xcf57476907f409f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8a53f5b97d10669b # initialize rs1
li x10, 0xb56e65a360f64b0e # initialize rs2
slt x15, x11, x10 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x171bcf454ce9b949 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb398cdb2267b5a9d # initialize rs1
li x7, 0x2175e2a47a9edffc # initialize rs2
slt x16, x17, x7 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x7cf503329ad0b20a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3404915770b64e37 # initialize rs1
li x13, 0xf48f4bba432f1a06 # initialize rs2
slt x17, x21, x13 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xa15304a886223c56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x892aa6669e9f75c9 # initialize rs1
li x27, 0x540b74ef6a55d46e # initialize rs2
slt x18, x9, x27 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x836e1e8da11c9d82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1402c645e3dd5e92 # initialize rs1
li x25, 0x8271b9d4e66ec34d # initialize rs2
slt x19, x8, x25 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xfbe5134dedc3bc1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc4b62b263c3a652e # initialize rs1
li x13, 0x203c84a042778705 # initialize rs2
slt x20, x1, x13 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x5779c0f81c653cd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3d2d0560bf9a7169 # initialize rs1
li x5, 0x648f251b9a2b06a9 # initialize rs2
slt x21, x6, x5 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x8089a7b0e2d01128 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf84401819f7f9ea7 # initialize rs1
li x31, 0xff51db5cb7939ba6 # initialize rs2
slt x22, x16, x31 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xba9af8fd6ef2aa59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x919ad654e83c438d # initialize rs1
li x2, 0x13be6aaa0dc36d33 # initialize rs2
slt x23, x19, x2 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x878a2a9667ec4027 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x83957488553ae1c2 # initialize rs1
li x31, 0x9f6f418569253e45 # initialize rs2
slt x24, x8, x31 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x082ac26b097c5a30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3a35114fb8ed6f97 # initialize rs1
li x23, 0x8dd82303a82e0f06 # initialize rs2
slt x25, x30, x23 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xa89fcf8d7907dc7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa5c51a473f1ee8bb # initialize rs1
li x31, 0x3e46814afd539aab # initialize rs2
slt x26, x15, x31 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xd6cf5fb0a685cc1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x15f78354743ed868 # initialize rs1
li x16, 0x57df2d3ba0ab5b6b # initialize rs2
slt x27, x25, x16 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xb29044094adf2c29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x53cd5539d1c355e9 # initialize rs1
li x21, 0x7d172fb5c5401777 # initialize rs2
slt x28, x7, x21 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xa89f2afd871fb729 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0f1d7884d3d4f51d # initialize rs1
li x15, 0xac00d2a8bf3b87f1 # initialize rs2
slt x29, x17, x15 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xd904a182f795072d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xff6ab2067265e82b # initialize rs1
li x5, 0xf779d3771e5ee0ce # initialize rs2
slt x30, x27, x5 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xd028776c129cce09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x07ea6c1dafbe837e # initialize rs1
li x25, 0xe62035182e174756 # initialize rs2
slt x31, x19, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x20, 0x257ee38b82937992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xf656c0f6aaf2390c # initialize rs1
li x17, 0x5c819fe86540b963 # initialize rs2
slt x20, x0, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x5, 0xaff8a7a784559198 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x48190461c7b0e0f9 # initialize rs1
li x25, 0xe82706c225f19630 # initialize rs2
slt x5, x1, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x9, 0xcad57933d6b9417d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x56d59d4984ef39c9 # initialize rs1
li x7, 0xd787875d540dc642 # initialize rs2
slt x9, x2, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x19, 0xa37e133ac5427a4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x337b55f4836db0f6 # initialize rs1
li x1, 0x81312e21cf9fb1ba # initialize rs2
slt x19, x3, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x25, 0xe0a631042aa3f570 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfe21c2eb8990cf28 # initialize rs1
li x16, 0xbbbd8455141d344a # initialize rs2
slt x25, x4, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x4, 0x15d476c7c693e8cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x806672ca5046829e # initialize rs1
li x15, 0xa19ec1a0be1e25fc # initialize rs2
slt x4, x5, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x20, 0xa3257d65febd17d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x78f23df20f0265e0 # initialize rs1
li x7, 0x9316b63cf6e814db # initialize rs2
slt x20, x6, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x14, 0x92d541f94929f22b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe1164edd5b9b5e96 # initialize rs1
li x22, 0xabd413077a316b2f # initialize rs2
slt x14, x7, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x17, 0xe4bcd8afb0068944 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x56887ddac25c6be8 # initialize rs1
li x25, 0x4f555afed5072309 # initialize rs2
slt x17, x8, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x15, 0x71e032c3df06f984 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x471f620a010ca7fe # initialize rs1
li x11, 0xc76ab317d0aa8a37 # initialize rs2
slt x15, x9, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0x41c7527d55534a32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8b3f5cf2dae27bef # initialize rs1
li x26, 0x58445ce999c105e2 # initialize rs2
slt x15, x10, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x27, 0x2b2e957959b1c081 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0e05eec352b5a7c8 # initialize rs1
li x7, 0x6c7124c249c014b9 # initialize rs2
slt x27, x11, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x10, 0xc115109bb9b24d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8189257e6a3c7b5b # initialize rs1
li x15, 0x64d33085ff6d9154 # initialize rs2
slt x10, x12, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x18, 0xc1363a1fe7c28ede # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe70469b0986f90f3 # initialize rs1
li x27, 0xb1385a954bc6a0d0 # initialize rs2
slt x18, x13, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0xb5cea5085a72c60a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7a13c5c4124eaf3a # initialize rs1
li x29, 0x731c3cf2e6c14d8f # initialize rs2
slt x9, x14, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x3, 0x1ac80dce4b8c4ff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8c71817f7df53c94 # initialize rs1
li x1, 0xdb2cc78891951fab # initialize rs2
slt x3, x15, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x15, 0x704d55fee0a3c05e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc6273e51f3956273 # initialize rs1
li x27, 0x4951ac5f93b3760a # initialize rs2
slt x15, x16, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x9, 0x3a861d81cd704bc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xbdb1a019b5ea4afa # initialize rs1
li x23, 0x382458a8f76441f2 # initialize rs2
slt x9, x17, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x31, 0xd460b16680453ad1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x88ede3e3e75ac8e5 # initialize rs1
li x6, 0x01bd59d108b383eb # initialize rs2
slt x31, x18, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x16, 0x6799a624cd16a92b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc946b42837964a88 # initialize rs1
li x9, 0x2a51f27c28aa3de1 # initialize rs2
slt x16, x19, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x6, 0xd1e9e58fc0d843f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x47788a6b2130323c # initialize rs1
li x8, 0xc729465cfebf0fa1 # initialize rs2
slt x6, x20, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x29, 0x462e2fd9b807a0de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x73e09608722d071f # initialize rs1
li x20, 0x1ca81ff49b533ee3 # initialize rs2
slt x29, x21, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x27, 0xb3c027ee091a12e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x226fa330cbaf233d # initialize rs1
li x3, 0x96c457bbaeab0fc9 # initialize rs2
slt x27, x22, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x2, 0xbc498240a9646190 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x6e8462391c1ac72c # initialize rs1
li x19, 0x64a3cf6d2bb1428e # initialize rs2
slt x2, x23, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x21, 0x4343a264a0e3b545 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x35a36ff506872c1a # initialize rs1
li x2, 0x5d2c9547419ca13a # initialize rs2
slt x21, x24, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x29, 0x8ed2f43ba0964ba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7a426e5ba3a3923a # initialize rs1
li x2, 0x9d70a68e5ce109c3 # initialize rs2
slt x29, x25, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x7, 0x36bc40fd1cd528bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4db24d85002b9239 # initialize rs1
li x19, 0x64f8cf60d405614e # initialize rs2
slt x7, x26, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x30, 0x5007b57fbb272a25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x89649dcc22c05e43 # initialize rs1
li x8, 0xdd4892a406109999 # initialize rs2
slt x30, x27, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x30, 0xbdf892b74cbc7873 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x504f63086ae810a9 # initialize rs1
li x23, 0x898a4c1918b802a7 # initialize rs2
slt x30, x28, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x22, 0xac468ae1cbedbe8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd5306e8996b76a36 # initialize rs1
li x6, 0xbd855490c57d9d86 # initialize rs2
slt x22, x29, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x14, 0x36bc4c4171d149dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe26234b240c3d07d # initialize rs1
li x8, 0xbfc25c5a12201fed # initialize rs2
slt x14, x30, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x3, 0x4eb156e96e104495 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x965ec82bc5b35053 # initialize rs1
li x16, 0xb60166b2c3c5dbae # initialize rs2
slt x3, x31, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x5, 0xa067279496db853d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2df324d8421954ce # initialize rs1
li x0, 0xfc89fb562820970b # initialize rs2
slt x5, x12, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x19, 0x73dc0d8614742482 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf894f4df4d9e4804 # initialize rs1
li x1, 0x800d9e4f131ae1f6 # initialize rs2
slt x19, x11, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x30, 0x0819b74489cfb8ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe0de4d8436c14c2f # initialize rs1
li x2, 0x38924e3273a97c41 # initialize rs2
slt x30, x7, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x20, 0xbf854e3b630a7e34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1a991379771a04ab # initialize rs1
li x3, 0xe5449ca2d24b4824 # initialize rs2
slt x20, x4, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x3, 0xeed7df1c39c0dae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xcaeab2c5408da3d8 # initialize rs1
li x4, 0x305be9565abb7aa8 # initialize rs2
slt x3, x25, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x17, 0x51ae207e4fee1ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5f7c960ab5cb323e # initialize rs1
li x5, 0x241608d2b84df220 # initialize rs2
slt x17, x2, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x8, 0x43c331d00b7f7295 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x922184997fe1ac58 # initialize rs1
li x6, 0x8c4482c4814bc5cc # initialize rs2
slt x8, x27, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x29, 0x80c9c4d0342d983a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x05779e1ee172281c # initialize rs1
li x7, 0x06aa5eb6fa0fba60 # initialize rs2
slt x29, x17, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x13, 0xe741a50be155f216 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x068b476d8ddafea0 # initialize rs1
li x8, 0x4fe8659ead7d3b14 # initialize rs2
slt x13, x16, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x1, 0xaf4257a15c33c2e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe257b5bbf4a0d1be # initialize rs1
li x9, 0xeb78ca6da40e3101 # initialize rs2
slt x1, x15, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x7, 0x64c98c5add595dee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x46678e8640c14a48 # initialize rs1
li x10, 0x412e6c205d6b0296 # initialize rs2
slt x7, x6, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x5, 0x5e133abe743d565e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1243d9a5ee92efd7 # initialize rs1
li x11, 0x0dacf32a04c77751 # initialize rs2
slt x5, x26, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x20, 0x3c02729c876014c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc0cb9a6a8b3ae7ce # initialize rs1
li x12, 0x4fe164d28caf1f8d # initialize rs2
slt x20, x29, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x17, 0x54159997f26892b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xdf04a39426f154d2 # initialize rs1
li x13, 0x89e10fa8b0196a83 # initialize rs2
slt x17, x12, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x17, 0x823d33d3450b4618 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xee41649692b187a1 # initialize rs1
li x14, 0xd8c36da96e46d77d # initialize rs2
slt x17, x22, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x28, 0xd4b96cedcc1c5f93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x3fd30b3001e1ea64 # initialize rs1
li x15, 0x663690ef4dfa3da1 # initialize rs2
slt x28, x25, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x27, 0x25a2f113764a97de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb748cf0240d60d98 # initialize rs1
li x16, 0x8f4f2bfb0e9da57f # initialize rs2
slt x27, x2, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x16, 0x19112ebaead2c4f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x10a3fd33ea2d17c3 # initialize rs1
li x17, 0x2bcb565cfede7180 # initialize rs2
slt x16, x21, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x26, 0x8cb70c1e687cad72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x48ba2191b71bf72e # initialize rs1
li x18, 0x73200cf7537fb6ff # initialize rs2
slt x26, x21, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x5, 0x508e885ba239eefa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x854c01cecf4a553d # initialize rs1
li x19, 0xde79e60ca12760d2 # initialize rs2
slt x5, x29, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x5, 0xab97dfbb7eb8bd50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb506e7fece2fadb0 # initialize rs1
li x20, 0xd95c1f313e684d1f # initialize rs2
slt x5, x17, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x2, 0x646bba93cb65d302 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0eae49f3925f994b # initialize rs1
li x21, 0x72b81c9e2772a56d # initialize rs2
slt x2, x24, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x15, 0xb7ab85b3abbbba3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xade2725a8ea00077 # initialize rs1
li x22, 0x0f8dd1777c76d171 # initialize rs2
slt x15, x31, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x7, 0x475f0fba554c5f9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xed84f9305d257842 # initialize rs1
li x23, 0x97293d223e4cc75b # initialize rs2
slt x7, x4, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x15, 0x2ee0b7060a0a8bf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd03dded83eb49b92 # initialize rs1
li x24, 0x681e16f045eb604f # initialize rs2
slt x15, x27, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x22, 0xd827a5310642bb37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xba15d974d11ef572 # initialize rs1
li x25, 0x9d8a03df78f4c68d # initialize rs2
slt x22, x19, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x13, 0x5456e48694497671 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x10d53b663986c01e # initialize rs1
li x26, 0x16008e9f9dc74a76 # initialize rs2
slt x13, x20, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x10, 0xe117875c05f45b54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xafb817db767daa63 # initialize rs1
li x27, 0xeb8aed3543702e11 # initialize rs2
slt x10, x5, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x4, 0xa8eb5e78d7d8ec43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc4649daf667465db # initialize rs1
li x28, 0xe4e25792706d5504 # initialize rs2
slt x4, x14, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x25, 0x555c0dbe530ab37b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf67e18b5e038f3d0 # initialize rs1
li x29, 0xc9a3ccc20cfc651f # initialize rs2
slt x25, x27, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x19, 0xd21b962d37947dca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa2c59b722b5adcfb # initialize rs1
li x30, 0x45a1186eb300a6c7 # initialize rs2
slt x19, x6, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x12, 0x3f08d6412456e812 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8171c88f8d3ca5ef # initialize rs1
li x31, 0x99647cfadb6e8961 # initialize rs2
slt x12, x23, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x40eac0752261485d)
li x26, 0xbe226721e062a158 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xbe226721e062a158 # initialize rs1
li x0, 0x387793b9514664a4 # initialize rs2
slt x26, x23, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x499631fb74a6d2a0)
li x19, 0x499631fb74a6d2a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x499631fb74a6d2a0 # initialize rs1
li x25, 0x499631fb74a6d2a0 # initialize rs2
slt x19, x0, x25 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xc26b46850574025e)
li x13, 0xbf8cf52b17a4b33d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc26b46850574025e # initialize rs1
li x31, 0xc26b46850574025e # initialize rs2
slt x13, x20, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x22, 0x59dc05438eadb6a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs1
li x25, 0x9bdcafe948f4ca47 # initialize rs2
slt x22, x8, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x6, 0xda33ddaab8c8d02b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs1
li x17, 0x7da24a8f27ef9aef # initialize rs2
slt x6, x11, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x3a1cbbec8e990e42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x20, 0x86c5dd2407ccf2be # initialize rs2
slt x11, x13, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x28, 0x26b91f9edf0c132a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000000 # initialize rs1
li x13, 0xbfcd0d54e99633d1 # initialize rs2
slt x28, x20, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x16, 0x165ac2cb5b1ec083 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x29, 0xc3b4ff8404e4ac28 # initialize rs2
slt x16, x13, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x16, 0x76d833ff0ddb0471 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
li x9, 0xe3d845a75d10f00e # initialize rs2
slt x16, x25, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x20, 0xf3ffd66c1506fa79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
li x7, 0xe2897fc047a738f0 # initialize rs2
slt x20, x18, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x17, 0x6c484273f9a52d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x31, 0x228c089f63813045 # initialize rs2
slt x17, x16, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x9, 0xcdea63a72e909e45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffffffffffe # initialize rs1
li x17, 0x08c6cd1de9e6f991 # initialize rs2
slt x9, x5, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x4, 0xd3377b694ffcaddb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0xd1ad41323baa3a81 # initialize rs2
slt x4, x25, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x23, 0xebd000565c2f000b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x541c18be2819b41d # initialize rs2
slt x23, x14, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x17, 0xee392b71c105d0a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
li x2, 0xe8813c4e72bac93c # initialize rs2
slt x17, x12, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x27, 0xb3050e8831a77472 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs1
li x12, 0x70cd68b1a02c2d38 # initialize rs2
slt x27, x5, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x22, 0x6d67e394d7f28625 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs1
li x14, 0x544a1bad4c19e69d # initialize rs2
slt x22, x3, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x27, 0xf6423116b9ab0cce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000000 # initialize rs1
li x4, 0xf29261cdb9967760 # initialize rs2
slt x27, x29, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x11, 0x1cb71da488febdc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000001 # initialize rs1
li x21, 0xdb2652dc4ee1d25d # initialize rs2
slt x11, x28, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0xa7115f9f49a1fb4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6d692804b73a486e # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
slt x20, x3, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x19, 0x01c85995eae61892 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x123bc09e0ce43f25 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
slt x19, x28, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x2, 0x27c9643a940d05e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa134f643603eaaaa # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
slt x2, x19, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x24, 0xa1e1783336b1b812 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5a3aebbffb2b3e54 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
slt x24, x26, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x5, 0x6010e4bd1276c34a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x29843f5354ed9d44 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
slt x5, x27, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x16, 0xa2680f329a064f8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5d7ad78f5b26577f # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
slt x16, x23, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x3, 0xdad12963839e8d38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x56e95b42c112cdb8 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
slt x3, x25, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x2, 0x0877213050b68053 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6817b22969c702de # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
slt x2, x8, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x18, 0xa1bf56e1e211e12f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfedf11de5862fcd2 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
slt x18, x13, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x25, 0x54d72d4783a65f44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf0ea054f33a5124a # initialize rs1
li x5, 0x5bbc887763ae86f7 # initialize rs2
slt x25, x16, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x31, 0xcce870f599d09dd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x75e5f6b531d96159 # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x31, x11, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x1, 0xd461f87c65e1c1e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe92b318af733d3ac # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
slt x1, x7, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x21, 0xc749e97bcb38c090 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1722d9b23683ac62 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
slt x21, x10, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0xa3e84f8fb479f2f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x375658ea9ac0188f # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
slt x19, x4, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x7, 0x2d00729e309c3928 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x02f41d5064ab465e # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
slt x7, x26, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x12, 0xf38e20f2f0399be2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa34d9fccd6025558 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
slt x12, x22, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x18, 0x5a87a08568c7eebc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
slt x18, x1, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x24, 0xafc27477732b5c90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
slt x24, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x27, 0xfc2854ded6a0e547 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
slt x27, x11, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x22, 0x5d0cf2f577233737 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
slt x22, x11, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x21, 0xb5ed82939fb42169 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
slt x21, x27, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x21, 0x34cffebe95d79fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
slt x21, x10, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x31, 0x339ad1a7b80cbade # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
slt x31, x27, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x1, 0xe0c396da1661ebfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
slt x1, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x26, 0x300c0f226888720f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
slt x26, x17, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x1, 0xb02cd5a1a406c49d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
slt x1, x25, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x2c8b4860e4c23847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x23, x14, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x4, 0x1c424161b3115408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
slt x4, x18, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x4, 0x77d673bc5a074824 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
slt x4, x17, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x5, 0x0a49808a6e668128 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
slt x5, x8, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x26, 0x8f0cae109cba80aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
slt x26, x6, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x24, 0x55447a79c5d8b948 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
slt x24, x8, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x5, 0xc727069365770acf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
slt x5, x9, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x4, 0x7e20a69d6c3bbf58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
slt x4, x15, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x9, 0x996229fb2736689f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
slt x9, x8, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x6, 0x3fb74eb9f513dda5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
slt x6, x29, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x9, 0x398ee3f20360e545 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
slt x9, x19, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x2, 0xabaabf090facc64c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
slt x2, x8, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x2, 0x3eb0e4554002092c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
slt x2, x9, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x24, 0x4dfb698f0a3114db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000001 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
slt x24, x20, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x25, 0x0eb359ec5eebdf6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000001 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
slt x25, x28, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x28, 0xf44277a47e8f5edf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
slt x28, x21, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x7de5897ccd8dccff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000001 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x12, x7, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x16, 0xf8b0ac934770c0c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
slt x16, x1, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x26, 0x164864dc50194eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
slt x26, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x30, 0x43b406f01addd069 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
slt x30, x14, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x2, 0x22f13daba194b0ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000001 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
slt x2, x25, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x25, 0xea498f2d932b3180 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
slt x25, x21, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x13, 0x860402092348bddc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
slt x13, x4, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x10, 0xc50e7c178995ba2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
slt x10, x2, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x25, 0xf8b8ea4b07057987 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
slt x25, x20, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x28, 0x8ddf3c4c477ea474 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
slt x28, x1, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x3, 0x5852316538fc5b46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000002 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
slt x3, x10, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x21, 0x90a269fe139241b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
slt x21, x30, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x27, 0xc49c9ac7400e5ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
slt x27, x20, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x9, 0xa0237731fef29b22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
slt x9, x25, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x1, 0x9784e555cffc8b0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
slt x1, x14, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x9, 0xee15e2107d7ba7c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
slt x9, x30, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x86f1f7a7117d731e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x1, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x4, 0x5bf8c85931ee941a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
slt x4, x2, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x4, 0x4fccb5660cf1facc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
slt x4, x21, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x3, 0x4502306bb10cce7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
slt x3, x13, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x10, 0xf44ae3c165ba0402 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
slt x10, x2, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x2, 0x810797167ba1c760 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
slt x2, x27, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x9, 0x98e083e98c51690b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
slt x9, x27, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x22, 0xaf4669a1d0ae94f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
slt x22, x8, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x10, 0xf1d2431d35a556c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
slt x10, x29, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x16, 0xb4f90407adc36222 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
slt x16, x25, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x8, 0x9f61a2676c45dce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
slt x8, x9, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x10, 0xa60c7e086cec84d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
slt x10, x27, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x10, 0xe26dc2ddb10a91d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
slt x10, x27, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x22, 0xa0078295f05750c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
slt x22, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x3, 0xc97215696b0bcd33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
slt x3, x22, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x30, 0x9196a3b00a992efb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
slt x30, x27, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0xabb5ee6f5a753d11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x8, x26, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x24, 0x084b2022f0021a7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
slt x24, x23, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x2, 0x99b9fef5be58270e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000000 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
slt x2, x5, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x8, 0xcd101fda215215c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000000 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
slt x8, x7, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x7, 0xc6bf571fa9a99520 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000000 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
slt x7, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x2, 0x794795172a83a692 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
slt x2, x30, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x16, 0xf438af943c96d333 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
slt x16, x20, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x25, 0x9732d51800c8d4e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
slt x25, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x13, 0x2e73f3086ad1ac0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
slt x13, x19, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x9, 0x48646e15f4a1cb74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000001 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
slt x9, x30, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x19, 0x82880523966a2210 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
slt x19, x17, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x3, 0x670267fd36e27518 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
slt x3, x20, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x31, 0x675b2c8ae69f8aae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
slt x31, x18, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x19, 0xd384c19af54a7b14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000001 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
slt x19, x9, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x1, 0x91ad87c3303be188 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000001 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
slt x1, x8, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x29, 0xe54850316fa7dd08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000001 # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
slt x29, x19, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0xfb3dbe5290e2ab63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x8, x29, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x19, 0x4e5031e9558a0f4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
slt x19, x18, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x27, 0xdccc6abbcf2be87b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
slt x27, x11, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x10, 0xb7413af4b44fb2cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
slt x10, x11, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x29, 0xb2d694f55bc9c6c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
slt x29, x28, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x26, 0x7b2b760f489805b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
slt x26, x4, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x20, 0x95a682010de27adb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
slt x20, x31, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x31, 0x1fd4754a955656dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
slt x31, x4, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x4, 0x31c33a0db0229fa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
slt x4, x15, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x20, 0x5c347f611bab46af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
slt x20, x18, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x24, 0xa0dec398a8102662 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffffffffffff # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
slt x24, x17, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x26, 0xdebc5fd7678a6464 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
slt x26, x17, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0x38b1efafd1971614 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
slt x27, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x29, 0x29d343180f5fadd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
slt x29, x17, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x22, 0x4a0d4b23941a4aa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffffffffffff # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
slt x22, x19, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x7, 0xd68e74d82cfdd265 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
slt x7, x4, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x27fe5eb8aa170933 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x18, x2, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x9, 0x085f9a538f5ab71a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
slt x9, x24, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x29, 0x983d7b80cbc93266 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
slt x29, x2, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x16, 0x984fefaccee8c6f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
slt x16, x18, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x4, 0xb68b6161346bc59e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
slt x4, x19, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x21, 0x0ff03cfdcd5bf91e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
slt x21, x10, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x13, 0x8d2914bfabcfcec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
slt x13, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x3, 0xadf0ac6e36b2b192 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
slt x3, x10, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x24, 0x25856cea247d8253 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
slt x24, x5, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x6, 0xa645c98c99ae16ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
slt x6, x3, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x8, 0x1f74ea890f92e9e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffffffffffe # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
slt x8, x21, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x9, 0xbc7942505fcc13d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffffffffffe # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
slt x9, x4, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x5, 0xf3bbe03ba5dea17b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
slt x5, x22, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x24, 0x4b6bac7ca37f5fb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
slt x24, x29, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x13, 0x4ff396a72650746b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
slt x13, x16, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x12, 0x10c7532351093cf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
slt x12, x2, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x1e0739e19d3d6d3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffffffffffe # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x13, x19, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x17, 0xdd219040473da790 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
slt x17, x11, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x27, 0x100712f88edf6282 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffffffffffe # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
slt x27, x21, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x31, 0x2debe9268845e0ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffffffffffe # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
slt x31, x26, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x13, 0x83db86bf0dba69a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
slt x13, x30, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x28, 0x17a45745a1e20dd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
slt x28, x12, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x25, 0xcb561a404aab5cfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
slt x25, x14, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x9, 0xd2cc81148a523bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
slt x9, x11, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x7, 0x31185a815209aafa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
slt x7, x9, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x29, 0xa1e4ee81c2e04018 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
slt x29, x5, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x28, 0xc39a1b13527226e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
slt x28, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x2, 0xcdff35f88942463a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
slt x2, x10, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x4, 0x995d03067b894f00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
slt x4, x21, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x12, 0x247529779f069d46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
slt x12, x13, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x9, 0xa31c8609009af21d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
slt x9, x11, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x31, 0xe254823bec2e2167 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
slt x31, x7, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0xdd95940b57787532 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x16, x20, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x4, 0xff6a784335fd491f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
slt x4, x9, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x28, 0xa7c6737d0ecb1f88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
slt x28, x6, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x18, 0x4821f6cd2eabed88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
slt x18, x19, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x22, 0x5c1b5583b1965c83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
slt x22, x30, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x29, 0x2844415c404ca0d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
slt x29, x18, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x6, 0x5d3b8e5169e8ffeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
slt x6, x16, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x15, 0x48e0a2ef39b12c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
slt x15, x26, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x15, 0xf285b165ddb105eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
slt x15, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0xd48ff3540870e684 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
slt x29, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x26, 0x1bc36b48e973ea40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
slt x26, x27, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x6, 0xec60b2bae6f8ea83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
slt x6, x8, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x6, 0xc77d96d3035845b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
slt x6, x22, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x13, 0xa3d751a6202cccb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffffffffffe # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
slt x13, x21, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x21, 0x59d52316f0bf2074 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
slt x21, x15, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x15, 0x7e641b492a37cf4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
slt x15, x3, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x2981b612d7ae1bf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffffffffffe # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x31, x1, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x30, 0x52f3bbfb32d19d00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
slt x30, x9, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x8, 0x6ccf4c0f4abfa289 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
slt x8, x20, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x30, 0x0040c67cc5204cf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
slt x30, x20, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x28, 0x296f5f28cb102fb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
slt x28, x21, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x25, 0xf1868db0cfbfd8a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
slt x25, x8, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x8, 0xed9d2036bf57b3fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
slt x8, x19, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x16, 0x981cab9b20ade696 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
slt x16, x6, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x23, 0x0d8f717a53118dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
slt x23, x20, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x25, 0x358890db8698c34b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
slt x25, x21, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x20, 0xb9537541bbfed754 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
slt x20, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x25, 0x26fbfb7f40cc6035 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
slt x25, x13, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x26, 0x068be8269ce07272 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
slt x26, x27, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x19, 0x7f1b92ef79d89b75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
slt x19, x8, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x9, 0x5f8bfc220080e0fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
slt x9, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x4, 0xfd1e36f213d71fd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
slt x4, x13, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xb0e1eccfaf9b3439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x5, x31, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x4, 0x53bc1c0dc6b2009d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
slt x4, x21, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x18, 0x21a8054d114da06a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
slt x18, x2, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x21, 0xdecc47c1b93df5e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
slt x21, x16, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x12, 0xe9c628d49eb66d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
slt x12, x21, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x24, 0xa030821bfe96563d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
slt x24, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x30, 0xf8d4a07f8a9981ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
slt x30, x7, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x6, 0x675e297843a370be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
slt x6, x28, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x20, 0x26265012adc9aa95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
slt x20, x21, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x13, 0xf350d1a3325a6021 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
slt x13, x29, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x10, 0xe1c1e8b86f25a0b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
slt x10, x1, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x1, 0xd5f1bf2b67102951 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
slt x1, x7, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x14, 0x16d4ac027dd38ff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
slt x14, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x21, 0x0a6ad68e277d8c42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
slt x21, x20, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x11, 0xa0f1f4d42b70db15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
slt x11, x28, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x17, 0x89cb800692bbc5fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
slt x17, x11, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0xce432abae6701de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x26, x5, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x16, 0xfb7b9c2defae5806 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
slt x16, x11, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x20, 0xa40d1cad3f937feb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
slt x20, x1, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x28, 0xe31e40ac240e80de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
slt x28, x20, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x13, 0x1337b5231fe137bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
slt x13, x12, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x13, 0x8e9f4eb077ac3a46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
slt x13, x18, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x15, 0x2e805c6384e84e8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
slt x15, x20, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x13, 0xcd86064171297a56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5555555555555555 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
slt x13, x19, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x28, 0xb045b8d7eca31622 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
slt x28, x25, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x30, 0xbfc1aa1067fccfec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
slt x30, x24, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x15, 0xb68657cc9b6351e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
slt x15, x24, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x12, 0xdc343b424edffc1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
slt x12, x23, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x27, 0x0b844560d6656ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
slt x27, x8, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x21, 0xfdeb062ed31cb07f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
slt x21, x4, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x8, 0x3640d72bf8fdc3e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
slt x8, x10, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x10, 0xb22cbbd38a3c14f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5555555555555555 # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
slt x10, x19, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x902932a2c0666605 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x11, x10, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x20, 0xbd2320bda20e7164 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
slt x20, x14, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x27, 0x4215cc089bd2c7c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
slt x27, x22, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x7, 0xfbc0f27db0c7ba80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
slt x7, x13, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x27, 0xde59e5eb17f2696a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
slt x27, x10, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x3, 0x442ebf9a8cdb55aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
slt x3, x20, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x11, 0x35a8d34d7e83db5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
slt x11, x25, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x2, 0x376362189159ad62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
slt x2, x4, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x18, 0xb6ff945e90e67a7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
slt x18, x21, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x23, 0xd7a076ba8fd50860 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
slt x23, x3, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x14, 0xdf9f8f5b76e23e15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
slt x14, x19, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x15, 0xe1918cbde58cf548 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
slt x15, x27, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x11, 0xf37f5a372e8fc574 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
slt x11, x10, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x24, 0xe48eca25bc81452b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000ffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
slt x24, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x20, 0xe2aa89b06f8f9614 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
slt x20, x14, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x30, 0x9f69f960ad2a85f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000ffffffff # initialize rs1
li x4, 0x5bbc887763ae86f7 # initialize rs2
slt x30, x2, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x3550912d1dbcdd48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x17, x14, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x14, 0xb23655142822df74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
slt x14, x31, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x28, 0x31dbf28629171cff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
slt x28, x31, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x20, 0xb1267c8bb91d6dcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
slt x20, x23, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x14, 0x56a796b1cdac0010 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
slt x14, x4, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x3, 0xd616299bf3fafbc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
slt x3, x9, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x10, 0x7c084455368907c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
slt x10, x5, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x4, 0x9ba5469a349a60db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
slt x4, x30, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x24, 0x2b2a0da1eb5a0fb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
slt x24, x27, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x13, 0x619ca77183526914 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
slt x13, x11, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x3, 0xc22209381cb48336 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
slt x3, x10, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x18, 0xcc0ab932dc06158e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
slt x18, x2, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x31, 0xa489b27ac44e152c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
slt x31, x25, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x9, 0xba12690e90008cd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000fffffffe # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
slt x9, x30, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x27, 0x82fee2cb9bd62fde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
slt x27, x29, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x29, 0x922873665dee1de0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
slt x29, x14, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x5940cb4fbe53e4c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x27, x19, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x7, 0x397677ffbe6d4da2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000fffffffe # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
slt x7, x8, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x27, 0x987efe4d74451ce8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
slt x27, x21, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x8, 0x573838bc07733815 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
slt x8, x22, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x16, 0xbc635a989d1f6f7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
slt x16, x7, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x2, 0xd72d89f13ebd4c7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
slt x2, x17, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x23, 0xed889107c5dc5bcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
slt x23, x29, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x16, 0x10e1c71a03f5b6c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000000 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
slt x16, x3, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x1, 0x6bc252d050f3c79d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
slt x1, x31, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x15, 0xe1ca9d56f7132b93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
slt x15, x17, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x10, 0xe50012a215f70fb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
slt x10, x31, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x29, 0xb9d9b81064bd755d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
slt x29, x15, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x12, 0x5cace01688d45bf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000000 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
slt x12, x29, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x5, 0x492135ce210cebda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000000 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
slt x5, x29, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x10, 0x60024a65f4086c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
slt x10, x1, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x15, 0x4a2a3da945a28c22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000000 # initialize rs1
li x4, 0x5bbc887763ae86f7 # initialize rs2
slt x15, x3, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x044e01815887c326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000000 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x22, x17, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x22, 0x164d0f3ce326abb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000000 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
slt x22, x28, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x15, 0x129669f3f8673ef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
slt x15, x1, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x22, 0xbd69c546b0ca3499 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
slt x22, x14, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x13, 0xb9b7ea47313b83a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
slt x13, x31, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x16, 0xbc0f9f6d4320d26f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000000 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
slt x16, x26, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x11, 0x4f203cf915343011 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
slt x11, x19, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x1, 0xc3e9d3784faaf4d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
slt x1, x27, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x14, 0xdae1322a2365c472 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
slt x14, x19, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x30, 0x4f239c52fa7c82e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000001 # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
slt x30, x28, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x12, 0x6a1c8d479dbe1dbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
slt x12, x14, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x31, 0x4ec1718a45479fa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000001 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
slt x31, x16, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x29, 0x0871d1654b21032c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000001 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
slt x29, x26, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x31, 0x4d63f28ce9e6dd6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000001 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
slt x31, x16, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x30, 0xd737704a8970b427 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
slt x30, x29, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x18, 0x87ef080452db4bcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs1
li x8, 0x5bbc887763ae86f7 # initialize rs2
slt x18, x7, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x5556bf6301fd50d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x31, x23, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x1, 0x6e6ff34810508a90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
slt x1, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x22, 0x3533e8c0c5e21f95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
slt x22, x19, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x24, 0x34355f2c13bf781d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000001 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
slt x24, x13, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x10, 0x07e3b5e83da0a343 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000001 # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
slt x10, x31, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x20, 0x9b6c912ef905ce17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
slt x20, x13, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa5524493042e4ddd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xbd47eed323e1c799 # initialize rs1
li x4, 0x17c443c405b0d90c # initialize rs2
slt x0, x0, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x5bea6e9b502c0eed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffd5c842c11f3d28 # initialize rs1
li x25, 0xd483b99035f86d60 # initialize rs2
slt x1, x1, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xe81970a618371d8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6ef958753e60656e # initialize rs1
li x20, 0xe87d9a08c5bdb2fe # initialize rs2
slt x2, x2, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xa5d20d9d365713fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf43a9d21c539f456 # initialize rs1
li x10, 0x898d044a770091cb # initialize rs2
slt x3, x3, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xf8359010397026bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x87d36ec552e81ae1 # initialize rs1
li x22, 0x149e66af4e7f7a2e # initialize rs2
slt x4, x4, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xb740227552457613 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0c4bc02aea483faa # initialize rs1
li x6, 0xb9ce12edff7a75ac # initialize rs2
slt x5, x5, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x60c4ef4d049e2a20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4915f94975801301 # initialize rs1
li x19, 0x1e8a95504c30b3a0 # initialize rs2
slt x6, x6, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x4890fb31380f30b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2bc86e5e99901a08 # initialize rs1
li x6, 0x3688ce3ba0c06456 # initialize rs2
slt x7, x7, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xc9a36cbcf73192e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb4d7a5056a60f3b3 # initialize rs1
li x30, 0x5d364cccbf2af7d8 # initialize rs2
slt x8, x8, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x86ca8f66961a6dcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa1b193f4ac3d87b3 # initialize rs1
li x20, 0x433c9f0ff090b4b1 # initialize rs2
slt x9, x9, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x9ebba0487fab4f6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x54a8075fdfeefd50 # initialize rs1
li x27, 0xef78bc106ac14708 # initialize rs2
slt x10, x10, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x3387df946b5b41de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x65a0cad2e69127cb # initialize rs1
li x1, 0xc2afa0e66bdd60af # initialize rs2
slt x11, x11, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x245536d55d503bdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x07e6aa7a135bd601 # initialize rs1
li x11, 0x0a74d8d002ba6b1d # initialize rs2
slt x12, x12, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x6cbebba5576e1c4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2b00d63bcf723008 # initialize rs1
li x25, 0x82754bd20b3999f2 # initialize rs2
slt x13, x13, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x77118e86a9f59bfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8cdfa829cfc370c6 # initialize rs1
li x13, 0x0a3846f6637de193 # initialize rs2
slt x14, x14, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x0a783c5e80dda57b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9fc2c425dc1869ba # initialize rs1
li x6, 0xaf5ebed926da1cfd # initialize rs2
slt x15, x15, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x85f1a38c266c1ba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3f7ae2ed4251629e # initialize rs1
li x16, 0x0e122541ccdd5383 # initialize rs2
slt x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x913bdb9d9eac809f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd2d0b4b47ded5e4a # initialize rs1
li x10, 0x7f71af83c013512a # initialize rs2
slt x17, x17, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x1da3145c3c781b91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x09a37aa135ece9e3 # initialize rs1
li x23, 0xf3c58248328def4c # initialize rs2
slt x18, x18, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x3c1f6a16c0c3f8d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6556374d70cf7bb3 # initialize rs1
li x30, 0x89bb14e5e6152ae2 # initialize rs2
slt x19, x19, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xb45ebf4a6e48dbd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x674ad7cfb9114773 # initialize rs1
li x10, 0xd6b216c5ac997a65 # initialize rs2
slt x20, x20, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd6813b67dc2ccbaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0cae36caf7286d43 # initialize rs1
li x15, 0x121ed6236d1432b1 # initialize rs2
slt x21, x21, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xcfda1ac87c7551a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd15250f8edb07bed # initialize rs1
li x16, 0x4eee4a4b30608172 # initialize rs2
slt x22, x22, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x65cbf796307ac377 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe69ee01e90840e57 # initialize rs1
li x18, 0xede7f384e145bdb5 # initialize rs2
slt x23, x23, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xc47d426cfde86628 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x33cdf0fecfae5051 # initialize rs1
li x16, 0xa75c11d5add031c6 # initialize rs2
slt x24, x24, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x670f46982cce32dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x60067d3b7004296f # initialize rs1
li x26, 0xe1702e572bb080e8 # initialize rs2
slt x25, x25, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x07b48ebebf5f31ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3f39f0e334396f88 # initialize rs1
li x6, 0x18b086499981387c # initialize rs2
slt x26, x26, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x5ad3e5ccc37d2a41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd49d4eafdae751c3 # initialize rs1
li x19, 0xebb77cbd6f237bf3 # initialize rs2
slt x27, x27, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xd45825e4998fcbdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb3d8550aff28778b # initialize rs1
li x23, 0x79b25a88f00aae5e # initialize rs2
slt x28, x28, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xeb39be59053d9d40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe735ef4c7a75e932 # initialize rs1
li x27, 0xd40e0445992c3c1b # initialize rs2
slt x29, x29, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x68cf3c47b4cd0a2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe919fc3cc410975e # initialize rs1
li x14, 0x8bc8f977847c0315 # initialize rs2
slt x30, x30, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xb09e420bfac5413a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc791c85d815f365e # initialize rs1
li x28, 0xb02ea30632341135 # initialize rs2
slt x31, x31, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xf37f739e9119f102 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x828e520aedd0c165 # initialize rs1
li x0, 0xd112db01a578c90b # initialize rs2
slt x0, x24, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xf68aa0c2ff1c2794 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xae3b9bc3b50ac4c8 # initialize rs1
li x1, 0x292b527ae0e81b7b # initialize rs2
slt x1, x4, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x57dcc9ec9109398f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x34a336bff97803a4 # initialize rs1
li x2, 0xd6634f98b2039bec # initialize rs2
slt x2, x7, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xb6fa4a1ca67662d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7f16e541f542293b # initialize rs1
li x3, 0x2d64b62683b623bd # initialize rs2
slt x3, x12, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x5e82432d8c83bdbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x06a3b9c198cdb76b # initialize rs1
li x4, 0xcca7622751dabf30 # initialize rs2
slt x4, x8, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xc06abcc548d10aeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8f5aa3feaf5bca68 # initialize rs1
li x5, 0xc0c2ec4a00d5bf40 # initialize rs2
slt x5, x23, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x160df21e75666b0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x379e5aa8c947a19f # initialize rs1
li x6, 0x3cc0a456eaf99127 # initialize rs2
slt x6, x20, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x44ac16718bb5c4e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x283644841da1d15c # initialize rs1
li x7, 0x28a5a4896c9e24a1 # initialize rs2
slt x7, x13, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x462df43bb3d861a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x07315ba9f3d4ae89 # initialize rs1
li x8, 0x7fe6c58b7c3d6a07 # initialize rs2
slt x8, x29, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x8be74cc221a34cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xdc2607718d10f15f # initialize rs1
li x9, 0x42f7c2e9fa5dd43f # initialize rs2
slt x9, x26, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x000573e9715b56ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfc3e7da486b4726f # initialize rs1
li x10, 0xb1b82180a4557148 # initialize rs2
slt x10, x28, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x1ec8716f2ad41605 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9f867006d818f2df # initialize rs1
li x11, 0xf05cefdce237775b # initialize rs2
slt x11, x8, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x11d2aa1a26c83f8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x4b5ff8e5882cde8b # initialize rs1
li x12, 0x68f269efdf56a6ec # initialize rs2
slt x12, x29, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xf6c8b1365fa07897 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaf118858ee0e4bf8 # initialize rs1
li x13, 0xccdf9d6ee8f09552 # initialize rs2
slt x13, x10, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x6e36ff9a5f99804a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x110931679390f727 # initialize rs1
li x14, 0x1311c0577a6af468 # initialize rs2
slt x14, x9, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xf5ed7c5c9a1d240b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6d6766e3d39bdeed # initialize rs1
li x15, 0x3f7568bfa4d24f87 # initialize rs2
slt x15, x27, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xe611ece51f5b8eaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xdf35ac49f9073630 # initialize rs1
li x16, 0xfaddbe44e2e0e6e2 # initialize rs2
slt x16, x3, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x381b1b6cefe6be67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8fd3fbf17b5fee72 # initialize rs1
li x17, 0x8a5225d80616f507 # initialize rs2
slt x17, x10, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xb6f4d5f8303335c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x13f7a1265e1d2ec0 # initialize rs1
li x18, 0xc728ebb798edbf0d # initialize rs2
slt x18, x31, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x5560059bcc2547a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9869235d476c1d04 # initialize rs1
li x19, 0x54f8f0a112d50118 # initialize rs2
slt x19, x22, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xd35661c0f17acfbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5721c9c56f3610ae # initialize rs1
li x20, 0xcaff2920195605b9 # initialize rs2
slt x20, x8, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x8aab2051a8ae8c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xe63ec6dbc06106bb # initialize rs1
li x21, 0xb19753efa908ee24 # initialize rs2
slt x21, x25, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x7c9e29abdacd75b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9769066421096216 # initialize rs1
li x22, 0x72ae18fc8cfe109c # initialize rs2
slt x22, x24, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x09b641329eb3370e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6f3745970675d81c # initialize rs1
li x23, 0xb4027a5870fa3955 # initialize rs2
slt x23, x4, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0xde1ace04493481c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x24020970cd8451be # initialize rs1
li x24, 0x6b85777e0836f60b # initialize rs2
slt x24, x18, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x374961bf6f0b0a31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa29f73edb1c7cf9b # initialize rs1
li x25, 0xeb172e23542c585f # initialize rs2
slt x25, x30, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x5f09513c41875c73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3d3a1c6dd2e4ece8 # initialize rs1
li x26, 0x33494a4f54b4598f # initialize rs2
slt x26, x20, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x3feed1ca09575d5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x04010d52d9aa511a # initialize rs1
li x27, 0x0c36b283a1b51f2a # initialize rs2
slt x27, x20, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x0bd549778f58031b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0fbbf2f49507f2cd # initialize rs1
li x28, 0xfbc58acbd659205b # initialize rs2
slt x28, x10, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x8014c5be101aad69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xdb3576317f242feb # initialize rs1
li x29, 0x31d346425c3833f9 # initialize rs2
slt x29, x22, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x11abab948560442b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x95ec7b93e972a3cc # initialize rs1
li x30, 0x8228389ea0bfadb4 # initialize rs2
slt x30, x26, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x9a44539e37214e7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x6fc8fa119d1d1f39 # initialize rs1
li x31, 0x80f50803ac18160a # initialize rs2
slt x31, x23, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x15c9442d4710fced # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xaae1eecbe9789125 # initialize rs1
li x0, 0x2b3ea3529acce80f # initialize rs2
slt x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xecf269c528dfa297 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xeeccc0acb97fd10d # initialize rs1
li x1, 0xc4485f37e26f72a9 # initialize rs2
slt x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x62f23a781faac1e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3a0074c3055deec2 # initialize rs1
li x2, 0x7774a7936c7f1751 # initialize rs2
slt x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x0f6f1d1e203057c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x50cfbf24ff7b8bde # initialize rs1
li x3, 0x2808f85b9949371d # initialize rs2
slt x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xe6952a239a4d1a11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x18aa60f8faf1be12 # initialize rs1
li x4, 0x450470813a786b27 # initialize rs2
slt x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x757dd0d9bca756ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfdb9c703f192d675 # initialize rs1
li x5, 0xcb4b800a96eca2db # initialize rs2
slt x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x76f0af7c36c55d72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x30f9dca69a4d3c1c # initialize rs1
li x6, 0x3a587f60d28ba915 # initialize rs2
slt x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0xb14e4e517afa7f93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf1478172d7dd7398 # initialize rs1
li x7, 0x1d92b85121c056bf # initialize rs2
slt x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x0712176a55de0ac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd60c4b91dce37d56 # initialize rs1
li x8, 0x022ac55309f459c4 # initialize rs2
slt x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xb9f348bc01c78eb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x296d0993133ee247 # initialize rs1
li x9, 0xc9a756befc0af909 # initialize rs2
slt x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x265df0bd99ec0e66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x32c08c5b80556004 # initialize rs1
li x10, 0x6c8bfd76eb917176 # initialize rs2
slt x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xf8f01b3a7fbc03b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8b5b33bf2c2a15f8 # initialize rs1
li x11, 0x54a92ccdc9fa51d0 # initialize rs2
slt x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x74da9efc15f9c738 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa1282292b2411d03 # initialize rs1
li x12, 0x13f5cecc08894df6 # initialize rs2
slt x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xb73fdbbc9f6ef881 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x270d5763a395b1d4 # initialize rs1
li x13, 0x752b55807625a30c # initialize rs2
slt x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x22d9e53f8eabc0db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x63bbe8c0fd5afce7 # initialize rs1
li x14, 0x9f82acf8e2b28a12 # initialize rs2
slt x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x9309ab0cc6b6d7f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x97a4e27c8f126457 # initialize rs1
li x15, 0x6e4afd020d4fb837 # initialize rs2
slt x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x145bb918d3689973 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaa8465d46d6632a5 # initialize rs1
li x16, 0x6b7ac5a8b7ba9756 # initialize rs2
slt x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x3a7228912bf060d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5f4addba746fc145 # initialize rs1
li x17, 0x3b746a0a6d28b919 # initialize rs2
slt x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xaa2421f28456cb38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xdf7bf893daa32a9f # initialize rs1
li x18, 0x69e3b234de678bd5 # initialize rs2
slt x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x887069482828a571 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4278d4a8cad92f57 # initialize rs1
li x19, 0x37a60bdd2c14a204 # initialize rs2
slt x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xde3fd294b0b7d6c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0326127dc2bca856 # initialize rs1
li x20, 0x0afdb6bdc2308f54 # initialize rs2
slt x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xfbfd67a8c923f54e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf68d2a36caed13a7 # initialize rs1
li x21, 0x1995456117e74e46 # initialize rs2
slt x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xd5c24f1998b63e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe88c38f89e605c7d # initialize rs1
li x22, 0xb274914a0e752808 # initialize rs2
slt x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x5079484b386e63f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8586fd8841417549 # initialize rs1
li x23, 0x7f15bd0d2079a12c # initialize rs2
slt x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x7d4f31d4506cb143 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xcc8f84b3a1a97c6c # initialize rs1
li x24, 0xff5cf84b7312bf11 # initialize rs2
slt x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x7613129f84d68af7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5b98a869d54724c7 # initialize rs1
li x25, 0x425ebbd845769a5c # initialize rs2
slt x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x3ccf76e5d106c385 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc468462f0ef3ce14 # initialize rs1
li x26, 0xacc8350ebfbdb54e # initialize rs2
slt x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x7cffd07effe9d38a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4b4d0650d914efc1 # initialize rs1
li x27, 0xe9ec8026b3caa71c # initialize rs2
slt x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x3f4b7fe2915b9568 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xcca0d4ab8b899950 # initialize rs1
li x28, 0x92b8b0a506d4792b # initialize rs2
slt x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xd706990a87cad059 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc2018c00a5be4818 # initialize rs1
li x29, 0xf4a6d27281dd6f4f # initialize rs2
slt x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x3800136e44bee280 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe587a96599ec659a # initialize rs1
li x30, 0xe567e1e7f444eb8c # initialize rs2
slt x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x3be66cc2cef997df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xbc5aa939521d822e # initialize rs1
li x31, 0x43e723b5f91ef017 # initialize rs2
slt x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x21, 0x021087ccf65cc918 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x50093ca3a55d5793 # initialize rs1
li x0, 0xe6cf755a3d3f2888 # initialize rs2
slt x21, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x19, 0x47e02347737dc072 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x608d33704631dc64 # initialize rs1
li x1, 0x704d11dc0a05d681 # initialize rs2
slt x19, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x7, 0xfd9cc4778138d418 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2a515f38bb424bcd # initialize rs1
li x2, 0x706e26a66edf7602 # initialize rs2
slt x7, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x21, 0x53c029e001e6c5a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7cf13137fca7e3ec # initialize rs1
li x3, 0x5317e27e40c64a97 # initialize rs2
slt x21, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x19, 0x00d6ba14527c141e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x892ecf3b1276d666 # initialize rs1
li x4, 0xecb68eb6959ece4e # initialize rs2
slt x19, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x11, 0x9113770d3b62e48f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3ae1a4475ec0384f # initialize rs1
li x5, 0xc0739e92c6666709 # initialize rs2
slt x11, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x3, 0xb7a88d2cee0a3666 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4ea7e090aba901b9 # initialize rs1
li x6, 0xf59db54112090451 # initialize rs2
slt x3, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x11, 0x99a519b2ee7cb464 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x505ca8d2a8d2a3be # initialize rs1
li x7, 0xfb5ef5a4b33a38c4 # initialize rs2
slt x11, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x3, 0xf41dc41af35b8b62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x781ded0653d8dac2 # initialize rs1
li x8, 0xfb2978defccabf29 # initialize rs2
slt x3, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x4, 0xcb93e012b93d517d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80836ac4907f5c0f # initialize rs1
li x9, 0xc6d8956cffc29371 # initialize rs2
slt x4, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x4, 0xdbd82828122e7ced # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf3fcf5d3005abd44 # initialize rs1
li x10, 0x3e3f8d814e830339 # initialize rs2
slt x4, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x29, 0xf9e11101f9aa66f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0d24f5ff2806672b # initialize rs1
li x11, 0x08579ee61cdaeff4 # initialize rs2
slt x29, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x14, 0xdc2df286d8e4ed1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7e98ac517f6d2ad4 # initialize rs1
li x12, 0x475b930dca1bff44 # initialize rs2
slt x14, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x27, 0xd2769b564481361e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5872f8643b1b537d # initialize rs1
li x13, 0xa9600eca047aa9fc # initialize rs2
slt x27, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x15, 0x0d2693e138b293db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x54138a7c75d1308d # initialize rs1
li x14, 0xf330a40222dd163f # initialize rs2
slt x15, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x16, 0x676964f167dcd6cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4859971974f53604 # initialize rs1
li x15, 0x0de9c5ca13b8356b # initialize rs2
slt x16, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xfdca7f55eb92f45c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x50d65be2c4a162be # initialize rs1
li x16, 0x2da63eda80fd764e # initialize rs2
slt x16, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x12, 0xeaab17d5ecab4593 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd84105a79541e6c1 # initialize rs1
li x17, 0x4fd6a952acc090fa # initialize rs2
slt x12, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x8, 0x203cbead31e01589 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb8f96785d58762ae # initialize rs1
li x18, 0x16dc4612099227ba # initialize rs2
slt x8, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x7, 0xe388bbc8d7b577d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9e6e62b0233ff13e # initialize rs1
li x19, 0x5917e76d9a35f316 # initialize rs2
slt x7, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x6, 0xbba40ef750d6c1ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xdf1903ad3f2f19fc # initialize rs1
li x20, 0x56921279d08e72cf # initialize rs2
slt x6, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x11, 0xf2716931e08f48ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc881fc8e44f73fb3 # initialize rs1
li x21, 0x02a0e1a39b41b398 # initialize rs2
slt x11, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x14, 0xbf3488a368094e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x77208ced6561d043 # initialize rs1
li x22, 0x409b38a777ac3503 # initialize rs2
slt x14, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x6, 0x6d5d24add3708696 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x548d2185dd1dde77 # initialize rs1
li x23, 0xe868a1ec56633a85 # initialize rs2
slt x6, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x3, 0xf912400818f6e571 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x077e867aeec1ed2f # initialize rs1
li x24, 0x7c610249700590de # initialize rs2
slt x3, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x11, 0x26409b894a9d920d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x75047ea780e4dcc9 # initialize rs1
li x25, 0xb6c4b364cdcf07f3 # initialize rs2
slt x11, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x18, 0x295c3dffa129c3e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0ef50d9b01067b1e # initialize rs1
li x26, 0x2d8cee2bb0fc3ec9 # initialize rs2
slt x18, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x5, 0xade1d588cf9b3700 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4ac3643fe1810f8b # initialize rs1
li x27, 0x2b910f9a1c4d8867 # initialize rs2
slt x5, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x17, 0x278e680605434e1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa25e6cb5334c44a1 # initialize rs1
li x28, 0xc423da1388517dd8 # initialize rs2
slt x17, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x21, 0x493a6c8175153740 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x16219f366e885891 # initialize rs1
li x29, 0x5a668d4ae86454ef # initialize rs2
slt x21, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x18, 0x8078df578fdfec12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2ea79e62bcfa6001 # initialize rs1
li x30, 0xee3134a26545df19 # initialize rs2
slt x18, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x9, 0x6db124cfe8960e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xbfa12a2372e193c3 # initialize rs1
li x31, 0xc2da0ec43c8930b9 # initialize rs2
slt x9, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x4ff49601a28ce9dd)
li x11, 0x28b942722f399c1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4ff49601a28ce9dd # initialize rs1
li x2, 0xdc4d4d8f3cb6c923 # initialize rs2
slt x11, x23, x2 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x57af9d507a6dcf5)
li x2, 0xeef9867773677cce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfa85062af859230b # initialize rs1
li x14, 0xb4305bfe74e9734a # initialize rs2
slt x2, x20, x14 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x777b1267f6037058)
li x28, 0x537fd40d560a57b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0e5d0178640d4017 # initialize rs1
li x18, 0x777b1267f6037058 # initialize rs2
slt x28, x27, x18 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x527d469bbd9efcb)
li x8, 0xc205bde719ee5fc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x790ec4a7dbf373fb # initialize rs1
li x30, 0xfad82b9644261035 # initialize rs2
slt x8, x4, x30 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
