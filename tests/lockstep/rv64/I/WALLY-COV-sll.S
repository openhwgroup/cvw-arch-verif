///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-sll.S
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
li x0, 0x8a182d0ab42fb881 # initialize rs1
li x2, 0xfe58b1b9f917d017 # initialize rs2
sll x30, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xa77f1358f1414e90 # initialize rs1
li x5, 0x30450995dd094f58 # initialize rs2
sll x18, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xec8d71bf681dade4 # initialize rs1
li x3, 0x31b9f9fd09056b9e # initialize rs2
sll x27, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x8954ee89970fcd9d # initialize rs1
li x7, 0xfa281441ff735f33 # initialize rs2
sll x22, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3f4d3ddc323d671a # initialize rs1
li x17, 0xbb934b17d7b93313 # initialize rs2
sll x26, x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9200a96ff20ac7d9 # initialize rs1
li x17, 0x9173f694c8f39554 # initialize rs2
sll x2, x5, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x22f8eb037cdd2ebb # initialize rs1
li x18, 0xed5474d8da8b44f0 # initialize rs2
sll x26, x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x097ae852c8d9ac3d # initialize rs1
li x25, 0xc65a480a15f0df88 # initialize rs2
sll x5, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xacd61262566f75fd # initialize rs1
li x10, 0x5e565777197af671 # initialize rs2
sll x17, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xa19ba42e98252eb2 # initialize rs1
li x16, 0xdd5e023a5c1b32a0 # initialize rs2
sll x23, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb6bb220d440d33e1 # initialize rs1
li x25, 0x7ab57ac95135f3eb # initialize rs2
sll x14, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa6d2ca8238e4cdeb # initialize rs1
li x13, 0x775bd80f50652221 # initialize rs2
sll x3, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x76f5272aadd38b65 # initialize rs1
li x26, 0x86ebe42a4f62dc00 # initialize rs2
sll x16, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x9909a5624e9a4914 # initialize rs1
li x29, 0xe60284a71dc73c07 # initialize rs2
sll x15, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xaf3e9bc227724a34 # initialize rs1
li x10, 0xfbaa1e8888bd6c37 # initialize rs2
sll x6, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xba6e35df4850450e # initialize rs1
li x21, 0x00385db6419e2c2c # initialize rs2
sll x13, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x277ea5671de0fde2 # initialize rs1
li x17, 0x04f665e5abf891aa # initialize rs2
sll x12, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x5ba4c945351fe5ac # initialize rs1
li x10, 0x52c24530057e74cb # initialize rs2
sll x11, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x4513f50974900a0e # initialize rs1
li x8, 0xf341fbfa2fe56538 # initialize rs2
sll x31, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xf91ec9c2fce987e0 # initialize rs1
li x10, 0x371a39f3e366d38e # initialize rs2
sll x28, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x936dec6e7a16ccff # initialize rs1
li x27, 0xd7b1af3668fbc1d9 # initialize rs2
sll x9, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x55f7806005e6d28f # initialize rs1
li x20, 0x32c753adf8bf3184 # initialize rs2
sll x23, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xb2cd407aaa6913f3 # initialize rs1
li x15, 0x982bc7a8dc745a48 # initialize rs2
sll x27, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x17dcda2be1e843f0 # initialize rs1
li x9, 0x846b8a4a0b068f82 # initialize rs2
sll x27, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xed21f4c295d0723e # initialize rs1
li x16, 0x82e2728a90e9b16a # initialize rs2
sll x30, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x0aa83e5ae2511d20 # initialize rs1
li x2, 0x01e8e0d83045002d # initialize rs2
sll x31, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xb03d7343dab4dbe5 # initialize rs1
li x6, 0xae4fab1db84e3026 # initialize rs2
sll x11, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd57d75929c40a548 # initialize rs1
li x12, 0xe27ebc5358bbeef4 # initialize rs2
sll x8, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xfaa93e6bee06959f # initialize rs1
li x15, 0x5dd32989a5e1fdce # initialize rs2
sll x8, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xc72b0d89f2bd236c # initialize rs1
li x9, 0xd7fa444230d61153 # initialize rs2
sll x30, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x58323120654f4d33 # initialize rs1
li x19, 0x81449fc3f5ed078e # initialize rs2
sll x10, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x787f8ec74e2da851 # initialize rs1
li x9, 0x5a8d7a881889de6f # initialize rs2
sll x14, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x24, 0xdb129136871f9fa7 # initialize rs1
li x0, 0x609180e9de60853d # initialize rs2
sll x5, x24, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x21, 0xa2a17084134611a7 # initialize rs1
li x1, 0x0df135bfd300f9e5 # initialize rs2
sll x14, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x7, 0x507867f9afc04f6d # initialize rs1
li x2, 0x0ed15ab4ce7228bd # initialize rs2
sll x10, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x19, 0x25ab38b429fc0cc1 # initialize rs1
li x3, 0xb521b4144e8cd511 # initialize rs2
sll x23, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0xcbaa3929c65e96b3 # initialize rs1
li x4, 0xb43c448791f018ef # initialize rs2
sll x22, x20, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0x10d589aa0a990c20 # initialize rs1
li x5, 0xe2c7dd08f4517710 # initialize rs2
sll x11, x2, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0x669fbc3c437de432 # initialize rs1
li x6, 0xa7307f76abfdcf50 # initialize rs2
sll x17, x14, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x17, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0xc5ba0fe366172a76 # initialize rs1
li x7, 0xf206dbcb04d9763b # initialize rs2
sll x24, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x29, 0x9eda63ac344a96ea # initialize rs1
li x8, 0x9c6567de968da93c # initialize rs2
sll x27, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x22, 0xd022e41862c00bca # initialize rs1
li x9, 0x60aed8bcc7e74556 # initialize rs2
sll x1, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x27, 0xf426ca8fb0983e7b # initialize rs1
li x10, 0x29a93259d8de3c35 # initialize rs2
sll x21, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x30, 0x380e7a2dbe038f49 # initialize rs1
li x11, 0x8645fc86f9cec105 # initialize rs2
sll x25, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x23, 0xa7b22a0a78d5bd1c # initialize rs1
li x12, 0x0bd96b21ebd78e63 # initialize rs2
sll x17, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x26, 0xc5d6f66f64d441d9 # initialize rs1
li x13, 0xf694f44955e78200 # initialize rs2
sll x11, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x31, 0xccab1b718ce4ea9d # initialize rs1
li x14, 0x478c89b04e8659af # initialize rs2
sll x24, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x10, 0xc47ac409a1381c1f # initialize rs1
li x15, 0x8f5fc963cfefd402 # initialize rs2
sll x8, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x14, 0xd248004459736e77 # initialize rs1
li x16, 0xea4c3a2efd0aec7f # initialize rs2
sll x11, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x8, 0x3382229ad55e9baf # initialize rs1
li x17, 0xbe242bdb4a9aa814 # initialize rs2
sll x9, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x10, 0x476671da093c2d25 # initialize rs1
li x18, 0x21bb953d412daa6d # initialize rs2
sll x11, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x14, 0x0ab15b700fe86bf3 # initialize rs1
li x19, 0x42c81f7ccc66cac2 # initialize rs2
sll x25, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x25, 0xb1472caa674c41f3 # initialize rs1
li x20, 0x5262ae1796dae529 # initialize rs2
sll x17, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x29, 0xb6c123692d8385ab # initialize rs1
li x21, 0x77f75c0a67e16952 # initialize rs2
sll x17, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x30, 0xa57cc5fffea2e2bc # initialize rs1
li x22, 0xd7535f286de189ca # initialize rs2
sll x18, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x11, 0x62bc6ec2f16eb8a3 # initialize rs1
li x23, 0xcfed91e879c52fa6 # initialize rs2
sll x29, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x30, 0x275c09a46a417495 # initialize rs1
li x24, 0x37d4330ae0971ee2 # initialize rs2
sll x12, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x5, 0x3f6b397d3e9ed684 # initialize rs1
li x25, 0x6da2854b845daf25 # initialize rs2
sll x14, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x20, 0x7343d4e5e008245a # initialize rs1
li x26, 0x03c6ebfe9f711a4c # initialize rs2
sll x5, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x2, 0xcd0f1055ff250697 # initialize rs1
li x27, 0xcbe7f619409c5e36 # initialize rs2
sll x17, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x15, 0x2e3e5054a0058c89 # initialize rs1
li x28, 0x320b577d65ed653a # initialize rs2
sll x31, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x22, 0xcb0e489aeacf0ef8 # initialize rs1
li x29, 0xaf5bcebec32a572a # initialize rs2
sll x26, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x18, 0xf895c3e84d15742d # initialize rs1
li x30, 0x166928b81768c19c # initialize rs2
sll x27, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x9, 0x09b1deede47894f0 # initialize rs1
li x31, 0x64e4c2578b4f80d3 # initialize rs2
sll x30, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 504)

# Testcase cp_rd (Test destination rd = x0)
li x22, 0x7ea247989e1eddd1 # initialize rs1
li x29, 0xc5795de54e208cef # initialize rs2
sll x0, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x6, 0x6e93d6cdefa72a7d # initialize rs1
li x13, 0x3e91f563298af095 # initialize rs2
sll x1, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x3, 0xe3fabce5eebc8597 # initialize rs1
li x17, 0xabbd63918728ad5a # initialize rs2
sll x2, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x13, 0x69b4435344ec154f # initialize rs1
li x23, 0xfc635469b76bdf2f # initialize rs2
sll x3, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x59e00db856dad312 # initialize rs1
li x18, 0xec5fda060f9e7a34 # initialize rs2
sll x4, x29, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0x3f829d4d8e33ad97 # initialize rs1
li x29, 0xd51b05505598c1ec # initialize rs2
sll x5, x2, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0x14098e18087a297c # initialize rs1
li x2, 0xfec3411db767c476 # initialize rs2
sll x6, x19, x2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x28, 0xaeb1a64171dd4182 # initialize rs1
li x16, 0xd438aba2072898b3 # initialize rs2
sll x7, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x28, 0x2b471aeb449a27c1 # initialize rs1
li x21, 0xa9d2fcaa6cea76c0 # initialize rs2
sll x8, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xb4f853e32a06e170 # initialize rs1
li x14, 0x3dc3dd89d31d6672 # initialize rs2
sll x9, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x14, 0x0dfd7d9157f5a7da # initialize rs1
li x28, 0x6dd07a798dd89a0a # initialize rs2
sll x10, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x29, 0xcf086e306228f65a # initialize rs1
li x17, 0x5de5f8b772586c60 # initialize rs2
sll x11, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x29, 0x13367973d95289b3 # initialize rs1
li x24, 0xf02071cee950f66d # initialize rs2
sll x12, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x26, 0xa92b562846408738 # initialize rs1
li x12, 0x0d1d89b31a3940aa # initialize rs2
sll x13, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0xbb31aa226661e861 # initialize rs1
li x21, 0x1ecda109e9112f00 # initialize rs2
sll x14, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x31, 0x1435bc9f6ddb3608 # initialize rs1
li x8, 0xc5891c98e30817ac # initialize rs2
sll x15, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x19, 0x496a1af1fb8a8501 # initialize rs1
li x1, 0x47a0c8e2283eed51 # initialize rs2
sll x16, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x25, 0x31ce29f8c01db013 # initialize rs1
li x10, 0x1dfd2ccd57ec0491 # initialize rs2
sll x17, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x15, 0xe70d8ce6364e0d2d # initialize rs1
li x20, 0xf28e76c69eb0dc0b # initialize rs2
sll x18, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x28, 0x94c43529c34f3801 # initialize rs1
li x17, 0xd2f14001a6eb9f82 # initialize rs2
sll x19, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x2, 0x29edb3010dd2445f # initialize rs1
li x12, 0x3a03ae8ea15f469e # initialize rs2
sll x20, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x12, 0x583a4d0a4f98de9d # initialize rs1
li x13, 0xd3be1a67bdef4f8d # initialize rs2
sll x21, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x23, 0xd0c76b3d5436bb2f # initialize rs1
li x30, 0xaf55e15cf088af8d # initialize rs2
sll x22, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x7, 0x019fc36f7449f0d5 # initialize rs1
li x14, 0x00c1341b2b1f05b6 # initialize rs2
sll x23, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x11, 0x4af6a2f5226b37d6 # initialize rs1
li x10, 0x7d4037eda19567a3 # initialize rs2
sll x24, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x3, 0xcbce1b0a8fb0e4d2 # initialize rs1
li x10, 0x50f619e1d2bc8e25 # initialize rs2
sll x25, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x30, 0x4d4db47952df6770 # initialize rs1
li x12, 0x74536c462832893a # initialize rs2
sll x26, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x14, 0x002f046b98a010c0 # initialize rs1
li x10, 0x6b66634bb112d172 # initialize rs2
sll x27, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x22, 0x83c8fe55f0a2dfc1 # initialize rs1
li x31, 0x1ce24c2cdff34974 # initialize rs2
sll x28, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x10, 0xe2bfd76d8f1ef2b4 # initialize rs1
li x21, 0x34382aecb4f0f168 # initialize rs2
sll x29, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x19, 0x2ba836ee1cd7b176 # initialize rs1
li x2, 0x5f8ad7f3b3e34045 # initialize rs2
sll x30, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0x09d448220a7f8f47 # initialize rs1
li x15, 0x3c4e012129b50535 # initialize rs2
sll x31, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x0000000000000000 # initialize rs1
li x28, 0x9a0e5610a28d554b # initialize rs2
sll x13, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x19, 0x0000000000000001 # initialize rs1
li x21, 0x8919afe9592256a3 # initialize rs2
sll x18, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0x0000000000000002 # initialize rs1
li x3, 0xae2a6343fffa9fab # initialize rs2
sll x9, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x25, 0x8000000000000000 # initialize rs1
li x7, 0x9703818255833088 # initialize rs2
sll x22, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x18, 0x8000000000000001 # initialize rs1
li x13, 0x93ea8b9bbc4dd435 # initialize rs2
sll x31, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x31, 0x7fffffffffffffff # initialize rs1
li x26, 0xb8f32603f979cadd # initialize rs2
sll x10, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x3, 0x7ffffffffffffffe # initialize rs1
li x14, 0xdc0c720f6581aa39 # initialize rs2
sll x30, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x15, 0xffffffffffffffff # initialize rs1
li x2, 0x649dd55b13606f4e # initialize rs2
sll x23, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x10, 0xfffffffffffffffe # initialize rs1
li x6, 0x0af81b5efb1b5053 # initialize rs2
sll x14, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x5e2bbe6a02d0586d # initialize rs2
sll x3, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x76b966ac50f35596 # initialize rs2
sll x22, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x16, 0x5555555555555555 # initialize rs1
li x12, 0x6543c1866274c0b3 # initialize rs2
sll x3, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x1, 0x00000000ffffffff # initialize rs1
li x12, 0x31d89f12c45c2a01 # initialize rs2
sll x17, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x31, 0x00000000fffffffe # initialize rs1
li x9, 0xa0fa046d1c4510a7 # initialize rs2
sll x13, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x2, 0x0000000100000000 # initialize rs1
li x31, 0x63251a13828b4551 # initialize rs2
sll x7, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x23, 0x0000000100000001 # initialize rs1
li x3, 0xff8704f4edbbff86 # initialize rs2
sll x27, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x18, 0x5627e0ef642ae707 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
sll x7, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x22, 0x0370d5ed4b9a8f48 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
sll x21, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x2, 0x48de64147f9336c0 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
sll x6, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x10, 0x5445f1ee25f9b795 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
sll x13, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x3, 0x1e39da5a5ba599b5 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
sll x24, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x28, 0x0568a6b029fede29 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
sll x27, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x20, 0x57dd99018cc94f68 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
sll x2, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x2, 0x4ca6f419d706975a # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sll x28, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x29, 0x2e29ab4f988d5599 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
sll x22, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x15, 0x71ea86a3ac38594e # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
sll x18, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0x3224dd6c0bd15744 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x21, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x2, 0x98d755b79b375df4 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
sll x9, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x3, 0x0f4c16cc73891b3c # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
sll x5, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x29, 0xe28c5d976a6fd138 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sll x20, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x29, 0x5a3be3d761da4907 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
sll x23, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x27, 0x2f30204fa576ffa7 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sll x14, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x24, 0x0000000000000000 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
sll x12, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x30, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sll x24, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x11, 0x0000000000000000 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
sll x2, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x25, 0x0000000000000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
sll x10, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x8, 0x0000000000000000 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
sll x18, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x17, 0x0000000000000000 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
sll x27, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000000000000 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
sll x13, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x8, 0x0000000000000000 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
sll x7, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x8, 0x0000000000000000 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
sll x22, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x16, 0x0000000000000000 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
sll x26, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x0000000000000000 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x30, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x2, 0x0000000000000000 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
sll x30, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x28, 0x0000000000000000 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
sll x3, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x11, 0x0000000000000000 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sll x22, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x7, 0x0000000000000000 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
sll x15, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x18, 0x0000000000000000 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sll x11, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x2, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
sll x16, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x17, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
sll x1, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x10, 0x0000000000000001 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
sll x26, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x5, 0x0000000000000001 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
sll x14, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x27, 0x0000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
sll x14, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x11, 0x0000000000000001 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
sll x8, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x26, 0x0000000000000001 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
sll x9, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x27, 0x0000000000000001 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
sll x17, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000000000001 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
sll x1, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000000000001 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
sll x8, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000000000001 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x22, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x16, 0x0000000000000001 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
sll x17, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x31, 0x0000000000000001 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
sll x10, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x3, 0x0000000000000001 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sll x31, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x13, 0x0000000000000001 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
sll x6, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x21, 0x0000000000000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
sll x12, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x21, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
sll x30, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x18, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
sll x13, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x16, 0x0000000000000002 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
sll x13, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x6, 0x0000000000000002 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
sll x18, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x25, 0x0000000000000002 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
sll x11, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x27, 0x0000000000000002 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
sll x1, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000000000002 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
sll x19, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x8, 0x0000000000000002 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
sll x27, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x28, 0x0000000000000002 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
sll x17, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000000000002 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
sll x11, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000000000002 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x9, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x21, 0x0000000000000002 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sll x12, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x6, 0x0000000000000002 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
sll x7, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x14, 0x0000000000000002 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
sll x25, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x13, 0x0000000000000002 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
sll x12, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x2, 0x0000000000000002 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sll x17, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x26, 0x8000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
sll x17, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x29, 0x8000000000000000 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sll x16, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x8, 0x8000000000000000 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
sll x13, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x15, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
sll x3, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x6, 0x8000000000000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
sll x3, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x15, 0x8000000000000000 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
sll x24, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x9, 0x8000000000000000 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
sll x5, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x20, 0x8000000000000000 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
sll x13, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x3, 0x8000000000000000 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
sll x7, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x24, 0x8000000000000000 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
sll x22, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x8000000000000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x29, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x20, 0x8000000000000000 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
sll x29, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x9, 0x8000000000000000 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
sll x3, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x12, 0x8000000000000000 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
sll x5, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x6, 0x8000000000000000 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sll x25, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x28, 0x8000000000000000 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
sll x18, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x1, 0x8000000000000001 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
sll x13, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x11, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sll x17, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x20, 0x8000000000000001 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
sll x22, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x2, 0x8000000000000001 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sll x24, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x9, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
sll x7, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x26, 0x8000000000000001 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
sll x15, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x19, 0x8000000000000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
sll x11, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x28, 0x8000000000000001 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
sll x7, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x22, 0x8000000000000001 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
sll x3, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x31, 0x8000000000000001 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
sll x19, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x8000000000000001 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x6, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x12, 0x8000000000000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
sll x27, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x23, 0x8000000000000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
sll x8, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x26, 0x8000000000000001 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sll x24, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x13, 0x8000000000000001 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
sll x27, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x13, 0x8000000000000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sll x28, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x10, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
sll x5, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x2, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
sll x24, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x12, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
sll x17, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x19, 0x7fffffffffffffff # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
sll x28, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x30, 0x7fffffffffffffff # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
sll x24, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
sll x21, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x14, 0x7fffffffffffffff # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
sll x8, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x5, 0x7fffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sll x3, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x29, 0x7fffffffffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
sll x1, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x24, 0x7fffffffffffffff # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
sll x16, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x7fffffffffffffff # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x24, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x17, 0x7fffffffffffffff # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
sll x26, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x21, 0x7fffffffffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
sll x1, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x30, 0x7fffffffffffffff # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sll x25, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x3, 0x7fffffffffffffff # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
sll x12, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x10, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
sll x1, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x29, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
sll x16, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x30, 0x7ffffffffffffffe # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
sll x10, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x30, 0x7ffffffffffffffe # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
sll x10, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x13, 0x7ffffffffffffffe # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
sll x9, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x20, 0x7ffffffffffffffe # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
sll x13, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x31, 0x7ffffffffffffffe # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
sll x2, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
sll x30, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
sll x16, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x9, 0x7ffffffffffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
sll x25, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x6, 0x7ffffffffffffffe # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
sll x27, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x7ffffffffffffffe # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x12, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x27, 0x7ffffffffffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
sll x6, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x21, 0x7ffffffffffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sll x12, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sll x29, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x24, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
sll x25, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x11, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
sll x18, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x21, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
sll x29, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x2, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
sll x10, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x2, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
sll x12, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x31, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
sll x16, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x24, 0xffffffffffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sll x29, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
sll x12, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x2, 0xffffffffffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sll x23, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x30, 0xffffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
sll x25, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x24, 0xffffffffffffffff # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
sll x19, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x29, 0xffffffffffffffff # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
sll x7, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0xffffffffffffffff # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x10, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x21, 0xffffffffffffffff # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
sll x31, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
sll x23, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x26, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
sll x24, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x2, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
sll x25, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x1, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
sll x25, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x11, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
sll x19, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x10, 0xfffffffffffffffe # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
sll x1, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x7, 0xfffffffffffffffe # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
sll x28, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x21, 0xfffffffffffffffe # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
sll x27, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x9, 0xfffffffffffffffe # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
sll x16, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x10, 0xfffffffffffffffe # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
sll x31, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x5, 0xfffffffffffffffe # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
sll x30, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x22, 0xfffffffffffffffe # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
sll x19, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
sll x19, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x25, 0xfffffffffffffffe # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
sll x30, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xfffffffffffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x2, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x28, 0xfffffffffffffffe # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sll x17, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x11, 0xfffffffffffffffe # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
sll x31, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x19, 0xfffffffffffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sll x25, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x20, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
sll x19, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x27, 0xfffffffffffffffe # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
sll x15, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
sll x17, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
sll x18, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
sll x1, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
sll x21, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sll x16, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sll x15, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
sll x13, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
sll x5, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
sll x9, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
sll x9, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x10, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sll x1, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sll x16, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
sll x20, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
sll x8, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
sll x2, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
sll x26, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
sll x5, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
sll x14, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
sll x29, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sll x7, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
sll x31, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sll x17, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
sll x6, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
sll x24, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
sll x15, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x26, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
sll x1, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
sll x25, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
sll x9, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
sll x26, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sll x29, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x11, 0x5555555555555555 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
sll x14, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x23, 0x5555555555555555 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
sll x10, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x3, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sll x24, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x31, 0x5555555555555555 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
sll x27, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x1, 0x5555555555555555 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
sll x17, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
sll x7, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x16, 0x5555555555555555 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sll x5, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x12, 0x5555555555555555 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
sll x16, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x22, 0x5555555555555555 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
sll x17, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x29, 0x5555555555555555 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
sll x24, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x5555555555555555 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x10, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x19, 0x5555555555555555 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
sll x28, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x10, 0x5555555555555555 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
sll x14, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x6, 0x5555555555555555 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sll x2, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x23, 0x5555555555555555 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
sll x9, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x28, 0x5555555555555555 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sll x12, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x11, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
sll x15, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x29, 0x00000000ffffffff # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
sll x6, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x12, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
sll x15, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x3, 0x00000000ffffffff # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
sll x18, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x15, 0x00000000ffffffff # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
sll x29, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
sll x8, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x22, 0x00000000ffffffff # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
sll x30, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x6, 0x00000000ffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
sll x15, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x17, 0x00000000ffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
sll x11, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x3, 0x00000000ffffffff # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
sll x24, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x00000000ffffffff # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x1, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x30, 0x00000000ffffffff # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sll x6, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
sll x19, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x6, 0x00000000ffffffff # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
sll x12, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x28, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
sll x19, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x12, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
sll x9, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x29, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
sll x25, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x1, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
sll x6, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x29, 0x00000000fffffffe # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
sll x2, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x5, 0x00000000fffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
sll x7, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x22, 0x00000000fffffffe # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sll x1, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x19, 0x00000000fffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
sll x23, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x7, 0x00000000fffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sll x15, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x13, 0x00000000fffffffe # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
sll x24, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x18, 0x00000000fffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sll x15, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x30, 0x00000000fffffffe # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
sll x9, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x00000000fffffffe # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x15, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x22, 0x00000000fffffffe # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sll x31, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x5, 0x00000000fffffffe # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
sll x18, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x28, 0x00000000fffffffe # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sll x6, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x27, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sll x10, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x7, 0x00000000fffffffe # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sll x30, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x26, 0x0000000100000000 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
sll x14, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x22, 0x0000000100000000 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
sll x9, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x8, 0x0000000100000000 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
sll x31, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x22, 0x0000000100000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
sll x16, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x10, 0x0000000100000000 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
sll x16, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x23, 0x0000000100000000 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
sll x20, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x10, 0x0000000100000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sll x18, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x30, 0x0000000100000000 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
sll x9, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x10, 0x0000000100000000 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
sll x2, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x14, 0x0000000100000000 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sll x26, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000100000000 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x2, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x7, 0x0000000100000000 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sll x28, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x5, 0x0000000100000000 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
sll x24, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x11, 0x0000000100000000 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
sll x22, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x15, 0x0000000100000000 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
sll x28, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x2, 0x0000000100000000 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
sll x28, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x11, 0x0000000100000001 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
sll x22, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x8, 0x0000000100000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
sll x17, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x26, 0x0000000100000001 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
sll x16, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x24, 0x0000000100000001 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
sll x18, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x7, 0x0000000100000001 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
sll x29, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x19, 0x0000000100000001 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
sll x13, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x9, 0x0000000100000001 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
sll x10, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x10, 0x0000000100000001 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
sll x3, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x31, 0x0000000100000001 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
sll x29, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000100000001 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
sll x13, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000100000001 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x22, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x25, 0x0000000100000001 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
sll x23, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x17, 0x0000000100000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
sll x3, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x22, 0x0000000100000001 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
sll x19, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x25, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
sll x7, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x23, 0x0000000100000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
sll x8, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xa0030e7f38593f0b # initialize rs1
li x0, 0xee51c1c04edfcd44 # initialize rs2
sll x14, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x6988b987ea139575 # initialize rs1
li x1, 0x01b5e6350622cd45 # initialize rs2
sll x14, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x7d01537e76e3bec5 # initialize rs1
li x2, 0xcc03dde939381994 # initialize rs2
sll x7, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xedcf0df4ab379204 # initialize rs1
li x3, 0x5f126dfb8637c917 # initialize rs2
sll x31, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa5b20b5e85621e16 # initialize rs1
li x4, 0x140f08e7449a9734 # initialize rs2
sll x14, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xeb31db072e44a089 # initialize rs1
li x5, 0x297abdf0940c9f91 # initialize rs2
sll x12, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe2c70b356a094a30 # initialize rs1
li x6, 0x60bedd7d8c9a2a0b # initialize rs2
sll x12, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbe7f5fc7785c639d # initialize rs1
li x7, 0x369c7a2a35979250 # initialize rs2
sll x1, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xbac5d50eb065b39a # initialize rs1
li x8, 0xd4ffb0d015d00611 # initialize rs2
sll x16, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xf0fb51c74390eb44 # initialize rs1
li x9, 0x9a7e1d6882a9266f # initialize rs2
sll x3, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x83c0a8572c26eed2 # initialize rs1
li x10, 0xa0a7cec569849124 # initialize rs2
sll x14, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x64ed00497212454c # initialize rs1
li x11, 0x1df71a40841bb8e6 # initialize rs2
sll x27, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x034950444bdaed6e # initialize rs1
li x12, 0x0723c53f6fd32b7c # initialize rs2
sll x29, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x217a3cee5677c028 # initialize rs1
li x13, 0xa0b87213a03549bc # initialize rs2
sll x7, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x53cc265c9277d8e8 # initialize rs1
li x14, 0x2b3bef5a8d4d1bbe # initialize rs2
sll x7, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xba6f4b767ea88ce7 # initialize rs1
li x15, 0x1822e6234c0d1402 # initialize rs2
sll x3, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xbb4a120d12e692fd # initialize rs1
li x16, 0xedc90a74a2a5dfc5 # initialize rs2
sll x27, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xd44b8f7c50b4ebba # initialize rs1
li x17, 0x197a53fd2c3ce20f # initialize rs2
sll x26, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x95a3c3f851e3ad24 # initialize rs1
li x18, 0x9dc689e29dde140e # initialize rs2
sll x13, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x346abd08bcb79722 # initialize rs1
li x19, 0xd212b2f7369830cb # initialize rs2
sll x26, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x4deada811c1c6435 # initialize rs1
li x20, 0x79a4618ab2596a4d # initialize rs2
sll x10, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x583a984d3a9a711d # initialize rs1
li x21, 0x3db0714534c57138 # initialize rs2
sll x16, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xcfaabc243e349cd8 # initialize rs1
li x22, 0xa2874e8d093ad062 # initialize rs2
sll x14, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x53f87ce73498b355 # initialize rs1
li x23, 0x0df3b93959477f3b # initialize rs2
sll x26, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xe3bdcfe1cea0abf8 # initialize rs1
li x24, 0x8307f7f83a7f9fd6 # initialize rs2
sll x14, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xc5050c74998da740 # initialize rs1
li x25, 0x2af1ac90a0ea3c2c # initialize rs2
sll x30, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x01eaae348bfe863a # initialize rs1
li x26, 0x603de586ed4d386e # initialize rs2
sll x12, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xdd185d86af2f4a60 # initialize rs1
li x27, 0x81a55422f34d7495 # initialize rs2
sll x22, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xa3161d779674ad93 # initialize rs1
li x28, 0xfb843e477e7af74d # initialize rs2
sll x7, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xaceedbf7b2a6da11 # initialize rs1
li x29, 0xeae6d118d69ff7f5 # initialize rs2
sll x1, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x09df811038685705 # initialize rs1
li x30, 0x38cc36b5d93fee42 # initialize rs2
sll x19, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x5b4a892f30b15245 # initialize rs1
li x31, 0x0b3b5cfa237de4d7 # initialize rs2
sll x3, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x00c4140ec9896b18 # initialize rs1
li x10, 0xd1a0f5a5726b2cac # initialize rs2
sll x0, x0, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x547675eb5c6a5726 # initialize rs1
li x30, 0x87442923ff7b47a8 # initialize rs2
sll x1, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x5e22425e8da3ed36 # initialize rs1
li x15, 0x45b345a5536b6ecc # initialize rs2
sll x2, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x4c40a454cab34f3b # initialize rs1
li x26, 0x37a960a9ed8792a1 # initialize rs2
sll x3, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x789699d8faf92663 # initialize rs1
li x23, 0xcdc5b4c506fe786d # initialize rs2
sll x4, x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x239e30b268c57652 # initialize rs1
li x3, 0x6302249ac1c2e8b0 # initialize rs2
sll x5, x5, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x35d1a7f57200bb0f # initialize rs1
li x10, 0xb0d063418341f628 # initialize rs2
sll x6, x6, x10 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbba4d0a1c59fcfa9 # initialize rs1
li x23, 0x33f9896c4229a925 # initialize rs2
sll x7, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x3eb6d4d3c1785be5 # initialize rs1
li x20, 0x54fd5c2a92aeb9ff # initialize rs2
sll x8, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc4dead167c202e3f # initialize rs1
li x17, 0x49ee8ab908f6d1f9 # initialize rs2
sll x9, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x26f5e6e5d4a7b2a8 # initialize rs1
li x19, 0x2e1dbbf13e562329 # initialize rs2
sll x10, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x225a245240a04d8d # initialize rs1
li x28, 0x50fdb5410b660710 # initialize rs2
sll x11, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xfb9b9fcbf44823e5 # initialize rs1
li x20, 0xed51f3986d34b61b # initialize rs2
sll x12, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xb6245a58ef106a47 # initialize rs1
li x17, 0x65643495373744e3 # initialize rs2
sll x13, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x000c08b4a9b8eaac # initialize rs1
li x25, 0x9bbbbe539689e5ac # initialize rs2
sll x14, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x08afea7738a9acf5 # initialize rs1
li x27, 0x750e980662a96afe # initialize rs2
sll x15, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xb8836faf34f33a28 # initialize rs1
li x21, 0x8ccdae5f2ca44bf3 # initialize rs2
sll x16, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xeddc70e4a7100827 # initialize rs1
li x26, 0xc03f6c3d7d0ddd6f # initialize rs2
sll x17, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x4028dd76f358985d # initialize rs1
li x28, 0x894255c550d8b822 # initialize rs2
sll x18, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa63342d9203b1452 # initialize rs1
li x30, 0xdc17af52bc0e31fa # initialize rs2
sll x19, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x1c86ecf35d4da553 # initialize rs1
li x8, 0x0a837ac8dff1e5f6 # initialize rs2
sll x20, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x2362b6f367cf4605 # initialize rs1
li x7, 0x0e87bba5fe19335d # initialize rs2
sll x21, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xf9eb7b57a29f67c7 # initialize rs1
li x13, 0x4d0a27e48e737e29 # initialize rs2
sll x22, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x7fa9f186d1dc736a # initialize rs1
li x2, 0x703b6e58e37457b5 # initialize rs2
sll x23, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x2994204f6e02a562 # initialize rs1
li x19, 0xe870049b6637a574 # initialize rs2
sll x24, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xb481720619f511ce # initialize rs1
li x18, 0xb6181646413d3d7d # initialize rs2
sll x25, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x9b7266383bbac6aa # initialize rs1
li x31, 0x083ce7a3b12c2e3b # initialize rs2
sll x26, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x62f9349da77ac746 # initialize rs1
li x17, 0x260b48b7cf8fd05b # initialize rs2
sll x27, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x7cc8931fe8748951 # initialize rs1
li x16, 0xa28c665d733dd46c # initialize rs2
sll x28, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1bbd43b8f826dec9 # initialize rs1
li x31, 0x7b80102b075b5fe5 # initialize rs2
sll x29, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x13e5a9d10b03a023 # initialize rs1
li x5, 0x7da6d70e0ce066c4 # initialize rs2
sll x30, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x0897b71e980f24eb # initialize rs1
li x23, 0xeb550999d56b2bbd # initialize rs2
sll x31, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x3, 0x17c0d3ffdf7089df # initialize rs1
li x0, 0x73df1280628dfe8b # initialize rs2
sll x0, x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x28, 0xb2f3199078ff420c # initialize rs1
li x1, 0xead5ed814a92341d # initialize rs2
sll x1, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x29, 0x13c315d9d271123d # initialize rs1
li x2, 0x5cbfacaae13a98ba # initialize rs2
sll x2, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x24, 0x933dd9fb1cc62331 # initialize rs1
li x3, 0x438cf1cb5e243050 # initialize rs2
sll x3, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0xb95e7f919586085e # initialize rs1
li x4, 0x87a5122821f5dfcd # initialize rs2
sll x4, x9, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x22, 0x865a279614901419 # initialize rs1
li x5, 0x42cd6f7798a7dd71 # initialize rs2
sll x5, x22, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0xf5e0461c3f9613a4 # initialize rs1
li x6, 0xe8225e3808b08438 # initialize rs2
sll x6, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0x06e3aa4cf820ecb5 # initialize rs1
li x7, 0x14b504ec8df5dd82 # initialize rs2
sll x7, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x30, 0xe09ce22c16adb995 # initialize rs1
li x8, 0xa2fc670cf56c0aa3 # initialize rs2
sll x8, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x3, 0x01e55cb94f63feee # initialize rs1
li x9, 0x38203c1d9a76ba65 # initialize rs2
sll x9, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x7, 0xfca3fd4345f6cc10 # initialize rs1
li x10, 0x016aa7dd0fcc2d8a # initialize rs2
sll x10, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x18, 0xdde0c7a8de738f41 # initialize rs1
li x11, 0x182602fd98339ac4 # initialize rs2
sll x11, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x8, 0x7d67e41cc6e0f357 # initialize rs1
li x12, 0xd67da18531dc063c # initialize rs2
sll x12, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x10, 0x63fafb9c2da96ae6 # initialize rs1
li x13, 0x1afaf58108104778 # initialize rs2
sll x13, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x18, 0x1b976cddc623d6f9 # initialize rs1
li x14, 0xf26874ce94dfed9d # initialize rs2
sll x14, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x8, 0x278bd8c5147e4ad8 # initialize rs1
li x15, 0x99cf5774ec1091c8 # initialize rs2
sll x15, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x1645afd6095d479f # initialize rs1
li x16, 0x1858277ba3f090e4 # initialize rs2
sll x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x5, 0x84e5efd5d0ddab1f # initialize rs1
li x17, 0x6e8bb161c1478048 # initialize rs2
sll x17, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x21, 0x08453b868b4de1b9 # initialize rs1
li x18, 0x0f25ac51dc94799c # initialize rs2
sll x18, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x29, 0x8e6dcf127371e766 # initialize rs1
li x19, 0xeff74f861319a144 # initialize rs2
sll x19, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x3, 0x06139add61284117 # initialize rs1
li x20, 0x7423898622fa280a # initialize rs2
sll x20, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0x327819b4e84aa256 # initialize rs1
li x21, 0xca1a04cc0921fe60 # initialize rs2
sll x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x15, 0xd0dd4e38c70e077e # initialize rs1
li x22, 0x57a4000a6471104e # initialize rs2
sll x22, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x3, 0xa56368aa38602799 # initialize rs1
li x23, 0x661c5dc8c719700e # initialize rs2
sll x23, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x1, 0x78d1293385c5359f # initialize rs1
li x24, 0x16d62b5ff6ace5e0 # initialize rs2
sll x24, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x11, 0xb311e839f565ebd7 # initialize rs1
li x25, 0xc69178d0f6910617 # initialize rs2
sll x25, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x28, 0xdc2d59c04bc7b92c # initialize rs1
li x26, 0x514d7822ff14147b # initialize rs2
sll x26, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x25, 0x824df86f9c1f76fb # initialize rs1
li x27, 0x6ab9c803f9255c06 # initialize rs2
sll x27, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x7, 0xcbae424f68e82b56 # initialize rs1
li x28, 0xd33e2837e9e01060 # initialize rs2
sll x28, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x23, 0x97c91e02d6457b5a # initialize rs1
li x29, 0x2f575b27ed345c04 # initialize rs2
sll x29, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x11, 0x298f081d7ae1335b # initialize rs1
li x30, 0x1f1fd58d66539894 # initialize rs2
sll x30, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x6, 0x1ec0cf5d94f3be42 # initialize rs1
li x31, 0x06f9d76640aeb98a # initialize rs2
sll x31, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xdcdbd2f07435d4ca # initialize rs1
li x0, 0xdfc4c559f2ab5684 # initialize rs2
sll x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x99b3998a3aedf1ea # initialize rs1
li x1, 0xc5c00fff3b345eb3 # initialize rs2
sll x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x020b21ee69fb4660 # initialize rs1
li x2, 0x73de80f954f147c8 # initialize rs2
sll x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xc9d33053217fc7f5 # initialize rs1
li x3, 0xbaad9194aeb725e8 # initialize rs2
sll x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9288d97994b7631f # initialize rs1
li x4, 0x36f0c3c74c08d352 # initialize rs2
sll x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4982fcce058515e6 # initialize rs1
li x5, 0x51de436321d82f88 # initialize rs2
sll x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcb6ff3dd3612610f # initialize rs1
li x6, 0xff7c73b6a68051f9 # initialize rs2
sll x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x89f291bcb1f6d1cc # initialize rs1
li x7, 0x4b54c9fabac7c653 # initialize rs2
sll x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xc5351e1e4727cb71 # initialize rs1
li x8, 0xba55878f48b9486d # initialize rs2
sll x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x5d452e0fcec7237a # initialize rs1
li x9, 0x87b5257e60a8d28d # initialize rs2
sll x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xc81eaad0d6d7f47f # initialize rs1
li x10, 0xd82b74de109e50cf # initialize rs2
sll x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x20f6f3fd2c69619d # initialize rs1
li x11, 0x6cd030e14edf0e6f # initialize rs2
sll x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x47ff2d0c5a4149c1 # initialize rs1
li x12, 0x42e19703292da1c1 # initialize rs2
sll x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x4e6b28d0122c3a72 # initialize rs1
li x13, 0x84765186517047d4 # initialize rs2
sll x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x371cc5ea3af60467 # initialize rs1
li x14, 0xc3ba7d21b2f476b8 # initialize rs2
sll x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xf634a01864bed5f1 # initialize rs1
li x15, 0xc8095bcb4ae49b56 # initialize rs2
sll x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x0ea5e69547a4043c # initialize rs1
li x16, 0xca11c6b1f0c9001a # initialize rs2
sll x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x9362b071495051c9 # initialize rs1
li x17, 0xb107b164c8e1f08b # initialize rs2
sll x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x6e08ada4e69d3679 # initialize rs1
li x18, 0x5e667c110b6328ce # initialize rs2
sll x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xfdb07a21f4350950 # initialize rs1
li x19, 0x96f2c6c86776e125 # initialize rs2
sll x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xc58be5d3c21b3452 # initialize rs1
li x20, 0xdf3c7a2e47f1cb7d # initialize rs2
sll x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xedc76bea042b894f # initialize rs1
li x21, 0x448ac8a5ef093b0b # initialize rs2
sll x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x3c2eb8afbb9e81de # initialize rs1
li x22, 0xe1e051a1a941e1fc # initialize rs2
sll x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x8ac07ae41ecb30d5 # initialize rs1
li x23, 0xc07ada6b50fba115 # initialize rs2
sll x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x10846c280fba6d28 # initialize rs1
li x24, 0x7f9c68415d2d76e8 # initialize rs2
sll x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x67e92ad9d300e223 # initialize rs1
li x25, 0x30b54ec1c61d2969 # initialize rs2
sll x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xec6d86760d76208d # initialize rs1
li x26, 0xa2ffb46ee732c316 # initialize rs2
sll x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x3c75008c705f2cd4 # initialize rs1
li x27, 0xd7499fbb115e8146 # initialize rs2
sll x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x5677825d7caf7c5f # initialize rs1
li x28, 0x4acb783daa039f69 # initialize rs2
sll x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x17682ddcb7a471f1 # initialize rs1
li x29, 0xfd9595bb9f80cfa1 # initialize rs2
sll x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xcf27c63364530622 # initialize rs1
li x30, 0xd82c645c531734c0 # initialize rs2
sll x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xac8d593eb8f917f2 # initialize rs1
li x31, 0xacacaf79edd545d3 # initialize rs2
sll x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x8, x15 # perform first operation
sll x29, x19, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x27, x13 # perform first operation
sll x12, x23, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x27, x12 # perform first operation
sll x21, x5, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x15, x23 # perform first operation
sll x15, x22, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x14, x30 # perform first operation
sll x14, x22, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x26, x23 # perform first operation
sll x31, x3, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x29, x6 # perform first operation
sll x20, x31, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x7, x1 # perform first operation
sll x15, x29, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x3, x22 # perform first operation
sll x18, x11, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x24, x7 # perform first operation
sll x24, x16, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x15, x30 # perform first operation
sll x30, x7, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x17, x30 # perform first operation
sll x15, x2, x5 # perform second (triggering) operation

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
