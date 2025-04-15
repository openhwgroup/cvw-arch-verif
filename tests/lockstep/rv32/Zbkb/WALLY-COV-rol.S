///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbkb/WALLY-COV-rol.S
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
li x0, 0x3d81421c # initialize rs1
li x5, 0x766fc36d # initialize rs2
rol x25, x0, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xb82e7449 # initialize rs1
li x17, 0x833a5356 # initialize rs2
rol x11, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xcc79bcb1 # initialize rs1
li x7, 0xe7f01eed # initialize rs2
rol x5, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x7b4149f4 # initialize rs1
li x23, 0x9a07808d # initialize rs2
rol x11, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5a981371 # initialize rs1
li x2, 0xeff607c1 # initialize rs2
rol x22, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x88fa4b72 # initialize rs1
li x28, 0x73b14a31 # initialize rs2
rol x2, x5, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcae94555 # initialize rs1
li x4, 0x19d584ad # initialize rs2
rol x30, x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaafd7b16 # initialize rs1
li x1, 0x1305c0ca # initialize rs2
rol x12, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x1360354a # initialize rs1
li x26, 0x23fa6351 # initialize rs2
rol x7, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x0a99e421 # initialize rs1
li x25, 0x063cf873 # initialize rs2
rol x7, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x105faab3 # initialize rs1
li x17, 0xb7c59510 # initialize rs2
rol x25, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x36a1f832 # initialize rs1
li x3, 0x60cdce55 # initialize rs2
rol x25, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x2199e779 # initialize rs1
li x8, 0x42a56bbd # initialize rs2
rol x24, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x5263f810 # initialize rs1
li x9, 0xab6d5c7f # initialize rs2
rol x6, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xb6a1f5fb # initialize rs1
li x21, 0xd9bbc3d2 # initialize rs2
rol x12, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc8385378 # initialize rs1
li x8, 0x30e9c1e3 # initialize rs2
rol x18, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xd047dedc # initialize rs1
li x24, 0xff6e1d99 # initialize rs2
rol x7, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x73dec392 # initialize rs1
li x14, 0xcc1556d3 # initialize rs2
rol x1, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xafca9dc0 # initialize rs1
li x30, 0xb0fc743d # initialize rs2
rol x9, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xfaaf58bf # initialize rs1
li x16, 0x94e4ab82 # initialize rs2
rol x30, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x3e899d40 # initialize rs1
li x1, 0xfd945757 # initialize rs2
rol x25, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x86630d89 # initialize rs1
li x28, 0xfd380e95 # initialize rs2
rol x15, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xc91572f6 # initialize rs1
li x26, 0xa045172d # initialize rs2
rol x16, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xeb2cb4c4 # initialize rs1
li x7, 0x28f2b6de # initialize rs2
rol x3, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x77c17c3a # initialize rs1
li x15, 0xaf2cd310 # initialize rs2
rol x28, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x728d0056 # initialize rs1
li x8, 0xcbf8c5b8 # initialize rs2
rol x14, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xb05b2f89 # initialize rs1
li x15, 0xab89df5e # initialize rs2
rol x30, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x3cbcd519 # initialize rs1
li x17, 0xa991ddad # initialize rs2
rol x10, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x3c039cb9 # initialize rs1
li x5, 0xf4b06a72 # initialize rs2
rol x23, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xea407c73 # initialize rs1
li x28, 0xe429745e # initialize rs2
rol x8, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x5440b11b # initialize rs1
li x24, 0x9b42f4f9 # initialize rs2
rol x5, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x904df8ba # initialize rs1
li x11, 0x75046414 # initialize rs2
rol x7, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x6, 0x85991955 # initialize rs1
li x0, 0xc21fdb62 # initialize rs2
rol x22, x6, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x27, 0x5a29a208 # initialize rs1
li x1, 0xba13cd92 # initialize rs2
rol x29, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x31, 0x26a068e9 # initialize rs1
li x2, 0x8f196ca7 # initialize rs2
rol x27, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x10, 0xd335c2ca # initialize rs1
li x3, 0x7c2c3227 # initialize rs2
rol x16, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0x6fd219db # initialize rs1
li x4, 0xe7a77d57 # initialize rs2
rol x22, x19, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x5bf642bc # initialize rs1
li x5, 0xd37e54b4 # initialize rs2
rol x17, x29, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0xbdffba21 # initialize rs1
li x6, 0xea81e7eb # initialize rs2
rol x1, x8, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x1, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x28, 0x9a8ead5b # initialize rs1
li x7, 0x61c3bd60 # initialize rs2
rol x10, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0x26e82857 # initialize rs1
li x8, 0xba2818c5 # initialize rs2
rol x17, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x7, 0x00865562 # initialize rs1
li x9, 0x923ae8b1 # initialize rs2
rol x27, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x6, 0x46ee678a # initialize rs1
li x10, 0x361a1ed2 # initialize rs2
rol x20, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x16, 0x9b3dd69a # initialize rs1
li x11, 0xba83f04d # initialize rs2
rol x13, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x17, 0x1b06cf6f # initialize rs1
li x12, 0xfac22094 # initialize rs2
rol x8, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x15, 0x9a37a101 # initialize rs1
li x13, 0x64645dad # initialize rs2
rol x28, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x25, 0x83b13e2d # initialize rs1
li x14, 0x7f683b8d # initialize rs2
rol x6, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x23, 0xdbd1b79f # initialize rs1
li x15, 0x25ad675f # initialize rs2
rol x30, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0xfbe9b589 # initialize rs1
li x16, 0xb54d5b80 # initialize rs2
rol x3, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x1, 0xf4051e21 # initialize rs1
li x17, 0x9fea269f # initialize rs2
rol x13, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x25, 0x275da8ba # initialize rs1
li x18, 0x6baeb8de # initialize rs2
rol x20, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x23, 0x2b70bee0 # initialize rs1
li x19, 0x6d03fa54 # initialize rs2
rol x28, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x2, 0x1a3710f0 # initialize rs1
li x20, 0x263f740b # initialize rs2
rol x30, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x31, 0xe0b0a0a7 # initialize rs1
li x21, 0x0d382c0c # initialize rs2
rol x23, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x9, 0x850b9fd8 # initialize rs1
li x22, 0xd6133945 # initialize rs2
rol x28, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x27, 0x49c43367 # initialize rs1
li x23, 0x2f0c31ce # initialize rs2
rol x20, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x17, 0xde932702 # initialize rs1
li x24, 0x8416f24d # initialize rs2
rol x5, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x31, 0x263f9726 # initialize rs1
li x25, 0x674d8c00 # initialize rs2
rol x5, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x27, 0x18391b21 # initialize rs1
li x26, 0xe2c6e61d # initialize rs2
rol x19, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x5, 0x7551af40 # initialize rs1
li x27, 0x26f41b87 # initialize rs2
rol x2, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x14, 0xbf2c0d0e # initialize rs1
li x28, 0x1dc4bae4 # initialize rs2
rol x21, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x31, 0x62f38530 # initialize rs1
li x29, 0xcde46bb7 # initialize rs2
rol x11, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x26, 0x53800981 # initialize rs1
li x30, 0xcbca0164 # initialize rs2
rol x17, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x3, 0x16e54d76 # initialize rs1
li x31, 0x9d91f89f # initialize rs2
rol x20, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 252)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0xbefb3d54 # initialize rs1
li x7, 0x5fe715f1 # initialize rs2
rol x0, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x27, 0x20789bfc # initialize rs1
li x13, 0x48690a9a # initialize rs2
rol x1, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x18, 0x597e2991 # initialize rs1
li x2, 0xef04048e # initialize rs2
rol x2, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x20, 0xb8af3f5a # initialize rs1
li x13, 0x132f8eb1 # initialize rs2
rol x3, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0x76a44fd1 # initialize rs1
li x23, 0xd0ade9e7 # initialize rs2
rol x4, x19, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0x238643f1 # initialize rs1
li x13, 0x786e1c3b # initialize rs2
rol x5, x11, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x49d28022 # initialize rs1
li x29, 0xd87297a1 # initialize rs2
rol x6, x27, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0x92e7a45b # initialize rs1
li x19, 0xe57e6f85 # initialize rs2
rol x7, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x24, 0x50bd11f1 # initialize rs1
li x16, 0xeedc7f95 # initialize rs2
rol x8, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x2, 0x9b4b326e # initialize rs1
li x26, 0x5433cb34 # initialize rs2
rol x9, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x7, 0x44001d1e # initialize rs1
li x13, 0x29a1b792 # initialize rs2
rol x10, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x29, 0xd6cd46f9 # initialize rs1
li x9, 0xad7e02c6 # initialize rs2
rol x11, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0x56c244d7 # initialize rs1
li x3, 0x8b16853f # initialize rs2
rol x12, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x5, 0xf46965f6 # initialize rs1
li x26, 0x082c11b8 # initialize rs2
rol x13, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x25, 0x4f3cea2e # initialize rs1
li x9, 0xe20c4c80 # initialize rs2
rol x14, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x14, 0x37a013e3 # initialize rs1
li x16, 0x9cd1f7dd # initialize rs2
rol x15, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x22, 0x9ff8d2ca # initialize rs1
li x13, 0xfc194f5e # initialize rs2
rol x16, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x6, 0xc92bd8f2 # initialize rs1
li x14, 0x94022cd5 # initialize rs2
rol x17, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x14, 0x8b97abc5 # initialize rs1
li x22, 0xe5e9cc15 # initialize rs2
rol x18, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x27, 0xe5d06425 # initialize rs1
li x21, 0x35b5e0d1 # initialize rs2
rol x19, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x12, 0x394f6f79 # initialize rs1
li x27, 0x0458e43b # initialize rs2
rol x20, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x26, 0xa52f1ba6 # initialize rs1
li x7, 0x41fe110a # initialize rs2
rol x21, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x20, 0x3ed141a2 # initialize rs1
li x10, 0x44e9c372 # initialize rs2
rol x22, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0x9a52c044 # initialize rs1
li x31, 0x2a99eee0 # initialize rs2
rol x23, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x18, 0x04610aa0 # initialize rs1
li x26, 0x3b219ef3 # initialize rs2
rol x24, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x2, 0x9fa9ba93 # initialize rs1
li x7, 0x4c159f65 # initialize rs2
rol x25, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x13, 0xd504ad3c # initialize rs1
li x22, 0xb975ca21 # initialize rs2
rol x26, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x1, 0xb6ae2e4d # initialize rs1
li x10, 0xf1690a02 # initialize rs2
rol x27, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x18, 0xfbbc0e6e # initialize rs1
li x22, 0xd78617f1 # initialize rs2
rol x28, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x15, 0xb94b068e # initialize rs1
li x6, 0x9b4bd733 # initialize rs2
rol x29, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x19, 0x12fc38ac # initialize rs1
li x18, 0x5543ed63 # initialize rs2
rol x30, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0x3269ff8a # initialize rs1
li x14, 0x78f07da3 # initialize rs2
rol x31, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x25, 0x00000000 # initialize rs1
li x30, 0xf4c90957 # initialize rs2
rol x16, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x16, 0x00000001 # initialize rs1
li x25, 0x9831d468 # initialize rs2
rol x28, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x00000002 # initialize rs1
li x11, 0xceaab037 # initialize rs2
rol x29, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x2, 0x80000000 # initialize rs1
li x27, 0x08d0dcca # initialize rs2
rol x26, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x7, 0x80000001 # initialize rs1
li x21, 0xfce07f3d # initialize rs2
rol x14, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x25, 0x7fffffff # initialize rs1
li x8, 0xe775c20c # initialize rs2
rol x26, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x14, 0x7ffffffe # initialize rs1
li x30, 0x3cbd7166 # initialize rs2
rol x6, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0xffffffff # initialize rs1
li x26, 0x86e30287 # initialize rs2
rol x10, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0xfffffffe # initialize rs1
li x26, 0xbe3a7de8 # initialize rs2
rol x9, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x27, 0x5bbc8872 # initialize rs1
li x22, 0xb10d91be # initialize rs2
rol x23, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # initialize rs1
li x13, 0x7d9377b2 # initialize rs2
rol x1, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x10, 0x55555555 # initialize rs1
li x29, 0xb9698ef8 # initialize rs2
rol x28, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0xf53f568b # initialize rs1
li x25, 0x00000000 # initialize rs2
rol x24, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x30, 0x42aff286 # initialize rs1
li x6, 0x00000001 # initialize rs2
rol x5, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0x0a900b69 # initialize rs1
li x25, 0x00000002 # initialize rs2
rol x31, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x18, 0xba40705a # initialize rs1
li x29, 0x80000000 # initialize rs2
rol x28, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x2, 0x3f88cdca # initialize rs1
li x5, 0x80000001 # initialize rs2
rol x20, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x27, 0x5d0d5b28 # initialize rs1
li x7, 0x7fffffff # initialize rs2
rol x5, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x23, 0x551d9e22 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
rol x17, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x31, 0x3419c8c4 # initialize rs1
li x8, 0xffffffff # initialize rs2
rol x7, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0xade3af5d # initialize rs1
li x3, 0xfffffffe # initialize rs2
rol x28, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x25, 0xbe02b71f # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
rol x2, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x23, 0xb4afb4f7 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
rol x20, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x16, 0x8a4a3a7f # initialize rs1
li x13, 0x55555555 # initialize rs2
rol x28, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x20, 0x00000000 # initialize rs1
li x25, 0x00000000 # initialize rs2
rol x5, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x30, 0x00000000 # initialize rs1
li x6, 0x00000001 # initialize rs2
rol x5, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x13, 0x00000000 # initialize rs1
li x21, 0x00000002 # initialize rs2
rol x19, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x6, 0x00000000 # initialize rs1
li x12, 0x80000000 # initialize rs2
rol x1, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x11, 0x00000000 # initialize rs1
li x2, 0x80000001 # initialize rs2
rol x12, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x30, 0x00000000 # initialize rs1
li x2, 0x7fffffff # initialize rs2
rol x12, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x27, 0x00000000 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
rol x18, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x31, 0x00000000 # initialize rs1
li x26, 0xffffffff # initialize rs2
rol x20, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x13, 0x00000000 # initialize rs1
li x28, 0xfffffffe # initialize rs2
rol x29, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x3, 0x00000000 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
rol x28, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x19, 0x00000000 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
rol x20, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x15, 0x00000000 # initialize rs1
li x19, 0x55555555 # initialize rs2
rol x31, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x18, 0x00000001 # initialize rs1
li x2, 0x00000000 # initialize rs2
rol x24, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x12, 0x00000001 # initialize rs1
li x5, 0x00000001 # initialize rs2
rol x11, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x12, 0x00000001 # initialize rs1
li x17, 0x00000002 # initialize rs2
rol x25, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x1, 0x00000001 # initialize rs1
li x6, 0x80000000 # initialize rs2
rol x17, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x10, 0x00000001 # initialize rs1
li x8, 0x80000001 # initialize rs2
rol x11, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x15, 0x00000001 # initialize rs1
li x25, 0x7fffffff # initialize rs2
rol x24, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x11, 0x00000001 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
rol x8, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x24, 0x00000001 # initialize rs1
li x5, 0xffffffff # initialize rs2
rol x11, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x31, 0x00000001 # initialize rs1
li x12, 0xfffffffe # initialize rs2
rol x27, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x17, 0x00000001 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
rol x31, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x14, 0x00000001 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
rol x22, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x29, 0x00000001 # initialize rs1
li x19, 0x55555555 # initialize rs2
rol x5, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x21, 0x00000002 # initialize rs1
li x10, 0x00000000 # initialize rs2
rol x1, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x24, 0x00000002 # initialize rs1
li x19, 0x00000001 # initialize rs2
rol x22, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x16, 0x00000002 # initialize rs1
li x25, 0x00000002 # initialize rs2
rol x17, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x3, 0x00000002 # initialize rs1
li x24, 0x80000000 # initialize rs2
rol x2, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x23, 0x00000002 # initialize rs1
li x6, 0x80000001 # initialize rs2
rol x18, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x29, 0x00000002 # initialize rs1
li x31, 0x7fffffff # initialize rs2
rol x13, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x23, 0x00000002 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
rol x15, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x1, 0x00000002 # initialize rs1
li x23, 0xffffffff # initialize rs2
rol x2, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x27, 0x00000002 # initialize rs1
li x6, 0xfffffffe # initialize rs2
rol x9, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x29, 0x00000002 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
rol x6, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x1, 0x00000002 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
rol x11, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x16, 0x00000002 # initialize rs1
li x10, 0x55555555 # initialize rs2
rol x24, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x1, 0x80000000 # initialize rs1
li x13, 0x00000000 # initialize rs2
rol x24, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x24, 0x80000000 # initialize rs1
li x8, 0x00000001 # initialize rs2
rol x5, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x12, 0x80000000 # initialize rs1
li x25, 0x00000002 # initialize rs2
rol x14, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x15, 0x80000000 # initialize rs1
li x21, 0x80000000 # initialize rs2
rol x9, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x5, 0x80000000 # initialize rs1
li x29, 0x80000001 # initialize rs2
rol x12, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x11, 0x80000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
rol x18, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x17, 0x80000000 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
rol x22, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x26, 0x80000000 # initialize rs1
li x6, 0xffffffff # initialize rs2
rol x18, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x22, 0x80000000 # initialize rs1
li x23, 0xfffffffe # initialize rs2
rol x12, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x29, 0x80000000 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
rol x14, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x28, 0x80000000 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
rol x1, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x17, 0x80000000 # initialize rs1
li x23, 0x55555555 # initialize rs2
rol x24, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x13, 0x80000001 # initialize rs1
li x5, 0x00000000 # initialize rs2
rol x12, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x15, 0x80000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
rol x16, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x25, 0x80000001 # initialize rs1
li x20, 0x00000002 # initialize rs2
rol x13, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x29, 0x80000001 # initialize rs1
li x5, 0x80000000 # initialize rs2
rol x27, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x24, 0x80000001 # initialize rs1
li x22, 0x80000001 # initialize rs2
rol x9, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x28, 0x80000001 # initialize rs1
li x29, 0x7fffffff # initialize rs2
rol x20, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x17, 0x80000001 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
rol x8, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x12, 0x80000001 # initialize rs1
li x14, 0xffffffff # initialize rs2
rol x26, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x31, 0x80000001 # initialize rs1
li x16, 0xfffffffe # initialize rs2
rol x13, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x28, 0x80000001 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
rol x17, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x13, 0x80000001 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
rol x21, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x5, 0x80000001 # initialize rs1
li x6, 0x55555555 # initialize rs2
rol x28, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x13, 0x7fffffff # initialize rs1
li x11, 0x00000000 # initialize rs2
rol x12, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x30, 0x7fffffff # initialize rs1
li x16, 0x00000001 # initialize rs2
rol x23, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x8, 0x7fffffff # initialize rs1
li x20, 0x00000002 # initialize rs2
rol x3, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x8, 0x7fffffff # initialize rs1
li x31, 0x80000000 # initialize rs2
rol x3, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x16, 0x7fffffff # initialize rs1
li x28, 0x80000001 # initialize rs2
rol x17, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x29, 0x7fffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
rol x22, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x20, 0x7fffffff # initialize rs1
li x21, 0x7ffffffe # initialize rs2
rol x30, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x15, 0x7fffffff # initialize rs1
li x30, 0xffffffff # initialize rs2
rol x14, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x14, 0x7fffffff # initialize rs1
li x29, 0xfffffffe # initialize rs2
rol x1, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x18, 0x7fffffff # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
rol x14, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x16, 0x7fffffff # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
rol x15, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x24, 0x7fffffff # initialize rs1
li x20, 0x55555555 # initialize rs2
rol x18, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x18, 0x7ffffffe # initialize rs1
li x11, 0x00000000 # initialize rs2
rol x26, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x16, 0x7ffffffe # initialize rs1
li x29, 0x00000001 # initialize rs2
rol x26, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x10, 0x7ffffffe # initialize rs1
li x9, 0x00000002 # initialize rs2
rol x12, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x10, 0x7ffffffe # initialize rs1
li x29, 0x80000000 # initialize rs2
rol x7, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x21, 0x7ffffffe # initialize rs1
li x14, 0x80000001 # initialize rs2
rol x1, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x28, 0x7ffffffe # initialize rs1
li x6, 0x7fffffff # initialize rs2
rol x29, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x16, 0x7ffffffe # initialize rs1
li x1, 0x7ffffffe # initialize rs2
rol x17, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x30, 0x7ffffffe # initialize rs1
li x19, 0xffffffff # initialize rs2
rol x29, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x31, 0x7ffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
rol x26, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x14, 0x7ffffffe # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
rol x6, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x20, 0x7ffffffe # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
rol x16, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x7, 0x7ffffffe # initialize rs1
li x13, 0x55555555 # initialize rs2
rol x31, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x25, 0xffffffff # initialize rs1
li x16, 0x00000000 # initialize rs2
rol x6, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x21, 0xffffffff # initialize rs1
li x19, 0x00000001 # initialize rs2
rol x26, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x25, 0xffffffff # initialize rs1
li x9, 0x00000002 # initialize rs2
rol x12, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x24, 0xffffffff # initialize rs1
li x2, 0x80000000 # initialize rs2
rol x7, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x25, 0xffffffff # initialize rs1
li x29, 0x80000001 # initialize rs2
rol x6, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x14, 0xffffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
rol x24, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x13, 0xffffffff # initialize rs1
li x16, 0x7ffffffe # initialize rs2
rol x8, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x19, 0xffffffff # initialize rs1
li x25, 0xffffffff # initialize rs2
rol x29, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x25, 0xffffffff # initialize rs1
li x7, 0xfffffffe # initialize rs2
rol x10, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x22, 0xffffffff # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
rol x13, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x24, 0xffffffff # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
rol x26, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x5, 0xffffffff # initialize rs1
li x8, 0x55555555 # initialize rs2
rol x16, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x1, 0xfffffffe # initialize rs1
li x26, 0x00000000 # initialize rs2
rol x29, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x18, 0xfffffffe # initialize rs1
li x26, 0x00000001 # initialize rs2
rol x31, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x31, 0xfffffffe # initialize rs1
li x5, 0x00000002 # initialize rs2
rol x26, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x17, 0xfffffffe # initialize rs1
li x25, 0x80000000 # initialize rs2
rol x3, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x24, 0xfffffffe # initialize rs1
li x13, 0x80000001 # initialize rs2
rol x16, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x23, 0xfffffffe # initialize rs1
li x21, 0x7fffffff # initialize rs2
rol x14, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x16, 0xfffffffe # initialize rs1
li x6, 0x7ffffffe # initialize rs2
rol x1, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x31, 0xfffffffe # initialize rs1
li x8, 0xffffffff # initialize rs2
rol x14, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x21, 0xfffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
rol x1, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x29, 0xfffffffe # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
rol x15, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x31, 0xfffffffe # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
rol x15, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x1, 0xfffffffe # initialize rs1
li x8, 0x55555555 # initialize rs2
rol x28, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x30, 0x5bbc8872 # initialize rs1
li x9, 0x00000000 # initialize rs2
rol x2, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x18, 0x5bbc8872 # initialize rs1
li x31, 0x00000001 # initialize rs2
rol x21, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x29, 0x5bbc8872 # initialize rs1
li x25, 0x00000002 # initialize rs2
rol x15, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x14, 0x5bbc8872 # initialize rs1
li x6, 0x80000000 # initialize rs2
rol x25, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x21, 0x5bbc8872 # initialize rs1
li x23, 0x80000001 # initialize rs2
rol x18, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x23, 0x5bbc8872 # initialize rs1
li x31, 0x7fffffff # initialize rs2
rol x26, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x3, 0x5bbc8872 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
rol x7, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x16, 0x5bbc8872 # initialize rs1
li x27, 0xffffffff # initialize rs2
rol x13, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x8, 0x5bbc8872 # initialize rs1
li x18, 0xfffffffe # initialize rs2
rol x14, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x31, 0x5bbc8872 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
rol x6, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x17, 0x5bbc8872 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
rol x19, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x12, 0x5bbc8872 # initialize rs1
li x29, 0x55555555 # initialize rs2
rol x2, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x13, 0xaaaaaaaa # initialize rs1
li x29, 0x00000000 # initialize rs2
rol x24, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x24, 0xaaaaaaaa # initialize rs1
li x12, 0x00000001 # initialize rs2
rol x1, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x28, 0xaaaaaaaa # initialize rs1
li x18, 0x00000002 # initialize rs2
rol x25, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x30, 0xaaaaaaaa # initialize rs1
li x15, 0x80000000 # initialize rs2
rol x27, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x7, 0xaaaaaaaa # initialize rs1
li x31, 0x80000001 # initialize rs2
rol x25, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x28, 0xaaaaaaaa # initialize rs1
li x6, 0x7fffffff # initialize rs2
rol x29, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x1, 0xaaaaaaaa # initialize rs1
li x26, 0x7ffffffe # initialize rs2
rol x10, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x14, 0xaaaaaaaa # initialize rs1
li x1, 0xffffffff # initialize rs2
rol x9, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x22, 0xaaaaaaaa # initialize rs1
li x25, 0xfffffffe # initialize rs2
rol x11, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x12, 0xaaaaaaaa # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
rol x3, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x9, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
rol x7, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x7, 0xaaaaaaaa # initialize rs1
li x19, 0x55555555 # initialize rs2
rol x27, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x31, 0x55555555 # initialize rs1
li x5, 0x00000000 # initialize rs2
rol x6, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x10, 0x55555555 # initialize rs1
li x14, 0x00000001 # initialize rs2
rol x9, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x6, 0x55555555 # initialize rs1
li x3, 0x00000002 # initialize rs2
rol x18, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x2, 0x55555555 # initialize rs1
li x25, 0x80000000 # initialize rs2
rol x21, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x25, 0x55555555 # initialize rs1
li x27, 0x80000001 # initialize rs2
rol x6, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x21, 0x55555555 # initialize rs1
li x16, 0x7fffffff # initialize rs2
rol x10, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x25, 0x55555555 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
rol x27, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x31, 0x55555555 # initialize rs1
li x2, 0xffffffff # initialize rs2
rol x25, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x27, 0x55555555 # initialize rs1
li x23, 0xfffffffe # initialize rs2
rol x17, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x15, 0x55555555 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
rol x29, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x13, 0x55555555 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
rol x25, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x23, 0x55555555 # initialize rs1
li x18, 0x55555555 # initialize rs2
rol x15, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x2f420339 # initialize rs1
li x0, 0xc7f672ad # initialize rs2
rol x7, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xa55a85a6 # initialize rs1
li x1, 0x55ab893d # initialize rs2
rol x13, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xb589501f # initialize rs1
li x2, 0xc2fa90a9 # initialize rs2
rol x31, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x98629c45 # initialize rs1
li x3, 0x73ada092 # initialize rs2
rol x26, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xeca8a2e7 # initialize rs1
li x4, 0x9c2e071c # initialize rs2
rol x2, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x07aa9a0b # initialize rs1
li x5, 0x94c7710d # initialize rs2
rol x3, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe44fb82e # initialize rs1
li x6, 0xe22470cf # initialize rs2
rol x2, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa3b1e127 # initialize rs1
li x7, 0xc778b3b8 # initialize rs2
rol x14, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x96e007b9 # initialize rs1
li x8, 0x2739469c # initialize rs2
rol x7, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xe45df1dd # initialize rs1
li x9, 0xec7a75e7 # initialize rs2
rol x20, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xd502e801 # initialize rs1
li x10, 0xd1845b66 # initialize rs2
rol x30, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x9c0f3162 # initialize rs1
li x11, 0x40544aa5 # initialize rs2
rol x27, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x5f9bcb92 # initialize rs1
li x12, 0x4422d5fc # initialize rs2
rol x13, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xedff9992 # initialize rs1
li x13, 0x197fe28d # initialize rs2
rol x26, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xef9ceda8 # initialize rs1
li x14, 0xc3151d58 # initialize rs2
rol x29, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x6058c967 # initialize rs1
li x15, 0x565939ef # initialize rs2
rol x21, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xc4bc2e70 # initialize rs1
li x16, 0x73853f29 # initialize rs2
rol x24, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xaf44f68e # initialize rs1
li x17, 0x6579a7cb # initialize rs2
rol x14, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x1916d296 # initialize rs1
li x18, 0xf936aae3 # initialize rs2
rol x16, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xecb32dee # initialize rs1
li x19, 0x88e10b9e # initialize rs2
rol x21, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xe70bd9d1 # initialize rs1
li x20, 0x1ac9a78f # initialize rs2
rol x15, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xe21c03cc # initialize rs1
li x21, 0x59d66a8f # initialize rs2
rol x20, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x253e6b78 # initialize rs1
li x22, 0x901f69af # initialize rs2
rol x2, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x2d34f666 # initialize rs1
li x23, 0x290cc8be # initialize rs2
rol x22, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x284b07fb # initialize rs1
li x24, 0x23f54496 # initialize rs2
rol x9, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x1ca0db9a # initialize rs1
li x25, 0xf0caa93f # initialize rs2
rol x2, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xd7750f2b # initialize rs1
li x26, 0xbb4a4fa8 # initialize rs2
rol x3, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xeb68ece2 # initialize rs1
li x27, 0x0e0bae84 # initialize rs2
rol x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xcacb7544 # initialize rs1
li x28, 0x217b09a3 # initialize rs2
rol x24, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x66d0325a # initialize rs1
li x29, 0xdee991ab # initialize rs2
rol x7, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x10cd9633 # initialize rs1
li x30, 0x51f97ca6 # initialize rs2
rol x2, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xbd3323c7 # initialize rs1
li x31, 0x83490be7 # initialize rs2
rol x7, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xde53ae2f # initialize rs1
li x25, 0x333ecb8e # initialize rs2
rol x0, x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb945b2cc # initialize rs1
li x1, 0x00512bbb # initialize rs2
rol x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x9de6746e # initialize rs1
li x18, 0x6b8a3374 # initialize rs2
rol x2, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x65b04276 # initialize rs1
li x23, 0x4f8ceecc # initialize rs2
rol x3, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6c9da76f # initialize rs1
li x20, 0x522c7d18 # initialize rs2
rol x4, x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe8448fb6 # initialize rs1
li x12, 0x92a50dd7 # initialize rs2
rol x5, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb7520917 # initialize rs1
li x24, 0xe4fd38c2 # initialize rs2
rol x6, x6, x24 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6152b0cd # initialize rs1
li x2, 0xf17872e6 # initialize rs2
rol x7, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x8854dec0 # initialize rs1
li x23, 0xb50d435f # initialize rs2
rol x8, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xd5dd0725 # initialize rs1
li x23, 0x1c1ec28a # initialize rs2
rol x9, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xd779f5ae # initialize rs1
li x17, 0xb3e185c1 # initialize rs2
rol x10, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x2d53d8fc # initialize rs1
li x13, 0x24ae8990 # initialize rs2
rol x11, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x79f902fc # initialize rs1
li x27, 0x184b3e3c # initialize rs2
rol x12, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x9d8f3656 # initialize rs1
li x9, 0x2b3ee7e6 # initialize rs2
rol x13, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x5650a603 # initialize rs1
li x15, 0xd7bb9394 # initialize rs2
rol x14, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x90f66cca # initialize rs1
li x11, 0x2e02fa7a # initialize rs2
rol x15, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x8cb961ee # initialize rs1
li x5, 0xe3e0c9f5 # initialize rs2
rol x16, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xddec4a6d # initialize rs1
li x9, 0x9ea168e3 # initialize rs2
rol x17, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xe5dbce2a # initialize rs1
li x28, 0x758940e6 # initialize rs2
rol x18, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xb420ce27 # initialize rs1
li x1, 0x9ed77ca2 # initialize rs2
rol x19, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x448fcbfb # initialize rs1
li x22, 0x4607da3f # initialize rs2
rol x20, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x547a1fc9 # initialize rs1
li x15, 0xf27cc3e8 # initialize rs2
rol x21, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xef61a5ff # initialize rs1
li x10, 0x7e86bebe # initialize rs2
rol x22, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xfa3bf159 # initialize rs1
li x15, 0x823eb129 # initialize rs2
rol x23, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x80e59e8e # initialize rs1
li x1, 0x1c3843d0 # initialize rs2
rol x24, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xaac77223 # initialize rs1
li x22, 0xbaebb9a3 # initialize rs2
rol x25, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0b0b8e48 # initialize rs1
li x1, 0xa370333d # initialize rs2
rol x26, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x046de793 # initialize rs1
li x30, 0xcc6b635e # initialize rs2
rol x27, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x36c1b069 # initialize rs1
li x28, 0x3bbac340 # initialize rs2
rol x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xe391ebb3 # initialize rs1
li x14, 0xfa9ad254 # initialize rs2
rol x29, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x9d877397 # initialize rs1
li x16, 0xfdce04c2 # initialize rs2
rol x30, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x3c5631ea # initialize rs1
li x10, 0x449d9350 # initialize rs2
rol x31, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x3, 0x9935abb9 # initialize rs1
li x0, 0x48189ea4 # initialize rs2
rol x0, x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x8, 0xb2476137 # initialize rs1
li x1, 0x0c575c64 # initialize rs2
rol x1, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x18, 0x4d0e8693 # initialize rs1
li x2, 0xbecf0b96 # initialize rs2
rol x2, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x5, 0xf54aec76 # initialize rs1
li x3, 0x92c322c1 # initialize rs2
rol x3, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0xc76df9a0 # initialize rs1
li x4, 0x5eae8d98 # initialize rs2
rol x4, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0xace7ef46 # initialize rs1
li x5, 0x3e4988c8 # initialize rs2
rol x5, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
li x19, 0x09f01a9d # initialize rs1
li x6, 0x757c5298 # initialize rs2
rol x6, x19, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0xf02124a0 # initialize rs1
li x7, 0xc4b09e61 # initialize rs2
rol x7, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x23, 0xa0353df2 # initialize rs1
li x8, 0x1bf9809e # initialize rs2
rol x8, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x11, 0x3e6ac4e1 # initialize rs1
li x9, 0x314b2020 # initialize rs2
rol x9, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x27, 0xdb9e0650 # initialize rs1
li x10, 0xa4284f87 # initialize rs2
rol x10, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x14, 0x80ebf599 # initialize rs1
li x11, 0xa5981b5f # initialize rs2
rol x11, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x9, 0xf6cdc293 # initialize rs1
li x12, 0x36a4a4eb # initialize rs2
rol x12, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x17, 0xe0fffa3d # initialize rs1
li x13, 0xe5fe8022 # initialize rs2
rol x13, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x15, 0xdf519bd6 # initialize rs1
li x14, 0x3ed15c75 # initialize rs2
rol x14, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x25, 0xea737251 # initialize rs1
li x15, 0xa54df0f9 # initialize rs2
rol x15, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x30, 0xe8af02d7 # initialize rs1
li x16, 0x09666724 # initialize rs2
rol x16, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x29, 0x42a46a8e # initialize rs1
li x17, 0x62282b63 # initialize rs2
rol x17, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x21, 0x2e490df6 # initialize rs1
li x18, 0x989b495e # initialize rs2
rol x18, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x24, 0xde3e147f # initialize rs1
li x19, 0x8e28c258 # initialize rs2
rol x19, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x21, 0x5de13682 # initialize rs1
li x20, 0xa5bce1e5 # initialize rs2
rol x20, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x22, 0xd879b3a9 # initialize rs1
li x21, 0xb78b7540 # initialize rs2
rol x21, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x18, 0xd0de147c # initialize rs1
li x22, 0xa0a98a05 # initialize rs2
rol x22, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x25, 0xad180c9a # initialize rs1
li x23, 0x10d11912 # initialize rs2
rol x23, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x30, 0x5679b0b9 # initialize rs1
li x24, 0x4b6bd3da # initialize rs2
rol x24, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x31, 0xd8c7e7ed # initialize rs1
li x25, 0xde3dac3e # initialize rs2
rol x25, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x27, 0x52ded8bc # initialize rs1
li x26, 0xacb4977d # initialize rs2
rol x26, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x16, 0xf13ef817 # initialize rs1
li x27, 0x543eaa67 # initialize rs2
rol x27, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x30, 0xd5f02836 # initialize rs1
li x28, 0x0a2020c4 # initialize rs2
rol x28, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x27, 0xcc8757a0 # initialize rs1
li x29, 0x94d00b95 # initialize rs2
rol x29, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x27, 0xfa556860 # initialize rs1
li x30, 0x6bf3eb3f # initialize rs2
rol x30, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x3, 0xf9784338 # initialize rs1
li x31, 0x295a946e # initialize rs2
rol x31, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xf45e2efb # initialize rs1
li x0, 0x4734f08f # initialize rs2
rol x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xc1cb523c # initialize rs1
li x1, 0xa3567e31 # initialize rs2
rol x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x660d6d38 # initialize rs1
li x2, 0x4f698920 # initialize rs2
rol x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xa3d421b3 # initialize rs1
li x3, 0xf4f8ef45 # initialize rs2
rol x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x90a2c1f3 # initialize rs1
li x4, 0x549c9d49 # initialize rs2
rol x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x82d5c28e # initialize rs1
li x5, 0x68eca56d # initialize rs2
rol x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3d3f306a # initialize rs1
li x6, 0xc27d374f # initialize rs2
rol x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4678e0e2 # initialize rs1
li x7, 0x6a400efa # initialize rs2
rol x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xcb6bcfa9 # initialize rs1
li x8, 0x9f33c64d # initialize rs2
rol x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xbf027a30 # initialize rs1
li x9, 0xd0cb2148 # initialize rs2
rol x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x442cb3f4 # initialize rs1
li x10, 0x4034dce3 # initialize rs2
rol x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xde3756ea # initialize rs1
li x11, 0xc6ddc2b9 # initialize rs2
rol x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xc2206f4b # initialize rs1
li x12, 0x6c2b09a8 # initialize rs2
rol x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x02dbe486 # initialize rs1
li x13, 0x22c5ed23 # initialize rs2
rol x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xcda6be68 # initialize rs1
li x14, 0x321a1089 # initialize rs2
rol x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x3a6a8b2e # initialize rs1
li x15, 0xf2438c42 # initialize rs2
rol x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x0c5c78cc # initialize rs1
li x16, 0xd241e24a # initialize rs2
rol x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xcde11240 # initialize rs1
li x17, 0x4511182c # initialize rs2
rol x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x04f8bb17 # initialize rs1
li x18, 0xfafddb02 # initialize rs2
rol x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xdafdecbf # initialize rs1
li x19, 0xb3d0060e # initialize rs2
rol x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xf536da97 # initialize rs1
li x20, 0xd3a93689 # initialize rs2
rol x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x761558d1 # initialize rs1
li x21, 0x82a940f1 # initialize rs2
rol x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xd8b12d4a # initialize rs1
li x22, 0xc8e388cc # initialize rs2
rol x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x7e6bb37f # initialize rs1
li x23, 0xd96186f8 # initialize rs2
rol x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x860a3ad7 # initialize rs1
li x24, 0x41ca69ed # initialize rs2
rol x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xffe5d253 # initialize rs1
li x25, 0xd2f5d783 # initialize rs2
rol x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xc924a422 # initialize rs1
li x26, 0x3f2fa41e # initialize rs2
rol x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x2162c990 # initialize rs1
li x27, 0x3b20fc39 # initialize rs2
rol x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xff3bccd0 # initialize rs1
li x28, 0x72c494b2 # initialize rs2
rol x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x8d1ba292 # initialize rs1
li x29, 0x28e27f60 # initialize rs2
rol x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xd4018a1c # initialize rs1
li x30, 0xf56620eb # initialize rs2
rol x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x1d0748cf # initialize rs1
li x31, 0x80e89d6b # initialize rs2
rol x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x5, x2 # perform first operation
rol x29, x24, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x24, x8 # perform first operation
rol x6, x15, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x20, x16 # perform first operation
rol x10, x6, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x9, x19 # perform first operation
rol x19, x10, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x7, x9 # perform first operation
rol x15, x10, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x3, x16 # perform first operation
rol x10, x7, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x18, x12 # perform first operation
rol x3, x5, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x17, x13 # perform first operation
rol x6, x1, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x12, x19 # perform first operation
rol x29, x21, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x30, x29 # perform first operation
rol x30, x20, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x11, x29 # perform first operation
rol x29, x15, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x26, x5 # perform first operation
rol x15, x14, x3 # perform second (triggering) operation

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
