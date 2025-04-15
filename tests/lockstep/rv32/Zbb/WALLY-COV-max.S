///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbb/WALLY-COV-max.S
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
li x0, 0x4551a99d # initialize rs1
li x8, 0x028886a6 # initialize rs2
max x11, x0, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xfd1bfdde # initialize rs1
li x27, 0xb9f22806 # initialize rs2
max x14, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x303cbeb7 # initialize rs1
li x8, 0x3a5df078 # initialize rs2
max x19, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xdf8ba5b4 # initialize rs1
li x20, 0xb637a70c # initialize rs2
max x25, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe4c79e51 # initialize rs1
li x3, 0x92e83e1a # initialize rs2
max x19, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6645f1e8 # initialize rs1
li x12, 0x37684217 # initialize rs2
max x30, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x157fcba2 # initialize rs1
li x12, 0xe42eee5b # initialize rs2
max x2, x6, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7b838f3b # initialize rs1
li x30, 0xf7ab8025 # initialize rs2
max x1, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x22bb1cf6 # initialize rs1
li x15, 0xcb3fcfd4 # initialize rs2
max x1, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xc8546d92 # initialize rs1
li x18, 0xb2937d52 # initialize rs2
max x3, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x69d49199 # initialize rs1
li x23, 0x73e55e59 # initialize rs2
max x13, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x81ad681c # initialize rs1
li x31, 0x116ce1c2 # initialize rs2
max x10, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x65ff7016 # initialize rs1
li x26, 0xf8c46175 # initialize rs2
max x1, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x8a514088 # initialize rs1
li x14, 0x36ebabeb # initialize rs2
max x3, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x9d425cfe # initialize rs1
li x8, 0xa2938350 # initialize rs2
max x13, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x86f40a54 # initialize rs1
li x13, 0x263e0bd9 # initialize rs2
max x23, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x13b2824b # initialize rs1
li x29, 0x3016998f # initialize rs2
max x18, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x3816930d # initialize rs1
li x27, 0x0b4ca1e0 # initialize rs2
max x9, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xb8712729 # initialize rs1
li x24, 0xfe7aa34e # initialize rs2
max x7, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x345444f4 # initialize rs1
li x2, 0xbdc571ca # initialize rs2
max x3, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x4a2e4b75 # initialize rs1
li x31, 0xdf2808f0 # initialize rs2
max x28, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x2cd35852 # initialize rs1
li x8, 0xed13f4df # initialize rs2
max x6, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x70d21f18 # initialize rs1
li x20, 0xdd16151d # initialize rs2
max x13, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x2e0e0c62 # initialize rs1
li x29, 0xba6864f8 # initialize rs2
max x26, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x270af5f7 # initialize rs1
li x13, 0x0bb7d430 # initialize rs2
max x21, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x25250412 # initialize rs1
li x6, 0x1a237dd1 # initialize rs2
max x1, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xa607c8eb # initialize rs1
li x17, 0x46a292ca # initialize rs2
max x22, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xa1c1ca8f # initialize rs1
li x31, 0x075ea2c7 # initialize rs2
max x30, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x5bafb179 # initialize rs1
li x29, 0x25bbf151 # initialize rs2
max x11, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x886855d7 # initialize rs1
li x18, 0x72eedada # initialize rs2
max x21, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x214139f7 # initialize rs1
li x18, 0x753664a7 # initialize rs2
max x20, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xbffc2ed0 # initialize rs1
li x30, 0x9a9ccc21 # initialize rs2
max x29, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x14, 0x8ee79406 # initialize rs1
li x0, 0x6140b2a6 # initialize rs2
max x29, x14, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x10, 0x2bc4cb91 # initialize rs1
li x1, 0xd72d1b40 # initialize rs2
max x23, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x31, 0x1a21f93f # initialize rs1
li x2, 0xdb79c343 # initialize rs2
max x25, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x15, 0xa049e1ee # initialize rs1
li x3, 0x247d8e6f # initialize rs2
max x2, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x701c71ca # initialize rs1
li x4, 0x38dce57b # initialize rs2
max x12, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
li x28, 0x7f8cc3bf # initialize rs1
li x5, 0x1cc182f6 # initialize rs2
max x24, x28, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x507cf7d7 # initialize rs1
li x6, 0x51c4401b # initialize rs2
max x9, x18, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0xc382db8f # initialize rs1
li x7, 0xf26891db # initialize rs2
max x8, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x12, 0xf9cdacc4 # initialize rs1
li x8, 0x0687e219 # initialize rs2
max x17, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x26, 0xb75ff8a1 # initialize rs1
li x9, 0xc1dc9aad # initialize rs2
max x11, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x21, 0xdb912d2f # initialize rs1
li x10, 0xc6e616cf # initialize rs2
max x22, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x5, 0x7e79ad78 # initialize rs1
li x11, 0xfa8ce927 # initialize rs2
max x16, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x5, 0x658f8b9e # initialize rs1
li x12, 0x4d66cc89 # initialize rs2
max x23, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0x470181bc # initialize rs1
li x13, 0x90599ae5 # initialize rs2
max x5, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x11, 0xe9ed93a9 # initialize rs1
li x14, 0x8bc1393a # initialize rs2
max x17, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x14, 0xf78106e0 # initialize rs1
li x15, 0xe572a0e6 # initialize rs2
max x23, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x2, 0x2ac6a010 # initialize rs1
li x16, 0xa28cdb53 # initialize rs2
max x21, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x11, 0x24eecaeb # initialize rs1
li x17, 0x211c9f7e # initialize rs2
max x16, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x29, 0x855ddb9f # initialize rs1
li x18, 0xf2f33bdd # initialize rs2
max x12, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x28, 0x0a9c829b # initialize rs1
li x19, 0x5e67b614 # initialize rs2
max x10, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x31, 0x35fd3415 # initialize rs1
li x20, 0x53e4388c # initialize rs2
max x21, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x11, 0x597b45e7 # initialize rs1
li x21, 0x8d2be4bc # initialize rs2
max x28, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x26, 0x5559770f # initialize rs1
li x22, 0x93080a68 # initialize rs2
max x31, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x26, 0x21068139 # initialize rs1
li x23, 0x6023c0c8 # initialize rs2
max x20, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x17, 0x83b00c14 # initialize rs1
li x24, 0x190ee00a # initialize rs2
max x15, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x22, 0x626de95d # initialize rs1
li x25, 0x81fe2480 # initialize rs2
max x28, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x10, 0x064f7d2e # initialize rs1
li x26, 0x0ac73859 # initialize rs2
max x20, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x15, 0x03a128c0 # initialize rs1
li x27, 0x5fc05552 # initialize rs2
max x17, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x16, 0x24db9999 # initialize rs1
li x28, 0x603c73e1 # initialize rs2
max x22, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x26, 0x59941db2 # initialize rs1
li x29, 0x52d9c950 # initialize rs2
max x17, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x29, 0x3d0a340e # initialize rs1
li x30, 0x63373cff # initialize rs2
max x2, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x16, 0x61886b3c # initialize rs1
li x31, 0xaec81d71 # initialize rs2
max x10, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 252)

# Testcase cp_rd (Test destination rd = x0)
li x24, 0x913185c8 # initialize rs1
li x12, 0x7916376e # initialize rs2
max x0, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x9, 0x96dc70e1 # initialize rs1
li x8, 0x80606ce1 # initialize rs2
max x1, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x20, 0x039ad28a # initialize rs1
li x24, 0x442568a4 # initialize rs2
max x2, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x15, 0x91818553 # initialize rs1
li x24, 0x9424952b # initialize rs2
max x3, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x19fa55c5 # initialize rs1
li x24, 0x6aeed53c # initialize rs2
max x4, x27, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0x088e9fcc # initialize rs1
li x20, 0xd86f100f # initialize rs2
max x5, x11, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0x7a8d0bc3 # initialize rs1
li x15, 0x00f8d6b5 # initialize rs2
max x6, x8, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0x798baf0b # initialize rs1
li x25, 0x36cd89b3 # initialize rs2
max x7, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x30, 0x03e37b6a # initialize rs1
li x18, 0xc5b9c41d # initialize rs2
max x8, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x5, 0x85537baa # initialize rs1
li x3, 0xea4d2177 # initialize rs2
max x9, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x17, 0x21edb57f # initialize rs1
li x16, 0x7f1f8249 # initialize rs2
max x10, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x13, 0x1b9bedf9 # initialize rs1
li x12, 0x978662da # initialize rs2
max x11, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x22, 0xd73e31d8 # initialize rs1
li x14, 0x0cbb3d79 # initialize rs2
max x12, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x21, 0x62b033b3 # initialize rs1
li x16, 0x352a500a # initialize rs2
max x13, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x12, 0xb41785f9 # initialize rs1
li x31, 0xfddd2c02 # initialize rs2
max x14, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0x9e8a30a8 # initialize rs1
li x11, 0x7797ab72 # initialize rs2
max x15, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x11, 0xef6d30d3 # initialize rs1
li x24, 0xcc2cc595 # initialize rs2
max x16, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x31, 0x82b6e4ab # initialize rs1
li x18, 0x8ba00a8d # initialize rs2
max x17, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x21, 0x2a0d5104 # initialize rs1
li x15, 0xb345b89c # initialize rs2
max x18, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x7, 0x06d70b8b # initialize rs1
li x11, 0xfae6fdb5 # initialize rs2
max x19, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x6, 0x017b26e0 # initialize rs1
li x10, 0x9af6cc99 # initialize rs2
max x20, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x1, 0xfdd4eaa0 # initialize rs1
li x20, 0xfc052e82 # initialize rs2
max x21, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x14, 0x3067aa70 # initialize rs1
li x26, 0x9aa958d5 # initialize rs2
max x22, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x12, 0x8dbd88d2 # initialize rs1
li x22, 0x3e5daee2 # initialize rs2
max x23, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x51481417 # initialize rs1
li x17, 0x9ea89011 # initialize rs2
max x24, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x9, 0x89302ce3 # initialize rs1
li x27, 0xa639c509 # initialize rs2
max x25, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x8, 0xb99b418b # initialize rs1
li x14, 0x33a63f53 # initialize rs2
max x26, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0xea189a09 # initialize rs1
li x30, 0x16448a9b # initialize rs2
max x27, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x31, 0x82df6876 # initialize rs1
li x15, 0xff201364 # initialize rs2
max x28, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x21, 0x5aa8e59f # initialize rs1
li x17, 0x3302d722 # initialize rs2
max x29, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x6, 0xfcd5e571 # initialize rs1
li x29, 0xe5e7af77 # initialize rs2
max x30, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x16, 0x7c6b63b9 # initialize rs1
li x11, 0xad66c374 # initialize rs2
max x31, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x21, 0x00000000 # initialize rs1
li x5, 0xe139d1be # initialize rs2
max x19, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x1, 0x00000001 # initialize rs1
li x21, 0x48d304f9 # initialize rs2
max x9, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0x00000002 # initialize rs1
li x26, 0xadf7047a # initialize rs2
max x28, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x16, 0x80000000 # initialize rs1
li x10, 0x8bc4645c # initialize rs2
max x23, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x11, 0x80000001 # initialize rs1
li x5, 0xaae19bc9 # initialize rs2
max x8, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x13, 0x7fffffff # initialize rs1
li x17, 0xa27a02f0 # initialize rs2
max x7, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x22, 0x7ffffffe # initialize rs1
li x5, 0xc896132a # initialize rs2
max x19, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x21, 0xffffffff # initialize rs1
li x11, 0xa08c2944 # initialize rs2
max x28, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0xfffffffe # initialize rs1
li x29, 0x24b49de9 # initialize rs2
max x25, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x28, 0x5bbc8872 # initialize rs1
li x23, 0x3149c2cf # initialize rs2
max x26, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x20, 0xaaaaaaaa # initialize rs1
li x27, 0xb034229e # initialize rs2
max x3, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x7, 0x55555555 # initialize rs1
li x12, 0x1a0f6ebd # initialize rs2
max x24, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0xf3b182ff # initialize rs1
li x2, 0x00000000 # initialize rs2
max x25, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x26, 0xb8948af5 # initialize rs1
li x25, 0x00000001 # initialize rs2
max x23, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0xf8a3a12d # initialize rs1
li x7, 0x00000002 # initialize rs2
max x1, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x24, 0x8f3f5f16 # initialize rs1
li x11, 0x80000000 # initialize rs2
max x17, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x19, 0x17d0b5ae # initialize rs1
li x21, 0x80000001 # initialize rs2
max x25, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x31, 0x6b055513 # initialize rs1
li x11, 0x7fffffff # initialize rs2
max x28, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x6, 0x38a5b380 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
max x1, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x8, 0x0e464073 # initialize rs1
li x28, 0xffffffff # initialize rs2
max x29, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0x3f846203 # initialize rs1
li x18, 0xfffffffe # initialize rs2
max x31, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x28, 0x2729e78f # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
max x17, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x24, 0x47c2561b # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
max x16, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x6, 0xa75e674d # initialize rs1
li x26, 0x55555555 # initialize rs2
max x29, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x13, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
max x10, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x22, 0x00000000 # initialize rs1
li x19, 0x00000001 # initialize rs2
max x2, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x13, 0x00000000 # initialize rs1
li x25, 0x00000002 # initialize rs2
max x10, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x2, 0x00000000 # initialize rs1
li x10, 0x80000000 # initialize rs2
max x31, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x5, 0x00000000 # initialize rs1
li x25, 0x80000001 # initialize rs2
max x13, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x23, 0x00000000 # initialize rs1
li x2, 0x7fffffff # initialize rs2
max x30, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x21, 0x00000000 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
max x22, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x12, 0x00000000 # initialize rs1
li x14, 0xffffffff # initialize rs2
max x15, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x25, 0x00000000 # initialize rs1
li x2, 0xfffffffe # initialize rs2
max x17, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x26, 0x00000000 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
max x17, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x6, 0x00000000 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
max x14, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x1, 0x00000000 # initialize rs1
li x27, 0x55555555 # initialize rs2
max x22, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x16, 0x00000001 # initialize rs1
li x24, 0x00000000 # initialize rs2
max x10, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x18, 0x00000001 # initialize rs1
li x14, 0x00000001 # initialize rs2
max x24, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x27, 0x00000001 # initialize rs1
li x14, 0x00000002 # initialize rs2
max x6, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x3, 0x00000001 # initialize rs1
li x19, 0x80000000 # initialize rs2
max x8, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x26, 0x00000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
max x9, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x5, 0x00000001 # initialize rs1
li x23, 0x7fffffff # initialize rs2
max x25, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x1, 0x00000001 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
max x20, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x25, 0x00000001 # initialize rs1
li x16, 0xffffffff # initialize rs2
max x27, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x29, 0x00000001 # initialize rs1
li x18, 0xfffffffe # initialize rs2
max x5, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x28, 0x00000001 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
max x19, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x23, 0x00000001 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
max x16, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x3, 0x00000001 # initialize rs1
li x15, 0x55555555 # initialize rs2
max x25, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x12, 0x00000002 # initialize rs1
li x17, 0x00000000 # initialize rs2
max x26, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x20, 0x00000002 # initialize rs1
li x15, 0x00000001 # initialize rs2
max x18, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x22, 0x00000002 # initialize rs1
li x29, 0x00000002 # initialize rs2
max x28, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x14, 0x00000002 # initialize rs1
li x8, 0x80000000 # initialize rs2
max x16, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x24, 0x00000002 # initialize rs1
li x3, 0x80000001 # initialize rs2
max x10, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x23, 0x00000002 # initialize rs1
li x19, 0x7fffffff # initialize rs2
max x24, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x26, 0x00000002 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
max x14, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x14, 0x00000002 # initialize rs1
li x15, 0xffffffff # initialize rs2
max x29, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x23, 0x00000002 # initialize rs1
li x10, 0xfffffffe # initialize rs2
max x6, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x5, 0x00000002 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
max x7, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x29, 0x00000002 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
max x19, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x27, 0x00000002 # initialize rs1
li x13, 0x55555555 # initialize rs2
max x15, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x26, 0x80000000 # initialize rs1
li x10, 0x00000000 # initialize rs2
max x30, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x2, 0x80000000 # initialize rs1
li x30, 0x00000001 # initialize rs2
max x29, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x19, 0x80000000 # initialize rs1
li x8, 0x00000002 # initialize rs2
max x28, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x5, 0x80000000 # initialize rs1
li x21, 0x80000000 # initialize rs2
max x2, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x30, 0x80000000 # initialize rs1
li x28, 0x80000001 # initialize rs2
max x21, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x29, 0x80000000 # initialize rs1
li x18, 0x7fffffff # initialize rs2
max x7, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x18, 0x80000000 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
max x17, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x2, 0x80000000 # initialize rs1
li x9, 0xffffffff # initialize rs2
max x21, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x12, 0x80000000 # initialize rs1
li x23, 0xfffffffe # initialize rs2
max x2, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x17, 0x80000000 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
max x6, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x1, 0x80000000 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
max x14, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x8, 0x80000000 # initialize rs1
li x17, 0x55555555 # initialize rs2
max x22, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x20, 0x80000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
max x14, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x30, 0x80000001 # initialize rs1
li x29, 0x00000001 # initialize rs2
max x21, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x31, 0x80000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
max x5, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x24, 0x80000001 # initialize rs1
li x20, 0x80000000 # initialize rs2
max x12, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x23, 0x80000001 # initialize rs1
li x5, 0x80000001 # initialize rs2
max x7, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x5, 0x80000001 # initialize rs1
li x20, 0x7fffffff # initialize rs2
max x1, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x27, 0x80000001 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
max x17, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x19, 0x80000001 # initialize rs1
li x27, 0xffffffff # initialize rs2
max x31, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x31, 0x80000001 # initialize rs1
li x8, 0xfffffffe # initialize rs2
max x14, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x11, 0x80000001 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
max x9, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x28, 0x80000001 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
max x25, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x14, 0x80000001 # initialize rs1
li x20, 0x55555555 # initialize rs2
max x2, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x26, 0x7fffffff # initialize rs1
li x1, 0x00000000 # initialize rs2
max x6, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x21, 0x7fffffff # initialize rs1
li x14, 0x00000001 # initialize rs2
max x31, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x10, 0x7fffffff # initialize rs1
li x13, 0x00000002 # initialize rs2
max x1, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x2, 0x7fffffff # initialize rs1
li x19, 0x80000000 # initialize rs2
max x10, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x24, 0x7fffffff # initialize rs1
li x15, 0x80000001 # initialize rs2
max x2, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x17, 0x7fffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
max x24, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x22, 0x7fffffff # initialize rs1
li x9, 0x7ffffffe # initialize rs2
max x10, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x24, 0x7fffffff # initialize rs1
li x16, 0xffffffff # initialize rs2
max x28, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x17, 0x7fffffff # initialize rs1
li x24, 0xfffffffe # initialize rs2
max x14, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x1, 0x7fffffff # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
max x6, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x12, 0x7fffffff # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
max x9, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x1, 0x7fffffff # initialize rs1
li x25, 0x55555555 # initialize rs2
max x22, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x16, 0x7ffffffe # initialize rs1
li x18, 0x00000000 # initialize rs2
max x11, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x22, 0x7ffffffe # initialize rs1
li x24, 0x00000001 # initialize rs2
max x9, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x16, 0x7ffffffe # initialize rs1
li x9, 0x00000002 # initialize rs2
max x18, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x7, 0x7ffffffe # initialize rs1
li x6, 0x80000000 # initialize rs2
max x12, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x19, 0x7ffffffe # initialize rs1
li x9, 0x80000001 # initialize rs2
max x8, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x2, 0x7ffffffe # initialize rs1
li x26, 0x7fffffff # initialize rs2
max x27, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs1
li x26, 0x7ffffffe # initialize rs2
max x20, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x17, 0x7ffffffe # initialize rs1
li x10, 0xffffffff # initialize rs2
max x16, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x8, 0x7ffffffe # initialize rs1
li x2, 0xfffffffe # initialize rs2
max x25, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x27, 0x7ffffffe # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
max x14, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x10, 0x7ffffffe # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
max x26, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x9, 0x7ffffffe # initialize rs1
li x6, 0x55555555 # initialize rs2
max x23, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x25, 0xffffffff # initialize rs1
li x19, 0x00000000 # initialize rs2
max x29, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x8, 0xffffffff # initialize rs1
li x3, 0x00000001 # initialize rs2
max x28, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x18, 0xffffffff # initialize rs1
li x28, 0x00000002 # initialize rs2
max x6, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x25, 0xffffffff # initialize rs1
li x9, 0x80000000 # initialize rs2
max x30, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x14, 0xffffffff # initialize rs1
li x18, 0x80000001 # initialize rs2
max x29, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x23, 0xffffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
max x18, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x7, 0xffffffff # initialize rs1
li x17, 0x7ffffffe # initialize rs2
max x29, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x18, 0xffffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
max x6, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x31, 0xffffffff # initialize rs1
li x9, 0xfffffffe # initialize rs2
max x17, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x5, 0xffffffff # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
max x12, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x5, 0xffffffff # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
max x12, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x1, 0xffffffff # initialize rs1
li x12, 0x55555555 # initialize rs2
max x25, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x23, 0xfffffffe # initialize rs1
li x8, 0x00000000 # initialize rs2
max x28, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x27, 0xfffffffe # initialize rs1
li x23, 0x00000001 # initialize rs2
max x18, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x8, 0xfffffffe # initialize rs1
li x20, 0x00000002 # initialize rs2
max x23, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x30, 0xfffffffe # initialize rs1
li x15, 0x80000000 # initialize rs2
max x21, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x29, 0xfffffffe # initialize rs1
li x28, 0x80000001 # initialize rs2
max x21, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x12, 0xfffffffe # initialize rs1
li x21, 0x7fffffff # initialize rs2
max x17, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x20, 0xfffffffe # initialize rs1
li x13, 0x7ffffffe # initialize rs2
max x26, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x17, 0xfffffffe # initialize rs1
li x20, 0xffffffff # initialize rs2
max x27, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x10, 0xfffffffe # initialize rs1
li x24, 0xfffffffe # initialize rs2
max x17, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x12, 0xfffffffe # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
max x19, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x18, 0xfffffffe # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
max x7, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x11, 0xfffffffe # initialize rs1
li x25, 0x55555555 # initialize rs2
max x13, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x24, 0x5bbc8872 # initialize rs1
li x15, 0x00000000 # initialize rs2
max x22, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x5, 0x5bbc8872 # initialize rs1
li x29, 0x00000001 # initialize rs2
max x1, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x1, 0x5bbc8872 # initialize rs1
li x3, 0x00000002 # initialize rs2
max x10, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x16, 0x5bbc8872 # initialize rs1
li x18, 0x80000000 # initialize rs2
max x21, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x28, 0x5bbc8872 # initialize rs1
li x27, 0x80000001 # initialize rs2
max x10, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x22, 0x5bbc8872 # initialize rs1
li x19, 0x7fffffff # initialize rs2
max x10, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x30, 0x5bbc8872 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
max x16, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x11, 0x5bbc8872 # initialize rs1
li x30, 0xffffffff # initialize rs2
max x23, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x12, 0x5bbc8872 # initialize rs1
li x16, 0xfffffffe # initialize rs2
max x30, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x7, 0x5bbc8872 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
max x15, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x21, 0x5bbc8872 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
max x5, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x18, 0x5bbc8872 # initialize rs1
li x28, 0x55555555 # initialize rs2
max x12, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x28, 0xaaaaaaaa # initialize rs1
li x23, 0x00000000 # initialize rs2
max x15, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x7, 0xaaaaaaaa # initialize rs1
li x12, 0x00000001 # initialize rs2
max x10, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x1, 0xaaaaaaaa # initialize rs1
li x3, 0x00000002 # initialize rs2
max x31, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x5, 0xaaaaaaaa # initialize rs1
li x30, 0x80000000 # initialize rs2
max x29, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x18, 0xaaaaaaaa # initialize rs1
li x27, 0x80000001 # initialize rs2
max x12, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x9, 0xaaaaaaaa # initialize rs1
li x22, 0x7fffffff # initialize rs2
max x26, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x30, 0xaaaaaaaa # initialize rs1
li x24, 0x7ffffffe # initialize rs2
max x9, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x20, 0xaaaaaaaa # initialize rs1
li x13, 0xffffffff # initialize rs2
max x8, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x8, 0xaaaaaaaa # initialize rs1
li x9, 0xfffffffe # initialize rs2
max x28, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x18, 0xaaaaaaaa # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
max x9, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x17, 0xaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
max x23, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x23, 0xaaaaaaaa # initialize rs1
li x5, 0x55555555 # initialize rs2
max x1, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x29, 0x55555555 # initialize rs1
li x7, 0x00000000 # initialize rs2
max x26, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x7, 0x55555555 # initialize rs1
li x25, 0x00000001 # initialize rs2
max x31, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x18, 0x55555555 # initialize rs1
li x13, 0x00000002 # initialize rs2
max x15, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x11, 0x55555555 # initialize rs1
li x17, 0x80000000 # initialize rs2
max x28, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x22, 0x55555555 # initialize rs1
li x15, 0x80000001 # initialize rs2
max x18, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x13, 0x55555555 # initialize rs1
li x16, 0x7fffffff # initialize rs2
max x31, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x5, 0x55555555 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
max x23, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x25, 0x55555555 # initialize rs1
li x14, 0xffffffff # initialize rs2
max x29, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x22, 0x55555555 # initialize rs1
li x13, 0xfffffffe # initialize rs2
max x9, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x27, 0x55555555 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
max x25, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x29, 0x55555555 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
max x17, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x9, 0x55555555 # initialize rs1
li x12, 0x55555555 # initialize rs2
max x14, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xfae906a7 # initialize rs1
li x0, 0xb39a7930 # initialize rs2
max x8, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x337d9d65 # initialize rs1
li x1, 0x818ae341 # initialize rs2
max x24, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xf450e71a # initialize rs1
li x2, 0x9bcdaf32 # initialize rs2
max x13, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x0aeef2d6 # initialize rs1
li x3, 0xbd7e824b # initialize rs2
max x16, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf8614a7e # initialize rs1
li x4, 0x056ea09f # initialize rs2
max x13, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4912ce87 # initialize rs1
li x5, 0xd1b61f0e # initialize rs2
max x6, x5, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x6, 0x09557e38 # initialize rs1
li x6, 0xe86aec5f # initialize rs2
max x16, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x16, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7bab1f36 # initialize rs1
li x7, 0xcc6e1683 # initialize rs2
max x11, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xc8d85dde # initialize rs1
li x8, 0x461b5453 # initialize rs2
max x11, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xb387319a # initialize rs1
li x9, 0xca926952 # initialize rs2
max x19, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xcf23d0da # initialize rs1
li x10, 0x1285f991 # initialize rs2
max x6, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xee2dd414 # initialize rs1
li x11, 0xa7925cc6 # initialize rs2
max x8, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x8628960a # initialize rs1
li x12, 0xca77ffe9 # initialize rs2
max x18, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xb54e15be # initialize rs1
li x13, 0xe4be8c50 # initialize rs2
max x16, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x5e525827 # initialize rs1
li x14, 0x615472a7 # initialize rs2
max x31, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x45184e8f # initialize rs1
li x15, 0x3350544e # initialize rs2
max x25, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x5a6a6243 # initialize rs1
li x16, 0x2e823a0d # initialize rs2
max x2, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xe87188c7 # initialize rs1
li x17, 0x5db7baaf # initialize rs2
max x18, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x3fa4628f # initialize rs1
li x18, 0xdda3cb8c # initialize rs2
max x20, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x6b788a39 # initialize rs1
li x19, 0xda11272a # initialize rs2
max x5, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xd66ca725 # initialize rs1
li x20, 0x25d07ecc # initialize rs2
max x7, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xdb6083b1 # initialize rs1
li x21, 0xcb6c2c99 # initialize rs2
max x18, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x57fb5f19 # initialize rs1
li x22, 0x2441b2d5 # initialize rs2
max x23, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x664f2f98 # initialize rs1
li x23, 0x0cac514b # initialize rs2
max x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x262941dc # initialize rs1
li x24, 0x017af7a8 # initialize rs2
max x9, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x7d01ef99 # initialize rs1
li x25, 0xce076362 # initialize rs2
max x28, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x06ee1f4a # initialize rs1
li x26, 0x2c161e30 # initialize rs2
max x31, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xb9996375 # initialize rs1
li x27, 0x3d4f8e68 # initialize rs2
max x25, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xe895d2dd # initialize rs1
li x28, 0xde8eca8b # initialize rs2
max x23, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x195893d7 # initialize rs1
li x29, 0x6730d144 # initialize rs2
max x9, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x16d48381 # initialize rs1
li x30, 0x91241760 # initialize rs2
max x27, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x27d2a68c # initialize rs1
li x31, 0x2c20cfad # initialize rs2
max x18, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xb848b1fd # initialize rs1
li x8, 0x467b8712 # initialize rs2
max x0, x0, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb826165f # initialize rs1
li x21, 0x8bb8979c # initialize rs2
max x1, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x9553118d # initialize rs1
li x11, 0x2a7b9e76 # initialize rs2
max x2, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xbf57204f # initialize rs1
li x13, 0x882374cf # initialize rs2
max x3, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5151da91 # initialize rs1
li x18, 0x510ce107 # initialize rs2
max x4, x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc2869101 # initialize rs1
li x2, 0xd31a62bc # initialize rs2
max x5, x5, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf3782394 # initialize rs1
li x17, 0xe359399e # initialize rs2
max x6, x6, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x0f813a32 # initialize rs1
li x1, 0xaa7bd665 # initialize rs2
max x7, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9415b88a # initialize rs1
li x6, 0x14410163 # initialize rs2
max x8, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x763e0b93 # initialize rs1
li x26, 0xe603cc58 # initialize rs2
max x9, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x2990be31 # initialize rs1
li x7, 0x9ac21fd1 # initialize rs2
max x10, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xf28905f3 # initialize rs1
li x29, 0x832eb73d # initialize rs2
max x11, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xacacc9d2 # initialize rs1
li x29, 0x9deed07d # initialize rs2
max x12, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xabad58af # initialize rs1
li x10, 0xbf9586dc # initialize rs2
max x13, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x40368242 # initialize rs1
li x10, 0x729bdfe6 # initialize rs2
max x14, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x1c5dc00d # initialize rs1
li x10, 0x34eaf57e # initialize rs2
max x15, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x8a6a7d75 # initialize rs1
li x17, 0xcc6f6bae # initialize rs2
max x16, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x741cb5fc # initialize rs1
li x25, 0xecee8801 # initialize rs2
max x17, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x09363181 # initialize rs1
li x25, 0xb27729a5 # initialize rs2
max x18, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa422e605 # initialize rs1
li x22, 0xfdf42897 # initialize rs2
max x19, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xaee09a53 # initialize rs1
li x27, 0x831ab531 # initialize rs2
max x20, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x04bc5484 # initialize rs1
li x31, 0x48b1615a # initialize rs2
max x21, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x1be13547 # initialize rs1
li x17, 0xded9bf03 # initialize rs2
max x22, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xc7287c57 # initialize rs1
li x7, 0x6c2596b0 # initialize rs2
max x23, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xc8288582 # initialize rs1
li x26, 0x61848282 # initialize rs2
max x24, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xf38cecdf # initialize rs1
li x9, 0xa3655213 # initialize rs2
max x25, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xf44fa58a # initialize rs1
li x19, 0x475f4013 # initialize rs2
max x26, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x6ced2d31 # initialize rs1
li x23, 0xa5109773 # initialize rs2
max x27, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xe41219cf # initialize rs1
li x1, 0x65fc47f7 # initialize rs2
max x28, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1af8c576 # initialize rs1
li x9, 0xb9cbd053 # initialize rs2
max x29, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x9aed0b45 # initialize rs1
li x17, 0xcef4e54a # initialize rs2
max x30, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x13a5636b # initialize rs1
li x28, 0x80639321 # initialize rs2
max x31, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x19, 0xe9c6a9e9 # initialize rs1
li x0, 0x27b1b7e8 # initialize rs2
max x0, x19, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x8ace5544 # initialize rs1
li x1, 0x317e8998 # initialize rs2
max x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x1, 0x81318950 # initialize rs1
li x2, 0x3f01f136 # initialize rs2
max x2, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x85fbe7b2 # initialize rs1
li x3, 0xbb19ea75 # initialize rs2
max x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x14, 0xc9ffb6dc # initialize rs1
li x4, 0x700e61b8 # initialize rs2
max x4, x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0xb1acef88 # initialize rs1
li x5, 0xad94a255 # initialize rs2
max x5, x24, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x625ecfe9 # initialize rs1
li x6, 0xe97f4c34 # initialize rs2
max x6, x22, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x4c26868a # initialize rs1
li x7, 0xfb9bf339 # initialize rs2
max x7, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x22, 0xe45c5349 # initialize rs1
li x8, 0x8e2ef26a # initialize rs2
max x8, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x5, 0x55327fd2 # initialize rs1
li x9, 0x01ac17e1 # initialize rs2
max x9, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x8, 0xa8f5d53f # initialize rs1
li x10, 0x063d7112 # initialize rs2
max x10, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x14, 0xe19d93c7 # initialize rs1
li x11, 0x60837093 # initialize rs2
max x11, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x14b854a0 # initialize rs1
li x12, 0x65b4d0ce # initialize rs2
max x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x12, 0xf105da3f # initialize rs1
li x13, 0x91f9611d # initialize rs2
max x13, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x6, 0x716f56ed # initialize rs1
li x14, 0x9dbfccc6 # initialize rs2
max x14, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x29, 0x0b5f675b # initialize rs1
li x15, 0xe77fdff4 # initialize rs2
max x15, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x86c85e54 # initialize rs1
li x16, 0x48b442fc # initialize rs2
max x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x8, 0x15d75133 # initialize rs1
li x17, 0x380f0757 # initialize rs2
max x17, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x27, 0xb94e0561 # initialize rs1
li x18, 0xf9c4165c # initialize rs2
max x18, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x29, 0xa8f9c813 # initialize rs1
li x19, 0x240f3e0f # initialize rs2
max x19, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x30, 0xa6a6d49c # initialize rs1
li x20, 0xd433d92e # initialize rs2
max x20, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x12, 0xbc49756e # initialize rs1
li x21, 0x18a0ce59 # initialize rs2
max x21, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x25, 0x7f38165d # initialize rs1
li x22, 0xcb48c7ee # initialize rs2
max x22, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x5, 0x35895a62 # initialize rs1
li x23, 0xfccb4cf9 # initialize rs2
max x23, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x10, 0x73c61715 # initialize rs1
li x24, 0x2dc53ac6 # initialize rs2
max x24, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x3, 0x6bf51bd0 # initialize rs1
li x25, 0x83bf5130 # initialize rs2
max x25, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x22, 0xbaf7f48f # initialize rs1
li x26, 0x26a8536b # initialize rs2
max x26, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x14, 0xf70244fb # initialize rs1
li x27, 0x4ff690c6 # initialize rs2
max x27, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x18, 0xaf28e126 # initialize rs1
li x28, 0xc7535a19 # initialize rs2
max x28, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x11, 0x899c0816 # initialize rs1
li x29, 0x99901cf1 # initialize rs2
max x29, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x1, 0xd7eeba87 # initialize rs1
li x30, 0x6f0d8137 # initialize rs2
max x30, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x30, 0x648b6de7 # initialize rs1
li x31, 0xf645b25e # initialize rs2
max x31, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe3e0d62a # initialize rs1
li x0, 0xc13f7ec7 # initialize rs2
max x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xd8c429d2 # initialize rs1
li x1, 0x4f55030f # initialize rs2
max x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x3ec5c6de # initialize rs1
li x2, 0x0e1c290c # initialize rs2
max x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xee6ab0cd # initialize rs1
li x3, 0x799b591f # initialize rs2
max x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x957bb4e1 # initialize rs1
li x4, 0x47c9af5c # initialize rs2
max x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1c7ce5f0 # initialize rs1
li x5, 0x85ccba86 # initialize rs2
max x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9fad71c3 # initialize rs1
li x6, 0x08675fa4 # initialize rs2
max x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x88beb8f5 # initialize rs1
li x7, 0x2051b460 # initialize rs2
max x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x844118d2 # initialize rs1
li x8, 0x905a19da # initialize rs2
max x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x1ef44d34 # initialize rs1
li x9, 0x6fc0336f # initialize rs2
max x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x26a2468f # initialize rs1
li x10, 0xcecb31b9 # initialize rs2
max x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xb08f2e35 # initialize rs1
li x11, 0x743c0e05 # initialize rs2
max x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x841c38c0 # initialize rs1
li x12, 0xd89829ef # initialize rs2
max x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xd6a99325 # initialize rs1
li x13, 0xc63892f2 # initialize rs2
max x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xbf1f92b3 # initialize rs1
li x14, 0x33e03ccf # initialize rs2
max x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x8357a715 # initialize rs1
li x15, 0xd1d474e9 # initialize rs2
max x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xf69723b2 # initialize rs1
li x16, 0xc907eb96 # initialize rs2
max x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xafcff5ac # initialize rs1
li x17, 0x1d760f00 # initialize rs2
max x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x15d48735 # initialize rs1
li x18, 0x6bcd9533 # initialize rs2
max x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x64e76a02 # initialize rs1
li x19, 0x68e18236 # initialize rs2
max x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x300f92be # initialize rs1
li x20, 0x1c7d60a9 # initialize rs2
max x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x9b1ac6fc # initialize rs1
li x21, 0x182f36dd # initialize rs2
max x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xfe9c5dc0 # initialize rs1
li x22, 0x2d9250cc # initialize rs2
max x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x9c28871c # initialize rs1
li x23, 0xaf348a66 # initialize rs2
max x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x83ea63e8 # initialize rs1
li x24, 0x9bc60a02 # initialize rs2
max x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x936ed009 # initialize rs1
li x25, 0x18c6dd55 # initialize rs2
max x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xc717980a # initialize rs1
li x26, 0xfd7c28ec # initialize rs2
max x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xb72f6a54 # initialize rs1
li x27, 0xf577e9cd # initialize rs2
max x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x280fcdb3 # initialize rs1
li x28, 0x695973af # initialize rs2
max x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x7456d572 # initialize rs1
li x29, 0xb567fcdb # initialize rs2
max x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xdfc0cff7 # initialize rs1
li x30, 0xf6f81c0b # initialize rs2
max x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xc9df2060 # initialize rs1
li x31, 0xa6bd2975 # initialize rs2
max x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x18, x20 # perform first operation
max x13, x2, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x29, x15 # perform first operation
max x17, x13, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x29, x19 # perform first operation
max x2, x24, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x22, x25 # perform first operation
max x7, x26, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x19, x28 # perform first operation
max x13, x12, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x19, x17 # perform first operation
max x30, x13, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x19, x26 # perform first operation
max x14, x27, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x18, x27 # perform first operation
max x24, x3, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x18, x24 # perform first operation
max x3, x13, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x22, x13 # perform first operation
max x22, x8, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x27, x20 # perform first operation
max x20, x30, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x6, x20 # perform first operation
max x9, x30, x16 # perform second (triggering) operation

.EQU SIGSIZE,1568


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
