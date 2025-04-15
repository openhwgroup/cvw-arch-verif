///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-maxu.S
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
li x0, 0xa93dec9db296b450 # initialize rs1
li x2, 0x397174f80d97b740 # initialize rs2
maxu x26, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x22b34418da65dd95 # initialize rs1
li x9, 0x6a5b70c73f58e611 # initialize rs2
maxu x12, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x8878cfd05a76a46e # initialize rs1
li x30, 0x780e09e02e7fcf6b # initialize rs2
maxu x25, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xbfd5f169c4f3ed00 # initialize rs1
li x20, 0x944fd0f15a2e66cb # initialize rs2
maxu x26, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc93590ceb583479e # initialize rs1
li x6, 0x21cf19fe2b80b9ab # initialize rs2
maxu x10, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1f9fb4849413f5cf # initialize rs1
li x14, 0x74b903a92647a005 # initialize rs2
maxu x28, x5, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xfde8a6f66911e0db # initialize rs1
li x18, 0xaa790cf0e60abb21 # initialize rs2
maxu x30, x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5e8a5b82f887678d # initialize rs1
li x3, 0x55d9946ccd09268c # initialize rs2
maxu x31, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x3b854953c0cbb4af # initialize rs1
li x11, 0x068c79eaaec3e37e # initialize rs2
maxu x2, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x9cb3ec34643dcbf4 # initialize rs1
li x1, 0x1c71c62946e2b996 # initialize rs2
maxu x30, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x4c0a859b57f42f82 # initialize rs1
li x27, 0xbc3301e48517c5c5 # initialize rs2
maxu x14, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x7395b6a0849c4bda # initialize rs1
li x10, 0x60be3ed6f2464cb2 # initialize rs2
maxu x16, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x692b7c35e7ee45a2 # initialize rs1
li x8, 0x1a854b0f06b4b41b # initialize rs2
maxu x18, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x1ef003fcc872d279 # initialize rs1
li x27, 0xd9801802b46ccd5f # initialize rs2
maxu x7, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x811b05517fa48dec # initialize rs1
li x26, 0xbca259b08e84e968 # initialize rs2
maxu x3, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc2bf14adbafd1065 # initialize rs1
li x21, 0x39e6c376eb210df2 # initialize rs2
maxu x31, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xd557150f43ee4887 # initialize rs1
li x8, 0xd348604a2c44f177 # initialize rs2
maxu x31, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xbf756035541a41a1 # initialize rs1
li x14, 0xc91bc5a1497d60b5 # initialize rs2
maxu x1, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x2596d19145be6570 # initialize rs1
li x15, 0x6f2be84aab9b5aeb # initialize rs2
maxu x8, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xb152b191c465cb53 # initialize rs1
li x25, 0xb3297b3c7e4ccadd # initialize rs2
maxu x16, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x70214a115ea2de5c # initialize rs1
li x24, 0xb06f4d8c9034391d # initialize rs2
maxu x11, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x562a349ebc113d15 # initialize rs1
li x12, 0x05ce201d65d575a6 # initialize rs2
maxu x7, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xf5b4d2f00eba6402 # initialize rs1
li x16, 0x80d09f0d0ddf3a48 # initialize rs2
maxu x19, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xeb93f7fb3f40bf93 # initialize rs1
li x17, 0xe3310bd42356574b # initialize rs2
maxu x31, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x6356b96deb903a13 # initialize rs1
li x25, 0xf6e9de4cd3fb7385 # initialize rs2
maxu x23, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x8b9381e75bac2065 # initialize rs1
li x14, 0x833a3b27dddbc2f5 # initialize rs2
maxu x15, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x113d4fa088032165 # initialize rs1
li x18, 0xbf8a8b300e7fe483 # initialize rs2
maxu x9, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x751212eb28f6cebf # initialize rs1
li x6, 0x2fab9937e0237b46 # initialize rs2
maxu x20, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x4a846b650a60ebe9 # initialize rs1
li x12, 0x82478f75839480a3 # initialize rs2
maxu x25, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xa2b6bed468248998 # initialize rs1
li x12, 0x398a40087cd6dd56 # initialize rs2
maxu x5, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x3e43a6143d7ab2ec # initialize rs1
li x19, 0xc9438cf355230580 # initialize rs2
maxu x1, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xcf61616a802d0bde # initialize rs1
li x30, 0x9984a96df9a1c432 # initialize rs2
maxu x21, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x30, 0xfc1cf9b4b05f2a97 # initialize rs1
li x0, 0xca74f334c6f754a5 # initialize rs2
maxu x16, x30, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x28, 0xa53e072b935843db # initialize rs1
li x1, 0x27a0d3cb49676dba # initialize rs2
maxu x16, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x26, 0xefbde64fcd66028f # initialize rs1
li x2, 0xf6b9597f7ceb6c38 # initialize rs2
maxu x19, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x21, 0x87ba75f529ba3823 # initialize rs1
li x3, 0xa75a7bbf2567cb45 # initialize rs2
maxu x28, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0x82de8819e6cdff31 # initialize rs1
li x4, 0xd6d5912fa618712f # initialize rs2
maxu x23, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0x505e3097feada415 # initialize rs1
li x5, 0x615c07fe9456cd9f # initialize rs2
maxu x29, x10, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0xb9c43a03d6c9be5f # initialize rs1
li x6, 0xf9b9c21d7d413743 # initialize rs2
maxu x12, x31, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x7d4de5023548b254 # initialize rs1
li x7, 0x6769412f8af3d709 # initialize rs2
maxu x13, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x22, 0x249e9bda3a0a2185 # initialize rs1
li x8, 0x70ec82b594487079 # initialize rs2
maxu x19, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x12, 0xce4d48f37b375f18 # initialize rs1
li x9, 0x1104f1c536c7473f # initialize rs2
maxu x18, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x26, 0x51f7a621d6e2d87a # initialize rs1
li x10, 0x39954483c6c05109 # initialize rs2
maxu x24, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x14, 0x73a75a3c96600bc8 # initialize rs1
li x11, 0x235d91979080f168 # initialize rs2
maxu x26, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x22, 0x6b1b552e6b5f4ff1 # initialize rs1
li x12, 0x6c94c1f7f3f0f3f7 # initialize rs2
maxu x19, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x26, 0x2baa80c2384702b3 # initialize rs1
li x13, 0xa53a592d38cbbcf6 # initialize rs2
maxu x10, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x15, 0x3fe38c0be796f20c # initialize rs1
li x14, 0xe21090d121dadadc # initialize rs2
maxu x12, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x7, 0x3740ff4914ef7523 # initialize rs1
li x15, 0x4389494404aed906 # initialize rs2
maxu x21, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x10, 0xbeecc96af9e8f12a # initialize rs1
li x16, 0x4813b13333e833dc # initialize rs2
maxu x21, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x19, 0x0fda556a5acb310b # initialize rs1
li x17, 0xca3ff5c33b322cfd # initialize rs2
maxu x29, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x14, 0x442d43a90234be34 # initialize rs1
li x18, 0x4786feb302d33d70 # initialize rs2
maxu x30, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x14, 0x2a066dbe252f26fd # initialize rs1
li x19, 0x27bfa4ff34eaade0 # initialize rs2
maxu x2, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x15, 0xfb7c6bba7b905279 # initialize rs1
li x20, 0x2e1251c7b08c4559 # initialize rs2
maxu x22, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x18, 0x18b594fa2e9c72c9 # initialize rs1
li x21, 0xf88db6167b27d0cc # initialize rs2
maxu x26, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x10, 0x97a6ff8f3c5e07a8 # initialize rs1
li x22, 0x0428dcf59f3bed47 # initialize rs2
maxu x2, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x15, 0x65849abf9df89e2b # initialize rs1
li x23, 0x032462638bf95916 # initialize rs2
maxu x26, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x25, 0x8fef2d3d37fc7286 # initialize rs1
li x24, 0xe804a2fe4c8dd9fe # initialize rs2
maxu x14, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x18, 0x53e844902eca748b # initialize rs1
li x25, 0xa07051fb2db33386 # initialize rs2
maxu x19, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x1, 0xc3e27b4838409000 # initialize rs1
li x26, 0x20328d6b5322cdae # initialize rs2
maxu x14, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x23, 0xbb9fa4f51cfc1c2b # initialize rs1
li x27, 0x128e5449d79ccd45 # initialize rs2
maxu x13, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x18, 0xf29bc936077932d2 # initialize rs1
li x28, 0x58b66d266f6ca3f5 # initialize rs2
maxu x25, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x12, 0x5d2e54b970f86f4b # initialize rs1
li x29, 0x933a49f5b2e580a6 # initialize rs2
maxu x27, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x28, 0x624c66f0b6143311 # initialize rs1
li x30, 0x6761e2041a4e36e6 # initialize rs2
maxu x16, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x5, 0xe85e7655b815aade # initialize rs1
li x31, 0xfaf6dbc64aefb08a # initialize rs2
maxu x14, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 504)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0x3d77e2a8bb256c56 # initialize rs1
li x27, 0x5459e6fedb40921a # initialize rs2
maxu x0, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x30, 0xc6af5a65b62644ea # initialize rs1
li x28, 0xed2b09c4e9d35b13 # initialize rs2
maxu x1, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x5, 0x2f5f7fbd87cf95f6 # initialize rs1
li x20, 0xa151c305d8bfd60d # initialize rs2
maxu x2, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x19, 0x8dadc9c0bd1b33a6 # initialize rs1
li x17, 0x71841c559e9aa7c3 # initialize rs2
maxu x3, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0x12e144664ddec4d2 # initialize rs1
li x1, 0x3679780e807b73ab # initialize rs2
maxu x4, x24, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0xb7dc40f70a920045 # initialize rs1
li x30, 0x2641c2f33f81775f # initialize rs2
maxu x5, x8, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x9768a1e7d4c12ee7 # initialize rs1
li x13, 0x3272a38e6918f9a4 # initialize rs2
maxu x6, x22, x13 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0x3328745c5aaa3225 # initialize rs1
li x1, 0xe0429eabfbc4fc80 # initialize rs2
maxu x7, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x20, 0x42613fd65f6d5cbb # initialize rs1
li x17, 0x5f00f6da8a809463 # initialize rs2
maxu x8, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x7, 0x90fafa51f8e20c55 # initialize rs1
li x20, 0x088ad649976c9199 # initialize rs2
maxu x9, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x7, 0x4a7f0cc55775dae8 # initialize rs1
li x17, 0x79fdee3532ddf30d # initialize rs2
maxu x10, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x5, 0x95c0cb11304f7b1a # initialize rs1
li x15, 0x12596d9909a357c1 # initialize rs2
maxu x11, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x17, 0xfb5d0aaf264dc648 # initialize rs1
li x3, 0xaf81e703e38823d9 # initialize rs2
maxu x12, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x19, 0x09ffd2c0ebbcaaa2 # initialize rs1
li x24, 0xb1ebe43668a4f41b # initialize rs2
maxu x13, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x22, 0xe6300c6f0ce477a1 # initialize rs1
li x18, 0x49688732052e3bb3 # initialize rs2
maxu x14, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x18, 0x53bb0882ebfa1d8e # initialize rs1
li x31, 0xcf269f77e1b39615 # initialize rs2
maxu x15, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x8, 0x55306caf75a2555e # initialize rs1
li x24, 0x38c48225b797a636 # initialize rs2
maxu x16, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x10, 0xd4759b3214cef98a # initialize rs1
li x11, 0x21796de7f7d8820a # initialize rs2
maxu x17, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x10, 0x2ad2403eb25f41e2 # initialize rs1
li x20, 0x4b617c3f613a4861 # initialize rs2
maxu x18, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x5, 0x3c9167e999e661e0 # initialize rs1
li x27, 0x69465702a40a1555 # initialize rs2
maxu x19, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x13, 0x7e33454a5d418d8f # initialize rs1
li x3, 0x797d74a557d2a6af # initialize rs2
maxu x20, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x14, 0xec53bafd3f5c6d21 # initialize rs1
li x7, 0xf3424d17772e7f58 # initialize rs2
maxu x21, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x18, 0x7eda199c75ca256e # initialize rs1
li x30, 0x7acf24e2c8c993d0 # initialize rs2
maxu x22, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0x38f2abca85f36e9e # initialize rs1
li x20, 0x49d44221180e9500 # initialize rs2
maxu x23, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x26, 0x960c563483e20c81 # initialize rs1
li x23, 0x1fe8a8f1b3ccf0bd # initialize rs2
maxu x24, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x5, 0xcbe7d15a55dbda23 # initialize rs1
li x19, 0xff4a5de8f3fd254e # initialize rs2
maxu x25, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x9, 0x47ac2f83b66560e1 # initialize rs1
li x15, 0x1a8a098f52fa3797 # initialize rs2
maxu x26, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x2, 0xb4fc3f3fc4e4f373 # initialize rs1
li x28, 0xad440a8bb159eef3 # initialize rs2
maxu x27, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x18, 0x6d0d012a2903a724 # initialize rs1
li x13, 0x1615abeba7772107 # initialize rs2
maxu x28, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x3, 0x5f02651a03f7aae3 # initialize rs1
li x17, 0xd211d4eb89cc609f # initialize rs2
maxu x29, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0x7a59bf3c2577e79c # initialize rs1
li x1, 0xa0a90f8f3d1c6980 # initialize rs2
maxu x30, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x23, 0xd6187328cd392aef # initialize rs1
li x26, 0x49d50b41a2e5d630 # initialize rs2
maxu x31, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x15, 0x0000000000000000 # initialize rs1
li x17, 0x369d00c7b6222d55 # initialize rs2
maxu x21, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x9, 0x0000000000000001 # initialize rs1
li x1, 0xe45163526825e5e9 # initialize rs2
maxu x15, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x30, 0x0000000000000002 # initialize rs1
li x13, 0xeb74a42d0bb5f966 # initialize rs2
maxu x25, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x9, 0x8000000000000000 # initialize rs1
li x11, 0xe711e0b22fb6bce1 # initialize rs2
maxu x7, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rs1
li x14, 0x40b531d6e9b71da9 # initialize rs2
maxu x26, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
li x8, 0x79169fced1e601cc # initialize rs2
maxu x15, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x1, 0x7ffffffffffffffe # initialize rs1
li x12, 0xb6486291d1237a51 # initialize rs2
maxu x3, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x31, 0x39ae02f7308ee9c5 # initialize rs2
maxu x8, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x26, 0xa7a022c75e008218 # initialize rs2
maxu x7, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x8719eb9252105473 # initialize rs2
maxu x11, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x4223ecc5baf6b05f # initialize rs2
maxu x17, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x15, 0x5555555555555555 # initialize rs1
li x17, 0xfd670e4e9a537e4c # initialize rs2
maxu x28, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0x00000000ffffffff # initialize rs1
li x19, 0x4b24a86ed7e56372 # initialize rs2
maxu x27, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x7, 0x00000000fffffffe # initialize rs1
li x13, 0x691ac5feb6f7849c # initialize rs2
maxu x18, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0x0000000100000000 # initialize rs1
li x18, 0xb3919774da014600 # initialize rs2
maxu x23, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x23, 0x0000000100000001 # initialize rs1
li x7, 0x604d2bfc430e26fe # initialize rs2
maxu x16, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x26, 0x55238c33fc20ef0f # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
maxu x23, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x12, 0x0ce120d80241ce5a # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
maxu x31, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x13, 0x7aa46a8753fe566b # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
maxu x10, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x19, 0xaba92acb9784cf5b # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
maxu x31, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x22, 0x9fcbb3b1be576676 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
maxu x16, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x31, 0x692466c47a58bc4b # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
maxu x18, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x2, 0xbf43a9fc01f037eb # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
maxu x5, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x19, 0x334e31c4f3948cae # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
maxu x31, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x20, 0x3ff08002f316434b # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
maxu x19, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x21, 0xee75efa88db35444 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
maxu x1, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0xc0ae8bdb28def05d # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
maxu x31, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x6, 0x7667e2fac54f7775 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
maxu x20, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x21, 0x0b18a356e6d75e01 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
maxu x29, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x20, 0x4cde7b4092764398 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
maxu x10, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x8, 0xc55be85a62bc92cd # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
maxu x11, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x13, 0x6235db9f0b5c6cee # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
maxu x15, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x3, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
maxu x15, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x30, 0x0000000000000000 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
maxu x27, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x24, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
maxu x7, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x18, 0x0000000000000000 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
maxu x19, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x3, 0x0000000000000000 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
maxu x25, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000000000000 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
maxu x23, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000000000000 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
maxu x27, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x6, 0x0000000000000000 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
maxu x7, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000000000000 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
maxu x7, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000000000000 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
maxu x15, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000000000000 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
maxu x20, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x15, 0x0000000000000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
maxu x2, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x29, 0x0000000000000000 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
maxu x26, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x20, 0x0000000000000000 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
maxu x26, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x6, 0x0000000000000000 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
maxu x1, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x14, 0x0000000000000000 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
maxu x31, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x31, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
maxu x2, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
maxu x10, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x5, 0x0000000000000001 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
maxu x29, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x8, 0x0000000000000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
maxu x6, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x23, 0x0000000000000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
maxu x9, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x6, 0x0000000000000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
maxu x11, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x20, 0x0000000000000001 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
maxu x1, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x14, 0x0000000000000001 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
maxu x3, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x22, 0x0000000000000001 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
maxu x26, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x14, 0x0000000000000001 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
maxu x13, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x0000000000000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
maxu x24, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x29, 0x0000000000000001 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
maxu x6, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
maxu x19, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x29, 0x0000000000000001 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
maxu x26, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x28, 0x0000000000000001 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
maxu x30, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x19, 0x0000000000000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
maxu x28, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x3, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
maxu x18, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x26, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
maxu x10, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x1, 0x0000000000000002 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
maxu x3, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x1, 0x0000000000000002 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
maxu x17, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x6, 0x0000000000000002 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
maxu x23, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x31, 0x0000000000000002 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
maxu x9, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x13, 0x0000000000000002 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
maxu x7, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x12, 0x0000000000000002 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
maxu x29, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x6, 0x0000000000000002 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
maxu x16, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000000000002 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
maxu x12, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x0000000000000002 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
maxu x14, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x26, 0x0000000000000002 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
maxu x29, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x2, 0x0000000000000002 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
maxu x10, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x30, 0x0000000000000002 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
maxu x13, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x14, 0x0000000000000002 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
maxu x30, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x20, 0x0000000000000002 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
maxu x31, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x28, 0x8000000000000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
maxu x7, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x17, 0x8000000000000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
maxu x24, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x31, 0x8000000000000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
maxu x7, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x29, 0x8000000000000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
maxu x13, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x18, 0x8000000000000000 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
maxu x16, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x17, 0x8000000000000000 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
maxu x22, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x7, 0x8000000000000000 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
maxu x24, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x29, 0x8000000000000000 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
maxu x31, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x13, 0x8000000000000000 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
maxu x15, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x6, 0x8000000000000000 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
maxu x13, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x8000000000000000 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
maxu x6, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x27, 0x8000000000000000 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
maxu x28, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x29, 0x8000000000000000 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
maxu x8, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x21, 0x8000000000000000 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
maxu x15, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x20, 0x8000000000000000 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
maxu x3, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x15, 0x8000000000000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
maxu x2, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x6, 0x8000000000000001 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
maxu x8, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x30, 0x8000000000000001 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
maxu x27, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x23, 0x8000000000000001 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
maxu x26, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x9, 0x8000000000000001 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
maxu x14, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x16, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
maxu x18, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x22, 0x8000000000000001 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
maxu x5, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x23, 0x8000000000000001 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
maxu x10, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x5, 0x8000000000000001 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
maxu x12, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x22, 0x8000000000000001 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
maxu x20, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x26, 0x8000000000000001 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
maxu x3, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x8000000000000001 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
maxu x10, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x22, 0x8000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
maxu x9, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x26, 0x8000000000000001 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
maxu x2, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x19, 0x8000000000000001 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
maxu x28, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x24, 0x8000000000000001 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
maxu x13, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x19, 0x8000000000000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
maxu x25, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x3, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
maxu x5, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x28, 0x7fffffffffffffff # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
maxu x25, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x17, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
maxu x1, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x9, 0x7fffffffffffffff # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
maxu x30, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x27, 0x7fffffffffffffff # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
maxu x18, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x6, 0x7fffffffffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
maxu x12, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x29, 0x7fffffffffffffff # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
maxu x11, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
maxu x13, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x1, 0x7fffffffffffffff # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
maxu x25, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x25, 0x7fffffffffffffff # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
maxu x8, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x7fffffffffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
maxu x11, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x17, 0x7fffffffffffffff # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
maxu x13, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x30, 0x7fffffffffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
maxu x25, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x19, 0x7fffffffffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
maxu x9, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x24, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
maxu x13, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x15, 0x7fffffffffffffff # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
maxu x2, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x30, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
maxu x29, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x18, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
maxu x2, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x18, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
maxu x28, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x12, 0x7ffffffffffffffe # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
maxu x5, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x19, 0x7ffffffffffffffe # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
maxu x28, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x11, 0x7ffffffffffffffe # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
maxu x22, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x9, 0x7ffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
maxu x3, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x16, 0x7ffffffffffffffe # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
maxu x24, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
maxu x29, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x13, 0x7ffffffffffffffe # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
maxu x15, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x7ffffffffffffffe # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
maxu x5, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x25, 0x7ffffffffffffffe # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
maxu x1, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x17, 0x7ffffffffffffffe # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
maxu x24, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
maxu x7, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x30, 0x7ffffffffffffffe # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
maxu x28, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x16, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
maxu x30, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x24, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
maxu x3, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x21, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
maxu x26, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x5, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
maxu x23, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x21, 0xffffffffffffffff # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
maxu x7, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x22, 0xffffffffffffffff # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
maxu x23, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x17, 0xffffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
maxu x31, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0xffffffffffffffff # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
maxu x29, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x12, 0xffffffffffffffff # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
maxu x31, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x2, 0xffffffffffffffff # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
maxu x30, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x6, 0xffffffffffffffff # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
maxu x17, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xffffffffffffffff # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
maxu x5, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x6, 0xffffffffffffffff # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
maxu x15, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x9, 0xffffffffffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
maxu x26, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x25, 0xffffffffffffffff # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
maxu x9, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x11, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
maxu x19, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x8, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
maxu x26, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x14, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
maxu x30, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x2, 0xfffffffffffffffe # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
maxu x20, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x7, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
maxu x27, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x31, 0xfffffffffffffffe # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
maxu x27, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x25, 0xfffffffffffffffe # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
maxu x29, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x18, 0xfffffffffffffffe # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
maxu x2, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
maxu x3, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x13, 0xfffffffffffffffe # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
maxu x23, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
maxu x19, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x31, 0xfffffffffffffffe # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
maxu x7, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0xfffffffffffffffe # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
maxu x10, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x29, 0xfffffffffffffffe # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
maxu x1, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x13, 0xfffffffffffffffe # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
maxu x17, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x10, 0xfffffffffffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
maxu x13, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x20, 0xfffffffffffffffe # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
maxu x11, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x9, 0xfffffffffffffffe # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
maxu x16, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
maxu x7, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
maxu x11, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
maxu x12, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
maxu x27, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
maxu x30, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
maxu x25, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
maxu x14, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
maxu x28, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
maxu x18, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
maxu x24, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
maxu x19, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
maxu x1, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
maxu x23, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
maxu x3, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
maxu x29, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
maxu x27, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
maxu x6, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
maxu x3, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
maxu x2, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
maxu x1, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
maxu x5, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
maxu x28, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
maxu x14, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
maxu x26, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
maxu x11, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
maxu x11, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
maxu x12, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
maxu x31, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
maxu x24, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
maxu x21, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
maxu x15, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
maxu x7, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x28, 0x5555555555555555 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
maxu x29, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x10, 0x5555555555555555 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
maxu x9, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x31, 0x5555555555555555 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
maxu x5, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x15, 0x5555555555555555 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
maxu x1, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x19, 0x5555555555555555 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
maxu x23, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x8, 0x5555555555555555 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
maxu x19, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x9, 0x5555555555555555 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
maxu x16, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x18, 0x5555555555555555 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
maxu x25, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x14, 0x5555555555555555 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
maxu x11, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x22, 0x5555555555555555 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
maxu x16, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x5555555555555555 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
maxu x8, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x2, 0x5555555555555555 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
maxu x19, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x27, 0x5555555555555555 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
maxu x11, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x19, 0x5555555555555555 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
maxu x17, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x1, 0x5555555555555555 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
maxu x24, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x16, 0x5555555555555555 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
maxu x23, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x12, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
maxu x29, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x16, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
maxu x14, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x6, 0x00000000ffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
maxu x10, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x1, 0x00000000ffffffff # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
maxu x3, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x28, 0x00000000ffffffff # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
maxu x6, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x25, 0x00000000ffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
maxu x7, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x20, 0x00000000ffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
maxu x24, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x26, 0x00000000ffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
maxu x20, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x27, 0x00000000ffffffff # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
maxu x5, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x1, 0x00000000ffffffff # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
maxu x13, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x00000000ffffffff # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
maxu x11, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x7, 0x00000000ffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
maxu x17, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x1, 0x00000000ffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
maxu x23, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0x00000000ffffffff # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
maxu x29, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x25, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
maxu x7, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x9, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
maxu x29, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x25, 0x00000000fffffffe # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
maxu x7, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x22, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
maxu x6, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x31, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
maxu x26, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x9, 0x00000000fffffffe # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
maxu x11, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x13, 0x00000000fffffffe # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
maxu x30, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x18, 0x00000000fffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
maxu x29, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x10, 0x00000000fffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
maxu x12, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x16, 0x00000000fffffffe # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
maxu x6, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x18, 0x00000000fffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
maxu x8, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x30, 0x00000000fffffffe # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
maxu x31, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x00000000fffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
maxu x5, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x24, 0x00000000fffffffe # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
maxu x12, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x15, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
maxu x30, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x2, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
maxu x9, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x5, 0x00000000fffffffe # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
maxu x27, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x17, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
maxu x28, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x24, 0x0000000100000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
maxu x19, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x21, 0x0000000100000000 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
maxu x3, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x21, 0x0000000100000000 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
maxu x25, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x23, 0x0000000100000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
maxu x2, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x28, 0x0000000100000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
maxu x16, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x23, 0x0000000100000000 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
maxu x5, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000100000000 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
maxu x6, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x28, 0x0000000100000000 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
maxu x12, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x15, 0x0000000100000000 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
maxu x19, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000100000000 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
maxu x14, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x0000000100000000 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
maxu x19, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x7, 0x0000000100000000 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
maxu x29, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x20, 0x0000000100000000 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
maxu x19, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x25, 0x0000000100000000 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
maxu x11, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x26, 0x0000000100000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
maxu x13, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x26, 0x0000000100000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
maxu x13, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x24, 0x0000000100000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
maxu x14, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x26, 0x0000000100000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
maxu x20, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x17, 0x0000000100000001 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
maxu x12, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x18, 0x0000000100000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
maxu x31, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x3, 0x0000000100000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
maxu x7, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x1, 0x0000000100000001 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
maxu x8, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x30, 0x0000000100000001 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
maxu x27, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x12, 0x0000000100000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
maxu x16, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000100000001 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
maxu x23, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000100000001 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
maxu x3, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0000000100000001 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
maxu x3, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x14, 0x0000000100000001 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
maxu x5, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x16, 0x0000000100000001 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
maxu x30, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x24, 0x0000000100000001 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
maxu x8, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x1, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
maxu x30, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x7, 0x0000000100000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
maxu x30, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x689159df5cf739a1 # initialize rs1
li x0, 0x940cf234f08ebfa7 # initialize rs2
maxu x3, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x4315a17517f57519 # initialize rs1
li x1, 0x9aed6ba0b2b47e2b # initialize rs2
maxu x22, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x772a598ea63d0785 # initialize rs1
li x2, 0xe1d65cc459a9f79f # initialize rs2
maxu x15, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x4eb2dc449e3e44f4 # initialize rs1
li x3, 0x0393a13df1c15eb8 # initialize rs2
maxu x17, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2921fb12965ec7f5 # initialize rs1
li x4, 0x32179004bca56962 # initialize rs2
maxu x16, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd4c234e738360d7d # initialize rs1
li x5, 0xa3eee67155ce490a # initialize rs2
maxu x21, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7c4ee0238dfb0cc4 # initialize rs1
li x6, 0x5b6858684061bd37 # initialize rs2
maxu x8, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x8, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x2ae188bc7103f36e # initialize rs1
li x7, 0x4199e371fe1f07d3 # initialize rs2
maxu x26, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xbb6c6dc4598c3363 # initialize rs1
li x8, 0x881919a6dbaea4b7 # initialize rs2
maxu x12, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x9841ce40693c224b # initialize rs1
li x9, 0x17c3f8f996c42623 # initialize rs2
maxu x22, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x27c92f72ef6dc058 # initialize rs1
li x10, 0x5e4c176466118503 # initialize rs2
maxu x2, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xdfc2243b81871860 # initialize rs1
li x11, 0x5ef3e86c50916b99 # initialize rs2
maxu x7, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xd9d5b1963674e229 # initialize rs1
li x12, 0x118dde24bbc4fb20 # initialize rs2
maxu x28, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x549d627b961bb2df # initialize rs1
li x13, 0x840a9c70d06a84a7 # initialize rs2
maxu x27, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x2f89c9aa0327c1d5 # initialize rs1
li x14, 0x96508b1a25f1fa5e # initialize rs2
maxu x20, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x76c29b0c9df89844 # initialize rs1
li x15, 0x863ac1adeb8dbfbc # initialize rs2
maxu x14, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xf4768838cb6bb1bd # initialize rs1
li x16, 0xec9b71e2d575e1f9 # initialize rs2
maxu x22, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xab318786dc00aae5 # initialize rs1
li x17, 0x53ca7842e5104c35 # initialize rs2
maxu x23, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x0016fa0472b7c2af # initialize rs1
li x18, 0x2557360781593d67 # initialize rs2
maxu x27, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x71c6d31dff7275d3 # initialize rs1
li x19, 0xca015260722010f4 # initialize rs2
maxu x10, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x839c0f856d49221b # initialize rs1
li x20, 0x10b863e35318dc10 # initialize rs2
maxu x22, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xc03f88876e3735ae # initialize rs1
li x21, 0xd531b2be2d6329a8 # initialize rs2
maxu x23, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x717235de3cb3bd91 # initialize rs1
li x22, 0xb3018ced960a8a85 # initialize rs2
maxu x25, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x84eab85256ef7855 # initialize rs1
li x23, 0x17d0f063141ab87d # initialize rs2
maxu x9, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x7715aa9c2f75f3b5 # initialize rs1
li x24, 0x20444e3e17b45e66 # initialize rs2
maxu x7, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x03dac3563fb95f3c # initialize rs1
li x25, 0xf34c04cd95ca653d # initialize rs2
maxu x13, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x1986daa67c1ca7de # initialize rs1
li x26, 0xc3003fea400fcf06 # initialize rs2
maxu x21, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x4fba971002e72217 # initialize rs1
li x27, 0x56c56ba32b9534b5 # initialize rs2
maxu x25, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x2614643a6fe723f7 # initialize rs1
li x28, 0x8370189f3317dd61 # initialize rs2
maxu x26, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x027e7ab35322df2f # initialize rs1
li x29, 0xc2958d5cd337ef1d # initialize rs2
maxu x9, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x1690884d74e05768 # initialize rs1
li x30, 0x8e9fea4b83c97a8d # initialize rs2
maxu x14, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xcbf4cb7da31088ce # initialize rs1
li x31, 0x32dd97714356e674 # initialize rs2
maxu x21, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xca0ae989cf4665f8 # initialize rs1
li x30, 0x00ad086071aa59d3 # initialize rs2
maxu x0, x0, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x6927a51d5fb9a661 # initialize rs1
li x1, 0x96ed6b987e4c129c # initialize rs2
maxu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xa85736e0595cf8a4 # initialize rs1
li x8, 0xbb61f2914db18760 # initialize rs2
maxu x2, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x92b845a3407dfc2f # initialize rs1
li x9, 0x753680e4f0032f44 # initialize rs2
maxu x3, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6ec90567d12bf837 # initialize rs1
li x17, 0x28c71882a3f4d0e7 # initialize rs2
maxu x4, x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcc1c5616ac5faeec # initialize rs1
li x19, 0x8c3507b1b6605945 # initialize rs2
maxu x5, x5, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3b54a24ac70ad392 # initialize rs1
li x17, 0x68ddc4f9ef9df1d6 # initialize rs2
maxu x6, x6, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf861fb8d9e5a0124 # initialize rs1
li x31, 0x9dc500dfcd7882d7 # initialize rs2
maxu x7, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd86c48a45a9e8666 # initialize rs1
li x16, 0xbdacf33232d14e1f # initialize rs2
maxu x8, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf97452f55aceffa4 # initialize rs1
li x12, 0x158733211fd0de91 # initialize rs2
maxu x9, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x44060230e590cf91 # initialize rs1
li x5, 0xe0158bc6ecb2fa4f # initialize rs2
maxu x10, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x7b8542f288f301c2 # initialize rs1
li x31, 0xac20f2c1c943c2b3 # initialize rs2
maxu x11, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xa2b70adf1ce839f9 # initialize rs1
li x6, 0x3504a75c1206ebd7 # initialize rs2
maxu x12, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x2effb6216f95e858 # initialize rs1
li x11, 0xc6558a9683d8af4a # initialize rs2
maxu x13, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x49acefaff9e86eb5 # initialize rs1
li x31, 0x387771f8ee9ad456 # initialize rs2
maxu x14, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xe414839fbadf5669 # initialize rs1
li x13, 0x4fcc72fd9ac8fa37 # initialize rs2
maxu x15, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xd1db6a23c2ccbcb0 # initialize rs1
li x5, 0x91f54158f6ed954b # initialize rs2
maxu x16, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x04680eb6df565fe6 # initialize rs1
li x18, 0x0a53c6f36bde9360 # initialize rs2
maxu x17, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x959fc189cc08e117 # initialize rs1
li x24, 0xf86e9c7a8dac5b8f # initialize rs2
maxu x18, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x8f6774ec1c43a32b # initialize rs1
li x21, 0xed9b93b32d956693 # initialize rs2
maxu x19, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xe8252f9ae516799d # initialize rs1
li x3, 0xe19bcc233816a27c # initialize rs2
maxu x20, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xbbad6235a8d8f0f3 # initialize rs1
li x19, 0x91bc6ed6412e65ea # initialize rs2
maxu x21, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xde5fd61911fc2a4c # initialize rs1
li x21, 0xa5b27d4d2dfb9b13 # initialize rs2
maxu x22, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xd8fe06a32f9ee9bf # initialize rs1
li x7, 0x8f6ec47c0c46fc67 # initialize rs2
maxu x23, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x6ea3ca6c8fb25e5e # initialize rs1
li x30, 0x90446dbfe54962c9 # initialize rs2
maxu x24, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x2bf3fc8861b00811 # initialize rs1
li x12, 0x0ea266ab9b9b7380 # initialize rs2
maxu x25, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x090b27788b9d3c95 # initialize rs1
li x20, 0x13255b840cb7e615 # initialize rs2
maxu x26, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x744d87295d34bd9b # initialize rs1
li x22, 0x7b17111eb5696620 # initialize rs2
maxu x27, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xc2fd70b3bdd0da84 # initialize rs1
li x11, 0x1d65fd00222fff37 # initialize rs2
maxu x28, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x81fd193c6b20dacc # initialize rs1
li x20, 0xcb2e89181dabb094 # initialize rs2
maxu x29, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x90ac1ae4d54128b9 # initialize rs1
li x20, 0x2608621693a89820 # initialize rs2
maxu x30, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xed79c5a416b11d35 # initialize rs1
li x3, 0xf904e67f98afa08b # initialize rs2
maxu x31, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x16, 0x6d15c0420dd1e20e # initialize rs1
li x0, 0x1eb58e071187ad3d # initialize rs2
maxu x0, x16, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x8, 0x1e57fba955e28ee1 # initialize rs1
li x1, 0xb1eba91181e648b5 # initialize rs2
maxu x1, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x7, 0x3e986b488bb25604 # initialize rs1
li x2, 0x51a7f70ede516829 # initialize rs2
maxu x2, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x27, 0x0c8450a2983d5385 # initialize rs1
li x3, 0x340fe6de45640529 # initialize rs2
maxu x3, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0xd781bd0dae0af30f # initialize rs1
li x4, 0xbc818d5fa6cad6aa # initialize rs2
maxu x4, x12, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0xd09ca6021617933c # initialize rs1
li x5, 0xc1233c3ff872e3dd # initialize rs2
maxu x5, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
li x5, 0x401a0f384f82a37d # initialize rs1
li x6, 0x4209b18744798cf6 # initialize rs2
maxu x6, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x4deabf50ab613bb2 # initialize rs1
li x7, 0xb4d530055f4252e3 # initialize rs2
maxu x7, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x7, 0x7c60f9aac4de0ff4 # initialize rs1
li x8, 0xfb259d2e22a83093 # initialize rs2
maxu x8, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x21, 0x99eade9b8991d60b # initialize rs1
li x9, 0xd5a13edada91eced # initialize rs2
maxu x9, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x8, 0x6c5930764ad2b8ec # initialize rs1
li x10, 0x63d0885a58c1d8a4 # initialize rs2
maxu x10, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x24, 0x02599a7d8341db50 # initialize rs1
li x11, 0xe746875977a1a40c # initialize rs2
maxu x11, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x31, 0x75419eaa937eb80c # initialize rs1
li x12, 0x499abcf31c7f0eaf # initialize rs2
maxu x12, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x14, 0x89939a99f5579764 # initialize rs1
li x13, 0xc62df19d02527973 # initialize rs2
maxu x13, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x6, 0x6f4e5cbfcfbd2eca # initialize rs1
li x14, 0xecd8b1b87e2545cf # initialize rs2
maxu x14, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x24, 0x956da143f98b3828 # initialize rs1
li x15, 0x93eb74d8154151ab # initialize rs2
maxu x15, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x21, 0xd3e90fd29dde4158 # initialize rs1
li x16, 0x15f2ee8b7e8bb96a # initialize rs2
maxu x16, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x14, 0x0606b396d497a5d9 # initialize rs1
li x17, 0x47924b6c2ca0098e # initialize rs2
maxu x17, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x16, 0xc85e65c43a14a33f # initialize rs1
li x18, 0xcd5db7a3b73adaca # initialize rs2
maxu x18, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x5, 0x1293e48ed38d0036 # initialize rs1
li x19, 0xfab2ff430ce2f442 # initialize rs2
maxu x19, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x4896884a79736868 # initialize rs1
li x20, 0x314f6e1801645ab6 # initialize rs2
maxu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0x0cacbb7d27feb043 # initialize rs1
li x21, 0xb5d6aca23b890668 # initialize rs2
maxu x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x18, 0xe44b9253ad969d23 # initialize rs1
li x22, 0xb3a815dbedd5e172 # initialize rs2
maxu x22, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x10, 0xa5d85b673cc64b7a # initialize rs1
li x23, 0x80b478db33673ff4 # initialize rs2
maxu x23, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x3, 0x845acf2836e13a8d # initialize rs1
li x24, 0x8114016b0d4e04bd # initialize rs2
maxu x24, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x16, 0xb960d2fe6e2824b8 # initialize rs1
li x25, 0x0c0a3e49b36027f2 # initialize rs2
maxu x25, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x17, 0x1df6c479597a164a # initialize rs1
li x26, 0x8d3ed6e3688e45eb # initialize rs2
maxu x26, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xe24d3259d5bdc04d # initialize rs1
li x27, 0x7fa65cdab019a6e1 # initialize rs2
maxu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x23, 0x07ba83e9d687be43 # initialize rs1
li x28, 0x86b2776c99fb61b3 # initialize rs2
maxu x28, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x3, 0xbff89750899a3f7c # initialize rs1
li x29, 0xca2b5e8bacae9cf2 # initialize rs2
maxu x29, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x3, 0x595dd6f06133e107 # initialize rs1
li x30, 0x5c8844ffb22c82b6 # initialize rs2
maxu x30, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x5, 0x21708579b7cc5094 # initialize rs1
li x31, 0xdf910db418a8caf7 # initialize rs2
maxu x31, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x937816bfac9e3de1 # initialize rs1
li x0, 0xaf93ade1149438bd # initialize rs2
maxu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x812b71b94e0229ad # initialize rs1
li x1, 0x5f40f8845fce95c5 # initialize rs2
maxu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xd3b36d8b3ccf0e31 # initialize rs1
li x2, 0xe6c8df49b3b99345 # initialize rs2
maxu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x8b80539d16ba6b1d # initialize rs1
li x3, 0x0cce3f81d2dd7b1f # initialize rs2
maxu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x05fe29bd6b8e2677 # initialize rs1
li x4, 0x3023175887b15fa8 # initialize rs2
maxu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xaa4132008536bc2b # initialize rs1
li x5, 0x26866c1ebe94545f # initialize rs2
maxu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2656195a2114d4a7 # initialize rs1
li x6, 0xce87a82f446992f3 # initialize rs2
maxu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xba99023bfc73dea0 # initialize rs1
li x7, 0x8565e11546ddfab1 # initialize rs2
maxu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xddeeb5214b9e08ea # initialize rs1
li x8, 0xb30229fd0b006a55 # initialize rs2
maxu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x26c388758b2d64b4 # initialize rs1
li x9, 0xd0e8c86cd8ebd21b # initialize rs2
maxu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x625f9a8301253c0b # initialize rs1
li x10, 0xf115ee71ab3dd2d5 # initialize rs2
maxu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x47b67eca51c267b9 # initialize rs1
li x11, 0xcee34b8893b5bab1 # initialize rs2
maxu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xc6ed85f3bc86f164 # initialize rs1
li x12, 0xe0e74372257079a0 # initialize rs2
maxu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xe09e1e98be273f31 # initialize rs1
li x13, 0xcc9babf0552c7fa6 # initialize rs2
maxu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xada8b6554517e5af # initialize rs1
li x14, 0x14ac383de2addd57 # initialize rs2
maxu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x46a8cea07b28d39f # initialize rs1
li x15, 0x082f9aec1ffcce87 # initialize rs2
maxu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x084b24bc357dd05e # initialize rs1
li x16, 0x41c6092a04c17a95 # initialize rs2
maxu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x08e4d3f26ff5b61b # initialize rs1
li x17, 0x540971f78e35d160 # initialize rs2
maxu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x1be6342afab2655b # initialize rs1
li x18, 0xf3f8d7b91c92711d # initialize rs2
maxu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x2ecab181d9305337 # initialize rs1
li x19, 0x3ed40fd5b501f477 # initialize rs2
maxu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x5a1878e7ca2a6ae6 # initialize rs1
li x20, 0x7a3d1df894291165 # initialize rs2
maxu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x2dec84427b370ddc # initialize rs1
li x21, 0xb90cf5e17bac7706 # initialize rs2
maxu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x0a29135057c783f5 # initialize rs1
li x22, 0xca1a4bade0972519 # initialize rs2
maxu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x154dbd76ead810cd # initialize rs1
li x23, 0xea6bbdec89973fd5 # initialize rs2
maxu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x9ec115ae7528aa24 # initialize rs1
li x24, 0x46a757c1829296cc # initialize rs2
maxu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x86d5e2bb5e7c0a19 # initialize rs1
li x25, 0xa7029eb387e6a4c7 # initialize rs2
maxu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x8ea6fda81734b57c # initialize rs1
li x26, 0xfb091524ead0c157 # initialize rs2
maxu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x70676a0cfbb625a7 # initialize rs1
li x27, 0x4bf78e2d7bb143c3 # initialize rs2
maxu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x62dd521bc5c318f0 # initialize rs1
li x28, 0xf90e43e8d48a6ccd # initialize rs2
maxu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x057f793dd822fa27 # initialize rs1
li x29, 0xf59986094c7ef0dc # initialize rs2
maxu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x01035c231abf0230 # initialize rs1
li x30, 0x649c8a39ce0381f0 # initialize rs2
maxu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xba4913fd179c9717 # initialize rs1
li x31, 0xb774c4f85978dcfe # initialize rs2
maxu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x9, x28 # perform first operation
maxu x21, x22, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x31, x28 # perform first operation
maxu x13, x12, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x29, x2 # perform first operation
maxu x20, x28, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x14, x1 # perform first operation
maxu x25, x24, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x1, x21 # perform first operation
maxu x5, x20, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x27, x21 # perform first operation
maxu x2, x1, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x19, x18 # perform first operation
maxu x12, x31, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x30, x29 # perform first operation
maxu x11, x31, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x6, x13 # perform first operation
maxu x28, x7, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x15, x11 # perform first operation
maxu x15, x7, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x27, x21 # perform first operation
maxu x21, x29, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x18, x31 # perform first operation
maxu x11, x1, x28 # perform second (triggering) operation

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
