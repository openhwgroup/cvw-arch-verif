///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-rorw.S
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
li x0, 0xdc9a37cbbd87e5c1 # initialize rs1
li x20, 0x9bb8f83dbc20ee74 # initialize rs2
rorw x26, x0, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xb29a6df26fea98c0 # initialize rs1
li x20, 0x2b87d028b7947b90 # initialize rs2
rorw x21, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x2b48803952d38fd0 # initialize rs1
li x22, 0xe9060f8c749133e4 # initialize rs2
rorw x25, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb4179805080dc0d3 # initialize rs1
li x1, 0xce27038e4df8e73a # initialize rs2
rorw x30, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x05dd2e7673a1466e # initialize rs1
li x5, 0x607551cbb8174007 # initialize rs2
rorw x18, x4, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
li x5, 0xc94031864ca5e7b2 # initialize rs1
li x25, 0xa7fad0002065208d # initialize rs2
rorw x16, x5, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xfc64879032436923 # initialize rs1
li x5, 0x95196d85d50cda34 # initialize rs2
rorw x28, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x28, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x363de5efe47a57b6 # initialize rs1
li x18, 0x4e0132ac4b2b9980 # initialize rs2
rorw x8, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x20eb5e66c59e639d # initialize rs1
li x18, 0xdeec988070bd822e # initialize rs2
rorw x2, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x03bd77e9a1c1c544 # initialize rs1
li x21, 0xca6a1ac070ba5fcb # initialize rs2
rorw x7, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x3eacfa3f5adf23dc # initialize rs1
li x28, 0x70c89afa93c85372 # initialize rs2
rorw x1, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x83d8fe4c1ebd301c # initialize rs1
li x5, 0x80e7244cde915e53 # initialize rs2
rorw x10, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x91c873a326f3f73e # initialize rs1
li x23, 0xe47232f740ee9d9a # initialize rs2
rorw x29, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x4673ff0884d55528 # initialize rs1
li x28, 0xdcb4d2530ed7c058 # initialize rs2
rorw x26, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x5193057ecea0fccc # initialize rs1
li x26, 0xbf38481804d898ed # initialize rs2
rorw x25, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x6a511d02d2dc50d3 # initialize rs1
li x8, 0xdd22af35cf3b382a # initialize rs2
rorw x9, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x5dc7b0e46fe9a3c2 # initialize rs1
li x10, 0xd71e481da75e1225 # initialize rs2
rorw x6, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x3ff4a0610b573b17 # initialize rs1
li x29, 0xaec9ed9ec962532c # initialize rs2
rorw x7, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x896ff7eb34ccb133 # initialize rs1
li x27, 0x38dc2bf6f056b0cc # initialize rs2
rorw x24, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xe4bd65b81f7f6106 # initialize rs1
li x20, 0x23f6921b6b58070a # initialize rs2
rorw x15, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xfde4ccc4cdbbcb81 # initialize rs1
li x28, 0x59f43dc809806fd2 # initialize rs2
rorw x19, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x5c944f1e1310d7dd # initialize rs1
li x15, 0xbc5909fe89d822bc # initialize rs2
rorw x19, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x04941db178afcfd5 # initialize rs1
li x25, 0x3abe225f8f8a55cf # initialize rs2
rorw x19, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xeee189dcfd2e48dd # initialize rs1
li x11, 0xb6f67ee073d2a1db # initialize rs2
rorw x20, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x65f6eaaea0cda763 # initialize rs1
li x22, 0x42b9df715c66dbd2 # initialize rs2
rorw x10, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xc9e9136af87ee4d2 # initialize rs1
li x22, 0x9b409f04ad57b476 # initialize rs2
rorw x13, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x37461e3373ae71f9 # initialize rs1
li x18, 0xfdb3930e6e82cdc0 # initialize rs2
rorw x3, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x02e3cda578e85aee # initialize rs1
li x6, 0xc10bb8de1c95fbb6 # initialize rs2
rorw x26, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x0e2ba2cfb9b3dc48 # initialize rs1
li x12, 0x87bf8d2601c1c019 # initialize rs2
rorw x15, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xc1b32e50390d645a # initialize rs1
li x5, 0xbf03997c1c77568c # initialize rs2
rorw x20, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xd767c9db181e0e0c # initialize rs1
li x29, 0xcaba47e64df8212b # initialize rs2
rorw x7, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x54d7305b81df6d6f # initialize rs1
li x10, 0x4459e8cffc64fdcb # initialize rs2
rorw x27, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x7, 0x9113f4448a955eed # initialize rs1
li x0, 0xfa1016b1e529c670 # initialize rs2
rorw x21, x7, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x19, 0x4325a43bed0ea78c # initialize rs1
li x1, 0xfd38275bf6345f44 # initialize rs2
rorw x20, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x21, 0x24b7c90319c857a3 # initialize rs1
li x2, 0x6454abbfa635a87f # initialize rs2
rorw x27, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x13, 0x3c606d6ddc09de31 # initialize rs1
li x3, 0xd790f7f9c5c189de # initialize rs2
rorw x9, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0x3f1473a0472bafdd # initialize rs1
li x4, 0x07dafabb130802ea # initialize rs2
rorw x28, x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0xb3d221d219c86391 # initialize rs1
li x5, 0x17e307f428330052 # initialize rs2
rorw x1, x24, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0xf2788041921cc9ac # initialize rs1
li x6, 0x10fc1d2e9045c124 # initialize rs2
rorw x18, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
li x23, 0xc164d21c331ba8a3 # initialize rs1
li x7, 0x3ee783c14bc622de # initialize rs2
rorw x27, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x24, 0xda1f148d38378986 # initialize rs1
li x8, 0xd9df6785628bd946 # initialize rs2
rorw x29, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x27, 0x1dccc8b0d559b1c3 # initialize rs1
li x9, 0x4a3ac7f578bd62e3 # initialize rs2
rorw x20, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x13, 0x9f83cdde3a15ae64 # initialize rs1
li x10, 0xe1aede1051972b1f # initialize rs2
rorw x11, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x13, 0x7421c98cb80faa09 # initialize rs1
li x11, 0x45d037ff35b300c2 # initialize rs2
rorw x1, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x3, 0xd760105e59c3111f # initialize rs1
li x12, 0x71e64d3a35cb8cac # initialize rs2
rorw x6, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x14, 0x3885278f7c871c3e # initialize rs1
li x13, 0x4aaad514d352e89b # initialize rs2
rorw x20, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x7, 0xb82b45da9bfbedd3 # initialize rs1
li x14, 0xad7e61ab225f08fc # initialize rs2
rorw x15, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x5, 0xe49838f8d52ef80f # initialize rs1
li x15, 0x96676802aa4c3536 # initialize rs2
rorw x6, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x19, 0x19c4d798d44818b3 # initialize rs1
li x16, 0x3cace090ea5e37f3 # initialize rs2
rorw x3, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0x484892efe2de80c3 # initialize rs1
li x17, 0xefd995a10714a2c2 # initialize rs2
rorw x19, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x30, 0x10c064ffad2bb9a7 # initialize rs1
li x18, 0xd635388222719fba # initialize rs2
rorw x5, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x18, 0x4034b9f0ee63210b # initialize rs1
li x19, 0xfbd544cde06e1ca0 # initialize rs2
rorw x31, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x28, 0xa6d6156b0b2095fa # initialize rs1
li x20, 0x180f96e185cef7c4 # initialize rs2
rorw x16, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x6, 0x809153b9d5612c7f # initialize rs1
li x21, 0x396d73ea65d3c0e4 # initialize rs2
rorw x14, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x11, 0x100d9ef2c338a32a # initialize rs1
li x22, 0x4324ecf31b910bcd # initialize rs2
rorw x5, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x16, 0x3b01e25bdb9932cf # initialize rs1
li x23, 0x589c0df424fc3704 # initialize rs2
rorw x13, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x12, 0x4241abbce9919bfe # initialize rs1
li x24, 0xba3441452e47a8ab # initialize rs2
rorw x16, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x1, 0x76d5335a1d1c61df # initialize rs1
li x25, 0x245852d16b51193e # initialize rs2
rorw x27, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x5, 0x1fa39abb4a20af97 # initialize rs1
li x26, 0x5e24436b3b3ff9a3 # initialize rs2
rorw x17, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x11, 0x2285997da4c49107 # initialize rs1
li x27, 0xf67fde38981a98ed # initialize rs2
rorw x16, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x18, 0x0be34c11ab9a7b42 # initialize rs1
li x28, 0x886b3c1472171da4 # initialize rs2
rorw x2, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x17, 0x052aa1f9af6c8ca9 # initialize rs1
li x29, 0x0bffecae826a2179 # initialize rs2
rorw x9, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x24, 0x2a881f9d6178ee13 # initialize rs1
li x30, 0xb8641d221f446fff # initialize rs2
rorw x11, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x8, 0xbd5a9d1571f7f61f # initialize rs1
li x31, 0x9ad2d7c5bba099eb # initialize rs2
rorw x11, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 504)

# Testcase cp_rd (Test destination rd = x0)
li x8, 0x5184072317241ec5 # initialize rs1
li x22, 0xc82fbcd265bc57d7 # initialize rs2
rorw x0, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x13, 0x97c67c9dddb48cd2 # initialize rs1
li x22, 0x4ffdc78afbc5acbe # initialize rs2
rorw x1, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x21, 0x982361c9f60818a2 # initialize rs1
li x27, 0x0cac2bec0d154966 # initialize rs2
rorw x2, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x15, 0x7e9ef854da737dfe # initialize rs1
li x9, 0x8416131c5d078560 # initialize rs2
rorw x3, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x4fb78fca5a84dec9 # initialize rs1
li x9, 0xa9fcb994ef4afbad # initialize rs2
rorw x4, x6, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0x0d9ded030cc1f3fa # initialize rs1
li x29, 0xc498641c32805fbb # initialize rs2
rorw x5, x30, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0xad282a0fe0526bd2 # initialize rs1
li x14, 0xa474e771cae012ba # initialize rs2
rorw x6, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x92b1bd529fc5c1f7 # initialize rs1
li x27, 0x6943eb890819ea6d # initialize rs2
rorw x7, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x29, 0x8938b8648ba41ae1 # initialize rs1
li x7, 0x4d381af8dbbec4dd # initialize rs2
rorw x8, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0x6df74e22b93569e3 # initialize rs1
li x3, 0x7d2e101ac062cc0c # initialize rs2
rorw x9, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x28, 0x44905f98f0120dd5 # initialize rs1
li x13, 0x25141d1b284d0073 # initialize rs2
rorw x10, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x1, 0xa7eaf0472432ad42 # initialize rs1
li x29, 0x558a64774a49a732 # initialize rs2
rorw x11, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x7, 0xd1e36a72cdabc732 # initialize rs1
li x31, 0x29e88169c862a5e1 # initialize rs2
rorw x12, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x22, 0xb6f38e3adee0c364 # initialize rs1
li x13, 0x82f90ac793e5f673 # initialize rs2
rorw x13, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x15, 0x3e67a476bcb4922d # initialize rs1
li x5, 0xd9b072d19ab436f3 # initialize rs2
rorw x14, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x30, 0xc4a6203b3c7ff993 # initialize rs1
li x2, 0x56827583ee1d0757 # initialize rs2
rorw x15, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x13, 0x3244017d2d4aa6b1 # initialize rs1
li x2, 0x997b110e9a55041d # initialize rs2
rorw x16, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x15, 0xd14fc9325964a4bb # initialize rs1
li x7, 0x7d838db5bd524f3a # initialize rs2
rorw x17, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x2, 0xd792ff2a93df3682 # initialize rs1
li x13, 0x7706b728f842bf3f # initialize rs2
rorw x18, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x3, 0x08a0639df82c5377 # initialize rs1
li x30, 0x05680592a1f8259c # initialize rs2
rorw x19, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x24, 0x83458e51b5a4fd86 # initialize rs1
li x16, 0x74e9c830e74a3b9d # initialize rs2
rorw x20, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x24, 0x01a1f6602feadace # initialize rs1
li x2, 0xd15b1bcd61bbc082 # initialize rs2
rorw x21, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0x591cfcc15b42c8a1 # initialize rs1
li x31, 0x805ef206ad998b0b # initialize rs2
rorw x22, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x15, 0xc7adf8f87f15735c # initialize rs1
li x3, 0x57840f7c0c512fc7 # initialize rs2
rorw x23, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x18, 0xa5ddf5010f1eabff # initialize rs1
li x5, 0x8429ba8768da0e14 # initialize rs2
rorw x24, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x6, 0xc553d37dd897eb21 # initialize rs1
li x14, 0x1a4f2c7993751844 # initialize rs2
rorw x25, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x12, 0x869ecbc96fc81d23 # initialize rs1
li x29, 0x1e13a32b88c65fd3 # initialize rs2
rorw x26, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x22, 0xee660a2bb7d114a3 # initialize rs1
li x1, 0x7e930b4ec3fe0552 # initialize rs2
rorw x27, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x1, 0x91612f4d82b4afb1 # initialize rs1
li x12, 0x806e03f9c9114545 # initialize rs2
rorw x28, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x10, 0x3cb4d269a328c240 # initialize rs1
li x19, 0x499224fd94818563 # initialize rs2
rorw x29, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x22, 0x5161e6194b88680e # initialize rs1
li x25, 0x353ea7df62ce1c0f # initialize rs2
rorw x30, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x039ff3ad173e4c48 # initialize rs1
li x8, 0x064ba1d53b0f7acc # initialize rs2
rorw x31, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x9, 0x0000000000000000 # initialize rs1
li x17, 0x469e2474859b01bf # initialize rs2
rorw x22, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x23, 0x0000000000000001 # initialize rs1
li x7, 0x0547fc12440f1114 # initialize rs2
rorw x9, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0x0000000000000002 # initialize rs1
li x1, 0xb0c5f3b04725f2fc # initialize rs2
rorw x26, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x5, 0x8000000000000000 # initialize rs1
li x11, 0xb464ce3f9af5c2e7 # initialize rs2
rorw x17, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x11, 0x8000000000000001 # initialize rs1
li x17, 0xff7ab61e1fffaab8 # initialize rs2
rorw x14, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x9, 0x7fffffffffffffff # initialize rs1
li x27, 0x65a7267c3c224f1d # initialize rs2
rorw x8, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
li x18, 0x5930f34b51106e3e # initialize rs2
rorw x30, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x28, 0xffffffffffffffff # initialize rs1
li x23, 0xa9bac2f9accf1c25 # initialize rs2
rorw x9, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x2, 0xfffffffffffffffe # initialize rs1
li x14, 0x46a03f64fb7fe566 # initialize rs2
rorw x5, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x1205113c306d35b8 # initialize rs2
rorw x30, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xcae683c5fe67a088 # initialize rs2
rorw x14, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x17, 0x5555555555555555 # initialize rs1
li x31, 0xb0bc216427aebac5 # initialize rs2
rorw x11, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x22, 0x00000000ffffffff # initialize rs1
li x1, 0xe76ed9d68138ce28 # initialize rs2
rorw x3, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0x00000000fffffffe # initialize rs1
li x11, 0x53b277bcfc53eb09 # initialize rs2
rorw x10, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x30, 0x0000000100000000 # initialize rs1
li x10, 0xf8134d136eb89f93 # initialize rs2
rorw x22, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x19, 0x0000000100000001 # initialize rs1
li x9, 0x57e55bca0c1d6ae3 # initialize rs2
rorw x15, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0x14ef085e78c519a0 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
rorw x3, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x19, 0xa50492f3d90f4306 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
rorw x29, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x13, 0x47bc38cb4fa875e1 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
rorw x7, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x19, 0xf5f42b66244f18a2 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
rorw x20, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x17, 0x7fb11abf77ef510f # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
rorw x23, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x22, 0x3049e10fb64103a1 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
rorw x31, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x30, 0xf6bed91e9288711e # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
rorw x11, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x10, 0x931ea528ce5a2989 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
rorw x27, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x20, 0x748f406939707538 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
rorw x3, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x24, 0xa8a2140c1ea237c3 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
rorw x30, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xf488839e00b134d7 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
rorw x7, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x13, 0x3ee7cf6c10be6a64 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
rorw x9, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0xf18254b5fd41807f # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
rorw x12, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x17, 0xc7b34233b68e1a98 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
rorw x7, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x6, 0x1d2a6afcdfdaec3c # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
rorw x28, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x12, 0x95ae9bec28e2190b # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
rorw x9, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x16, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
rorw x5, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x30, 0x0000000000000000 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
rorw x16, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x16, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
rorw x1, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x21, 0x0000000000000000 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
rorw x25, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x27, 0x0000000000000000 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
rorw x6, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x16, 0x0000000000000000 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
rorw x6, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x17, 0x0000000000000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
rorw x28, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x7, 0x0000000000000000 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
rorw x12, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x15, 0x0000000000000000 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
rorw x28, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x18, 0x0000000000000000 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
rorw x28, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x0000000000000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
rorw x20, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x23, 0x0000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
rorw x8, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x7, 0x0000000000000000 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
rorw x14, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x31, 0x0000000000000000 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
rorw x21, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x13, 0x0000000000000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
rorw x31, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x9, 0x0000000000000000 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
rorw x12, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x17, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
rorw x5, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x14, 0x0000000000000001 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
rorw x28, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x8, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
rorw x5, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x3, 0x0000000000000001 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
rorw x18, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x22, 0x0000000000000001 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
rorw x8, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000000000001 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
rorw x19, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x29, 0x0000000000000001 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
rorw x21, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x3, 0x0000000000000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
rorw x18, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000000000001 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
rorw x3, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x11, 0x0000000000000001 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
rorw x9, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000000000001 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
rorw x21, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x6, 0x0000000000000001 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
rorw x7, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
rorw x7, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x27, 0x0000000000000001 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
rorw x20, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x28, 0x0000000000000001 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
rorw x25, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x15, 0x0000000000000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
rorw x17, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x14, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
rorw x16, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x28, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
rorw x22, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x11, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
rorw x10, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x18, 0x0000000000000002 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
rorw x20, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x15, 0x0000000000000002 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
rorw x27, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000000000002 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
rorw x21, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000000000002 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
rorw x6, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x2, 0x0000000000000002 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
rorw x24, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000000000002 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
rorw x18, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000000000002 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
rorw x29, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x0000000000000002 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
rorw x17, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x28, 0x0000000000000002 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
rorw x11, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x7, 0x0000000000000002 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
rorw x5, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x31, 0x0000000000000002 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
rorw x13, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x22, 0x0000000000000002 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
rorw x5, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x23, 0x0000000000000002 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
rorw x25, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x22, 0x8000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
rorw x26, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x3, 0x8000000000000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
rorw x25, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x24, 0x8000000000000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
rorw x6, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x18, 0x8000000000000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
rorw x28, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x9, 0x8000000000000000 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
rorw x8, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x13, 0x8000000000000000 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
rorw x12, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x21, 0x8000000000000000 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
rorw x22, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x25, 0x8000000000000000 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
rorw x20, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x5, 0x8000000000000000 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
rorw x27, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x22, 0x8000000000000000 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
rorw x10, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x8000000000000000 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
rorw x28, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x25, 0x8000000000000000 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
rorw x12, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x12, 0x8000000000000000 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
rorw x22, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x1, 0x8000000000000000 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
rorw x19, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x31, 0x8000000000000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
rorw x19, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x10, 0x8000000000000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
rorw x31, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x11, 0x8000000000000001 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
rorw x26, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x19, 0x8000000000000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
rorw x31, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x2, 0x8000000000000001 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
rorw x14, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x2, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
rorw x23, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x18, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
rorw x3, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x11, 0x8000000000000001 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
rorw x31, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x15, 0x8000000000000001 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
rorw x25, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x23, 0x8000000000000001 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
rorw x1, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x23, 0x8000000000000001 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
rorw x20, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x29, 0x8000000000000001 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
rorw x31, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x8000000000000001 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
rorw x1, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x27, 0x8000000000000001 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
rorw x20, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x16, 0x8000000000000001 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
rorw x2, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x19, 0x8000000000000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
rorw x24, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x31, 0x8000000000000001 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
rorw x24, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x2, 0x8000000000000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
rorw x13, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x9, 0x7fffffffffffffff # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
rorw x23, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x22, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
rorw x5, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x1, 0x7fffffffffffffff # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
rorw x24, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x28, 0x7fffffffffffffff # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
rorw x27, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x25, 0x7fffffffffffffff # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
rorw x3, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
rorw x3, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x14, 0x7fffffffffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
rorw x7, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
rorw x20, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x21, 0x7fffffffffffffff # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
rorw x18, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x18, 0x7fffffffffffffff # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
rorw x24, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x7fffffffffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
rorw x5, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x26, 0x7fffffffffffffff # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
rorw x23, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x16, 0x7fffffffffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
rorw x13, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x28, 0x7fffffffffffffff # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
rorw x31, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x9, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
rorw x14, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x25, 0x7fffffffffffffff # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
rorw x12, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x7, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
rorw x15, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x7, 0x7ffffffffffffffe # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
rorw x25, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x15, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
rorw x24, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x30, 0x7ffffffffffffffe # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
rorw x23, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x3, 0x7ffffffffffffffe # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
rorw x15, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x18, 0x7ffffffffffffffe # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
rorw x24, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x16, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
rorw x27, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
rorw x3, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x1, 0x7ffffffffffffffe # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
rorw x3, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x25, 0x7ffffffffffffffe # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
rorw x24, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x7ffffffffffffffe # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
rorw x25, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x16, 0x7ffffffffffffffe # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
rorw x31, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x27, 0x7ffffffffffffffe # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
rorw x25, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
rorw x11, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x19, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
rorw x27, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x10, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
rorw x15, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x2, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
rorw x25, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x17, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
rorw x2, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x19, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
rorw x5, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x26, 0xffffffffffffffff # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
rorw x24, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x1, 0xffffffffffffffff # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
rorw x17, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
rorw x20, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x29, 0xffffffffffffffff # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
rorw x16, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
rorw x8, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x26, 0xffffffffffffffff # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
rorw x27, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x13, 0xffffffffffffffff # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
rorw x18, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xffffffffffffffff # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
rorw x30, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x12, 0xffffffffffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
rorw x9, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
rorw x11, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x16, 0xffffffffffffffff # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
rorw x8, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x16, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
rorw x18, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x19, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
rorw x31, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x5, 0xfffffffffffffffe # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
rorw x27, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x2, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
rorw x22, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x17, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
rorw x19, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x12, 0xfffffffffffffffe # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
rorw x13, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x14, 0xfffffffffffffffe # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
rorw x17, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x25, 0xfffffffffffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
rorw x12, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x8, 0xfffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
rorw x10, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x26, 0xfffffffffffffffe # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
rorw x5, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
rorw x8, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x23, 0xfffffffffffffffe # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
rorw x18, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0xfffffffffffffffe # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
rorw x23, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x31, 0xfffffffffffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
rorw x6, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x17, 0xfffffffffffffffe # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
rorw x20, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
rorw x29, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x14, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
rorw x10, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x31, 0xfffffffffffffffe # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
rorw x13, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
rorw x27, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
rorw x28, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
rorw x22, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
rorw x6, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
rorw x1, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
rorw x5, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
rorw x9, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
rorw x11, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
rorw x9, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
rorw x1, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
rorw x12, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
rorw x19, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
rorw x18, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
rorw x25, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
rorw x13, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
rorw x22, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
rorw x9, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
rorw x21, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
rorw x18, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
rorw x1, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
rorw x27, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
rorw x13, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
rorw x1, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
rorw x27, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
rorw x22, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
rorw x27, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
rorw x18, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
rorw x3, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
rorw x17, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
rorw x17, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
rorw x3, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
rorw x23, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x19, 0x5555555555555555 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
rorw x6, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x19, 0x5555555555555555 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
rorw x22, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x29, 0x5555555555555555 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
rorw x22, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x27, 0x5555555555555555 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
rorw x9, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x15, 0x5555555555555555 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
rorw x19, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x11, 0x5555555555555555 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
rorw x30, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x29, 0x5555555555555555 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
rorw x30, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
rorw x28, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x28, 0x5555555555555555 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
rorw x8, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x17, 0x5555555555555555 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
rorw x3, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x5555555555555555 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
rorw x21, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x28, 0x5555555555555555 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
rorw x19, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x8, 0x5555555555555555 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
rorw x10, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x9, 0x5555555555555555 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
rorw x1, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x29, 0x5555555555555555 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
rorw x21, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x29, 0x5555555555555555 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
rorw x6, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x20, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
rorw x15, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x17, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
rorw x28, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x6, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
rorw x1, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x18, 0x00000000ffffffff # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
rorw x6, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x12, 0x00000000ffffffff # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
rorw x5, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
rorw x3, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x21, 0x00000000ffffffff # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
rorw x5, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x17, 0x00000000ffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
rorw x6, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x8, 0x00000000ffffffff # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
rorw x31, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x1, 0x00000000ffffffff # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
rorw x31, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x00000000ffffffff # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
rorw x13, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x31, 0x00000000ffffffff # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
rorw x6, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x10, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
rorw x22, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x12, 0x00000000ffffffff # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
rorw x26, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x10, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
rorw x29, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x16, 0x00000000ffffffff # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
rorw x31, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x16, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
rorw x22, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x16, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
rorw x18, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x28, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
rorw x6, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x8, 0x00000000fffffffe # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
rorw x11, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x22, 0x00000000fffffffe # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
rorw x3, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x27, 0x00000000fffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
rorw x5, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x15, 0x00000000fffffffe # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
rorw x5, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x17, 0x00000000fffffffe # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
rorw x22, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
rorw x3, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x23, 0x00000000fffffffe # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
rorw x10, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x00000000fffffffe # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
rorw x23, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x25, 0x00000000fffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
rorw x31, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x13, 0x00000000fffffffe # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
rorw x24, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x10, 0x00000000fffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
rorw x22, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x22, 0x00000000fffffffe # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
rorw x21, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x12, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
rorw x15, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x25, 0x0000000100000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
rorw x22, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x23, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
rorw x29, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x23, 0x0000000100000000 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
rorw x16, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x20, 0x0000000100000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
rorw x10, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x22, 0x0000000100000000 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
rorw x13, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000000 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
rorw x6, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000100000000 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
rorw x19, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x30, 0x0000000100000000 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
rorw x19, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000100000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
rorw x13, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x28, 0x0000000100000000 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
rorw x17, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x0000000100000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
rorw x24, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x18, 0x0000000100000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
rorw x20, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x27, 0x0000000100000000 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
rorw x19, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x24, 0x0000000100000000 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
rorw x13, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x20, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
rorw x3, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x30, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
rorw x16, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x10, 0x0000000100000001 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
rorw x8, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x22, 0x0000000100000001 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
rorw x31, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x21, 0x0000000100000001 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
rorw x30, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x17, 0x0000000100000001 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
rorw x25, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x24, 0x0000000100000001 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
rorw x2, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x20, 0x0000000100000001 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
rorw x13, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x13, 0x0000000100000001 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
rorw x3, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x23, 0x0000000100000001 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
rorw x21, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x12, 0x0000000100000001 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
rorw x8, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x8, 0x0000000100000001 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
rorw x12, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x0000000100000001 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
rorw x16, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x31, 0x0000000100000001 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
rorw x20, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x6, 0x0000000100000001 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
rorw x29, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x28, 0x0000000100000001 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
rorw x24, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x29, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
rorw x9, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x24, 0x0000000100000001 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
rorw x11, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xa1b945882ba384bf # initialize rs1
li x0, 0x7318689a6b658e9f # initialize rs2
rorw x16, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x94547b0712a9cbcd # initialize rs1
li x1, 0xa113d8ef7cf9560b # initialize rs2
rorw x29, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc2164cacbae1ada7 # initialize rs1
li x2, 0xb622c87808da9d79 # initialize rs2
rorw x5, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x490d64ba976c9c4d # initialize rs1
li x3, 0x02680514d4dd7dda # initialize rs2
rorw x20, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe482d718d5d0650b # initialize rs1
li x4, 0x36389920b5dfd78e # initialize rs2
rorw x27, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3bc72c5315367377 # initialize rs1
li x5, 0xe6b0db35e88c7685 # initialize rs2
rorw x12, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x462261b9db69cda6 # initialize rs1
li x6, 0xa1de8b34d801461c # initialize rs2
rorw x8, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x8, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa9c01e2c38278beb # initialize rs1
li x7, 0x480ac32b46889a59 # initialize rs2
rorw x6, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x059e11f9b3494dd4 # initialize rs1
li x8, 0x5fc7c5639dc63922 # initialize rs2
rorw x14, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x8caf8800eda711bb # initialize rs1
li x9, 0xdcda3901f2672cdb # initialize rs2
rorw x5, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x5b24d6320a6d1100 # initialize rs1
li x10, 0xb04c6eae2b6e299c # initialize rs2
rorw x29, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xa6a87de9bb68059a # initialize rs1
li x11, 0x4e63dd5c07f5d17c # initialize rs2
rorw x7, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xcb03148d583c19c2 # initialize rs1
li x12, 0x63a88e3ca5c162d3 # initialize rs2
rorw x5, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xc4fa4a3b851591a9 # initialize rs1
li x13, 0x9b3317179bb69137 # initialize rs2
rorw x2, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x39e171674c22d36d # initialize rs1
li x14, 0x5c3365db00d626e6 # initialize rs2
rorw x11, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x5cbf38a9a4edd16a # initialize rs1
li x15, 0xc5625186eacef768 # initialize rs2
rorw x18, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x29e998d16b3ec536 # initialize rs1
li x16, 0x050b3b3c8448fe96 # initialize rs2
rorw x26, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xc28c1b601aa6c605 # initialize rs1
li x17, 0xadb02b576e06ac0a # initialize rs2
rorw x8, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xc80f05af061d95b9 # initialize rs1
li x18, 0x61490ea94388b0ce # initialize rs2
rorw x17, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x50da4b6ddceb036a # initialize rs1
li x19, 0x393829ba18bea9a8 # initialize rs2
rorw x28, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xce683b3c92daafb1 # initialize rs1
li x20, 0x8cab08e735380cfd # initialize rs2
rorw x9, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x463a43d46ad5252d # initialize rs1
li x21, 0xa160fd35691d01d5 # initialize rs2
rorw x26, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x21a58d1d8e97e2de # initialize rs1
li x22, 0x1d5529ed6bad16d7 # initialize rs2
rorw x3, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x55d4fa233c027eaa # initialize rs1
li x23, 0x82716e2560c964e2 # initialize rs2
rorw x3, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x68732cae0512f333 # initialize rs1
li x24, 0xd0a8301b8fa8cd4c # initialize rs2
rorw x6, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x24edf7ac539688ec # initialize rs1
li x25, 0xe8e1c958e066ebb0 # initialize rs2
rorw x26, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x02fde5d7ee744dc7 # initialize rs1
li x26, 0xb9e2c0757131bb18 # initialize rs2
rorw x22, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x686efe330f091b76 # initialize rs1
li x27, 0x5e83926981c429d4 # initialize rs2
rorw x10, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x0f235307598486e2 # initialize rs1
li x28, 0x4e1cafe8ca9ade2d # initialize rs2
rorw x26, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x767717d90fc737b5 # initialize rs1
li x29, 0x0fa1e93478bbbf23 # initialize rs2
rorw x9, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x67606b70c53b6f48 # initialize rs1
li x30, 0x7611b32271f0c51a # initialize rs2
rorw x7, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x1e42f1900be6b461 # initialize rs1
li x31, 0xb9b40985679a2f6d # initialize rs2
rorw x6, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x1573bfc7a5008799 # initialize rs1
li x27, 0xb12c3fd97a195a60 # initialize rs2
rorw x0, x0, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x0fa4569d94eaf709 # initialize rs1
li x22, 0x8cd73b77f9f226fb # initialize rs2
rorw x1, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x478fb29e75a117a2 # initialize rs1
li x10, 0x927951eb1a77bddd # initialize rs2
rorw x2, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x2583dca2979ece78 # initialize rs1
li x2, 0xd5e14f14f3cda887 # initialize rs2
rorw x3, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x885dd45a101f64fc # initialize rs1
li x29, 0x5f1b6006ed050c12 # initialize rs2
rorw x4, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x170bbcf343bb0dc2 # initialize rs1
li x1, 0x1016dfc020c7a073 # initialize rs2
rorw x5, x5, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x03f0cbed9313f70f # initialize rs1
li x17, 0x74b59b5397c8bd40 # initialize rs2
rorw x6, x6, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1a823d8a51462c4c # initialize rs1
li x24, 0x4656db209eea6686 # initialize rs2
rorw x7, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x99f6e3b0c1487678 # initialize rs1
li x28, 0x30c66ca2a28ee741 # initialize rs2
rorw x8, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x6a805e537e96957b # initialize rs1
li x8, 0xf3e7e8df07b6b435 # initialize rs2
rorw x9, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xf5c38d3b3179bf2e # initialize rs1
li x10, 0x995febbe89c66c6c # initialize rs2
rorw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x645d9c7f86f545fe # initialize rs1
li x20, 0x4f064cf9ca7df57e # initialize rs2
rorw x11, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x877731c3dae2618c # initialize rs1
li x2, 0xa0cdf12ce216c872 # initialize rs2
rorw x12, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xa4b2dfb758b4d86c # initialize rs1
li x31, 0x84f2a578ba805aaa # initialize rs2
rorw x13, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xa5bde8f7028fa30a # initialize rs1
li x3, 0x8e082cb7766c4891 # initialize rs2
rorw x14, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x4f699f8e82bfb5d5 # initialize rs1
li x20, 0xa3b15e2eedb6d888 # initialize rs2
rorw x15, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x9a3c3a603a366f48 # initialize rs1
li x5, 0xfd03411d3321c256 # initialize rs2
rorw x16, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x2d78d9f21d11c23b # initialize rs1
li x20, 0x365faf76b185be4c # initialize rs2
rorw x17, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x8a3c25bbd469d1aa # initialize rs1
li x25, 0x7ef1317d0021c78a # initialize rs2
rorw x18, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x05e3b284da2c4659 # initialize rs1
li x20, 0xcf12e7e054e79e8c # initialize rs2
rorw x19, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xca5c89e5f29970a9 # initialize rs1
li x3, 0x70caece40624284b # initialize rs2
rorw x20, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x8cc68c2332c0d198 # initialize rs1
li x28, 0x93b043abbaf3360a # initialize rs2
rorw x21, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xd35425b641ec8380 # initialize rs1
li x19, 0xcfb99bf5fae9a0d3 # initialize rs2
rorw x22, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xacccbe65b8f45da8 # initialize rs1
li x18, 0x8ab35c36d8a34d69 # initialize rs2
rorw x23, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7b25fd6f98b96e3f # initialize rs1
li x10, 0xb53b7d81a5adb824 # initialize rs2
rorw x24, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xb4633cee9abed9f6 # initialize rs1
li x18, 0x61478797691f6204 # initialize rs2
rorw x25, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x3da9c339f0dd6122 # initialize rs1
li x27, 0xa82bf0c78bff67b4 # initialize rs2
rorw x26, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xeefa54c60313130b # initialize rs1
li x1, 0x007c15514413ded8 # initialize rs2
rorw x27, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xbd09cc7f09b4867a # initialize rs1
li x6, 0x63b21235396a5a9a # initialize rs2
rorw x28, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x406860fda01e2324 # initialize rs1
li x19, 0xf6f08dd6f2bf76fd # initialize rs2
rorw x29, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x78a72755cf1910e2 # initialize rs1
li x19, 0x3b68cc096002ce39 # initialize rs2
rorw x30, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x3dad1ad0f9011f0f # initialize rs1
li x29, 0x54ceb1da4d8af806 # initialize rs2
rorw x31, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x13, 0xeeb7fedaa6fb53ff # initialize rs1
li x0, 0x7846e889b52639e9 # initialize rs2
rorw x0, x13, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x8, 0x1a2162b6b9afa649 # initialize rs1
li x1, 0xa9033bb15ae0c8d4 # initialize rs2
rorw x1, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x30, 0x2c6c99758a6bfd37 # initialize rs1
li x2, 0xe785e5df2321318d # initialize rs2
rorw x2, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x26, 0x64f265c89c76da1c # initialize rs1
li x3, 0x166890dde5cebd54 # initialize rs2
rorw x3, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0x5894ece82a8253a3 # initialize rs1
li x4, 0xf3317e511d709254 # initialize rs2
rorw x4, x19, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x22, 0xc45dc7e9ea4f9d10 # initialize rs1
li x5, 0xf758c2ce2df77247 # initialize rs2
rorw x5, x22, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0x874fee83b5a4f022 # initialize rs1
li x6, 0xb01c921886dd72ed # initialize rs2
rorw x6, x19, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x1c15b044730f3e88 # initialize rs1
li x7, 0x1e55129c7937d4a9 # initialize rs2
rorw x7, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x5, 0xf63d232e905847c3 # initialize rs1
li x8, 0x46a8e6ef246421e0 # initialize rs2
rorw x8, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x10, 0x1000d977e57c494c # initialize rs1
li x9, 0x8f7659aecf52c8d3 # initialize rs2
rorw x9, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x2, 0xe15aac1684b1a19c # initialize rs1
li x10, 0x5247c02382ead99d # initialize rs2
rorw x10, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x3, 0xf60360ab9aaf2e51 # initialize rs1
li x11, 0xeea3f91ec82a5a31 # initialize rs2
rorw x11, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x24, 0x6994909d7d17b37c # initialize rs1
li x12, 0xcaf26e4864905ae0 # initialize rs2
rorw x12, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x3f68bf936a7a009f # initialize rs1
li x13, 0xe5abe82e95d8e9fe # initialize rs2
rorw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x19, 0xf9ea881e28118a3e # initialize rs1
li x14, 0x7a63e7b7e5e6c59d # initialize rs2
rorw x14, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x11, 0xb073b451d262b905 # initialize rs1
li x15, 0x7552e5bbbcc39b63 # initialize rs2
rorw x15, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x21, 0x15cf7cfac7684d5b # initialize rs1
li x16, 0xc085a7040e9248f7 # initialize rs2
rorw x16, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x15, 0xa41a3af003364906 # initialize rs1
li x17, 0x1bab0173d16614ca # initialize rs2
rorw x17, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x15, 0x24e9ef99c81bf1e5 # initialize rs1
li x18, 0x46a740ccf03b3ecc # initialize rs2
rorw x18, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x30, 0xa4ad3c864919ab0f # initialize rs1
li x19, 0x6109616e2d11e72b # initialize rs2
rorw x19, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x5, 0x6699bbf34a0af563 # initialize rs1
li x20, 0x2f79fe372aad3ce8 # initialize rs2
rorw x20, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x26, 0x45e5f41e7acd3781 # initialize rs1
li x21, 0x36714ed71aca0201 # initialize rs2
rorw x21, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x31, 0x30e0466a3cf06686 # initialize rs1
li x22, 0x433ec32ef7f321e7 # initialize rs2
rorw x22, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x6, 0xf84b15d839c43e5a # initialize rs1
li x23, 0xf579b8ea7e42df7b # initialize rs2
rorw x23, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x29, 0x9ed912a0da043048 # initialize rs1
li x24, 0xffe6eb1fde69863a # initialize rs2
rorw x24, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x31, 0x2acac3c9e805ef9c # initialize rs1
li x25, 0x46442bc2a5d7ca6c # initialize rs2
rorw x25, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x15, 0xd1ca633a86834145 # initialize rs1
li x26, 0xeff8b521abdcf230 # initialize rs2
rorw x26, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x19, 0xc6dcd251337cdf24 # initialize rs1
li x27, 0x0a03d7cdab09efea # initialize rs2
rorw x27, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x15, 0x146bb79dc70bff6f # initialize rs1
li x28, 0x98e8a0af3cb71439 # initialize rs2
rorw x28, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x22, 0x7812259764a66c3c # initialize rs1
li x29, 0x636763e4c6d0ba94 # initialize rs2
rorw x29, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x14, 0xdcbb43c53e19a9a1 # initialize rs1
li x30, 0x3203f3fbad868e8f # initialize rs2
rorw x30, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x28, 0xb1e16cdfcacc07ea # initialize rs1
li x31, 0xc248288cc9c8ae76 # initialize rs2
rorw x31, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x75a554397ee306d4 # initialize rs1
li x0, 0xd7a37d74e1977c20 # initialize rs2
rorw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xc5c5d467cae44766 # initialize rs1
li x1, 0x369770e8b39b0484 # initialize rs2
rorw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xd6fecf77b9e61581 # initialize rs1
li x2, 0x46be50e6caeb363d # initialize rs2
rorw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xc08d20da0cfb2033 # initialize rs1
li x3, 0xe394bf5b30e59fa2 # initialize rs2
rorw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3f857626dec7d70a # initialize rs1
li x4, 0x931edcc93683d0d8 # initialize rs2
rorw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd7e06b7b94ea78b3 # initialize rs1
li x5, 0x981c2cff3e88f24d # initialize rs2
rorw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x435d6a63a224e1cd # initialize rs1
li x6, 0x742174ce87fecc3d # initialize rs2
rorw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfa7015ea54f7343c # initialize rs1
li x7, 0x22cf673ab79d6b50 # initialize rs2
rorw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xbf5d1ec7a039b8cd # initialize rs1
li x8, 0x5a98a57db540d72f # initialize rs2
rorw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x3e1c530f279999a3 # initialize rs1
li x9, 0xc62f8486bf395ab4 # initialize rs2
rorw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xb4c78eed16919175 # initialize rs1
li x10, 0x8a8b50fe685562b5 # initialize rs2
rorw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xccdaad1bde8fdf22 # initialize rs1
li x11, 0x07fe76a0dea2c536 # initialize rs2
rorw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x58ce9fb77fa007d5 # initialize rs1
li x12, 0xcf06a9a5094881b4 # initialize rs2
rorw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xf32a721bed5b7752 # initialize rs1
li x13, 0xb40e87e9253e1796 # initialize rs2
rorw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x202d74c1a29449c6 # initialize rs1
li x14, 0x0c1b704ad344e522 # initialize rs2
rorw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x517a7467f351c908 # initialize rs1
li x15, 0xd069afd0f4eecd02 # initialize rs2
rorw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xef71c9bfcd83066d # initialize rs1
li x16, 0x9ac971eccae0d839 # initialize rs2
rorw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x2f53ede620b5ccda # initialize rs1
li x17, 0xabf88c75e67b0f12 # initialize rs2
rorw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xbbfa36a31cb0af27 # initialize rs1
li x18, 0xf0e50e77d1c16c33 # initialize rs2
rorw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x5ee1c7490afae6e1 # initialize rs1
li x19, 0xc58391ca9016aebf # initialize rs2
rorw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x3afb1544630a6983 # initialize rs1
li x20, 0xf4f91f45b04be026 # initialize rs2
rorw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x836fd500909591ab # initialize rs1
li x21, 0xb2ddfc13b1b8a38d # initialize rs2
rorw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x8410d380da22b5d9 # initialize rs1
li x22, 0x890b75f18b06eb98 # initialize rs2
rorw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x8f6558feafbafcbd # initialize rs1
li x23, 0x879abb9e272200ce # initialize rs2
rorw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x7e23547899b4ccdc # initialize rs1
li x24, 0x369e0e02b68a7408 # initialize rs2
rorw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xe391b95309ad5955 # initialize rs1
li x25, 0xea5311e479a8608c # initialize rs2
rorw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x0c92aa0b0e2b7e98 # initialize rs1
li x26, 0xe9982c4b33e20adf # initialize rs2
rorw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x6a2de77608129767 # initialize rs1
li x27, 0xe284ec25c2f45f63 # initialize rs2
rorw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xb61504f361704492 # initialize rs1
li x28, 0x039e33032785a0a3 # initialize rs2
rorw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xcd1afc86c0a993df # initialize rs1
li x29, 0x14e567beac3cfb80 # initialize rs2
rorw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xbb7e543fc3af9e33 # initialize rs1
li x30, 0x05a4175ebb439131 # initialize rs2
rorw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x9f5c445c273d191e # initialize rs1
li x31, 0xcdc3f6f83656e646 # initialize rs2
rorw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x12, x28 # perform first operation
rorw x26, x11, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x27, x21 # perform first operation
rorw x22, x29, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x27, x10 # perform first operation
rorw x18, x23, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x18, x21 # perform first operation
rorw x18, x10, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x11, x28 # perform first operation
rorw x11, x6, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x11, x14 # perform first operation
rorw x21, x13, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x25, x21 # perform first operation
rorw x9, x17, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x24, x8 # perform first operation
rorw x27, x10, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x28, x23 # perform first operation
rorw x15, x19, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x15, x6 # perform first operation
rorw x15, x30, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x31, x20 # perform first operation
rorw x20, x12, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x16, x24 # perform first operation
rorw x19, x27, x17 # perform second (triggering) operation

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
