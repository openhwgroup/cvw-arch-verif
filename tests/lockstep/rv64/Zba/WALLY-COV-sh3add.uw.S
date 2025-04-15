///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zba/WALLY-COV-sh3add.uw.S
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
li x0, 0x40c23f8cc02c6bcf # initialize rs1
li x14, 0xf6225db6ed99ef08 # initialize rs2
sh3add.uw x9, x0, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x8ad418ad516fe799 # initialize rs1
li x17, 0x9e5fb53e164baba3 # initialize rs2
sh3add.uw x26, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x2f32eecbd79b7b20 # initialize rs1
li x24, 0x69f4896d1f76c2ef # initialize rs2
sh3add.uw x18, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xa19e95a494a2f9e1 # initialize rs1
li x12, 0x485f8eaa8c6ff439 # initialize rs2
sh3add.uw x21, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x267db1cb04454913 # initialize rs1
li x28, 0xd9558a0fa032420b # initialize rs2
sh3add.uw x19, x4, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x522785b0f2407b76 # initialize rs1
li x2, 0x1bad021b4eba09a9 # initialize rs2
sh3add.uw x24, x5, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3b2f180543055554 # initialize rs1
li x31, 0x7e5b8ce9b7a7a2c1 # initialize rs2
sh3add.uw x23, x6, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x23, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x014ae445d9f63990 # initialize rs1
li x31, 0x7324b0aa63678308 # initialize rs2
sh3add.uw x17, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xdc8420ba0070b5d0 # initialize rs1
li x13, 0xf67797aeb88f3fd5 # initialize rs2
sh3add.uw x16, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x84f337b92071bd47 # initialize rs1
li x8, 0xa18f9b76c629882e # initialize rs2
sh3add.uw x15, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x2d2ca63c263fd90a # initialize rs1
li x7, 0x24676882f087bfae # initialize rs2
sh3add.uw x13, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xeb011c43f1f56f01 # initialize rs1
li x25, 0x68e130c292684089 # initialize rs2
sh3add.uw x20, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x10edb4651cfb7e47 # initialize rs1
li x30, 0x7b0d90e947ba441e # initialize rs2
sh3add.uw x18, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x9a3e580b26838799 # initialize rs1
li x22, 0x8967bbd0102b61cc # initialize rs2
sh3add.uw x24, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x9225474cdd839703 # initialize rs1
li x30, 0xf7638122d2fca021 # initialize rs2
sh3add.uw x13, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xf12cd3aff4759310 # initialize rs1
li x1, 0x14dabeb7c5b35ab6 # initialize rs2
sh3add.uw x6, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x2bb237c8bdc53d1a # initialize rs1
li x7, 0xd7f211d2062acd57 # initialize rs2
sh3add.uw x17, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe16815b534ee18e5 # initialize rs1
li x11, 0x01c2f4796d95cf8d # initialize rs2
sh3add.uw x19, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x6d8e813d112d8cea # initialize rs1
li x5, 0x75830a8f63513f5a # initialize rs2
sh3add.uw x31, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x907173f053a14ff2 # initialize rs1
li x28, 0xf1717393871eb92a # initialize rs2
sh3add.uw x20, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x7dd3cb8ecbc22aa9 # initialize rs1
li x12, 0x960ce8449725154b # initialize rs2
sh3add.uw x9, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x7b26fe60c4ed79c8 # initialize rs1
li x31, 0x985f531f7b2df079 # initialize rs2
sh3add.uw x3, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xa476e439fc3f247e # initialize rs1
li x18, 0x36f6dec7c713d8a3 # initialize rs2
sh3add.uw x28, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xbe5f1849f19079f3 # initialize rs1
li x19, 0x3974b71bc0dcaf0b # initialize rs2
sh3add.uw x22, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xea219bae27da0971 # initialize rs1
li x12, 0xe5974bd6e5157b84 # initialize rs2
sh3add.uw x9, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x0fe0b81b4a5bcc8f # initialize rs1
li x23, 0xb4f0132de75b8757 # initialize rs2
sh3add.uw x1, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x55f747e574f603d0 # initialize rs1
li x29, 0x18f1e5e9c5156844 # initialize rs2
sh3add.uw x18, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x99f15384e0b7c5ca # initialize rs1
li x3, 0xa5cbd0ae95ee2c49 # initialize rs2
sh3add.uw x14, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x58d407aad9f6296f # initialize rs1
li x3, 0x0538049ae2778660 # initialize rs2
sh3add.uw x21, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xdd024b96da304466 # initialize rs1
li x7, 0x8e3c2e153ba3804a # initialize rs2
sh3add.uw x9, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x39ef5404619fe331 # initialize rs1
li x10, 0x8df8ac4f4954104b # initialize rs2
sh3add.uw x25, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x8ed33604ea4229fe # initialize rs1
li x13, 0xe9f11e4947261158 # initialize rs2
sh3add.uw x1, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x31, 0x117ec7dd97eaf3c1 # initialize rs1
li x0, 0xd688b77f88cc2d1a # initialize rs2
sh3add.uw x23, x31, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x28, 0x3d14bce0442f5cf9 # initialize rs1
li x1, 0x56edc31189cb72dd # initialize rs2
sh3add.uw x16, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x28, 0xe3862e3cbe615645 # initialize rs1
li x2, 0xb5aec0f4f200684a # initialize rs2
sh3add.uw x11, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x15, 0xaf1c2438cade1809 # initialize rs1
li x3, 0x7ee8e68dee19783e # initialize rs2
sh3add.uw x26, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0xcd23d1b4beed602e # initialize rs1
li x4, 0xe1e1a6c8ef7c82ef # initialize rs2
sh3add.uw x17, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0xefdc16394a3c7025 # initialize rs1
li x5, 0x2b92dcdfbc830255 # initialize rs2
sh3add.uw x14, x24, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0xba1ca12c8fb1daa8 # initialize rs1
li x6, 0x3417e4abcfe4e567 # initialize rs2
sh3add.uw x30, x25, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0x22bc0a42a22c918a # initialize rs1
li x7, 0x9073c1f1cd4b246c # initialize rs2
sh3add.uw x22, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x12, 0x1fe712e83d817a2a # initialize rs1
li x8, 0xbeb184af683d537e # initialize rs2
sh3add.uw x6, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x25, 0xec8bec6b186fef7a # initialize rs1
li x9, 0x612e7ab1af0b0a6d # initialize rs2
sh3add.uw x12, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x27, 0xec2395b695de4609 # initialize rs1
li x10, 0xcdfc4e5cd42fe50b # initialize rs2
sh3add.uw x30, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x27, 0x87833ddebbff6775 # initialize rs1
li x11, 0xb9992ae32543224f # initialize rs2
sh3add.uw x14, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x27, 0x5a3f7f5c05d40b03 # initialize rs1
li x12, 0x814357c856033a52 # initialize rs2
sh3add.uw x10, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x30, 0x4c271b4bf3c45047 # initialize rs1
li x13, 0xf32e755206716887 # initialize rs2
sh3add.uw x11, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x3, 0xddb8641623c7bed3 # initialize rs1
li x14, 0xfa952974fd7e0aba # initialize rs2
sh3add.uw x5, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x29, 0xead6c29a49afd4a3 # initialize rs1
li x15, 0x11585a34bbc8d6c8 # initialize rs2
sh3add.uw x14, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x27, 0xd4123a85230a1514 # initialize rs1
li x16, 0x72b82243bbfdd3e0 # initialize rs2
sh3add.uw x3, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x19, 0xee93a290f5a80f63 # initialize rs1
li x17, 0xbbd0e8356f61774c # initialize rs2
sh3add.uw x12, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x2, 0xeef18a461b88d235 # initialize rs1
li x18, 0x5d5bc16a9ed6cbd6 # initialize rs2
sh3add.uw x28, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x24, 0x4f1464fd87d6abe8 # initialize rs1
li x19, 0x47d8c7e141b9f81d # initialize rs2
sh3add.uw x29, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x29, 0xb580b1243f70d7db # initialize rs1
li x20, 0x3f006da4e4cb2ec3 # initialize rs2
sh3add.uw x12, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x2, 0xe69de568933dc64d # initialize rs1
li x21, 0xd1939544393a0d0f # initialize rs2
sh3add.uw x9, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x28, 0xba80b67d08c5cb84 # initialize rs1
li x22, 0xee5cf70f6b179c00 # initialize rs2
sh3add.uw x7, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x11, 0xb087ad5ec380b62a # initialize rs1
li x23, 0xc448f0424a93e78a # initialize rs2
sh3add.uw x25, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x6, 0x89ba2d20ce8940cd # initialize rs1
li x24, 0x601cc6c9f9b9feb2 # initialize rs2
sh3add.uw x8, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x16, 0xa607d81ad1e6be5c # initialize rs1
li x25, 0x8dcf2339a98b8d2a # initialize rs2
sh3add.uw x28, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x24, 0x86b0b7a399dc7b17 # initialize rs1
li x26, 0x97308ce9ff0508c7 # initialize rs2
sh3add.uw x3, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x23, 0x6f7d4621b292d20d # initialize rs1
li x27, 0xe775f8357a06076d # initialize rs2
sh3add.uw x12, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x18, 0x33f7d65fccba77fd # initialize rs1
li x28, 0x6f066eb0bcf18569 # initialize rs2
sh3add.uw x13, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x10, 0x3c37baf05b4a220c # initialize rs1
li x29, 0xb6b71ded6d0a3757 # initialize rs2
sh3add.uw x26, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x20, 0x6ed6ff60eeec18d0 # initialize rs1
li x30, 0x6fc24c1c4b172ca6 # initialize rs2
sh3add.uw x15, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x12, 0x7e26da2890b8236e # initialize rs1
li x31, 0xbcf4b9f7e222eddf # initialize rs2
sh3add.uw x28, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 504)

# Testcase cp_rd (Test destination rd = x0)
li x19, 0x26e3c597fe248457 # initialize rs1
li x11, 0xd0651a667cecd548 # initialize rs2
sh3add.uw x0, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x11, 0xa4ce4c63718f0edd # initialize rs1
li x10, 0x31f94981e79509db # initialize rs2
sh3add.uw x1, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x14, 0xa2023364e6ee3425 # initialize rs1
li x19, 0xdbe02bdb0a60dda8 # initialize rs2
sh3add.uw x2, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x31, 0x26b4c5e21f7671f2 # initialize rs1
li x11, 0x6980e177dfd85973 # initialize rs2
sh3add.uw x3, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0xcbcef8cf8cdb85a7 # initialize rs1
li x6, 0x49be0785f6ed568b # initialize rs2
sh3add.uw x4, x1, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0x1bfd8405e9c46f79 # initialize rs1
li x9, 0x6e2f6fc65266083f # initialize rs2
sh3add.uw x5, x7, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0xeb57f66768d94199 # initialize rs1
li x23, 0x4225e3a1c459df6d # initialize rs2
sh3add.uw x6, x28, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x36c569baeb6d5581 # initialize rs1
li x17, 0xeca962de8cb65c90 # initialize rs2
sh3add.uw x7, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x23, 0x43e917620e86de2b # initialize rs1
li x13, 0x3c921dd638a2d32c # initialize rs2
sh3add.uw x8, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x2, 0xf902c4aaf2e5c696 # initialize rs1
li x29, 0x0f06f396b79bd5f4 # initialize rs2
sh3add.uw x9, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x5, 0x4cd723acbaef511b # initialize rs1
li x15, 0xce4123733c8fb5f9 # initialize rs2
sh3add.uw x10, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0x7444013756499ba1 # initialize rs1
li x26, 0x8ae2631b7c4e5c0f # initialize rs2
sh3add.uw x11, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x1, 0x275c107e633fba2a # initialize rs1
li x20, 0x39948a936a9a0d91 # initialize rs2
sh3add.uw x12, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x11, 0x06c8a037d1fa8728 # initialize rs1
li x3, 0xbfe6a9d09e6aa16d # initialize rs2
sh3add.uw x13, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x16, 0x4f6e70e291ebcd08 # initialize rs1
li x28, 0x531b5e395d259af8 # initialize rs2
sh3add.uw x14, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x7, 0x0fdf0a6cfb4fa0c8 # initialize rs1
li x19, 0xb9140e99b4901213 # initialize rs2
sh3add.uw x15, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x27, 0x5ce37839a462ac4a # initialize rs1
li x14, 0xbf58b02fd9ee9276 # initialize rs2
sh3add.uw x16, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xda8420738256fe5d # initialize rs1
li x20, 0xe75a0b82eaf53758 # initialize rs2
sh3add.uw x17, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x19, 0x717b2365d84e0d52 # initialize rs1
li x26, 0xb81198e72a5f3cdf # initialize rs2
sh3add.uw x18, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x11, 0xf8a8ef70fb3e2d71 # initialize rs1
li x19, 0x53118e0e030e516b # initialize rs2
sh3add.uw x19, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x11, 0xe85f09322a402fe4 # initialize rs1
li x16, 0xa56b8b92f1c75995 # initialize rs2
sh3add.uw x20, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x6, 0x27b6e0c27a641ac3 # initialize rs1
li x2, 0x898c8fb871bf687f # initialize rs2
sh3add.uw x21, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x8, 0xe6940afe50bdd5e4 # initialize rs1
li x27, 0xd76152cd2c7cd0a4 # initialize rs2
sh3add.uw x22, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x7, 0x03a6347e312a669f # initialize rs1
li x23, 0x9002b9fea4ee4cc3 # initialize rs2
sh3add.uw x23, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x1, 0xbf92e808a7a581ce # initialize rs1
li x11, 0xe18d9c522256eb95 # initialize rs2
sh3add.uw x24, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x5aa2c9d49bf7c0b7 # initialize rs1
li x19, 0xb5704a4f9462feb0 # initialize rs2
sh3add.uw x25, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x9, 0x019adbea73f3eb7d # initialize rs1
li x3, 0xc537fe8aa9751fa1 # initialize rs2
sh3add.uw x26, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x18, 0x2425465a01d02df0 # initialize rs1
li x21, 0x0ad1eab8b9a323b6 # initialize rs2
sh3add.uw x27, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x30, 0x291d60a9a530677d # initialize rs1
li x16, 0x8fb52aa22a13cfce # initialize rs2
sh3add.uw x28, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x22, 0xae5841068713c946 # initialize rs1
li x19, 0x75888f7fcb4ed207 # initialize rs2
sh3add.uw x29, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x27, 0x8ec308b49b501543 # initialize rs1
li x14, 0x1c381995cd1b9676 # initialize rs2
sh3add.uw x30, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x18, 0xdd79123094c39cf5 # initialize rs1
li x22, 0x6a3e28e5d1acd1ae # initialize rs2
sh3add.uw x31, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x0000000000000000 # initialize rs1
li x9, 0x32b07ae6467bb31f # initialize rs2
sh3add.uw x23, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x0000000000000001 # initialize rs1
li x28, 0xb191df5411fbda81 # initialize rs2
sh3add.uw x8, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x10, 0x0000000000000002 # initialize rs1
li x23, 0xb8e481973b7b8026 # initialize rs2
sh3add.uw x13, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x8, 0x8000000000000000 # initialize rs1
li x2, 0x17b8462ba29d70d2 # initialize rs2
sh3add.uw x6, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs1
li x29, 0xaa16101e5c36050b # initialize rs2
sh3add.uw x12, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
li x7, 0xfc2c1365a3d9946a # initialize rs2
sh3add.uw x13, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x20, 0x7ffffffffffffffe # initialize rs1
li x29, 0x5505b714a0385b3e # initialize rs2
sh3add.uw x12, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x2, 0x707c4324ee5040d0 # initialize rs2
sh3add.uw x5, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
li x12, 0x36e36d37b8510fa5 # initialize rs2
sh3add.uw x23, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0xa44aa00b9ae52cfe # initialize rs2
sh3add.uw x29, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8cb02c98c3438a5f # initialize rs2
sh3add.uw x21, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x26, 0x5555555555555555 # initialize rs1
li x22, 0x27fd1761818424f5 # initialize rs2
sh3add.uw x19, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x21, 0xe6fd38f8711b250d # initialize rs2
sh3add.uw x28, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0x00000000fffffffe # initialize rs1
li x28, 0xf5e9f997eeada283 # initialize rs2
sh3add.uw x9, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x23, 0x0000000100000000 # initialize rs1
li x14, 0x62f4701f19fadb3c # initialize rs2
sh3add.uw x24, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x3, 0x0000000100000001 # initialize rs1
li x30, 0x7f2f2521208c3d30 # initialize rs2
sh3add.uw x9, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x29, 0xc2a2ef76ea2eb189 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
sh3add.uw x20, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x22, 0x49c04f7b4208614e # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sh3add.uw x2, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0xd26705801139b287 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
sh3add.uw x9, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x2, 0x52bdf87c252b140c # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
sh3add.uw x28, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x25, 0x51b9510c153e1bbb # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
sh3add.uw x17, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x23, 0x25a592704781fe13 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
sh3add.uw x24, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x13, 0xb84555d7be29cf36 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x8, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x13, 0xdcef08b8dec2535c # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
sh3add.uw x2, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x14, 0x015ceaec4615d682 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sh3add.uw x9, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x19, 0xdb04cb4ef930b334 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x29, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x30, 0xa848acf2cfa1cb73 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x28, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x1, 0x46ce45d7ba9b5374 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sh3add.uw x8, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x17, 0xfa879b903f61cc43 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
sh3add.uw x21, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x8, 0x446c4b46b336e41f # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
sh3add.uw x5, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x29, 0x244f70952a762795 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sh3add.uw x13, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x24, 0x3708a116792a360b # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
sh3add.uw x3, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x5, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sh3add.uw x2, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x3, 0x0000000000000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
sh3add.uw x17, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x20, 0x0000000000000000 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
sh3add.uw x3, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x12, 0x0000000000000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
sh3add.uw x10, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x22, 0x0000000000000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sh3add.uw x5, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x2, 0x0000000000000000 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
sh3add.uw x28, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000000000000 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x15, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x23, 0x0000000000000000 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
sh3add.uw x12, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x8, 0x0000000000000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
sh3add.uw x2, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000000000000 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x10, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x0000000000000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x2, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x10, 0x0000000000000000 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
sh3add.uw x22, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x8, 0x0000000000000000 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
sh3add.uw x22, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x11, 0x0000000000000000 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
sh3add.uw x19, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x25, 0x0000000000000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sh3add.uw x15, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x13, 0x0000000000000000 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
sh3add.uw x30, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x7, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
sh3add.uw x28, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
sh3add.uw x15, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x3, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
sh3add.uw x2, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x10, 0x0000000000000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
sh3add.uw x13, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x26, 0x0000000000000001 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
sh3add.uw x8, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000001 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
sh3add.uw x15, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000000000001 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x8, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x19, 0x0000000000000001 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
sh3add.uw x25, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x28, 0x0000000000000001 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sh3add.uw x9, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x15, 0x0000000000000001 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x30, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000000000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x6, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x5, 0x0000000000000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
sh3add.uw x27, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x23, 0x0000000000000001 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
sh3add.uw x10, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x21, 0x0000000000000001 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sh3add.uw x24, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x22, 0x0000000000000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
sh3add.uw x28, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x31, 0x0000000000000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
sh3add.uw x21, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x12, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
sh3add.uw x20, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x21, 0x0000000000000002 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
sh3add.uw x31, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x21, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
sh3add.uw x31, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x11, 0x0000000000000002 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sh3add.uw x9, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x5, 0x0000000000000002 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
sh3add.uw x2, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000000000002 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sh3add.uw x15, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x19, 0x0000000000000002 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x24, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x2, 0x0000000000000002 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sh3add.uw x24, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
sh3add.uw x26, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000000000002 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x17, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x0000000000000002 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x5, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x20, 0x0000000000000002 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sh3add.uw x22, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x30, 0x0000000000000002 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
sh3add.uw x25, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sh3add.uw x1, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x24, 0x0000000000000002 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
sh3add.uw x29, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x15, 0x0000000000000002 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
sh3add.uw x28, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x1, 0x8000000000000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
sh3add.uw x18, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x31, 0x8000000000000000 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sh3add.uw x26, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x13, 0x8000000000000000 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
sh3add.uw x28, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x22, 0x8000000000000000 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
sh3add.uw x10, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x2, 0x8000000000000000 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
sh3add.uw x25, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x6, 0x8000000000000000 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sh3add.uw x23, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x28, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x23, 0x8000000000000000 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
sh3add.uw x18, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x23, 0x8000000000000000 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
sh3add.uw x7, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x27, 0x8000000000000000 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x10, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x8000000000000000 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x25, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x30, 0x8000000000000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
sh3add.uw x29, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x18, 0x8000000000000000 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
sh3add.uw x9, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x27, 0x8000000000000000 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
sh3add.uw x3, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x13, 0x8000000000000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
sh3add.uw x19, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x15, 0x8000000000000000 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
sh3add.uw x8, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x29, 0x8000000000000001 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
sh3add.uw x10, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x20, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sh3add.uw x6, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x5, 0x8000000000000001 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
sh3add.uw x28, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x26, 0x8000000000000001 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
sh3add.uw x16, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x31, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
sh3add.uw x3, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x18, 0x8000000000000001 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
sh3add.uw x30, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x6, 0x8000000000000001 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x19, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x31, 0x8000000000000001 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
sh3add.uw x24, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x5, 0x8000000000000001 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
sh3add.uw x6, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x7, 0x8000000000000001 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x19, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x8000000000000001 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x11, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x20, 0x8000000000000001 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sh3add.uw x22, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x15, 0x8000000000000001 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
sh3add.uw x24, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x8, 0x8000000000000001 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sh3add.uw x23, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x29, 0x8000000000000001 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
sh3add.uw x31, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x17, 0x8000000000000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
sh3add.uw x24, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x19, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
sh3add.uw x30, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x31, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
sh3add.uw x18, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x6, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
sh3add.uw x21, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x8, 0x7fffffffffffffff # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
sh3add.uw x19, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x19, 0x7fffffffffffffff # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
sh3add.uw x1, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
sh3add.uw x15, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x31, 0x7fffffffffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x18, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
sh3add.uw x1, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x21, 0x7fffffffffffffff # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
sh3add.uw x6, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x18, 0x7fffffffffffffff # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x5, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x7fffffffffffffff # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x15, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x8, 0x7fffffffffffffff # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
sh3add.uw x12, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x28, 0x7fffffffffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sh3add.uw x27, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x5, 0x7fffffffffffffff # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
sh3add.uw x26, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x6, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
sh3add.uw x19, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x12, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
sh3add.uw x30, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x17, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
sh3add.uw x26, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x21, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
sh3add.uw x23, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x11, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
sh3add.uw x25, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x14, 0x7ffffffffffffffe # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
sh3add.uw x31, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x5, 0x7ffffffffffffffe # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
sh3add.uw x18, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x1, 0x7ffffffffffffffe # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
sh3add.uw x13, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x3, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x2, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x2, 0x7ffffffffffffffe # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
sh3add.uw x11, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
sh3add.uw x12, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x28, 0x7ffffffffffffffe # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x22, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x7ffffffffffffffe # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x22, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x10, 0x7ffffffffffffffe # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
sh3add.uw x14, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x27, 0x7ffffffffffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
sh3add.uw x22, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x16, 0x7ffffffffffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
sh3add.uw x9, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x27, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh3add.uw x21, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x14, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
sh3add.uw x20, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x17, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sh3add.uw x7, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x9, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
sh3add.uw x18, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x19, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
sh3add.uw x13, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x30, 0xffffffffffffffff # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
sh3add.uw x11, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x11, 0xffffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
sh3add.uw x25, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
sh3add.uw x27, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x22, 0xffffffffffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x10, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x30, 0xffffffffffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
sh3add.uw x3, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x12, 0xffffffffffffffff # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
sh3add.uw x21, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x27, 0xffffffffffffffff # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x18, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0xffffffffffffffff # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x11, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x11, 0xffffffffffffffff # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
sh3add.uw x5, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x31, 0xffffffffffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sh3add.uw x8, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x1, 0xffffffffffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
sh3add.uw x8, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x25, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
sh3add.uw x24, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x19, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
sh3add.uw x22, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x24, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
sh3add.uw x16, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x25, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
sh3add.uw x24, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x23, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
sh3add.uw x7, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x6, 0xfffffffffffffffe # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
sh3add.uw x28, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x12, 0xfffffffffffffffe # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
sh3add.uw x26, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x21, 0xfffffffffffffffe # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
sh3add.uw x19, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x22, 0xfffffffffffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x3, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x20, 0xfffffffffffffffe # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
sh3add.uw x26, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sh3add.uw x6, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x13, 0xfffffffffffffffe # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x7, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0xfffffffffffffffe # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x2, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x3, 0xfffffffffffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
sh3add.uw x27, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x25, 0xfffffffffffffffe # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
sh3add.uw x17, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
sh3add.uw x12, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x28, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh3add.uw x27, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x20, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
sh3add.uw x2, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
sh3add.uw x27, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sh3add.uw x6, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
sh3add.uw x14, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
sh3add.uw x23, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
sh3add.uw x23, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
sh3add.uw x5, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x31, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
sh3add.uw x24, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
sh3add.uw x1, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x1, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x29, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
sh3add.uw x10, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
sh3add.uw x17, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sh3add.uw x19, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
sh3add.uw x19, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sh3add.uw x9, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
sh3add.uw x6, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
sh3add.uw x21, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
sh3add.uw x26, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sh3add.uw x9, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
sh3add.uw x2, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
sh3add.uw x29, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x7, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sh3add.uw x31, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
sh3add.uw x13, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x23, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x21, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
sh3add.uw x13, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
sh3add.uw x7, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
sh3add.uw x26, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sh3add.uw x21, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
sh3add.uw x10, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x9, 0x5555555555555555 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
sh3add.uw x23, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x12, 0x5555555555555555 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
sh3add.uw x24, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x27, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sh3add.uw x29, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x9, 0x5555555555555555 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sh3add.uw x15, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x30, 0x5555555555555555 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
sh3add.uw x16, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x30, 0x5555555555555555 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sh3add.uw x18, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x20, 0x5555555555555555 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x9, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x8, 0x5555555555555555 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
sh3add.uw x15, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x24, 0x5555555555555555 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
sh3add.uw x3, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x12, 0x5555555555555555 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x6, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x5555555555555555 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x12, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x14, 0x5555555555555555 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
sh3add.uw x22, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x24, 0x5555555555555555 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
sh3add.uw x7, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x16, 0x5555555555555555 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
sh3add.uw x30, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x19, 0x5555555555555555 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sh3add.uw x1, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x14, 0x5555555555555555 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
sh3add.uw x28, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x26, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
sh3add.uw x2, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x27, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
sh3add.uw x12, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x19, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
sh3add.uw x17, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x12, 0x00000000ffffffff # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
sh3add.uw x21, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x24, 0x00000000ffffffff # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
sh3add.uw x29, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
sh3add.uw x5, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x5, 0x00000000ffffffff # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x9, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
sh3add.uw x29, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x26, 0x00000000ffffffff # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
sh3add.uw x1, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x30, 0x00000000ffffffff # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x6, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x00000000ffffffff # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x16, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x10, 0x00000000ffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
sh3add.uw x14, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x17, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
sh3add.uw x26, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x16, 0x00000000ffffffff # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
sh3add.uw x2, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x15, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
sh3add.uw x19, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x13, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
sh3add.uw x29, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x7, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sh3add.uw x26, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x3, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
sh3add.uw x31, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x17, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
sh3add.uw x3, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x29, 0x00000000fffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sh3add.uw x14, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x7, 0x00000000fffffffe # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
sh3add.uw x3, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x5, 0x00000000fffffffe # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
sh3add.uw x20, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x2, 0x00000000fffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x17, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x7, 0x00000000fffffffe # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
sh3add.uw x10, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x24, 0x00000000fffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
sh3add.uw x1, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x30, 0x00000000fffffffe # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x23, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x00000000fffffffe # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x25, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x23, 0x00000000fffffffe # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sh3add.uw x30, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
sh3add.uw x8, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sh3add.uw x27, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x9, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sh3add.uw x18, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x31, 0x00000000fffffffe # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
sh3add.uw x18, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x22, 0x0000000100000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
sh3add.uw x9, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x31, 0x0000000100000000 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
sh3add.uw x5, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x27, 0x0000000100000000 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sh3add.uw x25, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x21, 0x0000000100000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
sh3add.uw x18, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x9, 0x0000000100000000 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
sh3add.uw x16, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000100000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
sh3add.uw x31, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000100000000 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x25, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x15, 0x0000000100000000 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
sh3add.uw x17, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000100000000 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
sh3add.uw x1, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x13, 0x0000000100000000 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x26, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000100000000 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x12, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x10, 0x0000000100000000 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
sh3add.uw x2, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x6, 0x0000000100000000 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
sh3add.uw x30, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x7, 0x0000000100000000 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sh3add.uw x24, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x1, 0x0000000100000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sh3add.uw x30, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x23, 0x0000000100000000 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh3add.uw x6, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x8, 0x0000000100000001 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
sh3add.uw x15, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x2, 0x0000000100000001 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
sh3add.uw x12, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x18, 0x0000000100000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
sh3add.uw x25, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x12, 0x0000000100000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
sh3add.uw x5, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x5, 0x0000000100000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
sh3add.uw x24, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000100000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
sh3add.uw x26, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x19, 0x0000000100000001 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x12, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x9, 0x0000000100000001 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
sh3add.uw x31, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x8, 0x0000000100000001 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
sh3add.uw x1, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x1, 0x0000000100000001 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x12, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000100000001 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x20, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x5, 0x0000000100000001 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sh3add.uw x28, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x30, 0x0000000100000001 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sh3add.uw x6, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x27, 0x0000000100000001 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
sh3add.uw x22, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x16, 0x0000000100000001 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
sh3add.uw x18, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x25, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sh3add.uw x20, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xc75e2ed017c94195 # initialize rs1
li x0, 0xa68bf317d86a9be9 # initialize rs2
sh3add.uw x15, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x8c70324688a0360b # initialize rs1
li x1, 0xef9b3ebb2703df2f # initialize rs2
sh3add.uw x19, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xec73f5a262a7c900 # initialize rs1
li x2, 0xa7e0056e11b3640e # initialize rs2
sh3add.uw x17, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x14af26af2a9425cb # initialize rs1
li x3, 0xaa48d75105a3170a # initialize rs2
sh3add.uw x28, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5b7d8768e55fca5b # initialize rs1
li x4, 0x57cc03782d661945 # initialize rs2
sh3add.uw x5, x4, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x5, 0x0c5b3e3a2814044b # initialize rs1
li x5, 0xe36bf91c242a1435 # initialize rs2
sh3add.uw x8, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x611c9bcc91a60ea8 # initialize rs1
li x6, 0x4e4b1c219c72b67c # initialize rs2
sh3add.uw x15, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe020786951f31e4d # initialize rs1
li x7, 0xaa69daadd722c593 # initialize rs2
sh3add.uw x9, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x1715a97139417190 # initialize rs1
li x8, 0xe184d618abf4a248 # initialize rs2
sh3add.uw x1, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x117f878e44b9f803 # initialize rs1
li x9, 0x2aa45621c2baf6ab # initialize rs2
sh3add.uw x28, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xcc432971b8d89df9 # initialize rs1
li x10, 0xec1e41d33855b970 # initialize rs2
sh3add.uw x12, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x976bffbd5bca56fe # initialize rs1
li x11, 0x92ec1e70b44f06b7 # initialize rs2
sh3add.uw x21, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x2caf01a37617808d # initialize rs1
li x12, 0xdbeb91bb7c2d6f31 # initialize rs2
sh3add.uw x2, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x8934de100f752827 # initialize rs1
li x13, 0xbd0096d9ad349f03 # initialize rs2
sh3add.uw x30, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x67bed49fc42a1149 # initialize rs1
li x14, 0xbd2a6c74cec37e12 # initialize rs2
sh3add.uw x11, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xd3c1f54185aaf00e # initialize rs1
li x15, 0x3c1759dd9b5f07ac # initialize rs2
sh3add.uw x26, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xe830809434e56c54 # initialize rs1
li x16, 0xe477821c8771ff0d # initialize rs2
sh3add.uw x10, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xb8f66c17526d076f # initialize rs1
li x17, 0xd3dcd8bbd64469bf # initialize rs2
sh3add.uw x12, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xd43e643265d0fe27 # initialize rs1
li x18, 0x8ced7c70a06d490e # initialize rs2
sh3add.uw x2, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xd02c79f2c743fb03 # initialize rs1
li x19, 0x3a624140ea0f2d5a # initialize rs2
sh3add.uw x31, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x62a51afd267c8e0e # initialize rs1
li x20, 0x4b0b9a2c11e4fb86 # initialize rs2
sh3add.uw x27, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x4d7f562937c2ad1a # initialize rs1
li x21, 0x59cb9dd2934e50af # initialize rs2
sh3add.uw x10, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xa024de49be65848b # initialize rs1
li x22, 0xfc962a72e7f7e48b # initialize rs2
sh3add.uw x10, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x845a608b2b9d2b8c # initialize rs1
li x23, 0xb43931087b623fc4 # initialize rs2
sh3add.uw x20, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x368b732bb091eba3 # initialize rs1
li x24, 0x74396fa6d67c42a0 # initialize rs2
sh3add.uw x13, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x4b5b66bd184ac0a0 # initialize rs1
li x25, 0x059530d6a8bf240b # initialize rs2
sh3add.uw x30, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xa20d057b7703e9a0 # initialize rs1
li x26, 0xfde59b1af2744d1c # initialize rs2
sh3add.uw x16, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x1f160f404b737810 # initialize rs1
li x27, 0x02c70870893d11d4 # initialize rs2
sh3add.uw x3, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x465e4ad4aedac7a7 # initialize rs1
li x28, 0x46449992317408ac # initialize rs2
sh3add.uw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xa404787433f69e52 # initialize rs1
li x29, 0xc5c9df3e24e45ad1 # initialize rs2
sh3add.uw x18, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x82137d418123de26 # initialize rs1
li x30, 0x87d24b3606e93ab8 # initialize rs2
sh3add.uw x15, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x6c539ee82496252d # initialize rs1
li x31, 0x4315aeb041af60ac # initialize rs2
sh3add.uw x18, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x739464640627155b # initialize rs1
li x25, 0x9bfc4ebd22c21219 # initialize rs2
sh3add.uw x0, x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xc17d12dbe3cff8d0 # initialize rs1
li x18, 0xdfe6d0f263991a97 # initialize rs2
sh3add.uw x1, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xfd639dd3db635dad # initialize rs1
li x16, 0x2e20429e17623e63 # initialize rs2
sh3add.uw x2, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x83c6a3f954d808b8 # initialize rs1
li x6, 0x842b630325990810 # initialize rs2
sh3add.uw x3, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x85b56b1d0f04e118 # initialize rs1
li x17, 0xa7585b78eb213075 # initialize rs2
sh3add.uw x4, x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0592e1a707860338 # initialize rs1
li x7, 0x0eaea8b07965210c # initialize rs2
sh3add.uw x5, x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5d7399a6eaab00db # initialize rs1
li x12, 0xe248b0c01e8377a8 # initialize rs2
sh3add.uw x6, x6, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaa7c4c3be8572ce5 # initialize rs1
li x23, 0xf6e43a08b2ccbf63 # initialize rs2
sh3add.uw x7, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x6cdc85d0e2c4732d # initialize rs1
li x14, 0x8074309fce205cfc # initialize rs2
sh3add.uw x8, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc32f5c4908dfc5ee # initialize rs1
li x6, 0x44e16ad9df9a5305 # initialize rs2
sh3add.uw x9, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x1884e7ffcf41a708 # initialize rs1
li x2, 0xd267405447737907 # initialize rs2
sh3add.uw x10, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x19b767e828bfae98 # initialize rs1
li x21, 0xcd0704ad547781db # initialize rs2
sh3add.uw x11, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x5b783eec2496c158 # initialize rs1
li x9, 0x3c29b0924314a5cf # initialize rs2
sh3add.uw x12, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x612d136e10d9998f # initialize rs1
li x25, 0xd38ede973a78bb08 # initialize rs2
sh3add.uw x13, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xeb618d21524135e7 # initialize rs1
li x2, 0xf9b2de9b17555a1d # initialize rs2
sh3add.uw x14, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xaf72be8954e4be1b # initialize rs1
li x27, 0xf13bdfc6b1838e5c # initialize rs2
sh3add.uw x15, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x30bbaac03611e546 # initialize rs1
li x11, 0x8d41efb59338cfa7 # initialize rs2
sh3add.uw x16, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x5ff386a814c953e5 # initialize rs1
li x11, 0x215a7549d9cad98b # initialize rs2
sh3add.uw x17, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xdbbcbf2fdaa7db07 # initialize rs1
li x22, 0x3be4e50f2ebfe17f # initialize rs2
sh3add.uw x18, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x12963f153dd508c9 # initialize rs1
li x18, 0x1375c104a4bc58a0 # initialize rs2
sh3add.uw x19, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xbc8a91a4d891d89a # initialize rs1
li x27, 0x56c3288b2e17e774 # initialize rs2
sh3add.uw x20, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xb58eff68ce2eab9e # initialize rs1
li x5, 0x82b65fe705a7d168 # initialize rs2
sh3add.uw x21, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x100903e344bd7f44 # initialize rs1
li x7, 0xc00c59c2dca4646b # initialize rs2
sh3add.uw x22, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x5f3a00c6dec565a0 # initialize rs1
li x6, 0x5efaea44e906d21a # initialize rs2
sh3add.uw x23, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x5b9db01fff119d57 # initialize rs1
li x3, 0x7c70264a42d8da81 # initialize rs2
sh3add.uw x24, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x9d236b77750e2847 # initialize rs1
li x17, 0xbf7c5e4c1cb26e24 # initialize rs2
sh3add.uw x25, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xe99832514e5abc6e # initialize rs1
li x6, 0x66581d04cb900276 # initialize rs2
sh3add.uw x26, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xcd5899672f9381ff # initialize rs1
li x3, 0x0aadf5c413140804 # initialize rs2
sh3add.uw x27, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xeb6b5c0737b1f06f # initialize rs1
li x13, 0xdba4a0b87c4f86f7 # initialize rs2
sh3add.uw x28, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xe88de2bbee711192 # initialize rs1
li x26, 0xe6002c4d49c1947f # initialize rs2
sh3add.uw x29, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x33a06e681d9b826c # initialize rs1
li x31, 0x6cf3ee3ce8015c34 # initialize rs2
sh3add.uw x30, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xfca7e0ed0b5e2d95 # initialize rs1
li x10, 0x80436f5b2229dd2e # initialize rs2
sh3add.uw x31, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x29, 0x631aa2c1da96073b # initialize rs1
li x0, 0x8b8043c0acd8eeaf # initialize rs2
sh3add.uw x0, x29, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x14, 0xc8ce9592ad222bd9 # initialize rs1
li x1, 0x6d98d23d67404d8a # initialize rs2
sh3add.uw x1, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x31, 0x0a6228d2a97b2e46 # initialize rs1
li x2, 0x37737b2d0b938736 # initialize rs2
sh3add.uw x2, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x22, 0x37ccf0f90c58ceb7 # initialize rs1
li x3, 0x0b1b66f30b54d2fb # initialize rs2
sh3add.uw x3, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x2104b87c919f810a # initialize rs1
li x4, 0x89cd0440243cb44e # initialize rs2
sh3add.uw x4, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0x175d1f46b7ecad4d # initialize rs1
li x5, 0xb888f391a6a486a2 # initialize rs2
sh3add.uw x5, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
li x4, 0x6fe18a77a6bda6e4 # initialize rs1
li x6, 0x67b44eb5d4aa6578 # initialize rs2
sh3add.uw x6, x4, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xbb5669edfa20b6f5 # initialize rs1
li x7, 0xd66e4ddccd2b6399 # initialize rs2
sh3add.uw x7, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x10, 0x1d19272151b80846 # initialize rs1
li x8, 0x96741be4140a952b # initialize rs2
sh3add.uw x8, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x31, 0x9cd74af24bd0ddd8 # initialize rs1
li x9, 0xb93df4a6a2653720 # initialize rs2
sh3add.uw x9, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x31, 0x52b6aa435dcdd282 # initialize rs1
li x10, 0xa4cf507cb59e97e5 # initialize rs2
sh3add.uw x10, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x8, 0x6136b4e0a4f32bef # initialize rs1
li x11, 0x7dd478b0714ed8e2 # initialize rs2
sh3add.uw x11, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x31, 0xd0192794e3af652e # initialize rs1
li x12, 0x5598e5cca9d1293c # initialize rs2
sh3add.uw x12, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x29, 0x9c1bebbdebcf95d9 # initialize rs1
li x13, 0x8aa6f777e541590c # initialize rs2
sh3add.uw x13, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x27, 0x963a5522e154f7fd # initialize rs1
li x14, 0xe608c929868277dd # initialize rs2
sh3add.uw x14, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x10, 0x5b46d2ad466f14c3 # initialize rs1
li x15, 0x6dec1548a9f5a381 # initialize rs2
sh3add.uw x15, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x26, 0xc4580b844c7a6fdb # initialize rs1
li x16, 0x0cd32e9020b88bfd # initialize rs2
sh3add.uw x16, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x21, 0x48e8e2e50331fd90 # initialize rs1
li x17, 0xcefd5831e1555dad # initialize rs2
sh3add.uw x17, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x30, 0x555be5ab8b46142c # initialize rs1
li x18, 0x3932ed10a327aeee # initialize rs2
sh3add.uw x18, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x5, 0x35f96a5e12b578d8 # initialize rs1
li x19, 0x5ee3f9d636356751 # initialize rs2
sh3add.uw x19, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x22, 0xda9ad56366a1b948 # initialize rs1
li x20, 0xb140e68e41483fb6 # initialize rs2
sh3add.uw x20, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x10, 0x75fb86ecce4fcc2f # initialize rs1
li x21, 0xb6f2ace9aa804d0d # initialize rs2
sh3add.uw x21, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x7, 0x555304b9ba823e3e # initialize rs1
li x22, 0x37c6f629199ba5c7 # initialize rs2
sh3add.uw x22, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x31, 0xe04dedb962cd0aa9 # initialize rs1
li x23, 0x88395dbc5fe7cdfb # initialize rs2
sh3add.uw x23, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x3, 0xc8dcbf1fd01669a0 # initialize rs1
li x24, 0xfee11667ee87f16d # initialize rs2
sh3add.uw x24, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x11, 0x95fa5a5a9c4e2097 # initialize rs1
li x25, 0x8fd0466e8a5447d2 # initialize rs2
sh3add.uw x25, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x30, 0xedc305319167ba59 # initialize rs1
li x26, 0x9772901b4f26e844 # initialize rs2
sh3add.uw x26, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x13, 0x7531d4dfed5e1741 # initialize rs1
li x27, 0xc8383f0546e42a92 # initialize rs2
sh3add.uw x27, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x21, 0x82747ba731de8d17 # initialize rs1
li x28, 0x6c165bef5b455b5e # initialize rs2
sh3add.uw x28, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x1, 0x154924d81b9166e0 # initialize rs1
li x29, 0x22ca3a1dd9b991d1 # initialize rs2
sh3add.uw x29, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x779d69b1a423c150 # initialize rs1
li x30, 0x9f50ddbd001b3739 # initialize rs2
sh3add.uw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x29, 0x94ee4f73437723fa # initialize rs1
li x31, 0xfe08a48c82d01fa2 # initialize rs2
sh3add.uw x31, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x8eee701797e19844 # initialize rs1
li x0, 0x1b63ede9dac83638 # initialize rs2
sh3add.uw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xc9d58a4c3c29f565 # initialize rs1
li x1, 0x99240e370e151ce5 # initialize rs2
sh3add.uw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x701570199f889cfd # initialize rs1
li x2, 0xb2677d46d8b1d531 # initialize rs2
sh3add.uw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x3adf39d95e5e019f # initialize rs1
li x3, 0x58020de2d8f7fc7b # initialize rs2
sh3add.uw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x58f6641233cc0691 # initialize rs1
li x4, 0x8503a8a2a72afa7e # initialize rs2
sh3add.uw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7b1a0b915dbf851c # initialize rs1
li x5, 0x9f52d4e8e8d56fff # initialize rs2
sh3add.uw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xafa9ddfe18dd4a78 # initialize rs1
li x6, 0x3c47ba9afb0f6f91 # initialize rs2
sh3add.uw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcb57659eb3d5be86 # initialize rs1
li x7, 0xa81d412f153cd373 # initialize rs2
sh3add.uw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x0a36dc80e5fc50b3 # initialize rs1
li x8, 0x32e1fc5a26fb1c21 # initialize rs2
sh3add.uw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xedd80e8528fb899b # initialize rs1
li x9, 0x8900604addb1ebdb # initialize rs2
sh3add.uw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xfd40c592859ce88e # initialize rs1
li x10, 0x6c58c7a5711a341e # initialize rs2
sh3add.uw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xb60ca65a7c8ef460 # initialize rs1
li x11, 0x422215d5e0891547 # initialize rs2
sh3add.uw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x2cd00165e1a98e27 # initialize rs1
li x12, 0x2f99e17384fb651f # initialize rs2
sh3add.uw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x3959f81f79c00132 # initialize rs1
li x13, 0xc88c9aba4a2abbbf # initialize rs2
sh3add.uw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xa6a694e58b2918c4 # initialize rs1
li x14, 0x5e60868ef7d85b7e # initialize rs2
sh3add.uw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x344fe537af7c6ec0 # initialize rs1
li x15, 0x710871a906b20c4b # initialize rs2
sh3add.uw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x8a4616e787361cd9 # initialize rs1
li x16, 0x6f15abbd81b4a6b7 # initialize rs2
sh3add.uw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x7c16af85b57f3390 # initialize rs1
li x17, 0x4c22e89c6597c517 # initialize rs2
sh3add.uw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xd1c0ff59966d7541 # initialize rs1
li x18, 0x43f528d26412b203 # initialize rs2
sh3add.uw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x6324eda769026d19 # initialize rs1
li x19, 0xdac447a254ad242c # initialize rs2
sh3add.uw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x699b3b99a1799285 # initialize rs1
li x20, 0xb7f27d873ef3bf06 # initialize rs2
sh3add.uw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x28951214296a125b # initialize rs1
li x21, 0x905d0b4760b09859 # initialize rs2
sh3add.uw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xdaca2ee3ffc959e9 # initialize rs1
li x22, 0xd2f520edf863042c # initialize rs2
sh3add.uw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xc3e6d9560df68f2b # initialize rs1
li x23, 0x9c8686ac325e7d63 # initialize rs2
sh3add.uw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xac8fc1d19da23bfa # initialize rs1
li x24, 0xd63ebae530e40bde # initialize rs2
sh3add.uw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xfc666fe732e2ead7 # initialize rs1
li x25, 0xcd44ec070bd3dded # initialize rs2
sh3add.uw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x6c3d61692f477326 # initialize rs1
li x26, 0xe9aeee30a870e827 # initialize rs2
sh3add.uw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xca4025ed8102d088 # initialize rs1
li x27, 0xd4c76b28884ee5ea # initialize rs2
sh3add.uw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x989d2bb22216571e # initialize rs1
li x28, 0x3d28d4aeccc73ff2 # initialize rs2
sh3add.uw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x614d618c7c9ca858 # initialize rs1
li x29, 0xe579ead1248f4f34 # initialize rs2
sh3add.uw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xcf883bd9f101f513 # initialize rs1
li x30, 0xe736a3a19851332a # initialize rs2
sh3add.uw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xe382bb0e4db7207e # initialize rs1
li x31, 0x8e77ff289aac0b34 # initialize rs2
sh3add.uw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x2, x9 # perform first operation
sh3add.uw x5, x13, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x5, x23 # perform first operation
sh3add.uw x18, x12, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x9, x11 # perform first operation
sh3add.uw x7, x12, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x25, x19 # perform first operation
sh3add.uw x7, x7, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x25, x18 # perform first operation
sh3add.uw x23, x6, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x5, x14 # perform first operation
sh3add.uw x14, x28, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x19, x1 # perform first operation
sh3add.uw x21, x7, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x25, x11 # perform first operation
sh3add.uw x20, x8, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x23, x1 # perform first operation
sh3add.uw x25, x24, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x19, x25 # perform first operation
sh3add.uw x19, x28, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x28, x16 # perform first operation
sh3add.uw x16, x19, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x21, x29 # perform first operation
sh3add.uw x19, x10, x8 # perform second (triggering) operation

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
