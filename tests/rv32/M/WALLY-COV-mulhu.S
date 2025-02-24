///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/M//WALLY-COV-mulhu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.075920
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x726c7b39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x86115f9c # initialize rs1
li x30, 0xad3c0294 # initialize rs2
mulhu x0, x29, x30 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xff782542 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x88f72465 # initialize rs1
li x25, 0xcf4de7eb # initialize rs2
mulhu x1, x11, x25 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x30082539 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3eec2cd9 # initialize rs1
li x10, 0x551e6f10 # initialize rs2
mulhu x2, x15, x10 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x84c03200 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbc96be4e # initialize rs1
li x27, 0x63c44f15 # initialize rs2
mulhu x3, x24, x27 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x94a91b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6f2b29b6 # initialize rs1
li x12, 0x7d087eff # initialize rs2
mulhu x4, x28, x12 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x7f73cdce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3e5cfad4 # initialize rs1
li x11, 0x59c48ec8 # initialize rs2
mulhu x5, x21, x11 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x51cd6645 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7128b87a # initialize rs1
li x20, 0xbc8b6970 # initialize rs2
mulhu x6, x4, x20 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xb41bfa21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2f9f8d0c # initialize rs1
li x12, 0x8eb7f048 # initialize rs2
mulhu x7, x22, x12 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x8daef10f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xce0aab26 # initialize rs1
li x12, 0xd7cfcec0 # initialize rs2
mulhu x8, x13, x12 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xf6ed2b6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xcbaea437 # initialize rs1
li x6, 0x2b8b48a0 # initialize rs2
mulhu x9, x21, x6 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x9194cf79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3e1b56fa # initialize rs1
li x11, 0x87570eec # initialize rs2
mulhu x10, x17, x11 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x28eb27c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xad5e3fca # initialize rs1
li x19, 0x14d6ca56 # initialize rs2
mulhu x11, x7, x19 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xddb34bb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbb8bbd95 # initialize rs1
li x8, 0x20c197eb # initialize rs2
mulhu x12, x1, x8 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x99e39898 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5e72bb77 # initialize rs1
li x16, 0xf22155d3 # initialize rs2
mulhu x13, x27, x16 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x514649c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x398de0f3 # initialize rs1
li x24, 0xef9ec457 # initialize rs2
mulhu x14, x21, x24 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x9971270a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1b38da4b # initialize rs1
li x20, 0x81aebda0 # initialize rs2
mulhu x15, x21, x20 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xd5dc850c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5a6f4faa # initialize rs1
li x22, 0x6b4df8de # initialize rs2
mulhu x16, x30, x22 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x66b63a05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fd54514 # initialize rs1
li x8, 0x0f4c026a # initialize rs2
mulhu x17, x3, x8 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x3360a29e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8a018635 # initialize rs1
li x25, 0xb7042f1a # initialize rs2
mulhu x18, x11, x25 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x6b326e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8cec9256 # initialize rs1
li x25, 0xc18d9f9d # initialize rs2
mulhu x19, x21, x25 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x94d00575 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x14f30588 # initialize rs1
li x1, 0xdadfd786 # initialize rs2
mulhu x20, x19, x1 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x2702a0ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0f6e8a57 # initialize rs1
li x22, 0x6fc370ee # initialize rs2
mulhu x21, x12, x22 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x0ff2c4ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x57125424 # initialize rs1
li x13, 0x9573aec6 # initialize rs2
mulhu x22, x12, x13 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x5158730d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x619889bb # initialize rs1
li x17, 0x1aa8dee5 # initialize rs2
mulhu x23, x12, x17 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xe48b5404 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6722ea85 # initialize rs1
li x12, 0xab7dec8a # initialize rs2
mulhu x24, x11, x12 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x0f578ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa34cd6d3 # initialize rs1
li x27, 0x75b6e340 # initialize rs2
mulhu x25, x5, x27 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xdea8b33c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xefa7bdff # initialize rs1
li x22, 0x4d0bf768 # initialize rs2
mulhu x26, x21, x22 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xa881bb42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3beb7c23 # initialize rs1
li x13, 0x1e5ad4bf # initialize rs2
mulhu x27, x29, x13 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x7ba02da7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2ada05a8 # initialize rs1
li x17, 0x974f178e # initialize rs2
mulhu x28, x4, x17 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x2266a777 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5d3e1c84 # initialize rs1
li x15, 0x618bf566 # initialize rs2
mulhu x29, x20, x15 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x6a47ea8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xe1df4d11 # initialize rs1
li x17, 0x901832e6 # initialize rs2
mulhu x30, x25, x17 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x29b1bb33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa9ddbf2e # initialize rs1
li x25, 0xdaf905fb # initialize rs2
mulhu x31, x22, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x12, 0x2d4d1f0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7d914f41 # initialize rs1
li x24, 0xf543ef5f # initialize rs2
mulhu x12, x0, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x5, 0x18880ebe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0be42a54 # initialize rs1
li x12, 0xbd1eb98a # initialize rs2
mulhu x5, x1, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x17, 0xf7fdda2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xae194c40 # initialize rs1
li x9, 0x1a9bbe50 # initialize rs2
mulhu x17, x2, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x27, 0x8de0d028 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xbc9b5878 # initialize rs1
li x26, 0xae3e0bbc # initialize rs2
mulhu x27, x3, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x5, 0x2d2cdf14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8703a0fb # initialize rs1
li x26, 0x1273e0bc # initialize rs2
mulhu x5, x4, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x12, 0xf7ec0d7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb52bde41 # initialize rs1
li x6, 0xe793613d # initialize rs2
mulhu x12, x5, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x12, 0x19ec7d56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xdbde1000 # initialize rs1
li x18, 0x34255ccd # initialize rs2
mulhu x12, x6, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x30, 0x65b651b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe9489971 # initialize rs1
li x11, 0xc1329f05 # initialize rs2
mulhu x30, x7, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x15, 0x56175509 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfb056a9e # initialize rs1
li x21, 0x5ab2cac3 # initialize rs2
mulhu x15, x8, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x20, 0xa294ecd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc5ef43a5 # initialize rs1
li x5, 0xfd1770e7 # initialize rs2
mulhu x20, x9, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x16, 0xafb65cab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1372e930 # initialize rs1
li x27, 0x35c83f1a # initialize rs2
mulhu x16, x10, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x12, 0xb69040c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdd931859 # initialize rs1
li x2, 0x89b9da1d # initialize rs2
mulhu x12, x11, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x27, 0x71c8da55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x18aa14b0 # initialize rs1
li x2, 0x2dcb67d4 # initialize rs2
mulhu x27, x12, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x3, 0xc0ae04b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6d6b4efd # initialize rs1
li x26, 0x330679e8 # initialize rs2
mulhu x3, x13, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x5, 0xdc516330 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5f3021c5 # initialize rs1
li x29, 0x3e6a9838 # initialize rs2
mulhu x5, x14, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x26, 0x29723742 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc5bf3110 # initialize rs1
li x12, 0x18fd62c6 # initialize rs2
mulhu x26, x15, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x10, 0x5eb1befb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfa2db44f # initialize rs1
li x21, 0xfc09f8e6 # initialize rs2
mulhu x10, x16, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x28, 0x79ca1ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3eb85215 # initialize rs1
li x6, 0xe699206a # initialize rs2
mulhu x28, x17, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x22, 0xaeeb2194 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xac7035d7 # initialize rs1
li x7, 0x2aa62fe7 # initialize rs2
mulhu x22, x18, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x3, 0x4c42214f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x94f55a92 # initialize rs1
li x25, 0x91d46aff # initialize rs2
mulhu x3, x19, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x10, 0x0b36fe1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xedab7cbd # initialize rs1
li x3, 0xd171abf0 # initialize rs2
mulhu x10, x20, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x10, 0xe8bb75b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xee611fa4 # initialize rs1
li x11, 0x25b2133c # initialize rs2
mulhu x10, x21, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x1, 0xb48dd3b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8b0d4e5f # initialize rs1
li x9, 0x87265ce1 # initialize rs2
mulhu x1, x22, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x15, 0xed3ca8e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa0d4a155 # initialize rs1
li x24, 0x65e22ac2 # initialize rs2
mulhu x15, x23, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x10, 0xcf5a4ab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xee0e7903 # initialize rs1
li x25, 0xddd4fbd7 # initialize rs2
mulhu x10, x24, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x31, 0xe0858cbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf3e0e1f1 # initialize rs1
li x18, 0x6d2c0650 # initialize rs2
mulhu x31, x25, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x21, 0x57a7007a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8cea1c3f # initialize rs1
li x6, 0xb9a3dde8 # initialize rs2
mulhu x21, x26, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x23, 0x13175549 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe89ae4b9 # initialize rs1
li x31, 0x84aff7f4 # initialize rs2
mulhu x23, x27, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x29, 0x0fe83e2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd346875b # initialize rs1
li x10, 0x31b5f1c3 # initialize rs2
mulhu x29, x28, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x27, 0x3ee8cf5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8a25d2f8 # initialize rs1
li x19, 0x791b93ce # initialize rs2
mulhu x27, x29, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x3, 0xf75b4e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x559bb3c6 # initialize rs1
li x21, 0x9adb06f0 # initialize rs2
mulhu x3, x30, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x17, 0xe3bde09d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa9418062 # initialize rs1
li x15, 0x32236a7a # initialize rs2
mulhu x17, x31, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x26, 0x1b226124 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xbe9a4366 # initialize rs1
li x0, 0x92dfe05a # initialize rs2
mulhu x26, x12, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x28, 0xecfb0e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x45dc122d # initialize rs1
li x1, 0xd96b5537 # initialize rs2
mulhu x28, x19, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0x1a5c871f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa708f17c # initialize rs1
li x2, 0x1f3a295a # initialize rs2
mulhu x3, x1, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x19, 0x8d222be2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x808e6d05 # initialize rs1
li x3, 0x6c1c5267 # initialize rs2
mulhu x19, x21, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x3, 0xaa86e248 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9148fc17 # initialize rs1
li x4, 0x9b33516f # initialize rs2
mulhu x3, x29, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x26, 0x404b3498 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x3eb8c3ef # initialize rs1
li x5, 0x6b63ee5c # initialize rs2
mulhu x26, x25, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x26, 0xda91398d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf3d9d18e # initialize rs1
li x6, 0xe9929b70 # initialize rs2
mulhu x26, x8, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x27, 0x7343c2ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9fcf3a0a # initialize rs1
li x7, 0x4c216335 # initialize rs2
mulhu x27, x22, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x7, 0x9edf255d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3c7379eb # initialize rs1
li x8, 0x69aa5750 # initialize rs2
mulhu x7, x4, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x10, 0x0999cf4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x42c4be43 # initialize rs1
li x9, 0x3cfeace0 # initialize rs2
mulhu x10, x13, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x20, 0x30e461dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x745dece7 # initialize rs1
li x10, 0xda04b901 # initialize rs2
mulhu x20, x22, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x23, 0x5bf0ac20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xae463c45 # initialize rs1
li x11, 0xae044a38 # initialize rs2
mulhu x23, x28, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x17, 0xbfaa5382 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xdb9a5e62 # initialize rs1
li x12, 0x64b9d295 # initialize rs2
mulhu x17, x28, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x30, 0x429f1067 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x981ff449 # initialize rs1
li x13, 0xf4bbf985 # initialize rs2
mulhu x30, x16, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x19, 0x258c36d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x9d42ee77 # initialize rs1
li x14, 0x279c6d8a # initialize rs2
mulhu x19, x21, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x11, 0xcadfef39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe5776386 # initialize rs1
li x15, 0x30a512ec # initialize rs2
mulhu x11, x16, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x1, 0x75ce8b64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3ad94b71 # initialize rs1
li x16, 0x010b8a98 # initialize rs2
mulhu x1, x27, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x7, 0x222794c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2ed4cd13 # initialize rs1
li x17, 0x36c36ef4 # initialize rs2
mulhu x7, x19, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x10, 0xe4ec0df7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb925d9f9 # initialize rs1
li x18, 0xbf4fcbe9 # initialize rs2
mulhu x10, x5, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x26, 0xa3354e2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3a825f6c # initialize rs1
li x19, 0xc7a5b219 # initialize rs2
mulhu x26, x23, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x26, 0xbafa486e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1248d6d8 # initialize rs1
li x20, 0x91b617d6 # initialize rs2
mulhu x26, x19, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x9, 0x6588e9d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb20a4972 # initialize rs1
li x21, 0xb8a4ae0c # initialize rs2
mulhu x9, x14, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x16, 0xd1a41359 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd90cd938 # initialize rs1
li x22, 0x2ee91058 # initialize rs2
mulhu x16, x24, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x10, 0xd0d6f3da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x488cadc1 # initialize rs1
li x23, 0xff7d2015 # initialize rs2
mulhu x10, x14, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x15, 0x8111c6ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd8945785 # initialize rs1
li x24, 0x84d9e6d1 # initialize rs2
mulhu x15, x28, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x20, 0xa22786be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x38980109 # initialize rs1
li x25, 0xb7820af4 # initialize rs2
mulhu x20, x15, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x22, 0xb3886714 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x031717e0 # initialize rs1
li x26, 0x57efed76 # initialize rs2
mulhu x22, x28, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x10, 0x84e69a5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc68229e0 # initialize rs1
li x27, 0xc34625d6 # initialize rs2
mulhu x10, x13, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x27, 0x7e391a3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe34265d1 # initialize rs1
li x28, 0x8fe12be0 # initialize rs2
mulhu x27, x17, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x14, 0x47cd781e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaa4a0faa # initialize rs1
li x29, 0x90776e6e # initialize rs2
mulhu x14, x31, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x13, 0x48b053e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x08349f44 # initialize rs1
li x30, 0x21301cc5 # initialize rs2
mulhu x13, x29, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x30, 0x0000dbff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4287f1e8 # initialize rs1
li x31, 0x8f80d953 # initialize rs2
mulhu x30, x27, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x99a22d14)
li x8, 0x383071e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x383071e6 # initialize rs1
li x0, 0x464d9fdb # initialize rs2
mulhu x8, x15, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x8e0abef9)
li x1, 0x8e0abef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x8e0abef9 # initialize rs1
li x30, 0x8e0abef9 # initialize rs2
mulhu x1, x0, x30 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x154a1ed7)
li x24, 0xc9051de7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x154a1ed7 # initialize rs1
li x1, 0x154a1ed7 # initialize rs2
mulhu x24, x16, x1 # perform operation

# Testcase cmp_gpr_hazard raw test
mulhu x30, x22, x27 # perform first operation
mulhu x31, x30, x15 # perform second operation

# Testcase cmp_gpr_hazard raw test
mulhu x16, x12, x7 # perform first operation
mulhu x6, x11, x16 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulhu x16, x30, x28 # perform first operation
mulhu x16, x5, x6 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulhu x6, x27, x14 # perform first operation
mulhu x6, x9, x15 # perform second operation

# Testcase cmp_gpr_hazard war test
mulhu x12, x6, x9 # perform first operation
mulhu x6, x18, x21 # perform second operation

# Testcase cmp_gpr_hazard war test
mulhu x21, x5, x18 # perform first operation
mulhu x18, x23, x30 # perform second operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0xe2191b99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000 # initialize rs1
li x5, 0xc8f9f230 # initialize rs2
mulhu x10, x24, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0xcf1df61a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x1, 0x38ecbe05 # initialize rs2
mulhu x17, x10, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0xabff5f85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000002 # initialize rs1
li x28, 0xdd70c2a0 # initialize rs2
mulhu x31, x14, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x30, 0xa8e363b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs1
li x23, 0x4f825318 # initialize rs2
mulhu x30, x13, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x26, 0xa849a8c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize rs1
li x30, 0x04012f07 # initialize rs2
mulhu x26, x13, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x26, 0x3a68e7dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffff # initialize rs1
li x3, 0x72cb2723 # initialize rs2
mulhu x26, x8, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x9, 0x9a1a1ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffe # initialize rs1
li x21, 0x9b4230d6 # initialize rs2
mulhu x9, x19, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0x4bf74667 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x30, 0x3e5c9b47 # initialize rs2
mulhu x20, x2, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0xe32a0462 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffe # initialize rs1
li x30, 0x1c89a589 # initialize rs2
mulhu x29, x12, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x13, 0x0fc3651f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x17, 0xe9b20578 # initialize rs2
mulhu x13, x30, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x2, 0x4f41c573 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaa # initialize rs1
li x27, 0xebc92b61 # initialize rs2
mulhu x2, x7, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x26, 0xe8d116b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x13, 0xb1adf299 # initialize rs2
mulhu x26, x16, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x29, 0xd590e9af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x678ec370 # initialize rs1
li x20, 0x00000000 # initialize rs2
mulhu x29, x9, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x12, 0xd4ea5092 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4337b442 # initialize rs1
li x10, 0x00000001 # initialize rs2
mulhu x12, x9, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x6, 0x3c3f8dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa83b4191 # initialize rs1
li x7, 0x00000002 # initialize rs2
mulhu x6, x30, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x12, 0xb1c26074 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6d731b53 # initialize rs1
li x30, 0x80000000 # initialize rs2
mulhu x12, x26, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x31, 0xa9790b08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdd7c8179 # initialize rs1
li x6, 0x80000001 # initialize rs2
mulhu x31, x11, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x11, 0x2872f6d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9eca2079 # initialize rs1
li x20, 0x7fffffff # initialize rs2
mulhu x11, x23, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x19, 0xc7ee7f22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x575fdfdf # initialize rs1
li x21, 0x7ffffffe # initialize rs2
mulhu x19, x3, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x25, 0x30370164 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb460b8f8 # initialize rs1
li x21, 0xffffffff # initialize rs2
mulhu x25, x9, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x2, 0xb375cdd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x96dcde20 # initialize rs1
li x22, 0xfffffffe # initialize rs2
mulhu x2, x7, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x11, 0x3ff08f0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x51d1a4ba # initialize rs1
li x19, 0x5bbc8877 # initialize rs2
mulhu x11, x29, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x3, 0x34877476 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5c147995 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
mulhu x3, x16, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x18, 0x2b3893cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7d700100 # initialize rs1
li x26, 0x55555555 # initialize rs2
mulhu x18, x13, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x15, 0xf4bbe459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x16, 0x00000000 # initialize rs2
mulhu x15, x12, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x18, 0x62628bcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize rs1
li x21, 0x00000001 # initialize rs2
mulhu x18, x14, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x21, 0x8c09c974 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000 # initialize rs1
li x6, 0x00000002 # initialize rs2
mulhu x21, x22, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x24, 0x894757dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
li x1, 0x80000000 # initialize rs2
mulhu x24, x4, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x24, 0x48b7cc3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x22, 0x80000001 # initialize rs2
mulhu x24, x12, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x26, 0x565e6ac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000 # initialize rs1
li x3, 0x7fffffff # initialize rs2
mulhu x26, x7, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x12, 0x4b9140e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
mulhu x12, x14, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x14, 0x38ef7fea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000 # initialize rs1
li x9, 0xffffffff # initialize rs2
mulhu x14, x30, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x5, 0x6681d12c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x19, 0xfffffffe # initialize rs2
mulhu x5, x13, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x3, 0xe129a86c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
mulhu x3, x12, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x12, 0x56fdac45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
mulhu x12, x28, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x5, 0xdac21f40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000 # initialize rs1
li x18, 0x55555555 # initialize rs2
mulhu x5, x6, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x12, 0x4c292e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000001 # initialize rs1
li x9, 0x00000000 # initialize rs2
mulhu x12, x24, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x27, 0x9f94fb61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000001 # initialize rs1
li x10, 0x00000001 # initialize rs2
mulhu x27, x19, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x23, 0x44fdd218 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x18, 0x00000002 # initialize rs2
mulhu x23, x10, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x24, 0x4546c6c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
li x26, 0x80000000 # initialize rs2
mulhu x24, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x18, 0x052feafb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000001 # initialize rs1
li x31, 0x80000001 # initialize rs2
mulhu x18, x6, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x1, 0xa9e11787 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000001 # initialize rs1
li x3, 0x7fffffff # initialize rs2
mulhu x1, x28, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x19, 0xd0b8e647 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
li x4, 0x7ffffffe # initialize rs2
mulhu x19, x21, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x9, 0x165109b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000001 # initialize rs1
li x1, 0xffffffff # initialize rs2
mulhu x9, x2, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x23, 0x8a921b2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize rs1
li x16, 0xfffffffe # initialize rs2
mulhu x23, x14, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x30, 0x660e6951 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000001 # initialize rs1
li x23, 0x5bbc8877 # initialize rs2
mulhu x30, x1, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x22, 0x30a1df85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000001 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
mulhu x22, x1, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x3, 0xf655112f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000001 # initialize rs1
li x28, 0x55555555 # initialize rs2
mulhu x3, x16, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x28, 0x8593c059 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
li x25, 0x00000000 # initialize rs2
mulhu x28, x11, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x29, 0x654ad910 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
li x16, 0x00000001 # initialize rs2
mulhu x29, x4, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x12, 0x04609bf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000002 # initialize rs1
li x11, 0x00000002 # initialize rs2
mulhu x12, x1, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x21, 0x218837da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000002 # initialize rs1
li x16, 0x80000000 # initialize rs2
mulhu x21, x15, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x20, 0x59b45a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000002 # initialize rs1
li x5, 0x80000001 # initialize rs2
mulhu x20, x16, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x23, 0x8d9b69b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000002 # initialize rs1
li x7, 0x7fffffff # initialize rs2
mulhu x23, x17, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x2, 0xb1685971 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
mulhu x2, x4, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x22, 0xb5ea9cc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000002 # initialize rs1
li x28, 0xffffffff # initialize rs2
mulhu x22, x25, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x18, 0x7f976659 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000002 # initialize rs1
li x27, 0xfffffffe # initialize rs2
mulhu x18, x16, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x16, 0xad4d96cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x9, 0x5bbc8877 # initialize rs2
mulhu x16, x3, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x30, 0x9325612e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000002 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
mulhu x30, x22, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x28, 0x950bceb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
li x31, 0x55555555 # initialize rs2
mulhu x28, x4, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x23, 0x0bda4bf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000000 # initialize rs1
li x10, 0x00000000 # initialize rs2
mulhu x23, x14, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x13, 0xb340d4df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
li x10, 0x00000001 # initialize rs2
mulhu x13, x11, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x31, 0x956ec652 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x14, 0x00000002 # initialize rs2
mulhu x31, x4, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x25, 0x44133a1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000000 # initialize rs1
li x9, 0x80000000 # initialize rs2
mulhu x25, x18, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x19, 0x0238f075 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000000 # initialize rs1
li x4, 0x80000001 # initialize rs2
mulhu x19, x9, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x8, 0x1ed04da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000000 # initialize rs1
li x13, 0x7fffffff # initialize rs2
mulhu x8, x14, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x21, 0x5823a2d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000000 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
mulhu x21, x10, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x27, 0x338a2f92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x13, 0xffffffff # initialize rs2
mulhu x27, x4, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x26, 0x0e0a9b89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000000 # initialize rs1
li x24, 0xfffffffe # initialize rs2
mulhu x26, x10, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x17, 0x94dae690 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000000 # initialize rs1
li x16, 0x5bbc8877 # initialize rs2
mulhu x17, x20, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x20, 0xc5610cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000000 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
mulhu x20, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x24, 0xc24a6af4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000000 # initialize rs1
li x20, 0x55555555 # initialize rs2
mulhu x24, x7, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x13, 0x99be5b94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
li x1, 0x00000000 # initialize rs2
mulhu x13, x23, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x29, 0x9fe1d550 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs1
li x22, 0x00000001 # initialize rs2
mulhu x29, x14, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x19, 0x89aa91f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000001 # initialize rs1
li x21, 0x00000002 # initialize rs2
mulhu x19, x30, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x24, 0xb4720bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000001 # initialize rs1
li x1, 0x80000000 # initialize rs2
mulhu x24, x5, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x5, 0xa8832ed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x2, 0x80000001 # initialize rs2
mulhu x5, x15, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x10, 0xb5a1628b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000001 # initialize rs1
li x15, 0x7fffffff # initialize rs2
mulhu x10, x28, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x8, 0xeba69256 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000001 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
mulhu x8, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x12, 0xc2b7cda3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000001 # initialize rs1
li x2, 0xffffffff # initialize rs2
mulhu x12, x10, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x13, 0xd3140ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000001 # initialize rs1
li x31, 0xfffffffe # initialize rs2
mulhu x13, x28, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x11, 0x4831a378 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000001 # initialize rs1
li x30, 0x5bbc8877 # initialize rs2
mulhu x11, x28, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x31, 0x12d61a7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000001 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
mulhu x31, x18, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x18, 0x3826e451 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs1
li x4, 0x55555555 # initialize rs2
mulhu x18, x12, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x17, 0x52eca664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffff # initialize rs1
li x30, 0x00000000 # initialize rs2
mulhu x17, x14, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x12, 0x316fd210 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs1
li x30, 0x00000001 # initialize rs2
mulhu x12, x20, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x15, 0x0ebcadd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x25, 0x00000002 # initialize rs2
mulhu x15, x27, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x28, 0x0b59c04a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffff # initialize rs1
li x3, 0x80000000 # initialize rs2
mulhu x28, x9, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x19, 0x5cf52b8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x25, 0x80000001 # initialize rs2
mulhu x19, x27, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x21, 0x7657e97d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffff # initialize rs1
li x17, 0x7fffffff # initialize rs2
mulhu x21, x2, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x11, 0x12dceaa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffff # initialize rs1
li x25, 0x7ffffffe # initialize rs2
mulhu x11, x14, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x4, 0xf278f25d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffff # initialize rs1
li x28, 0xffffffff # initialize rs2
mulhu x4, x6, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x9, 0xac76c592 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize rs1
li x14, 0xfffffffe # initialize rs2
mulhu x9, x15, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x19, 0xd69b4bcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffff # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
mulhu x19, x12, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x29, 0x3116aa18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffff # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
mulhu x29, x17, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x22, 0xa18b2c23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs1
li x29, 0x55555555 # initialize rs2
mulhu x22, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x23, 0x4180cf49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffe # initialize rs1
li x25, 0x00000000 # initialize rs2
mulhu x23, x24, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x19, 0x90b6ee2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffe # initialize rs1
li x11, 0x00000001 # initialize rs2
mulhu x19, x7, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x9, 0x9860c009 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffe # initialize rs1
li x23, 0x00000002 # initialize rs2
mulhu x9, x26, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x6, 0xd044ede3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffe # initialize rs1
li x25, 0x80000000 # initialize rs2
mulhu x6, x8, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x3, 0x8823b74e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffe # initialize rs1
li x23, 0x80000001 # initialize rs2
mulhu x3, x17, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x18, 0xbce33a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x1, 0x7fffffff # initialize rs2
mulhu x18, x20, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x4, 0x72bf03a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffe # initialize rs1
li x7, 0x7ffffffe # initialize rs2
mulhu x4, x14, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x30, 0xd239d634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x29, 0xffffffff # initialize rs2
mulhu x30, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x6, 0xf11fe1d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
li x31, 0xfffffffe # initialize rs2
mulhu x6, x23, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x21, 0xf02a23bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffe # initialize rs1
li x16, 0x5bbc8877 # initialize rs2
mulhu x21, x26, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x16, 0x3c9a52c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
mulhu x16, x11, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x31, 0x587eb9c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffe # initialize rs1
li x4, 0x55555555 # initialize rs2
mulhu x31, x12, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x21, 0xdfc45f2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x10, 0x00000000 # initialize rs2
mulhu x21, x14, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x19, 0x8adc042a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x14, 0x00000001 # initialize rs2
mulhu x19, x7, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x3, 0x0fdc7892 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffff # initialize rs1
li x18, 0x00000002 # initialize rs2
mulhu x3, x20, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x24, 0xd8b9e655 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x7, 0x80000000 # initialize rs2
mulhu x24, x26, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x9, 0xd349ea69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x26, 0x80000001 # initialize rs2
mulhu x9, x18, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x4, 0xb5a2f905 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x21, 0x7fffffff # initialize rs2
mulhu x4, x18, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x30, 0xc0f5e0e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x21, 0x7ffffffe # initialize rs2
mulhu x30, x27, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x24, 0xd798ba85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
mulhu x24, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x18, 0xed304e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x14, 0xfffffffe # initialize rs2
mulhu x18, x23, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x19, 0x828aa623 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffff # initialize rs1
li x23, 0x5bbc8877 # initialize rs2
mulhu x19, x20, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x10, 0xca7eaffc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
mulhu x10, x13, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x11, 0x3558e1e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
li x21, 0x55555555 # initialize rs2
mulhu x11, x30, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x14, 0x10d7e64e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffe # initialize rs1
li x23, 0x00000000 # initialize rs2
mulhu x14, x1, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x8, 0xc469e8ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe # initialize rs1
li x4, 0x00000001 # initialize rs2
mulhu x8, x13, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x17, 0x0284f546 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
li x12, 0x00000002 # initialize rs2
mulhu x17, x31, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x3, 0xcf9d1fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
li x15, 0x80000000 # initialize rs2
mulhu x3, x4, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x11, 0xa2ee8280 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffe # initialize rs1
li x17, 0x80000001 # initialize rs2
mulhu x11, x1, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x2, 0xe0a0b5c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x26, 0x7fffffff # initialize rs2
mulhu x2, x16, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x14, 0x3d044a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffe # initialize rs1
li x8, 0x7ffffffe # initialize rs2
mulhu x14, x25, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x25, 0xd922ac63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffe # initialize rs1
li x1, 0xffffffff # initialize rs2
mulhu x25, x10, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x2, 0x7892a8c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffe # initialize rs1
li x11, 0xfffffffe # initialize rs2
mulhu x2, x3, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x27, 0x7ea06951 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffe # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
mulhu x27, x19, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x2, 0x44a8d826 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
mulhu x2, x15, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x20, 0xe803467f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffe # initialize rs1
li x8, 0x55555555 # initialize rs2
mulhu x20, x22, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x2, 0x5a0493da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x8, 0x00000000 # initialize rs2
mulhu x2, x7, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x13, 0x5eac0913 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc8877 # initialize rs1
li x14, 0x00000001 # initialize rs2
mulhu x13, x10, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x12, 0x55360e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
li x27, 0x00000002 # initialize rs2
mulhu x12, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x17, 0x7e3763e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc8877 # initialize rs1
li x29, 0x80000000 # initialize rs2
mulhu x17, x14, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x20, 0x2643f01f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x16, 0x80000001 # initialize rs2
mulhu x20, x30, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x16, 0xe8c6a578 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x5, 0x7fffffff # initialize rs2
mulhu x16, x30, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x27, 0x56bd232a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc8877 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
mulhu x27, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x31, 0xa0af5054 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc8877 # initialize rs1
li x22, 0xffffffff # initialize rs2
mulhu x31, x25, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x25, 0x62d2d694 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
li x12, 0xfffffffe # initialize rs2
mulhu x25, x31, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x31, 0x361b6340 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc8877 # initialize rs1
li x10, 0x5bbc8877 # initialize rs2
mulhu x31, x16, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x21, 0xc2d8eb5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc8877 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
mulhu x21, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x10, 0xf2f2ffd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc8877 # initialize rs1
li x13, 0x55555555 # initialize rs2
mulhu x10, x1, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x21, 0xf7f93bfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
li x25, 0x00000000 # initialize rs2
mulhu x21, x17, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x31, 0x78f2f41f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x27, 0x00000001 # initialize rs2
mulhu x31, x20, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x14, 0x343a357e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaa # initialize rs1
li x13, 0x00000002 # initialize rs2
mulhu x14, x25, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x13, 0x3553906c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x20, 0x80000000 # initialize rs2
mulhu x13, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x8, 0x49600ede # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaa # initialize rs1
li x13, 0x80000001 # initialize rs2
mulhu x8, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x8, 0xd0fdfc3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaa # initialize rs1
li x18, 0x7fffffff # initialize rs2
mulhu x8, x1, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x20, 0x5043b230 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
li x24, 0x7ffffffe # initialize rs2
mulhu x20, x17, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x5, 0xffa471f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x2, 0xffffffff # initialize rs2
mulhu x5, x23, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x27, 0x86a4de98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaa # initialize rs1
li x2, 0xfffffffe # initialize rs2
mulhu x27, x12, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x11, 0xd696b20f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
li x15, 0x5bbc8877 # initialize rs2
mulhu x11, x31, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x3, 0xe303c173 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
mulhu x3, x11, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x8, 0x1cbaf61e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x22, 0x55555555 # initialize rs2
mulhu x8, x14, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x7, 0x6e30c9ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x55555555 # initialize rs1
li x22, 0x00000000 # initialize rs2
mulhu x7, x14, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x26, 0xb9e54d2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
li x5, 0x00000001 # initialize rs2
mulhu x26, x31, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x18, 0x432b50b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
li x11, 0x00000002 # initialize rs2
mulhu x18, x21, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x25, 0x0ec71031 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x29, 0x80000000 # initialize rs2
mulhu x25, x28, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x22, 0x7dfa3cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
li x6, 0x80000001 # initialize rs2
mulhu x22, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x8, 0x81066aef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs1
li x27, 0x7fffffff # initialize rs2
mulhu x8, x1, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x9, 0x106753fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
mulhu x9, x11, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x30, 0x3103b69a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555 # initialize rs1
li x13, 0xffffffff # initialize rs2
mulhu x30, x8, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x22, 0x4abdb74b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x8, 0xfffffffe # initialize rs2
mulhu x22, x28, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x20, 0xc169ed18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x55555555 # initialize rs1
li x24, 0x5bbc8877 # initialize rs2
mulhu x20, x10, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x21, 0xee9dbde0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
mulhu x21, x25, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x9, 0xe82b8635 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555 # initialize rs1
li x21, 0x55555555 # initialize rs2
mulhu x9, x13, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x456d2cff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc7d0f2ae # initialize rs1
li x3, 0x468fb47e # initialize rs2
mulhu x0, x0, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x9bafeaf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x65981572 # initialize rs1
li x12, 0x35c6fe44 # initialize rs2
mulhu x1, x1, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xfb6080d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf352aeeb # initialize rs1
li x9, 0xd3ea63bf # initialize rs2
mulhu x2, x2, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xa256fb30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfb5faad4 # initialize rs1
li x26, 0x82432ad8 # initialize rs2
mulhu x3, x3, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x4a4333f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbc35a08c # initialize rs1
li x17, 0xed653732 # initialize rs2
mulhu x4, x4, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x3a852a01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x4e137b3d # initialize rs1
li x27, 0xcd90bf4b # initialize rs2
mulhu x5, x5, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xe44c5b10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf7aa29e7 # initialize rs1
li x30, 0x842fd90a # initialize rs2
mulhu x6, x6, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x632b74a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x58f85aed # initialize rs1
li x17, 0x831ef865 # initialize rs2
mulhu x7, x7, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xdb4f9d27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x50eacd29 # initialize rs1
li x3, 0x0fed4102 # initialize rs2
mulhu x8, x8, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x33bdc67a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x856e917a # initialize rs1
li x22, 0x8d346804 # initialize rs2
mulhu x9, x9, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xffb8af0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1de93370 # initialize rs1
li x28, 0x9fad2579 # initialize rs2
mulhu x10, x10, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x84fe074b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1064c2ce # initialize rs1
li x29, 0x7613dc6e # initialize rs2
mulhu x11, x11, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xa5aea6d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xae89358f # initialize rs1
li x7, 0xac2dd3ba # initialize rs2
mulhu x12, x12, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xc8a602ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0c093c41 # initialize rs1
li x5, 0xc860c421 # initialize rs2
mulhu x13, x13, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xb35138e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x45b1edd6 # initialize rs1
li x21, 0xc797c319 # initialize rs2
mulhu x14, x14, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x4c2b7c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf5ed0424 # initialize rs1
li x5, 0x5d7b3106 # initialize rs2
mulhu x15, x15, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x82009bbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x24965eb2 # initialize rs1
li x6, 0x8676c6a8 # initialize rs2
mulhu x16, x16, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xaec9fdc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8407f4d6 # initialize rs1
li x14, 0x94ca00e9 # initialize rs2
mulhu x17, x17, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x7e696237 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x41745132 # initialize rs1
li x30, 0x3387b74a # initialize rs2
mulhu x18, x18, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x25c3097f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4ab47909 # initialize rs1
li x24, 0x0b8f59bf # initialize rs2
mulhu x19, x19, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xfe46f501 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x720b2760 # initialize rs1
li x17, 0x9ae33cd0 # initialize rs2
mulhu x20, x20, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x2372a586 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x03690874 # initialize rs1
li x14, 0x74cf4c3c # initialize rs2
mulhu x21, x21, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x87e48286 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8ceb0b9f # initialize rs1
li x27, 0xf85cb158 # initialize rs2
mulhu x22, x22, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x4845b1a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5e6e4aa6 # initialize rs1
li x21, 0x86a0bc35 # initialize rs2
mulhu x23, x23, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xd4772301 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xae30f6af # initialize rs1
li x17, 0x468ffa7e # initialize rs2
mulhu x24, x24, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x7c541494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2a925604 # initialize rs1
li x23, 0x82e5c435 # initialize rs2
mulhu x25, x25, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x35969392 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb3b134f8 # initialize rs1
li x15, 0x06d117b4 # initialize rs2
mulhu x26, x26, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xfc0501f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6b98a04a # initialize rs1
li x28, 0x88c17cb1 # initialize rs2
mulhu x27, x27, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x2dde084d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf759d305 # initialize rs1
li x18, 0xffad1ef5 # initialize rs2
mulhu x28, x28, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xbce95695 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xbc1993e3 # initialize rs1
li x7, 0x7a076647 # initialize rs2
mulhu x29, x29, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xd3e7c667 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7224274c # initialize rs1
li x23, 0x8ccf3447 # initialize rs2
mulhu x30, x30, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xca7133d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x969eec47 # initialize rs1
li x30, 0x121cb219 # initialize rs2
mulhu x31, x31, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xc2ce7bad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5510b112 # initialize rs1
li x0, 0x8ea8464a # initialize rs2
mulhu x0, x31, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x6df91f83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x42d06bf5 # initialize rs1
li x1, 0x0bd863b8 # initialize rs2
mulhu x1, x25, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x213f49be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x14848d04 # initialize rs1
li x2, 0x35f2afab # initialize rs2
mulhu x2, x9, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x27e02968 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe217633f # initialize rs1
li x3, 0x97224af8 # initialize rs2
mulhu x3, x31, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x6dc06e86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x840e3d24 # initialize rs1
li x4, 0x508fd49a # initialize rs2
mulhu x4, x14, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xe6825059 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc8fa4fc2 # initialize rs1
li x5, 0x526efbc8 # initialize rs2
mulhu x5, x31, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x6db9eef5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x72ef94dd # initialize rs1
li x6, 0xdd665d0e # initialize rs2
mulhu x6, x6, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x860ac98d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2466f0fd # initialize rs1
li x7, 0x9fb54a52 # initialize rs2
mulhu x7, x12, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x591013ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xccc5db74 # initialize rs1
li x8, 0x05c65edd # initialize rs2
mulhu x8, x2, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x5a2c299b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x1d450484 # initialize rs1
li x9, 0x9b972eb8 # initialize rs2
mulhu x9, x23, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x7fe9a36b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf4606886 # initialize rs1
li x10, 0x02b70919 # initialize rs2
mulhu x10, x8, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x3cfc844c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc25c7889 # initialize rs1
li x11, 0x464bceae # initialize rs2
mulhu x11, x25, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x7f50d2bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x04e73c66 # initialize rs1
li x12, 0x0e06b9af # initialize rs2
mulhu x12, x12, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x0e14149b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x371aacdc # initialize rs1
li x13, 0x326d0b25 # initialize rs2
mulhu x13, x4, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x3fe98110 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf10232e1 # initialize rs1
li x14, 0x428a655c # initialize rs2
mulhu x14, x11, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xc03c429a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1f6cef1d # initialize rs1
li x15, 0x3a22c3a4 # initialize rs2
mulhu x15, x2, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x9fdf2ae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xbae2f672 # initialize rs1
li x16, 0x4fbdd514 # initialize rs2
mulhu x16, x29, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x32793066 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7296fb1f # initialize rs1
li x17, 0xd98419df # initialize rs2
mulhu x17, x31, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xa4dd97b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x900b86c3 # initialize rs1
li x18, 0x05ef0324 # initialize rs2
mulhu x18, x11, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xe229f89e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb331f7b1 # initialize rs1
li x19, 0x658be6f1 # initialize rs2
mulhu x19, x2, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x64ed335c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3110f00e # initialize rs1
li x20, 0xad1725f2 # initialize rs2
mulhu x20, x30, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x24bf3f01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x085baffa # initialize rs1
li x21, 0x287ae2dc # initialize rs2
mulhu x21, x13, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xe35c2fd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x660b2e8a # initialize rs1
li x22, 0x21af3fd4 # initialize rs2
mulhu x22, x11, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x248b8231 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8dfe7b33 # initialize rs1
li x23, 0x6314e023 # initialize rs2
mulhu x23, x7, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0xe6ba4c62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xeccc2df7 # initialize rs1
li x24, 0x4b5fd758 # initialize rs2
mulhu x24, x1, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0xb93c9d32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd3f51dd4 # initialize rs1
li x25, 0x4544401c # initialize rs2
mulhu x25, x1, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xa9ba1c5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x857c1d8b # initialize rs1
li x26, 0xf5ea9c37 # initialize rs2
mulhu x26, x12, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x559c2714 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x41dd00d7 # initialize rs1
li x27, 0x183f36e1 # initialize rs2
mulhu x27, x11, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xa4842cab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x40297e5d # initialize rs1
li x28, 0xde616dcb # initialize rs2
mulhu x28, x10, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xa897060a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x4fb42557 # initialize rs1
li x29, 0x2e90974a # initialize rs2
mulhu x29, x30, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x19c82e12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0338689f # initialize rs1
li x30, 0x9972ef1e # initialize rs2
mulhu x30, x27, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x3efe011a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6c5b6853 # initialize rs1
li x31, 0xe80f5346 # initialize rs2
mulhu x31, x31, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x3928a80b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x96ea809c # initialize rs1
li x0, 0x9f61eb98 # initialize rs2
mulhu x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x684d6dfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x08df0c7a # initialize rs1
li x1, 0xcf87df48 # initialize rs2
mulhu x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x2c59de19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3a97b7bb # initialize rs1
li x2, 0x5b79dd3d # initialize rs2
mulhu x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xdab18618 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb25fe171 # initialize rs1
li x3, 0x48407d35 # initialize rs2
mulhu x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x71ada18f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x77ada704 # initialize rs1
li x4, 0xb1cb70e3 # initialize rs2
mulhu x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x4e4524f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x9c0066cb # initialize rs1
li x5, 0x032b1130 # initialize rs2
mulhu x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xab843c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x46a0f623 # initialize rs1
li x6, 0xbf32ece4 # initialize rs2
mulhu x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x7afd76b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7da4d21c # initialize rs1
li x7, 0x946a71c5 # initialize rs2
mulhu x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xc2773630 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8afb2d65 # initialize rs1
li x8, 0xb1a70bf6 # initialize rs2
mulhu x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xb0c53469 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3f99fa2f # initialize rs1
li x9, 0x7aea7cce # initialize rs2
mulhu x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x5695728a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1a63dc9d # initialize rs1
li x10, 0xb142e426 # initialize rs2
mulhu x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xf9a70906 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x441c4aa2 # initialize rs1
li x11, 0x7f210d5b # initialize rs2
mulhu x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x6390ac96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xef82bd49 # initialize rs1
li x12, 0xdc5828e6 # initialize rs2
mulhu x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x1b3fc199 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9c1311a0 # initialize rs1
li x13, 0x20290f0d # initialize rs2
mulhu x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x2a27c164 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa8ec8ec4 # initialize rs1
li x14, 0x2b63e893 # initialize rs2
mulhu x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x85cdc19e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfa44d4aa # initialize rs1
li x15, 0x31be6821 # initialize rs2
mulhu x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x024a78de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fb3921c # initialize rs1
li x16, 0x40d3310a # initialize rs2
mulhu x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xbf46f71a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf9fd76cd # initialize rs1
li x17, 0xe0be5ee0 # initialize rs2
mulhu x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x1a02c22a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcefa5143 # initialize rs1
li x18, 0x4a65a8a7 # initialize rs2
mulhu x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xc6831624 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x94677f0e # initialize rs1
li x19, 0x34c49a61 # initialize rs2
mulhu x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x56f67964 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc67f825c # initialize rs1
li x20, 0x2d1a6da9 # initialize rs2
mulhu x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x77f60718 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe1df5fa2 # initialize rs1
li x21, 0xec01318d # initialize rs2
mulhu x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x9dd2c66b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xb355a6be # initialize rs1
li x22, 0x3561de66 # initialize rs2
mulhu x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x61e813ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3d4493f2 # initialize rs1
li x23, 0xa5297d7e # initialize rs2
mulhu x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xfc7d6b2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5a107ea3 # initialize rs1
li x24, 0x79d6bee0 # initialize rs2
mulhu x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xc0425d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5df5654f # initialize rs1
li x25, 0xc50310ba # initialize rs2
mulhu x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xccb3a4a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x20592a34 # initialize rs1
li x26, 0x0f5b6fd1 # initialize rs2
mulhu x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xd161faaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x1e5c07d0 # initialize rs1
li x27, 0xfd2203f6 # initialize rs2
mulhu x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xdec196ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2dda1678 # initialize rs1
li x28, 0x2db6955f # initialize rs2
mulhu x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x1c761690 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x817a9325 # initialize rs1
li x29, 0x4a2b7640 # initialize rs2
mulhu x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xf1e7c97d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xbae0b49a # initialize rs1
li x30, 0xb0550e22 # initialize rs2
mulhu x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x002e2cdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x97c6b287 # initialize rs1
li x31, 0xf1bf4453 # initialize rs2
mulhu x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x9, 0x62908a0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x564c60f9 # initialize rs1
li x0, 0xcec878b8 # initialize rs2
mulhu x9, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x14, 0x4711341f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xdb664cb0 # initialize rs1
li x1, 0x11a87af8 # initialize rs2
mulhu x14, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x29, 0xe8fd06ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1d8e332f # initialize rs1
li x2, 0xca203926 # initialize rs2
mulhu x29, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x14, 0xf11373e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc3987dbc # initialize rs1
li x3, 0xa6d09699 # initialize rs2
mulhu x14, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x10, 0x780581c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x393af397 # initialize rs1
li x4, 0x8c6a0814 # initialize rs2
mulhu x10, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x23, 0x393b4da1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xff449c9b # initialize rs1
li x5, 0xda9eade6 # initialize rs2
mulhu x23, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x12, 0x4d66099e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x26102dc5 # initialize rs1
li x6, 0x840a85d0 # initialize rs2
mulhu x12, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x18, 0x8425f402 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x895d2c44 # initialize rs1
li x7, 0xc20837f4 # initialize rs2
mulhu x18, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x7, 0xbdc4bb59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x20124b6f # initialize rs1
li x8, 0x093721d8 # initialize rs2
mulhu x7, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x17, 0x2652378a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa31ac56d # initialize rs1
li x9, 0x70cdb049 # initialize rs2
mulhu x17, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x19, 0xd98defcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7311df11 # initialize rs1
li x10, 0x14b77d71 # initialize rs2
mulhu x19, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x1, 0x1769e03f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4b731313 # initialize rs1
li x11, 0x1409dd14 # initialize rs2
mulhu x1, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x2, 0x3f9242be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0d6e6255 # initialize rs1
li x12, 0x49c3e45d # initialize rs2
mulhu x2, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x61005b64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd2af5463 # initialize rs1
li x13, 0x70d1ce95 # initialize rs2
mulhu x13, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x22, 0xdb5061ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb694be49 # initialize rs1
li x14, 0x427dc525 # initialize rs2
mulhu x22, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x25, 0x166daea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4b9fecad # initialize rs1
li x15, 0xf5e9107b # initialize rs2
mulhu x25, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x26, 0x99723e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8b5e011f # initialize rs1
li x16, 0xac9b0bb5 # initialize rs2
mulhu x26, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x14, 0x1134df52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb81afd30 # initialize rs1
li x17, 0x035fa7cb # initialize rs2
mulhu x14, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x23, 0x532a0ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd32a1888 # initialize rs1
li x18, 0xdb0ba1d3 # initialize rs2
mulhu x23, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x16, 0xe6e67d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xae956b2d # initialize rs1
li x19, 0x98b83486 # initialize rs2
mulhu x16, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xc9a31358 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfe63e8a7 # initialize rs1
li x20, 0x817406d1 # initialize rs2
mulhu x20, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x10, 0xe08f1fd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80d78037 # initialize rs1
li x21, 0xcf928d54 # initialize rs2
mulhu x10, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x12, 0x4f6e0f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x088c6afc # initialize rs1
li x22, 0x008c42c5 # initialize rs2
mulhu x12, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x6, 0xe41a1225 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfdcb9417 # initialize rs1
li x23, 0x893013a9 # initialize rs2
mulhu x6, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x23, 0x631a05f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xdb33b128 # initialize rs1
li x24, 0xe6497847 # initialize rs2
mulhu x23, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x14, 0x44006033 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd5ff81e4 # initialize rs1
li x25, 0x48721af1 # initialize rs2
mulhu x14, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x4, 0xfe77ff41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1c93b1d2 # initialize rs1
li x26, 0xf0322e44 # initialize rs2
mulhu x4, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x8, 0x405dfd6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x712c2527 # initialize rs1
li x27, 0xdd80eee6 # initialize rs2
mulhu x8, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x23, 0x2f0f7e9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x252384de # initialize rs1
li x28, 0xe53e911d # initialize rs2
mulhu x23, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x21, 0x82944262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x651524d7 # initialize rs1
li x29, 0x1b871dac # initialize rs2
mulhu x21, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x21, 0x34cfea91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x16c3588d # initialize rs1
li x30, 0x2c2b513f # initialize rs2
mulhu x21, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x24, 0x29ab895e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7430c0e9 # initialize rs1
li x31, 0xb9cba3c2 # initialize rs2
mulhu x24, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x662c9e08)
li x12, 0xbdd3af36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x662c9e08 # initialize rs1
li x22, 0x286c8bb3 # initialize rs2
mulhu x12, x25, x22 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x6e22696d)
li x29, 0xc855bf01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x91dd9693 # initialize rs1
li x12, 0x89d4c23b # initialize rs2
mulhu x29, x31, x12 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x4633aad4)
li x11, 0x9a4d7714 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x2f77bdd4 # initialize rs1
li x18, 0x4633aad4 # initialize rs2
mulhu x11, x26, x18 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x4c534bf0)
li x3, 0xcf05b4e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x03c8a84a # initialize rs1
li x1, 0xb3acb410 # initialize rs2
mulhu x3, x12, x1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
