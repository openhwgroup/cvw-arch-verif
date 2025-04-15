///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-slt.S
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
li x0, 0x55c068ddea562851 # initialize rs1
li x5, 0x1d03f01cc76f2e68 # initialize rs2
slt x18, x0, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xfc2bf3d1c28eddc1 # initialize rs1
li x30, 0x25d4526952374929 # initialize rs2
slt x13, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x6a41459d1440db30 # initialize rs1
li x24, 0x65bf44a5e5cd076d # initialize rs2
slt x7, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xeaf4116ff2086599 # initialize rs1
li x2, 0xa42552f9db23d730 # initialize rs2
slt x24, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x95cf84dc26d767f9 # initialize rs1
li x23, 0x1502b1e576281cdc # initialize rs2
slt x10, x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x48e03f440c767078 # initialize rs1
li x15, 0x04d3dcbecade230c # initialize rs2
slt x18, x5, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x76316311c1bbdc8f # initialize rs1
li x28, 0x930a718f23c99010 # initialize rs2
slt x3, x6, x28 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x25f23f25a8777f28 # initialize rs1
li x11, 0xe0f3853388638d21 # initialize rs2
slt x27, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x78cf5e773ec27f23 # initialize rs1
li x24, 0x65ac615966a01617 # initialize rs2
slt x31, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xf9093fb72e063e94 # initialize rs1
li x11, 0xb378aaffb2d3f6c5 # initialize rs2
slt x7, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xd2378587ec245cab # initialize rs1
li x11, 0x1e66a88baff19d05 # initialize rs2
slt x29, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xe0bf5f55c7be2ec5 # initialize rs1
li x12, 0x803203f0ff279775 # initialize rs2
slt x2, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xd4a2c7a8af8e0146 # initialize rs1
li x6, 0xe0ef2fccb17ce69b # initialize rs2
slt x25, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xf2a8d934b76754a0 # initialize rs1
li x5, 0x2a7849cbecea15ab # initialize rs2
slt x6, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x83219ef21e9edc38 # initialize rs1
li x3, 0x3044a4bf50de03c1 # initialize rs2
slt x23, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x904048b7ec26f193 # initialize rs1
li x30, 0x053ed37ff7b7a803 # initialize rs2
slt x7, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x0910c245b5682222 # initialize rs1
li x19, 0x9ca3c25751aa8288 # initialize rs2
slt x5, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xb53c6beafe4a1a0e # initialize rs1
li x31, 0x78bc3e713b2389df # initialize rs2
slt x23, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x17056b1cf932c70b # initialize rs1
li x3, 0x20d3146bdb30cbc6 # initialize rs2
slt x30, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x27a5587b7f2ac1bd # initialize rs1
li x14, 0x179862e06f1231c7 # initialize rs2
slt x6, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xe92142bf67f1df13 # initialize rs1
li x19, 0x26c9bb7b63bb4bc4 # initialize rs2
slt x30, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xad607d1b44ccee6b # initialize rs1
li x23, 0xd6b59edbe94d46fd # initialize rs2
slt x16, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x66bcbee5ffe63e19 # initialize rs1
li x28, 0x7131a3a1ad10f0d2 # initialize rs2
slt x11, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x8dd5ddf45037d851 # initialize rs1
li x6, 0x2e50bfaae2ae5068 # initialize rs2
slt x15, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xc720109c2d760644 # initialize rs1
li x5, 0x0aca104cb5a3e471 # initialize rs2
slt x30, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x00636ef10351f060 # initialize rs1
li x6, 0x9951bead4dce7026 # initialize rs2
slt x11, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xe811ce42c36360f5 # initialize rs1
li x16, 0x26b7f93f49806687 # initialize rs2
slt x1, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x00ad3d36e0189c87 # initialize rs1
li x31, 0xcb7bb084006358b4 # initialize rs2
slt x24, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xaf5d1b3ab48954f4 # initialize rs1
li x17, 0xdd1ecd05f938668d # initialize rs2
slt x27, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x399c424a157fc269 # initialize rs1
li x17, 0xce87554da2d4af71 # initialize rs2
slt x1, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x59f7537562baa939 # initialize rs1
li x24, 0xae5ff2af43db0978 # initialize rs2
slt x25, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x2fdde6a02d005fe3 # initialize rs1
li x9, 0x5f5ae91e62c719dc # initialize rs2
slt x6, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x9, 0x4fdecda5ec558aa1 # initialize rs1
li x0, 0xeb0c209260e9bfc4 # initialize rs2
slt x19, x9, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x9, 0x73835097158b17d6 # initialize rs1
li x1, 0x5cb1a8cf2a6d710f # initialize rs2
slt x22, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x29, 0x5587f13d6304e1b0 # initialize rs1
li x2, 0x847096cc44de1b85 # initialize rs2
slt x3, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x25, 0xf1e0428b6773e23c # initialize rs1
li x3, 0x62f956e575729144 # initialize rs2
slt x26, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x3553f981e7048f70 # initialize rs1
li x4, 0x647efec7bc0fdace # initialize rs2
slt x11, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0xa8e67e2e032d4066 # initialize rs1
li x5, 0x9fc31013bcb22a15 # initialize rs2
slt x24, x11, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0x82dffa7daff3508d # initialize rs1
li x6, 0x849475f5dd65cbb6 # initialize rs2
slt x24, x2, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0xb6b6fa32a9cb79e3 # initialize rs1
li x7, 0x1b54e3376cfa4906 # initialize rs2
slt x1, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x17, 0x249703ad75be8719 # initialize rs1
li x8, 0xd4a87b457071410f # initialize rs2
slt x24, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x27, 0x611372f52568b20c # initialize rs1
li x9, 0x2700744babc06c1b # initialize rs2
slt x26, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x29, 0xd88cfecd498f8965 # initialize rs1
li x10, 0xe72b876578ed3efa # initialize rs2
slt x23, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x6, 0xeeb43dec013c7c13 # initialize rs1
li x11, 0xb97f178c5b6a1dbb # initialize rs2
slt x8, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x19, 0xa6b0a12d3081078d # initialize rs1
li x12, 0x9b61a1f15432fe54 # initialize rs2
slt x24, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x14, 0x1eeeec9a4f6894ec # initialize rs1
li x13, 0x98a1c45294d3ac98 # initialize rs2
slt x23, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x16, 0x7d523a6d425163dd # initialize rs1
li x14, 0x814e64868a6eadbb # initialize rs2
slt x8, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0xaf63918281c70064 # initialize rs1
li x15, 0x5783ed64961facb7 # initialize rs2
slt x17, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x26, 0x127cce117d07f3c5 # initialize rs1
li x16, 0x716c98631c83e251 # initialize rs2
slt x2, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x6, 0x54e6cee64fc18dfe # initialize rs1
li x17, 0xfe13bf0895389825 # initialize rs2
slt x15, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x24, 0x59e3f682c75cbfb6 # initialize rs1
li x18, 0xa7a707aa67ad0198 # initialize rs2
slt x7, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x17, 0xa46d48be8b5997b7 # initialize rs1
li x19, 0x95d387c1bd994a01 # initialize rs2
slt x2, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x25, 0x5c98272c16f03ef8 # initialize rs1
li x20, 0xea5fc5c7fa4fa62a # initialize rs2
slt x14, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x6, 0x76e839578467fd1c # initialize rs1
li x21, 0x35dffc3348c23510 # initialize rs2
slt x29, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x28, 0x9f3a4ec0e4983d39 # initialize rs1
li x22, 0x5f7ab6dfc007eb5d # initialize rs2
slt x20, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x27, 0x3c212147433ec94a # initialize rs1
li x23, 0x9873a53f86d42f1c # initialize rs2
slt x21, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x18, 0xf98fcf925626e9fe # initialize rs1
li x24, 0x494ed597ace14480 # initialize rs2
slt x28, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x27, 0x7f33e7ccd9d925e6 # initialize rs1
li x25, 0x43736a52d9bdcb50 # initialize rs2
slt x12, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0x21bb0ff1eb140b0d # initialize rs1
li x26, 0x6c8e100ce9b298e1 # initialize rs2
slt x1, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x7, 0xd2bb93d89eb6a171 # initialize rs1
li x27, 0x4c980c2d82852bfc # initialize rs2
slt x22, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x30, 0xc5dc9f84aa97f4af # initialize rs1
li x28, 0x866d24c84f8462cd # initialize rs2
slt x11, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x30, 0x7e1c0f80acd7a84c # initialize rs1
li x29, 0x33bf573fb688dd77 # initialize rs2
slt x20, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x24, 0x90ee3b8848d02220 # initialize rs1
li x30, 0xf88274308e0a3252 # initialize rs2
slt x18, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x10, 0xfab4696bc44ac1b7 # initialize rs1
li x31, 0xdcc9d4af5449fa17 # initialize rs2
slt x13, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 504)

# Testcase cp_rd (Test destination rd = x0)
li x17, 0x4f6e4c7216874ce9 # initialize rs1
li x16, 0xc85f60eaf2f4011e # initialize rs2
slt x0, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x7, 0x0f95793ea323f340 # initialize rs1
li x22, 0x68df6b34abb47313 # initialize rs2
slt x1, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x3, 0x5d5cbf22bfc67305 # initialize rs1
li x31, 0x290cebd9e92b48ea # initialize rs2
slt x2, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x20, 0x57dd015d84802487 # initialize rs1
li x29, 0x4b8b71c4aded1d27 # initialize rs2
slt x3, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0x2f6cf7d5cd411a20 # initialize rs1
li x17, 0x3e99baaf3ab07ee1 # initialize rs2
slt x4, x8, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x22, 0x3f8ece5af2ed7768 # initialize rs1
li x15, 0xf2a4016b16a1e0dd # initialize rs2
slt x5, x22, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0x65142ef33020b92d # initialize rs1
li x24, 0xe3fe3b36e005ee71 # initialize rs2
slt x6, x30, x24 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0x17b76bf2750b9565 # initialize rs1
li x1, 0x564c45e45d5d8458 # initialize rs2
slt x7, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x2, 0x8e758e4399396134 # initialize rs1
li x14, 0xe99657f24447a4f3 # initialize rs2
slt x8, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x25, 0x2e27a72ae4664c2c # initialize rs1
li x3, 0xbcda48195ced8aa1 # initialize rs2
slt x9, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x9, 0xdac7ee9387f847a7 # initialize rs1
li x5, 0xe2d9c0485e0bb739 # initialize rs2
slt x10, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x7, 0x9b61e55fd560aa75 # initialize rs1
li x28, 0x544b6f5add56f70e # initialize rs2
slt x11, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x26, 0x4a38fdd820f77e2f # initialize rs1
li x17, 0x74ea8662453084a7 # initialize rs2
slt x12, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x27, 0xf2b68e7ad8d5e98f # initialize rs1
li x29, 0xa10dc3fd65348bb4 # initialize rs2
slt x13, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x15, 0x64983467c0386b5c # initialize rs1
li x26, 0x2258be140f480f5f # initialize rs2
slt x14, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x31, 0xe43e0e54d5aaf0e0 # initialize rs1
li x21, 0xa5a5acbf1ec444c1 # initialize rs2
slt x15, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x9, 0xbb39c27451779a0b # initialize rs1
li x25, 0x8b61326048a481da # initialize rs2
slt x16, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x26, 0x921c1ecdf0631f36 # initialize rs1
li x10, 0x2194193f25eb288e # initialize rs2
slt x17, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x17, 0x6f720a7cd79d58fc # initialize rs1
li x24, 0xe9bd9bd402ca8d0e # initialize rs2
slt x18, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x16, 0xeaa1712c43982a54 # initialize rs1
li x8, 0x09a9aeeef5c16005 # initialize rs2
slt x19, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x23, 0x9d6711336c033abd # initialize rs1
li x16, 0xf5259e48e79e8ae4 # initialize rs2
slt x20, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x27, 0xb4dbc8d76522e55d # initialize rs1
li x2, 0x7147bdbcfdafeb50 # initialize rs2
slt x21, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x13, 0x07edc0c36d147ae5 # initialize rs1
li x15, 0xa2408dcad2f520b1 # initialize rs2
slt x22, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x6, 0x5090da015ef77e84 # initialize rs1
li x29, 0x6f4101070b344515 # initialize rs2
slt x23, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x19, 0x306f97d267473c79 # initialize rs1
li x15, 0xb7b7133492b89a2d # initialize rs2
slt x24, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x18, 0x5b20998d24810846 # initialize rs1
li x19, 0x0fe3b2e900b06324 # initialize rs2
slt x25, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x15, 0x5c63e1977f951ad0 # initialize rs1
li x23, 0x7945b905fd7c2dc4 # initialize rs2
slt x26, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x20, 0x323626ea48ae5ac9 # initialize rs1
li x21, 0x2628b803f88ad1ef # initialize rs2
slt x27, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x2, 0x72d24c9e36392310 # initialize rs1
li x5, 0xda26a1f04383512a # initialize rs2
slt x28, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x3, 0x47a08ff91f15d140 # initialize rs1
li x31, 0x9635a294e0508d8f # initialize rs2
slt x29, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x16, 0xb7a886ccaa38021a # initialize rs1
li x25, 0x95aefbd683b0c62e # initialize rs2
slt x30, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x20, 0x288203a7c8becece # initialize rs1
li x22, 0x97231506e64233e3 # initialize rs2
slt x31, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x2, 0x0000000000000000 # initialize rs1
li x12, 0x5de34c586829ea23 # initialize rs2
slt x29, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0x0000000000000001 # initialize rs1
li x13, 0x4648658137c191ac # initialize rs2
slt x25, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x0000000000000002 # initialize rs1
li x15, 0xe94158a8da0bf7c2 # initialize rs2
slt x8, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x10, 0x8000000000000000 # initialize rs1
li x21, 0xb2203da05eb7d61e # initialize rs2
slt x23, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs1
li x26, 0x8da2e966785fa048 # initialize rs2
slt x30, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
li x14, 0x1c1ee7bb4af50fe5 # initialize rs2
slt x21, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
li x16, 0x3d1905e176635c46 # initialize rs2
slt x24, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x15, 0x0179bbd5557b4e1b # initialize rs2
slt x18, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x6, 0xfffffffffffffffe # initialize rs1
li x2, 0xc27bf7a7044bb21d # initialize rs2
slt x23, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0xd56191945a8c3ac2 # initialize rs2
slt x25, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0xffb049e9a5dea2de # initialize rs2
slt x3, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x22, 0x5555555555555555 # initialize rs1
li x24, 0xa0fa2290cbd5e103 # initialize rs2
slt x3, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x6, 0x00000000ffffffff # initialize rs1
li x9, 0xd782dc7c9560cd6c # initialize rs2
slt x17, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x27, 0x3a9445d2a6bc4c79 # initialize rs2
slt x17, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x3, 0x0000000100000000 # initialize rs1
li x10, 0x2fcfe72a5b48e2d0 # initialize rs2
slt x18, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x24, 0x0000000100000001 # initialize rs1
li x2, 0xcaa3ce53122ff26c # initialize rs2
slt x15, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x17, 0x0be8e8abde9eb0a3 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
slt x25, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x22, 0xee41544579d9e64f # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
slt x2, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x20, 0xf94449ad52d2d0c5 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
slt x17, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x22, 0xad3635440d9a28db # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
slt x27, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x31, 0xcfa444426b99d15c # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
slt x28, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x29, 0xd5e0a004a7dfa380 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
slt x21, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x7, 0x525ebebe66a688dd # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
slt x21, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x31, 0xc3328ae14e42976e # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
slt x22, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x20, 0xfd9ca9767aff1359 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
slt x23, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x24, 0xe8859f512e63bb18 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
slt x6, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0x7da77c77be949e97 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x13, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x1, 0x3ff3c4df1403cbf0 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
slt x28, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0xd5fc177dd00d9f08 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
slt x19, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x1, 0x42de86e3eea147e7 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
slt x19, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x13, 0x8c5e3adf9c4cf6ec # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
slt x3, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x7, 0x5c314d9c6af1fbb7 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
slt x10, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x6, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
slt x20, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x26, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
slt x6, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x27, 0x0000000000000000 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
slt x7, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x6, 0x0000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
slt x15, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x29, 0x0000000000000000 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
slt x1, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x15, 0x0000000000000000 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
slt x31, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x5, 0x0000000000000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
slt x24, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x18, 0x0000000000000000 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
slt x29, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x26, 0x0000000000000000 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
slt x6, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000000000000 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
slt x21, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x0000000000000000 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x6, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x21, 0x0000000000000000 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
slt x10, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x7, 0x0000000000000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
slt x14, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x31, 0x0000000000000000 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
slt x21, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x7, 0x0000000000000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
slt x17, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x31, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
slt x12, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x30, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
slt x11, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x7, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
slt x6, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x8, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
slt x6, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x1, 0x0000000000000001 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
slt x23, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x12, 0x0000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
slt x1, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x6, 0x0000000000000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
slt x12, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x29, 0x0000000000000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
slt x21, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000001 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
slt x25, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000000000001 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
slt x8, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000000000001 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
slt x29, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x0000000000000001 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x3, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x14, 0x0000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
slt x31, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x19, 0x0000000000000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
slt x20, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x9, 0x0000000000000001 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
slt x22, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x6, 0x0000000000000001 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
slt x29, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x9, 0x0000000000000001 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
slt x18, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x14, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
slt x6, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x17, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
slt x24, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x9, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
slt x22, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x10, 0x0000000000000002 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
slt x18, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x27, 0x0000000000000002 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
slt x11, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x27, 0x0000000000000002 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
slt x17, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
slt x6, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x27, 0x0000000000000002 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
slt x7, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x12, 0x0000000000000002 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
slt x9, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000000000002 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
slt x17, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000000000002 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x13, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x15, 0x0000000000000002 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
slt x22, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x31, 0x0000000000000002 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
slt x14, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x5, 0x0000000000000002 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
slt x20, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x19, 0x0000000000000002 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
slt x13, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x19, 0x0000000000000002 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
slt x11, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x25, 0x8000000000000000 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
slt x5, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x29, 0x8000000000000000 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
slt x27, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x17, 0x8000000000000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
slt x28, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x1, 0x8000000000000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
slt x24, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x30, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
slt x28, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x21, 0x8000000000000000 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
slt x11, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x24, 0x8000000000000000 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
slt x12, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x15, 0x8000000000000000 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
slt x26, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x15, 0x8000000000000000 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
slt x3, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x3, 0x8000000000000000 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
slt x23, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x8000000000000000 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x1, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x17, 0x8000000000000000 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
slt x25, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x2, 0x8000000000000000 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
slt x12, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x6, 0x8000000000000000 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
slt x18, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x28, 0x8000000000000000 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
slt x6, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x6, 0x8000000000000000 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
slt x31, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x29, 0x8000000000000001 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
slt x9, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x1, 0x8000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
slt x16, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x26, 0x8000000000000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
slt x5, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x29, 0x8000000000000001 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
slt x8, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x22, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
slt x1, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x3, 0x8000000000000001 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
slt x31, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x27, 0x8000000000000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
slt x24, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x23, 0x8000000000000001 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
slt x16, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x3, 0x8000000000000001 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
slt x30, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x31, 0x8000000000000001 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
slt x17, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x8000000000000001 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x17, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x23, 0x8000000000000001 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
slt x16, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x7, 0x8000000000000001 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
slt x31, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x5, 0x8000000000000001 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
slt x12, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x27, 0x8000000000000001 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
slt x6, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x11, 0x8000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
slt x7, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x5, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
slt x20, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x16, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
slt x13, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x5, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
slt x22, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x8, 0x7fffffffffffffff # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
slt x1, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x19, 0x7fffffffffffffff # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
slt x9, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
slt x22, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0x7fffffffffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
slt x11, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x5, 0x7fffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
slt x25, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x18, 0x7fffffffffffffff # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
slt x28, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x26, 0x7fffffffffffffff # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
slt x2, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x7fffffffffffffff # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x9, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x6, 0x7fffffffffffffff # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
slt x9, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x5, 0x7fffffffffffffff # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
slt x24, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x13, 0x7fffffffffffffff # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
slt x30, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x23, 0x7fffffffffffffff # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
slt x2, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x21, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
slt x1, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x20, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
slt x27, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x3, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
slt x1, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x1, 0x7ffffffffffffffe # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
slt x29, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x22, 0x7ffffffffffffffe # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
slt x26, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x21, 0x7ffffffffffffffe # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
slt x12, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x6, 0x7ffffffffffffffe # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
slt x14, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x31, 0x7ffffffffffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
slt x22, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x9, 0x7ffffffffffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
slt x12, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x19, 0x7ffffffffffffffe # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
slt x7, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x3, 0x7ffffffffffffffe # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
slt x24, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x7ffffffffffffffe # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x6, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x24, 0x7ffffffffffffffe # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
slt x1, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x9, 0x7ffffffffffffffe # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
slt x23, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x10, 0x7ffffffffffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
slt x5, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x16, 0x7ffffffffffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
slt x7, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x2, 0x7ffffffffffffffe # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
slt x27, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x8, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
slt x1, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x29, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
slt x3, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x9, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
slt x13, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x2, 0xffffffffffffffff # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
slt x8, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x28, 0xffffffffffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
slt x2, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x17, 0xffffffffffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
slt x19, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x21, 0xffffffffffffffff # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
slt x9, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x2, 0xffffffffffffffff # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
slt x14, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x17, 0xffffffffffffffff # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
slt x5, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x7, 0xffffffffffffffff # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
slt x27, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xffffffffffffffff # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x8, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x5, 0xffffffffffffffff # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
slt x3, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x30, 0xffffffffffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
slt x6, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x10, 0xffffffffffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
slt x16, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x14, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
slt x28, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x25, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
slt x23, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x29, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
slt x20, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x6, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
slt x24, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x5, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
slt x30, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x19, 0xfffffffffffffffe # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
slt x29, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x26, 0xfffffffffffffffe # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
slt x25, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x7, 0xfffffffffffffffe # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
slt x9, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x22, 0xfffffffffffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
slt x3, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
slt x8, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x3, 0xfffffffffffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
slt x2, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x17, 0xfffffffffffffffe # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
slt x29, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0xfffffffffffffffe # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x24, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x6, 0xfffffffffffffffe # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
slt x8, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x26, 0xfffffffffffffffe # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
slt x30, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x20, 0xfffffffffffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
slt x11, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x11, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
slt x26, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x12, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
slt x3, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
slt x31, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
slt x8, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
slt x10, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
slt x30, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
slt x20, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
slt x31, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
slt x25, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
slt x1, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
slt x16, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
slt x18, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x11, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
slt x2, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
slt x17, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
slt x14, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
slt x16, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
slt x15, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
slt x22, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
slt x17, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
slt x6, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
slt x30, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
slt x17, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
slt x7, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
slt x12, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
slt x16, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
slt x7, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
slt x28, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x11, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
slt x26, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
slt x16, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
slt x25, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
slt x23, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
slt x15, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x9, 0x5555555555555555 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
slt x27, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x10, 0x5555555555555555 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
slt x16, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x23, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
slt x14, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x26, 0x5555555555555555 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
slt x14, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x24, 0x5555555555555555 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
slt x18, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x16, 0x5555555555555555 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
slt x31, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x19, 0x5555555555555555 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
slt x28, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x10, 0x5555555555555555 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
slt x19, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x18, 0x5555555555555555 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
slt x17, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x15, 0x5555555555555555 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
slt x6, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x5555555555555555 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x2, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x11, 0x5555555555555555 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
slt x14, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x9, 0x5555555555555555 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
slt x22, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x2, 0x5555555555555555 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
slt x28, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x17, 0x5555555555555555 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
slt x12, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x11, 0x5555555555555555 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
slt x5, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x3, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
slt x30, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x10, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
slt x20, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x31, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
slt x22, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x24, 0x00000000ffffffff # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
slt x16, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x16, 0x00000000ffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
slt x6, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
slt x23, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x12, 0x00000000ffffffff # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
slt x22, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x25, 0x00000000ffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
slt x11, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x28, 0x00000000ffffffff # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
slt x5, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x21, 0x00000000ffffffff # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
slt x22, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x00000000ffffffff # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x23, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x8, 0x00000000ffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
slt x13, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
slt x14, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x27, 0x00000000ffffffff # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
slt x7, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x24, 0x00000000ffffffff # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
slt x2, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x13, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
slt x21, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x6, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
slt x9, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x24, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
slt x18, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x24, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
slt x14, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x27, 0x00000000fffffffe # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
slt x15, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x2, 0x00000000fffffffe # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
slt x5, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x30, 0x00000000fffffffe # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
slt x11, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x20, 0x00000000fffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
slt x1, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x19, 0x00000000fffffffe # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
slt x1, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x6, 0x00000000fffffffe # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
slt x8, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x9, 0x00000000fffffffe # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
slt x30, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x00000000fffffffe # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x29, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x21, 0x00000000fffffffe # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
slt x13, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x21, 0x00000000fffffffe # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
slt x6, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x13, 0x00000000fffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
slt x10, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x26, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
slt x14, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x17, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
slt x18, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x28, 0x0000000100000000 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
slt x13, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x26, 0x0000000100000000 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
slt x21, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x22, 0x0000000100000000 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
slt x24, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x16, 0x0000000100000000 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
slt x7, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x6, 0x0000000100000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
slt x12, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000100000000 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
slt x31, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x14, 0x0000000100000000 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
slt x5, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x7, 0x0000000100000000 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
slt x26, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x6, 0x0000000100000000 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
slt x11, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x15, 0x0000000100000000 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
slt x1, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x0000000100000000 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x28, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x13, 0x0000000100000000 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
slt x15, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x9, 0x0000000100000000 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
slt x16, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x11, 0x0000000100000000 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
slt x6, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x9, 0x0000000100000000 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
slt x19, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x29, 0x0000000100000000 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
slt x22, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x19, 0x0000000100000001 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
slt x28, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x8, 0x0000000100000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
slt x7, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x9, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
slt x14, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x12, 0x0000000100000001 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
slt x28, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x1, 0x0000000100000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
slt x29, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x23, 0x0000000100000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
slt x21, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000100000001 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
slt x18, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x12, 0x0000000100000001 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
slt x21, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000100000001 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
slt x18, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000100000001 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
slt x10, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000100000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
slt x20, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x6, 0x0000000100000001 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
slt x21, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x22, 0x0000000100000001 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
slt x27, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x11, 0x0000000100000001 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
slt x3, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x11, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
slt x23, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x16, 0x0000000100000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
slt x7, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x0443e5710842b03c # initialize rs1
li x0, 0x66041f8f729894a7 # initialize rs2
slt x6, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xc326fd84f258d6c0 # initialize rs1
li x1, 0x5e134537ed376f2b # initialize rs2
slt x14, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x8d512034cc3cedfc # initialize rs1
li x2, 0x2d4d0f1c7c2a6b38 # initialize rs2
slt x6, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x724153a63df61e6d # initialize rs1
li x3, 0x5a5738956eb130b2 # initialize rs2
slt x29, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9c0abc16c232ccbe # initialize rs1
li x4, 0x665863589c2a5e49 # initialize rs2
slt x5, x4, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x5, 0x2a6142b5fedd0a73 # initialize rs1
li x5, 0xe96ec128f74bca8b # initialize rs2
slt x20, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x312a71cd6740d322 # initialize rs1
li x6, 0x5d2e06f7c6c94f2a # initialize rs2
slt x4, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe792ebba8e46b312 # initialize rs1
li x7, 0x5e97e153a8b49dc8 # initialize rs2
slt x19, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x881d6352b00053f2 # initialize rs1
li x8, 0x473f30340b3d9d32 # initialize rs2
slt x13, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x1aae455db2f812d3 # initialize rs1
li x9, 0xfa23c9c9a0d64f73 # initialize rs2
slt x16, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x9ebb726e6c2858b9 # initialize rs1
li x10, 0xc9225b93ae2c24e0 # initialize rs2
slt x7, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x57a4f12eb611a711 # initialize rs1
li x11, 0x9238017236a5f7b5 # initialize rs2
slt x5, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x172499c73dc2acd7 # initialize rs1
li x12, 0xc3747e55031ebbf6 # initialize rs2
slt x18, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xecbcdaa5a69da670 # initialize rs1
li x13, 0x803fd4d472872962 # initialize rs2
slt x10, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xff35350992ccb2b9 # initialize rs1
li x14, 0xf9f5ec025ee5ee83 # initialize rs2
slt x1, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x2992ad248ec30f21 # initialize rs1
li x15, 0x9c47b249b21d262e # initialize rs2
slt x16, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x8b87e5dc75c201e1 # initialize rs1
li x16, 0xb13f59c2c2a8ee24 # initialize rs2
slt x2, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xfa49b41da02cfc42 # initialize rs1
li x17, 0xbc621d6385b711ee # initialize rs2
slt x24, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x9ab710039ebbac8e # initialize rs1
li x18, 0x911923a248f9d642 # initialize rs2
slt x17, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x7950064de47d8d61 # initialize rs1
li x19, 0x2e609932b417c966 # initialize rs2
slt x20, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x2964394fcf57a70c # initialize rs1
li x20, 0xfb744e6d49774de4 # initialize rs2
slt x25, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x0c5536dacaf412dd # initialize rs1
li x21, 0x0cd36877e349496d # initialize rs2
slt x19, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x644c50a74df39266 # initialize rs1
li x22, 0x7935b13b6e59981b # initialize rs2
slt x30, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x1593d7bd6e4869a6 # initialize rs1
li x23, 0xbcadc5c1d0a41f0c # initialize rs2
slt x13, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x5d40bf7bdb8c067b # initialize rs1
li x24, 0xee8cbd39268451a3 # initialize rs2
slt x29, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x6dceb0a2aae39452 # initialize rs1
li x25, 0x25b7837275d60bf1 # initialize rs2
slt x31, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xbdfa1e3828b86ede # initialize rs1
li x26, 0xbe39cc4a4a6844c2 # initialize rs2
slt x23, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x2db6860ef5465842 # initialize rs1
li x27, 0x8a03a1739f4b39d9 # initialize rs2
slt x20, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x24be4e40e9f79dc6 # initialize rs1
li x28, 0xed59278a90c62671 # initialize rs2
slt x11, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x82aac98e44c35930 # initialize rs1
li x29, 0x2d6ee24302917e29 # initialize rs2
slt x12, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x14348df702bfe9a7 # initialize rs1
li x30, 0x18885e8897275734 # initialize rs2
slt x19, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xaeeb37143abd1880 # initialize rs1
li x31, 0x1509779bb020852c # initialize rs2
slt x13, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x28a63281238e28a4 # initialize rs1
li x25, 0x58e6abd2eefeac09 # initialize rs2
slt x0, x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb140f1e47dd7c2d3 # initialize rs1
li x1, 0x98725643f7c4c7b2 # initialize rs2
slt x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x5c28ede1dade4629 # initialize rs1
li x18, 0x6b16fac6b59ceaae # initialize rs2
slt x2, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x02b86a9aef91f6f4 # initialize rs1
li x31, 0xcb4b7bb89953a919 # initialize rs2
slt x3, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x88dc254dbee5137e # initialize rs1
li x7, 0xcc180971d0e64c4c # initialize rs2
slt x4, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6d97c060e22411f9 # initialize rs1
li x10, 0xed04d5c67b8619dd # initialize rs2
slt x5, x5, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9c7e11ea3fbb294f # initialize rs1
li x3, 0x29808f43c17ffeff # initialize rs2
slt x6, x6, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x43c97defc207ac03 # initialize rs1
li x2, 0x74656739511f8bc9 # initialize rs2
slt x7, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9d37b32f490fa6ca # initialize rs1
li x23, 0x5fd455caf3592264 # initialize rs2
slt x8, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xebe2499fa664e3fc # initialize rs1
li x26, 0x2dab2b5ef1244b4d # initialize rs2
slt x9, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xf9acf51a6662aa2b # initialize rs1
li x31, 0x7ff1f08668fd26e4 # initialize rs2
slt x10, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x33652894be1afc88 # initialize rs1
li x12, 0x1362d703d80523d6 # initialize rs2
slt x11, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x95d086f7ab990629 # initialize rs1
li x24, 0x647ddd66916c3362 # initialize rs2
slt x12, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd9313ceb99ec2ca4 # initialize rs1
li x5, 0xb4b8bfa660768711 # initialize rs2
slt x13, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xbaa59cfc2a5772da # initialize rs1
li x9, 0x2614c7ae2d88841b # initialize rs2
slt x14, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x9b1e9e3cd6d2f2e0 # initialize rs1
li x18, 0x5c79d43f3498a5dd # initialize rs2
slt x15, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x92f57324a8ee108e # initialize rs1
li x19, 0xc417ae209300316a # initialize rs2
slt x16, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x3d9ca88a87279a58 # initialize rs1
li x30, 0x4a2fb9345bac2f87 # initialize rs2
slt x17, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xaa781fcc708f5582 # initialize rs1
li x16, 0x35df4ce4ce4d2285 # initialize rs2
slt x18, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x9f83474631daf1f5 # initialize rs1
li x6, 0x1d640f7c4cc5a20b # initialize rs2
slt x19, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x43f8d7abd5b2e74b # initialize rs1
li x2, 0xf61c2475b241ed1f # initialize rs2
slt x20, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x0efa07d920902a0b # initialize rs1
li x30, 0x23f5b9577f4b0de8 # initialize rs2
slt x21, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x0ae963266f56109c # initialize rs1
li x17, 0x581710594b3e2b2b # initialize rs2
slt x22, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa6dd9a126c1f2c61 # initialize rs1
li x28, 0xf9588beba2623bed # initialize rs2
slt x23, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x3f22a6eae8eb5bed # initialize rs1
li x27, 0xd788dfb001fe0b02 # initialize rs2
slt x24, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x99c65320af0616e4 # initialize rs1
li x25, 0xa7190d1c7b10eb08 # initialize rs2
slt x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xcd3e2564bd15c032 # initialize rs1
li x5, 0xe15e8abc981301bc # initialize rs2
slt x26, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x35381672abbe3b1d # initialize rs1
li x15, 0xf5de6de89fed8860 # initialize rs2
slt x27, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x26c40b0b7634b357 # initialize rs1
li x28, 0x2e3408a9ed105198 # initialize rs2
slt x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1f69f38908c2feaf # initialize rs1
li x19, 0x4b02a03ab619e065 # initialize rs2
slt x29, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x7a89d2977fc5f6bc # initialize rs1
li x3, 0x557d29ae92c9761e # initialize rs2
slt x30, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x46c949de95b7bdb3 # initialize rs1
li x9, 0x7d4bca5007d91168 # initialize rs2
slt x31, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x18, 0xd06b09a8cb605813 # initialize rs1
li x0, 0x14aeea91618d3eb2 # initialize rs2
slt x0, x18, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x22, 0x1e6920c3484c3dcb # initialize rs1
li x1, 0xbaf088b3c4a08052 # initialize rs2
slt x1, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x6, 0x5fee4c6ff9aa3bc1 # initialize rs1
li x2, 0xd9a6bfabbc187b08 # initialize rs2
slt x2, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x5, 0x08698abe613c2a3f # initialize rs1
li x3, 0x3f0f617751e6f0b6 # initialize rs2
slt x3, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0xa18aa9ae33732284 # initialize rs1
li x4, 0x701cf5926aedd8d5 # initialize rs2
slt x4, x25, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0xdbd66c8854ca9008 # initialize rs1
li x5, 0x3e5c44d90ca381d9 # initialize rs2
slt x5, x4, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0xf0503ad3ff22a388 # initialize rs1
li x6, 0x83912331a73ed04a # initialize rs2
slt x6, x1, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0xf334a5e3fe74a92c # initialize rs1
li x7, 0x391c287e863f190c # initialize rs2
slt x7, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x29, 0xf7c460b949152f46 # initialize rs1
li x8, 0x8fc6b5fd1c1f1567 # initialize rs2
slt x8, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x16, 0x2866c67c4ce8802e # initialize rs1
li x9, 0x7aca71e907f62104 # initialize rs2
slt x9, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x28, 0x46ea7a24c72dd5c6 # initialize rs1
li x10, 0x5812d2ad9da1a800 # initialize rs2
slt x10, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x24, 0xcd9edd37d6e115f9 # initialize rs1
li x11, 0xc96701b2f323ae31 # initialize rs2
slt x11, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x5, 0x99a720840c722ab9 # initialize rs1
li x12, 0x89bff512bab40887 # initialize rs2
slt x12, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x8, 0x20efa37c49e44fb5 # initialize rs1
li x13, 0xd2d4f69402be80d7 # initialize rs2
slt x13, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x11, 0xd22142846da3c2f9 # initialize rs1
li x14, 0x8c037b9b1a8a6265 # initialize rs2
slt x14, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x30, 0x0053706a46018582 # initialize rs1
li x15, 0xff3151f88e94736c # initialize rs2
slt x15, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x23, 0x454d5d4e754043c6 # initialize rs1
li x16, 0xfeb323eeb6af1797 # initialize rs2
slt x16, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x27, 0x870733562f1b5aff # initialize rs1
li x17, 0xa2d7bd72fdd71a9f # initialize rs2
slt x17, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x29, 0x3d769c6ca3278a3b # initialize rs1
li x18, 0xed164fc287eb8ef3 # initialize rs2
slt x18, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x12, 0x5bff84a971738c28 # initialize rs1
li x19, 0x70b9efbf79da4ec2 # initialize rs2
slt x19, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x13, 0x8bfd9ae70315cfdf # initialize rs1
li x20, 0xa320a40112ffc908 # initialize rs2
slt x20, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x25, 0xfbec6e87eba03027 # initialize rs1
li x21, 0x04c67d6c5a4b4daa # initialize rs2
slt x21, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x17, 0x0598b3751ef2ac2e # initialize rs1
li x22, 0x9d4c906e7b8d1daf # initialize rs2
slt x22, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x26, 0xe4716c527aa6cff9 # initialize rs1
li x23, 0xe84d700ec45233ad # initialize rs2
slt x23, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x8, 0x8cc69080433a5b3d # initialize rs1
li x24, 0x37f9ff079c5de2bf # initialize rs2
slt x24, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x7, 0x6f307108965babda # initialize rs1
li x25, 0x7eea409d1c249438 # initialize rs2
slt x25, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x12, 0x01a70a5614f1ec49 # initialize rs1
li x26, 0x16645d152d43c25f # initialize rs2
slt x26, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x12, 0x8f2cb49ac7837983 # initialize rs1
li x27, 0xd51853524beaa187 # initialize rs2
slt x27, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x10, 0x7be31280b9313e9f # initialize rs1
li x28, 0xd5bd13826c3aee82 # initialize rs2
slt x28, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x16, 0x5e9f4bd344013aae # initialize rs1
li x29, 0x79922fe577340e2f # initialize rs2
slt x29, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x17, 0x5702c37336804e25 # initialize rs1
li x30, 0x37c0041787b2b70b # initialize rs2
slt x30, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x22, 0x3f64aabee01da202 # initialize rs1
li x31, 0xe802d53f2ec5b37b # initialize rs2
slt x31, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x4b8882ff77e6f5c1 # initialize rs1
li x0, 0xdbd78c5d52f947b1 # initialize rs2
slt x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x30365b900f7e6095 # initialize rs1
li x1, 0x933a1b29d0a7c081 # initialize rs2
slt x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x5a816e1998122f77 # initialize rs1
li x2, 0x36c1196d7756fa39 # initialize rs2
slt x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xe6134c92788c9792 # initialize rs1
li x3, 0xf6caab135827b7e9 # initialize rs2
slt x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb993b513312d308d # initialize rs1
li x4, 0x6e912244479b2d29 # initialize rs2
slt x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1831a915a71ffe28 # initialize rs1
li x5, 0x9da312bfbfa8486c # initialize rs2
slt x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x63afe16f5879fac3 # initialize rs1
li x6, 0x2f52b0a90e383251 # initialize rs2
slt x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xeeac5217d2b4c8ed # initialize rs1
li x7, 0xa46d29102177ac44 # initialize rs2
slt x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xec929bd01bb274e9 # initialize rs1
li x8, 0x1e83af9b43d75de9 # initialize rs2
slt x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x8fa240902ef67a5f # initialize rs1
li x9, 0x80f3a057753dacda # initialize rs2
slt x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x9b973b5fe5b2d172 # initialize rs1
li x10, 0x805353dc0871734a # initialize rs2
slt x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x79039a557bb68f5e # initialize rs1
li x11, 0x39884ea5b463e9e6 # initialize rs2
slt x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xeb289eca1f0d5f02 # initialize rs1
li x12, 0x2ce26efeaa446325 # initialize rs2
slt x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xf5b00c413894cdc9 # initialize rs1
li x13, 0xa0298b0f2e395190 # initialize rs2
slt x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x8044e4b4300defef # initialize rs1
li x14, 0xb7ba2a72d782d65e # initialize rs2
slt x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x325c8f494e60f37c # initialize rs1
li x15, 0x70bd85a768b14d47 # initialize rs2
slt x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x4f728e22e12b2afa # initialize rs1
li x16, 0xf5e30b388fd21956 # initialize rs2
slt x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x9ea842982716d2c9 # initialize rs1
li x17, 0x0b7de46846597b79 # initialize rs2
slt x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x18dec99bc5908e17 # initialize rs1
li x18, 0xed6ed85dccb2706c # initialize rs2
slt x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xc0b7c7bb54d890ce # initialize rs1
li x19, 0xb238e2a2b4fe410a # initialize rs2
slt x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x0f0ec6181707ca2c # initialize rs1
li x20, 0xee013cfa48dc561d # initialize rs2
slt x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x0f96afddf3d308f4 # initialize rs1
li x21, 0xc435f020f5efd5f7 # initialize rs2
slt x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x0e98448f08540391 # initialize rs1
li x22, 0xcc33abc56f4e6d03 # initialize rs2
slt x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x2626b8375b833065 # initialize rs1
li x23, 0x3691f3cee5c1869b # initialize rs2
slt x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xc3a821a697c758ff # initialize rs1
li x24, 0x4ad036f4f5e20245 # initialize rs2
slt x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x2a154677ecc92990 # initialize rs1
li x25, 0x9c79a60acbfa8a99 # initialize rs2
slt x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x3839d47629ea3eb7 # initialize rs1
li x26, 0xa1caee1014310de7 # initialize rs2
slt x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xc872aca369a6805e # initialize rs1
li x27, 0xae9b6fc8581fdc8d # initialize rs2
slt x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x0495853a14b72df2 # initialize rs1
li x28, 0xd52ce41c09a480c0 # initialize rs2
slt x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x4f163739b473db20 # initialize rs1
li x29, 0x79a7c11dae93982f # initialize rs2
slt x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x957e2e85e6634e16 # initialize rs1
li x30, 0xb8bbeb7920a0dadd # initialize rs2
slt x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x87acfb5aa82f7cf3 # initialize rs1
li x31, 0x421edce0bf1a11ec # initialize rs2
slt x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x26, x18 # perform first operation
slt x8, x11, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x3, x12 # perform first operation
slt x29, x31, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x24, x2 # perform first operation
slt x27, x9, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x7, x25 # perform first operation
slt x22, x6, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x24, x7 # perform first operation
slt x24, x1, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x9, x20 # perform first operation
slt x20, x10, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x22, x16 # perform first operation
slt x24, x5, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x31, x17 # perform first operation
slt x9, x26, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x10, x2 # perform first operation
slt x7, x3, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x9, x19 # perform first operation
slt x9, x24, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x1, x17 # perform first operation
slt x17, x2, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x9, x7 # perform first operation
slt x26, x29, x28 # perform second (triggering) operation

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
