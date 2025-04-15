///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbs/WALLY-COV-bset.S
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
li x0, 0x56848e10401df5b3 # initialize rs1
li x9, 0x624fd7f79173f369 # initialize rs2
bset x19, x0, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x2d77e789e2ba2563 # initialize rs1
li x12, 0x4190d26eeca7bbf9 # initialize rs2
bset x27, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xf24dfd9606ce02a2 # initialize rs1
li x28, 0x87f6ef450cc56d10 # initialize rs2
bset x14, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xce546746ef721877 # initialize rs1
li x20, 0x8b2d26ba154e4436 # initialize rs2
bset x9, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x833b171ff22f6917 # initialize rs1
li x1, 0xef5294a2a46946f6 # initialize rs2
bset x17, x4, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xea18325cb1f419e7 # initialize rs1
li x19, 0x430f26ca0ca0c537 # initialize rs2
bset x18, x5, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xada6696cc8e82eb4 # initialize rs1
li x7, 0x04e395097f094cff # initialize rs2
bset x17, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xf22195c988ed7953 # initialize rs1
li x3, 0x6ef33b64c66d6d81 # initialize rs2
bset x24, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xec4cbb40fe83f04b # initialize rs1
li x1, 0x4a4cffc469056e3c # initialize rs2
bset x13, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x2db52bbdb57d4af6 # initialize rs1
li x11, 0xe50c8dda095b5d3d # initialize rs2
bset x31, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x2871df530d9a3824 # initialize rs1
li x1, 0x4a1a61a3387d55e4 # initialize rs2
bset x9, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa35bca8a6e1afb34 # initialize rs1
li x14, 0xfe3c8cf861a56064 # initialize rs2
bset x5, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x54d0dcf72edd4731 # initialize rs1
li x5, 0x6ee3080484f6cc85 # initialize rs2
bset x22, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x1e8f8077a51243a6 # initialize rs1
li x24, 0x2c07722a59ee77df # initialize rs2
bset x27, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc8d3a10bc45ae207 # initialize rs1
li x1, 0xd768c03ff2a55b51 # initialize rs2
bset x19, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x47ce25205ddf9fce # initialize rs1
li x13, 0x0b0dd56c96f33718 # initialize rs2
bset x11, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xafb604c1b0c909ea # initialize rs1
li x9, 0xa71f7d80d7eefa89 # initialize rs2
bset x19, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xff67fede78335b33 # initialize rs1
li x2, 0xd51885d20db504ad # initialize rs2
bset x5, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x5b9bc29134931a19 # initialize rs1
li x12, 0x92faea55afea8a00 # initialize rs2
bset x26, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xbb94e2d0359093ba # initialize rs1
li x17, 0xb9cc1bc78e12d618 # initialize rs2
bset x18, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x3a3ee69743a40765 # initialize rs1
li x18, 0x8f8579162c8e041a # initialize rs2
bset x16, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x025121a6bd05fd81 # initialize rs1
li x16, 0x162264baac02aa68 # initialize rs2
bset x22, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x82373c85d2298297 # initialize rs1
li x25, 0xf202c4862c9fdd48 # initialize rs2
bset x15, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x647544c45c25f6a6 # initialize rs1
li x10, 0xf9815e4029e8b0dd # initialize rs2
bset x22, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x4bdff3a43be7532c # initialize rs1
li x22, 0x698146b1bad7f966 # initialize rs2
bset x20, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xfcfcd5578b92d6c2 # initialize rs1
li x16, 0xb01196de0af316a3 # initialize rs2
bset x2, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xae44702821b86e74 # initialize rs1
li x31, 0x43613f78738286cf # initialize rs2
bset x27, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x31928411fcabe871 # initialize rs1
li x5, 0xce55a1575a634d0c # initialize rs2
bset x13, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x2d55401bb211ebe6 # initialize rs1
li x1, 0x6cf20110f2d95b36 # initialize rs2
bset x13, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x1e8969070f1676b3 # initialize rs1
li x16, 0xfc6057ab5eba4414 # initialize rs2
bset x12, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x4135bca9c8e2b3b6 # initialize rs1
li x9, 0xd87c9df938560f86 # initialize rs2
bset x15, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x88814ae343d143ed # initialize rs1
li x16, 0x6747e3b4c41063b5 # initialize rs2
bset x22, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0x661bbf46eb9b5ce6 # initialize rs1
li x0, 0x1adf2651e20e11cb # initialize rs2
bset x3, x20, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x14, 0xd7da7062d57f76db # initialize rs1
li x1, 0xc6ea456cec570be0 # initialize rs2
bset x15, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x28, 0x9b6e9cf4d24fd755 # initialize rs1
li x2, 0x22713cc608a00d2a # initialize rs2
bset x7, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x11, 0x90eefd07ece2d1c0 # initialize rs1
li x3, 0x9ec78a42f576ac3d # initialize rs2
bset x15, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0xc17741781ca3e7ea # initialize rs1
li x4, 0xfef2e486588bd23a # initialize rs2
bset x23, x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0xad012f2cc1dd4d8b # initialize rs1
li x5, 0x97646caefca81105 # initialize rs2
bset x12, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0x88e474e9bb421e56 # initialize rs1
li x6, 0xc5cd40841057c82c # initialize rs2
bset x9, x17, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x93c70c29025d5d55 # initialize rs1
li x7, 0x443ffc1d06a2fedf # initialize rs2
bset x23, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x16, 0xce33920c61ec7ca8 # initialize rs1
li x8, 0xfb76fd002a0144c6 # initialize rs2
bset x22, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x26, 0x8703157516ad363d # initialize rs1
li x9, 0x18a5781c65a7c59b # initialize rs2
bset x15, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x26, 0x79bec3947a6b517c # initialize rs1
li x10, 0x77ebd132be678e63 # initialize rs2
bset x7, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0xe54fcf62bc6d8ba1 # initialize rs1
li x11, 0xd80d808099095688 # initialize rs2
bset x8, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x29, 0x66d275ead7048958 # initialize rs1
li x12, 0xf66af9bd1e090322 # initialize rs2
bset x26, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x25, 0xfe82b3c8c745230d # initialize rs1
li x13, 0x8488cee53a0bb443 # initialize rs2
bset x23, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x25, 0xb944551af3c056df # initialize rs1
li x14, 0xecfc9c2e4945b374 # initialize rs2
bset x27, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x10, 0x7dd247869e2ded8c # initialize rs1
li x15, 0x0cdc29662ceaf3da # initialize rs2
bset x9, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x7, 0xe4127e49b0349eef # initialize rs1
li x16, 0x29fb90d9535692a5 # initialize rs2
bset x27, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x8, 0x2cb3150f6536919c # initialize rs1
li x17, 0x00c26c4b2deca014 # initialize rs2
bset x7, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x14, 0x8bf01c326fc627c9 # initialize rs1
li x18, 0x789770a7a3cdddd8 # initialize rs2
bset x16, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x18, 0xe08b928e490c397d # initialize rs1
li x19, 0x6fdcc6ed44f448f3 # initialize rs2
bset x24, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x21, 0x8425b6747a0014a1 # initialize rs1
li x20, 0x2a14914bfb76b804 # initialize rs2
bset x17, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x25, 0x3f4f12d5da0d8f92 # initialize rs1
li x21, 0xfc999c23f9b32cb7 # initialize rs2
bset x29, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x19, 0x240385fab4873214 # initialize rs1
li x22, 0x1359fd32e04d0c3e # initialize rs2
bset x7, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x22, 0x5c34b1913d862e35 # initialize rs1
li x23, 0xd94ecb83ac267319 # initialize rs2
bset x10, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x8, 0x316404b4256705e0 # initialize rs1
li x24, 0xfc9993be06bc5c21 # initialize rs2
bset x14, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x11, 0x848b4060ef729a2a # initialize rs1
li x25, 0x79576a3462a91952 # initialize rs2
bset x13, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x31, 0x2a22257f97cce3ad # initialize rs1
li x26, 0x514ec90699d96978 # initialize rs2
bset x27, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x9, 0x8c0dc376b9de4ea7 # initialize rs1
li x27, 0x2323cce11428d452 # initialize rs2
bset x2, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x26, 0xe582f5e5864d0021 # initialize rs1
li x28, 0xf352ff80b03f5c0c # initialize rs2
bset x21, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x10, 0x9032c1d23bf0b0f7 # initialize rs1
li x29, 0x359970ee4c683169 # initialize rs2
bset x2, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x24, 0xa81376c8d843603f # initialize rs1
li x30, 0x63b0d773a923a5b6 # initialize rs2
bset x5, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x22, 0x5ff1e5576baaedd3 # initialize rs1
li x31, 0x183e5f270f71e1af # initialize rs2
bset x11, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 504)

# Testcase cp_rd (Test destination rd = x0)
li x14, 0xa56d6ebf1a60f7be # initialize rs1
li x21, 0xdcc41d0d19ba3524 # initialize rs2
bset x0, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x7, 0xdd968e37f93e8a6a # initialize rs1
li x21, 0x68a500848d56ccf6 # initialize rs2
bset x1, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x41d782e4bd6f903b # initialize rs1
li x3, 0x2578f6ad9a0abd91 # initialize rs2
bset x2, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x23, 0x5fdc7f41112936fe # initialize rs1
li x7, 0x2a9da90aab947437 # initialize rs2
bset x3, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x1662b95dba9373e4 # initialize rs1
li x20, 0xc706dd0813692be8 # initialize rs2
bset x4, x27, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0xec77fa12a58a2ae8 # initialize rs1
li x13, 0x415f8091d2328a65 # initialize rs2
bset x5, x31, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x22b3ceaac480d3c5 # initialize rs1
li x3, 0x642ef9a9fce41b04 # initialize rs2
bset x6, x23, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0xef198e45d394be02 # initialize rs1
li x18, 0x2631cc67786924fb # initialize rs2
bset x7, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x7, 0x702269735cf55936 # initialize rs1
li x30, 0xb1bce96c6141c2aa # initialize rs2
bset x8, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x7, 0x7541ffd604223b6d # initialize rs1
li x19, 0x7692af4da655ce48 # initialize rs2
bset x9, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd449975bb945555f # initialize rs1
li x24, 0x519107e461941507 # initialize rs2
bset x10, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x7, 0x8cc4b81307938dd4 # initialize rs1
li x20, 0x5e7e67846c5306dd # initialize rs2
bset x11, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x22, 0xda8a133b599904fd # initialize rs1
li x28, 0x3eac08c0e64818e0 # initialize rs2
bset x12, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0x131e2d778d12d518 # initialize rs1
li x24, 0xa8fa263625b126ce # initialize rs2
bset x13, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x28, 0x31b78ffba55682ae # initialize rs1
li x7, 0xa55e1e55062307b1 # initialize rs2
bset x14, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x1, 0x56f8cf6ceb429c74 # initialize rs1
li x10, 0x93a65fd0af0286ac # initialize rs2
bset x15, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x2, 0x7765ad21c8575f36 # initialize rs1
li x20, 0xd8448130d8975362 # initialize rs2
bset x16, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x21, 0x8be63601370c8a9d # initialize rs1
li x22, 0x816e9280175c7bf7 # initialize rs2
bset x17, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x1, 0x19be670c7b886022 # initialize rs1
li x21, 0x9cf3c060e80fe0ad # initialize rs2
bset x18, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x14, 0x857e096f730509d0 # initialize rs1
li x29, 0x29e6447ef53ba5a2 # initialize rs2
bset x19, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x2, 0xf52637b28ded0210 # initialize rs1
li x28, 0x83a2c6a679505f5d # initialize rs2
bset x20, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x3, 0x22212a1f66b0bdc7 # initialize rs1
li x2, 0x5d76b05a5dc8e4a0 # initialize rs2
bset x21, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x17, 0xe2544775e22f1a4c # initialize rs1
li x14, 0x40a532f056d1e760 # initialize rs2
bset x22, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x19, 0xd120b66cd6e8bf87 # initialize rs1
li x24, 0x3a504ed2ef38a883 # initialize rs2
bset x23, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0x6648f35d7609e460 # initialize rs1
li x23, 0xe29e45b4243cec0c # initialize rs2
bset x24, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x20, 0xccc0a8afce3c2573 # initialize rs1
li x16, 0xbaaf9ceaea743f51 # initialize rs2
bset x25, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x12, 0xf7140a2b051cea5f # initialize rs1
li x17, 0x60031a4242c6fd3c # initialize rs2
bset x26, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x16, 0x13f1c7be882ce325 # initialize rs1
li x17, 0x77940eab407cc91f # initialize rs2
bset x27, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x8, 0xc4059d4eb730e9fe # initialize rs1
li x23, 0x8c1aa0b3d2be4b67 # initialize rs2
bset x28, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x1, 0x7403fb0a739c8828 # initialize rs1
li x3, 0x1345312402098f5b # initialize rs2
bset x29, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x17, 0x778ccb2722c07170 # initialize rs1
li x20, 0xa716d10c5adb0b28 # initialize rs2
bset x30, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x10, 0x5d3ad6203f8f4eee # initialize rs1
li x28, 0x0187c67d15e08556 # initialize rs2
bset x31, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x31, 0x0000000000000000 # initialize rs1
li x2, 0x8d45bf1b7be9dbf9 # initialize rs2
bset x1, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x3, 0x0000000000000001 # initialize rs1
li x6, 0x90487050f33bad15 # initialize rs2
bset x26, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x5, 0x0000000000000002 # initialize rs1
li x27, 0x1a27329f058db9c4 # initialize rs2
bset x29, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x1, 0x8000000000000000 # initialize rs1
li x12, 0x7107acb716518fd1 # initialize rs2
bset x6, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x23, 0x8000000000000001 # initialize rs1
li x28, 0xa501935b7f494290 # initialize rs2
bset x10, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x3, 0x7fffffffffffffff # initialize rs1
li x22, 0xd54f82ab3836a20c # initialize rs2
bset x8, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x13, 0x7ffffffffffffffe # initialize rs1
li x2, 0x88b74483eabc9ed3 # initialize rs2
bset x25, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs1
li x15, 0x4876a1e651d77240 # initialize rs2
bset x12, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x29, 0xfffffffffffffffe # initialize rs1
li x25, 0xcd18caf915d4f886 # initialize rs2
bset x14, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0xd2f49fca37dd4a23 # initialize rs2
bset x22, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x9169a1a6ad860d18 # initialize rs2
bset x17, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x27, 0x5555555555555555 # initialize rs1
li x8, 0xc0622b4005f09e7b # initialize rs2
bset x16, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x1, 0x00000000ffffffff # initialize rs1
li x24, 0x86d2569d12c1513d # initialize rs2
bset x14, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0x00000000fffffffe # initialize rs1
li x3, 0x0cb777f15a993b69 # initialize rs2
bset x29, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x21, 0x0000000100000000 # initialize rs1
li x17, 0xc51e19ce195b1e4d # initialize rs2
bset x16, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x20, 0x0000000100000001 # initialize rs1
li x19, 0xbbfeda92eefcf785 # initialize rs2
bset x23, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x7, 0xdc7c410555625c04 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
bset x10, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x29, 0x64239606d12db61b # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
bset x10, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x26, 0xcde302e2633e0394 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bset x1, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x8, 0x7450148e5f25cb59 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
bset x16, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x3, 0xcea766af634f1c17 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
bset x25, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x23, 0xb4758e2810e638d8 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
bset x2, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x14, 0x314032d4fca09ed5 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
bset x5, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x16, 0x63638fa79bb5642c # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
bset x2, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x1, 0xa93d310942a8ab57 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bset x8, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x27, 0xb0f2b0a61a6e73a3 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
bset x29, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xa3ecc742d2308de1 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x2, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x19, 0xd237177851628f89 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
bset x12, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x7, 0x7063f8cc71c9abb7 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
bset x10, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x12, 0x6e8d99ce1fef66ae # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
bset x31, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x30, 0x39b2f46770aae9ac # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
bset x15, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x10, 0xf39d9f63934cf3ad # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
bset x7, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x27, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
bset x6, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x15, 0x0000000000000000 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
bset x13, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x21, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
bset x24, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x28, 0x0000000000000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bset x14, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x14, 0x0000000000000000 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
bset x31, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000000000000 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
bset x22, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x9, 0x0000000000000000 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
bset x12, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x6, 0x0000000000000000 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
bset x1, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000000000000 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
bset x26, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x13, 0x0000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
bset x12, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0000000000000000 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x25, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x23, 0x0000000000000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
bset x7, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x7, 0x0000000000000000 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
bset x26, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x9, 0x0000000000000000 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bset x16, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x12, 0x0000000000000000 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
bset x29, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x1, 0x0000000000000000 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bset x2, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x15, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
bset x6, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x22, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bset x14, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x6, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
bset x13, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x2, 0x0000000000000001 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
bset x15, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x2, 0x0000000000000001 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
bset x17, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x18, 0x0000000000000001 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
bset x13, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000000000001 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
bset x18, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x28, 0x0000000000000001 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bset x23, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000000000001 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
bset x7, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x26, 0x0000000000000001 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
bset x29, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000000000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x7, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x29, 0x0000000000000001 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bset x7, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x1, 0x0000000000000001 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
bset x31, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x29, 0x0000000000000001 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
bset x17, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x6, 0x0000000000000001 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
bset x5, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x5, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bset x7, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x28, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
bset x14, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x29, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
bset x19, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x23, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bset x31, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x5, 0x0000000000000002 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
bset x11, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x14, 0x0000000000000002 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bset x13, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x30, 0x0000000000000002 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
bset x3, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x2, 0x0000000000000002 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
bset x25, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x29, 0x0000000000000002 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
bset x9, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000000000002 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
bset x10, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000000000002 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
bset x23, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x0000000000000002 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x27, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x9, 0x0000000000000002 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
bset x31, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x9, 0x0000000000000002 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bset x21, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x13, 0x0000000000000002 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
bset x20, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x2, 0x0000000000000002 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
bset x12, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x30, 0x0000000000000002 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
bset x25, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x19, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
bset x30, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x27, 0x8000000000000000 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
bset x22, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x3, 0x8000000000000000 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bset x17, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x18, 0x8000000000000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
bset x14, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x30, 0x8000000000000000 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
bset x3, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x23, 0x8000000000000000 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
bset x31, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x27, 0x8000000000000000 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bset x17, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x5, 0x8000000000000000 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
bset x8, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x14, 0x8000000000000000 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bset x23, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x21, 0x8000000000000000 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
bset x15, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x8000000000000000 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x22, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x15, 0x8000000000000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
bset x7, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x9, 0x8000000000000000 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
bset x6, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x7, 0x8000000000000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
bset x25, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x21, 0x8000000000000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
bset x16, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x13, 0x8000000000000000 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bset x19, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x24, 0x8000000000000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bset x30, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x3, 0x8000000000000001 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
bset x15, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x19, 0x8000000000000001 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
bset x26, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x27, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
bset x18, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x20, 0x8000000000000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
bset x26, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x22, 0x8000000000000001 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bset x20, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x19, 0x8000000000000001 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
bset x3, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x30, 0x8000000000000001 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
bset x10, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x25, 0x8000000000000001 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
bset x18, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x15, 0x8000000000000001 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
bset x24, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x8000000000000001 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x10, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x17, 0x8000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
bset x10, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x24, 0x8000000000000001 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
bset x30, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x27, 0x8000000000000001 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
bset x11, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x17, 0x8000000000000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bset x22, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x8, 0x8000000000000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
bset x22, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x21, 0x7fffffffffffffff # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
bset x3, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x29, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
bset x30, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x26, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
bset x8, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x17, 0x7fffffffffffffff # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
bset x22, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x25, 0x7fffffffffffffff # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
bset x20, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
bset x2, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x7, 0x7fffffffffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bset x9, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x29, 0x7fffffffffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bset x22, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x3, 0x7fffffffffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
bset x23, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x6, 0x7fffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
bset x10, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x7fffffffffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x25, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x9, 0x7fffffffffffffff # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
bset x2, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
bset x25, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x22, 0x7fffffffffffffff # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
bset x28, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x14, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
bset x17, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x24, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
bset x1, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x17, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
bset x25, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x16, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
bset x23, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x29, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
bset x24, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x14, 0x7ffffffffffffffe # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bset x24, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x14, 0x7ffffffffffffffe # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
bset x10, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x3, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
bset x13, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x23, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bset x26, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x14, 0x7ffffffffffffffe # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
bset x7, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x1, 0x7ffffffffffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
bset x28, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x13, 0x7ffffffffffffffe # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
bset x6, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x7ffffffffffffffe # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x27, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x31, 0x7ffffffffffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
bset x29, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x16, 0x7ffffffffffffffe # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bset x28, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
bset x5, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x14, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
bset x24, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x22, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
bset x3, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x19, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
bset x6, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x26, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
bset x25, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x5, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bset x1, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x24, 0xffffffffffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bset x3, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x29, 0xffffffffffffffff # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
bset x16, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x25, 0xffffffffffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
bset x28, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x2, 0xffffffffffffffff # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
bset x3, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bset x19, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x22, 0xffffffffffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
bset x1, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x25, 0xffffffffffffffff # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
bset x19, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xffffffffffffffff # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x23, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x24, 0xffffffffffffffff # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
bset x31, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x30, 0xffffffffffffffff # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
bset x11, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x17, 0xffffffffffffffff # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bset x11, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x21, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
bset x1, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x16, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
bset x26, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x27, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bset x31, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x30, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bset x16, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x18, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bset x25, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x21, 0xfffffffffffffffe # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
bset x12, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x30, 0xfffffffffffffffe # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
bset x1, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bset x7, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bset x27, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x13, 0xfffffffffffffffe # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
bset x22, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
bset x29, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x8, 0xfffffffffffffffe # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
bset x25, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0xfffffffffffffffe # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x22, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x19, 0xfffffffffffffffe # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
bset x20, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x27, 0xfffffffffffffffe # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
bset x6, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x3, 0xfffffffffffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
bset x26, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x28, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
bset x14, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x16, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
bset x2, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bset x13, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
bset x1, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bset x25, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
bset x17, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
bset x23, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
bset x2, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bset x31, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
bset x31, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
bset x3, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
bset x29, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x23, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bset x5, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bset x31, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
bset x15, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
bset x7, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
bset x8, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
bset x14, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
bset x5, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
bset x31, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
bset x28, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
bset x28, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bset x26, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bset x3, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bset x23, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
bset x1, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
bset x12, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x1, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
bset x16, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
bset x26, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
bset x11, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
bset x18, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bset x2, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x17, 0x5555555555555555 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
bset x29, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x5, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bset x25, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x1, 0x5555555555555555 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bset x26, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x15, 0x5555555555555555 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
bset x14, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x29, 0x5555555555555555 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
bset x8, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x22, 0x5555555555555555 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
bset x1, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x26, 0x5555555555555555 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bset x11, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bset x8, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x6, 0x5555555555555555 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
bset x21, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x20, 0x5555555555555555 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
bset x15, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x5555555555555555 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x31, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x31, 0x5555555555555555 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
bset x27, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x19, 0x5555555555555555 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
bset x21, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x11, 0x5555555555555555 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
bset x15, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x17, 0x5555555555555555 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
bset x20, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x16, 0x5555555555555555 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bset x30, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x8, 0x00000000ffffffff # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bset x16, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x7, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bset x10, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x23, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
bset x27, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x16, 0x00000000ffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bset x6, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x31, 0x00000000ffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bset x7, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x16, 0x00000000ffffffff # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
bset x11, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0x00000000ffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bset x14, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x2, 0x00000000ffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
bset x23, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x30, 0x00000000ffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
bset x13, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x20, 0x00000000ffffffff # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
bset x1, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x00000000ffffffff # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x31, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x1, 0x00000000ffffffff # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bset x24, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
bset x6, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x14, 0x00000000ffffffff # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
bset x18, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x1, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
bset x27, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x14, 0x00000000ffffffff # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
bset x11, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x27, 0x00000000fffffffe # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
bset x11, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x13, 0x00000000fffffffe # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
bset x10, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x19, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
bset x12, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x25, 0x00000000fffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
bset x1, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x25, 0x00000000fffffffe # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
bset x2, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x6, 0x00000000fffffffe # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
bset x10, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bset x30, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x28, 0x00000000fffffffe # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bset x25, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
bset x22, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x1, 0x00000000fffffffe # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
bset x3, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x00000000fffffffe # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x20, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x2, 0x00000000fffffffe # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
bset x23, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x27, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
bset x16, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
bset x6, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x6, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
bset x10, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x14, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
bset x3, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x9, 0x0000000100000000 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
bset x14, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x6, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
bset x9, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x29, 0x0000000100000000 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bset x18, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x18, 0x0000000100000000 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
bset x15, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x8, 0x0000000100000000 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
bset x25, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x23, 0x0000000100000000 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
bset x12, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x0000000100000000 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bset x14, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x18, 0x0000000100000000 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
bset x9, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x2, 0x0000000100000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
bset x3, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000100000000 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
bset x8, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x0000000100000000 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x5, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x6, 0x0000000100000000 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bset x10, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x30, 0x0000000100000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
bset x28, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x29, 0x0000000100000000 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
bset x26, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x18, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
bset x8, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x25, 0x0000000100000000 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bset x16, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x18, 0x0000000100000001 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
bset x6, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x15, 0x0000000100000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
bset x21, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x11, 0x0000000100000001 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
bset x9, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x29, 0x0000000100000001 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
bset x2, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x2, 0x0000000100000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
bset x24, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x10, 0x0000000100000001 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
bset x23, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000100000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
bset x13, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x20, 0x0000000100000001 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bset x15, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x28, 0x0000000100000001 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bset x17, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x9, 0x0000000100000001 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
bset x23, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000100000001 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x18, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x23, 0x0000000100000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
bset x9, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
bset x28, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x26, 0x0000000100000001 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
bset x13, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x5, 0x0000000100000001 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
bset x7, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x10, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bset x15, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xb7957631cbe07ff4 # initialize rs1
li x0, 0xa505bfd960f3ae0c # initialize rs2
bset x11, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x6e02ad73c00e07d9 # initialize rs1
li x1, 0xddfb019cabbc5612 # initialize rs2
bset x29, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x578601259dabe7e5 # initialize rs1
li x2, 0x630923cd5e50db2b # initialize rs2
bset x7, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x57e1d5d6bce584b5 # initialize rs1
li x3, 0x0e16f0a655377b3d # initialize rs2
bset x29, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x47392392f7996b64 # initialize rs1
li x4, 0xecc074eefd6e6b2b # initialize rs2
bset x18, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x99e8bc1e041d570c # initialize rs1
li x5, 0x9d3fcb378913a13a # initialize rs2
bset x2, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x67c45d10a82d8062 # initialize rs1
li x6, 0xd646944a68a99f91 # initialize rs2
bset x1, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x1, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfa6dbeb1b64f8d85 # initialize rs1
li x7, 0x3570d6829b242330 # initialize rs2
bset x11, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xdaa77d83708f8a1e # initialize rs1
li x8, 0x106a2eb2c923b3a8 # initialize rs2
bset x21, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x26ec47c27d70a119 # initialize rs1
li x9, 0x9b73401dc3b27fe9 # initialize rs2
bset x13, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xd415dd98acfb8486 # initialize rs1
li x10, 0xc4596142781c30e4 # initialize rs2
bset x5, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x7d39ac3cbeff87d2 # initialize rs1
li x11, 0xbc66625b7fab8bca # initialize rs2
bset x26, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x3bf5e0c436c6ac24 # initialize rs1
li x12, 0x04d9152b90eb81ee # initialize rs2
bset x24, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x0cdf49e76396fa12 # initialize rs1
li x13, 0xf8313d2eb9ec59fc # initialize rs2
bset x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x5b1b06ddd532eb02 # initialize rs1
li x14, 0x8010a54169e388c5 # initialize rs2
bset x28, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x1ff1fe76ae30159d # initialize rs1
li x15, 0x16e818c974ee2b74 # initialize rs2
bset x24, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xa761e75c3e2c9be7 # initialize rs1
li x16, 0x1d70fe6ace9e5e14 # initialize rs2
bset x18, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x3ff5b5b130695550 # initialize rs1
li x17, 0xd12c2b8a192a7d7e # initialize rs2
bset x21, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xb19047b968c9043a # initialize rs1
li x18, 0x5d9464059af54788 # initialize rs2
bset x3, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x354b1e6cdf550a3e # initialize rs1
li x19, 0x74bf3fe8f69bfc1a # initialize rs2
bset x5, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xee3e8599fc5be268 # initialize rs1
li x20, 0x83b30ba2984733e7 # initialize rs2
bset x26, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xd385ccc83dda55b7 # initialize rs1
li x21, 0x39858123c943cfb7 # initialize rs2
bset x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xb2e8c9dd38846f08 # initialize rs1
li x22, 0xbb2fef67aae6b1f5 # initialize rs2
bset x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x897740b3053e9589 # initialize rs1
li x23, 0x851bdab8711e37c9 # initialize rs2
bset x16, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x9d97041b870d2202 # initialize rs1
li x24, 0xc238b5b0e0adb73b # initialize rs2
bset x17, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x830509147fe8f675 # initialize rs1
li x25, 0x233568f70c4a85b3 # initialize rs2
bset x23, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xeaad1b2985b0054a # initialize rs1
li x26, 0x4a09f88e8b567bb5 # initialize rs2
bset x8, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xdcf3795582773c88 # initialize rs1
li x27, 0x47d93276c6882676 # initialize rs2
bset x19, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xa8a3f64fe6456dd8 # initialize rs1
li x28, 0xa139093e5a39170e # initialize rs2
bset x21, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x88fa8aaab325575f # initialize rs1
li x29, 0x8398ef6012a54553 # initialize rs2
bset x30, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xf103c71f44345ea6 # initialize rs1
li x30, 0xece5f3603135469e # initialize rs2
bset x2, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xee84ffa356af96f7 # initialize rs1
li x31, 0xcba0e89799065b13 # initialize rs2
bset x1, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x8c55c28bb1c043fa # initialize rs1
li x14, 0x8b5493bf0e6ec09e # initialize rs2
bset x0, x0, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x3830e81ea8a78d19 # initialize rs1
li x30, 0xb129b0cc3972d5d0 # initialize rs2
bset x1, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xbff5c0b2fb1f03cb # initialize rs1
li x18, 0x14e678943fdf23ae # initialize rs2
bset x2, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x5154cab26c1250fa # initialize rs1
li x12, 0x43edba667c354d80 # initialize rs2
bset x3, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5fb06675ca1fbb23 # initialize rs1
li x13, 0x93f8d9d887f30276 # initialize rs2
bset x4, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbaacf4b86dfbef50 # initialize rs1
li x23, 0x2f3c4536d7a59e29 # initialize rs2
bset x5, x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbe181dea598f7247 # initialize rs1
li x22, 0xa757422713c5baf5 # initialize rs2
bset x6, x6, x22 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5974fea5d701d023 # initialize rs1
li x9, 0xe1c6bf3b942bbe47 # initialize rs2
bset x7, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xe8eac5b34729532b # initialize rs1
li x9, 0xb8c1d97140622825 # initialize rs2
bset x8, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x41452440b6fcd77a # initialize rs1
li x31, 0xfc80da476ce7aeec # initialize rs2
bset x9, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x5feedb7baa9b24df # initialize rs1
li x27, 0xe8e27fcf19b345e8 # initialize rs2
bset x10, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x1460164fc29edb35 # initialize rs1
li x24, 0xcc153163af8834e0 # initialize rs2
bset x11, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x61c3b73013372e77 # initialize rs1
li x18, 0xaade0422a1d548ac # initialize rs2
bset x12, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x2b6dab1698746ccc # initialize rs1
li x29, 0xcb0f4efdd4f67da7 # initialize rs2
bset x13, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xee75ecf62a83705f # initialize rs1
li x16, 0x237110965197b9e3 # initialize rs2
bset x14, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x74a91fe83bbc8fcf # initialize rs1
li x3, 0xae24582a4f7d36e8 # initialize rs2
bset x15, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xe273186763693da7 # initialize rs1
li x8, 0x26f3c79585fc2e79 # initialize rs2
bset x16, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xde557fbe1ff1fc06 # initialize rs1
li x31, 0xe68f88d5b12e1d4b # initialize rs2
bset x17, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xb165c7ee60a8e246 # initialize rs1
li x14, 0xcdbbefd2ddc3c360 # initialize rs2
bset x18, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xd690b65c0965df41 # initialize rs1
li x17, 0xcdb3204816356974 # initialize rs2
bset x19, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x34610d953fb1cf7b # initialize rs1
li x2, 0x1a4c43eaef9ecc32 # initialize rs2
bset x20, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x3bfaec8ffa44d967 # initialize rs1
li x31, 0x35e6f3d1bc26f2ed # initialize rs2
bset x21, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x72b8cd497c2c7a12 # initialize rs1
li x24, 0x86cfc04ee4513d20 # initialize rs2
bset x22, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xaaa7d830d15ad60f # initialize rs1
li x10, 0xf1d8dc6181c2f034 # initialize rs2
bset x23, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x2f659879c038ccd8 # initialize rs1
li x21, 0xba68814243467647 # initialize rs2
bset x24, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x8ed57393234d2eaa # initialize rs1
li x18, 0xb30da2f4eeb9339a # initialize rs2
bset x25, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x2d1d966a9394f070 # initialize rs1
li x15, 0x3d803ab332811a09 # initialize rs2
bset x26, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xddb358ef09e74e5c # initialize rs1
li x22, 0xf3fe663eb40b8881 # initialize rs2
bset x27, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x32b53347e7c35f46 # initialize rs1
li x27, 0xf0ae88441f693375 # initialize rs2
bset x28, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf067fbbe0b5fa97a # initialize rs1
li x8, 0xa9038d0ca9ad93a1 # initialize rs2
bset x29, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xc10fbf22f122f384 # initialize rs1
li x18, 0xc9c9e810cff0eb13 # initialize rs2
bset x30, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x2f6a6f5380d2f54c # initialize rs1
li x10, 0xe700f9fb7b25661c # initialize rs2
bset x31, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x25, 0x459b00bb997191e2 # initialize rs1
li x0, 0xbbbbe5c317916909 # initialize rs2
bset x0, x25, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x29, 0x1e1fa1a18f62e36b # initialize rs1
li x1, 0xa19565c385ae29c0 # initialize rs2
bset x1, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x29, 0x710cb9c5b543afd3 # initialize rs1
li x2, 0xf462de29339e21a4 # initialize rs2
bset x2, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x15, 0xcec3c992283268c8 # initialize rs1
li x3, 0x238e69ea568ec039 # initialize rs2
bset x3, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0x4d6f3b4c333cccb2 # initialize rs1
li x4, 0x76d7589fe81ff807 # initialize rs2
bset x4, x18, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0x2661e50cd2360331 # initialize rs1
li x5, 0x7e512e33da3b5e42 # initialize rs2
bset x5, x30, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0xf5aba350a747a0c6 # initialize rs1
li x6, 0x45603d4040e27de2 # initialize rs2
bset x6, x27, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x14, 0x9b1bbbd8992a186c # initialize rs1
li x7, 0xfe523d94ae212c62 # initialize rs2
bset x7, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x31, 0xab9e955fa0eb0b3d # initialize rs1
li x8, 0x6d2fa2566fc7e013 # initialize rs2
bset x8, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x12, 0xe0eda5d9cbcbe4cc # initialize rs1
li x9, 0x6e6d38fc0a0a256d # initialize rs2
bset x9, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x11, 0xec855d62a1d3d192 # initialize rs1
li x10, 0xcdf71b5287d93e96 # initialize rs2
bset x10, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x3, 0xd37457801d9be11c # initialize rs1
li x11, 0x6c02cdfc35e8707a # initialize rs2
bset x11, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x3, 0x30e8e0b20b679386 # initialize rs1
li x12, 0x350bb706e9c3299f # initialize rs2
bset x12, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x12, 0x15a74e5f7b1bfef6 # initialize rs1
li x13, 0xbe2fe4347d04b6f2 # initialize rs2
bset x13, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x18, 0x46a8777c7e783e71 # initialize rs1
li x14, 0x50c649ee85886922 # initialize rs2
bset x14, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x8, 0xcafec1356b5c0ae9 # initialize rs1
li x15, 0x9dd7161202074098 # initialize rs2
bset x15, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x24, 0x1eb8337e0543f1a7 # initialize rs1
li x16, 0x10316783c7823036 # initialize rs2
bset x16, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x23, 0x3123e5004e5f3a03 # initialize rs1
li x17, 0x872aeab0163f9643 # initialize rs2
bset x17, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x5, 0xe3b8b95a294d0cc1 # initialize rs1
li x18, 0xeb09c786636aedd1 # initialize rs2
bset x18, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x26, 0xd9839e8379046d19 # initialize rs1
li x19, 0x58771833f29920dc # initialize rs2
bset x19, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x24, 0x872529ea146e1134 # initialize rs1
li x20, 0x203eb7e1aa8aa645 # initialize rs2
bset x20, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x3, 0xbd0c6ef8d2466b50 # initialize rs1
li x21, 0x7db2fa02e10757a7 # initialize rs2
bset x21, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x12, 0xe5c60665fc84c3ca # initialize rs1
li x22, 0xb3f54ea6006fbbb6 # initialize rs2
bset x22, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x15, 0xa0c3757a26faecd3 # initialize rs1
li x23, 0x79fc6573196ab4c0 # initialize rs2
bset x23, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x8, 0x1953c731fc9e5cf5 # initialize rs1
li x24, 0x0221b1c1501fdd76 # initialize rs2
bset x24, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x17, 0xf2dff3ee95d0fe93 # initialize rs1
li x25, 0x9ad3dab3bdb12afe # initialize rs2
bset x25, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x31, 0x2ad431acbabc87e8 # initialize rs1
li x26, 0xa053eade6eb29e66 # initialize rs2
bset x26, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x5, 0x71319cb9df3adbab # initialize rs1
li x27, 0x6ab5340a32ecc248 # initialize rs2
bset x27, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x22, 0x89656d93566b127f # initialize rs1
li x28, 0x44b71ded7dd4a1e3 # initialize rs2
bset x28, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x15, 0x086185d0f86de3d4 # initialize rs1
li x29, 0x517d99002bfa4121 # initialize rs2
bset x29, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x16, 0x9fa76f2cd0caf014 # initialize rs1
li x30, 0x9d76a448998ef3b6 # initialize rs2
bset x30, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x28, 0x0ead3ea76d3f47cb # initialize rs1
li x31, 0x368a0994d436767b # initialize rs2
bset x31, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xc28848557802fdf2 # initialize rs1
li x0, 0x694db8dbe1f7580d # initialize rs2
bset x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xb435854bfab4c448 # initialize rs1
li x1, 0x789d9040a3d7b7c1 # initialize rs2
bset x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x53f38d48a224e3e6 # initialize rs1
li x2, 0x38f1900fc7741e03 # initialize rs2
bset x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x46e2de442de4e932 # initialize rs1
li x3, 0x690d5fef1bcfef01 # initialize rs2
bset x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x64eafca9cbeae25d # initialize rs1
li x4, 0x7edf95104cb7991f # initialize rs2
bset x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf378f35d2127a63a # initialize rs1
li x5, 0xd7e68ddef647356f # initialize rs2
bset x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc963c295641d7e9b # initialize rs1
li x6, 0xfcc692a05d54c793 # initialize rs2
bset x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7f4a1d0ec83b0fe3 # initialize rs1
li x7, 0xf0b67fd013504c87 # initialize rs2
bset x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x6be10159cb60ab2e # initialize rs1
li x8, 0xa3a61489364cc8b7 # initialize rs2
bset x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xb316727f57458484 # initialize rs1
li x9, 0x8a55f68eed8992ac # initialize rs2
bset x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x9ce701b5157c9bf3 # initialize rs1
li x10, 0xd216197f07291195 # initialize rs2
bset x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x2dd062ee47c2c77c # initialize rs1
li x11, 0x15f5540b6a06d794 # initialize rs2
bset x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x12cdd7bbd562e173 # initialize rs1
li x12, 0x2bfff18c3d15e580 # initialize rs2
bset x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xad3ea02ed54d6520 # initialize rs1
li x13, 0x553cd163556d2474 # initialize rs2
bset x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x73d37271ecdb8d64 # initialize rs1
li x14, 0x944b8eff2eb9049b # initialize rs2
bset x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xff238096eb60c4d1 # initialize rs1
li x15, 0xcd9e183cd7d2c8a1 # initialize rs2
bset x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xedcee05b3bbc204c # initialize rs1
li x16, 0x8f1dbd1d568226a5 # initialize rs2
bset x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xa029e0b9adbf8951 # initialize rs1
li x17, 0xc3e5e4974225d045 # initialize rs2
bset x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x729ab93c2f007b2f # initialize rs1
li x18, 0xe64c1226c3a8ddd6 # initialize rs2
bset x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x7cbdee46985cd745 # initialize rs1
li x19, 0x6b1d406ce71573e4 # initialize rs2
bset x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x8cec5e5a99844c6a # initialize rs1
li x20, 0x7e3b9ecf4c142995 # initialize rs2
bset x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x19825496a2d60544 # initialize rs1
li x21, 0xfcff4765aac81129 # initialize rs2
bset x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x83bea238cf71f2ca # initialize rs1
li x22, 0xd37cbc9d4b50e0bd # initialize rs2
bset x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x5f554415fbeca821 # initialize rs1
li x23, 0x99be0fe4e5bff610 # initialize rs2
bset x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xf34aae4124dfe478 # initialize rs1
li x24, 0xed0b4d2536b137d0 # initialize rs2
bset x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x625de6e42ee68f1b # initialize rs1
li x25, 0x6013dd96dbdf35cc # initialize rs2
bset x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x91a6aeddb9f628fb # initialize rs1
li x26, 0x4ec5173e4179495a # initialize rs2
bset x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x67608a22bb9524c0 # initialize rs1
li x27, 0x5da2217378d4bb89 # initialize rs2
bset x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xc8638230ab845bf0 # initialize rs1
li x28, 0x3e804f9cd471df15 # initialize rs2
bset x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x56406a650b1373bd # initialize rs1
li x29, 0x10583732a8f2e41c # initialize rs2
bset x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x067c10a9a74d7000 # initialize rs1
li x30, 0x271894db7d57395b # initialize rs2
bset x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x4cf7467872c611c1 # initialize rs1
li x31, 0x6738d6434ad390dc # initialize rs2
bset x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x31, x8 # perform first operation
bset x29, x28, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x11, x10 # perform first operation
bset x18, x29, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x13, x27 # perform first operation
bset x6, x8, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x3, x14 # perform first operation
bset x3, x22, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x19, x26 # perform first operation
bset x26, x10, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x14, x13 # perform first operation
bset x2, x21, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x15, x28 # perform first operation
bset x26, x27, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x21, x14 # perform first operation
bset x26, x15, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x12, x29 # perform first operation
bset x11, x22, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x16, x3 # perform first operation
bset x16, x15, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x13, x20 # perform first operation
bset x20, x9, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x14, x12 # perform first operation
bset x1, x24, x8 # perform second (triggering) operation

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
