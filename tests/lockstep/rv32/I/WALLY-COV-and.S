///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-and.S
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
li x0, 0xd8e59ccc # initialize rs1
li x17, 0x28d349bc # initialize rs2
and x20, x0, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xb442ef42 # initialize rs1
li x28, 0x02ef6b2a # initialize rs2
and x17, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x1fdf433b # initialize rs1
li x10, 0xa1a67372 # initialize rs2
and x20, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x1c380a37 # initialize rs1
li x20, 0x45ad40d2 # initialize rs2
and x17, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9f9a043d # initialize rs1
li x9, 0x346bc1d5 # initialize rs2
and x18, x4, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x037aaf5e # initialize rs1
li x2, 0x974690cb # initialize rs2
and x10, x5, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x14d0b1e4 # initialize rs1
li x17, 0x1e1bcc2f # initialize rs2
and x16, x6, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x16, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x09a7df3c # initialize rs1
li x30, 0xaf87f316 # initialize rs2
and x28, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x7210069e # initialize rs1
li x12, 0xf61bc168 # initialize rs2
and x9, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xc669bcf9 # initialize rs1
li x25, 0xdcf59a88 # initialize rs2
and x3, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x72fb0423 # initialize rs1
li x8, 0x2ac13b8a # initialize rs2
and x18, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x8d0714b0 # initialize rs1
li x7, 0x9ffe8960 # initialize rs2
and x1, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x4ea94bbb # initialize rs1
li x10, 0x0f6261ed # initialize rs2
and x26, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xb22899d5 # initialize rs1
li x8, 0x71a5808b # initialize rs2
and x2, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x69e5b962 # initialize rs1
li x30, 0x982b6a3f # initialize rs2
and x31, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x06721863 # initialize rs1
li x28, 0x218447d3 # initialize rs2
and x25, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xf1a5bbd3 # initialize rs1
li x1, 0x2fd46f2e # initialize rs2
and x30, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xb6da4f9d # initialize rs1
li x9, 0x70e641d7 # initialize rs2
and x23, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xfc9fd75e # initialize rs1
li x2, 0x2f26afc3 # initialize rs2
and x31, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xdb03a761 # initialize rs1
li x30, 0xfa13d9c7 # initialize rs2
and x12, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xca2d6f35 # initialize rs1
li x18, 0x67f59a58 # initialize rs2
and x11, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x46fe35cc # initialize rs1
li x19, 0x87ca0af3 # initialize rs2
and x8, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x7dc85bd7 # initialize rs1
li x8, 0x391c8ae9 # initialize rs2
and x19, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x3d7e57bf # initialize rs1
li x12, 0xa7f0e2f8 # initialize rs2
and x5, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x52ed3f7a # initialize rs1
li x25, 0x55aafc3a # initialize rs2
and x8, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x69af07fb # initialize rs1
li x5, 0x56aad2cd # initialize rs2
and x19, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x333e47b0 # initialize rs1
li x6, 0x20f95e15 # initialize rs2
and x16, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x2431643f # initialize rs1
li x26, 0x59fe5dd6 # initialize rs2
and x31, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xf6aa62f8 # initialize rs1
li x12, 0x4eb67e20 # initialize rs2
and x13, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xe69bc1d4 # initialize rs1
li x31, 0x73bd6f99 # initialize rs2
and x30, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x9858db9d # initialize rs1
li x26, 0x3c130b8d # initialize rs2
and x18, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x61ca4640 # initialize rs1
li x24, 0x48116fd5 # initialize rs2
and x21, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x15, 0x7b7dac62 # initialize rs1
li x0, 0xc4d7e820 # initialize rs2
and x9, x15, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x27, 0x11f8baed # initialize rs1
li x1, 0x4a64cfe9 # initialize rs2
and x20, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x11, 0x9bf686dc # initialize rs1
li x2, 0x49766cba # initialize rs2
and x6, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x19, 0x8d797005 # initialize rs1
li x3, 0xd3946dbc # initialize rs2
and x8, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0xabada152 # initialize rs1
li x4, 0x64542c66 # initialize rs2
and x10, x13, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0x139baebb # initialize rs1
li x5, 0x97ad5597 # initialize rs2
and x17, x15, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0xbae1f65f # initialize rs1
li x6, 0x75fdab86 # initialize rs2
and x11, x8, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x35472fe5 # initialize rs1
li x7, 0x16a7f74c # initialize rs2
and x13, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x31, 0x6920d83f # initialize rs1
li x8, 0xe20d02db # initialize rs2
and x18, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x24, 0xd04e300a # initialize rs1
li x9, 0x2c917a67 # initialize rs2
and x25, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x28, 0xeb0511e1 # initialize rs1
li x10, 0x92d2ee25 # initialize rs2
and x31, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x27, 0x4cd511c2 # initialize rs1
li x11, 0x16f92c79 # initialize rs2
and x19, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x3, 0x831ded30 # initialize rs1
li x12, 0xde83422f # initialize rs2
and x5, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0xfd2ad168 # initialize rs1
li x13, 0x437f3034 # initialize rs2
and x2, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x7, 0xf388a163 # initialize rs1
li x14, 0xcc2f6ba5 # initialize rs2
and x28, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x28, 0xbc0463ac # initialize rs1
li x15, 0xd24d4df2 # initialize rs2
and x3, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x15, 0x141cd6d5 # initialize rs1
li x16, 0x3968267e # initialize rs2
and x31, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x30, 0xc4acd26c # initialize rs1
li x17, 0xfc9f2d91 # initialize rs2
and x12, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x23, 0xa636fa8e # initialize rs1
li x18, 0x976a7e37 # initialize rs2
and x3, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x24, 0x275f3918 # initialize rs1
li x19, 0xb0b77a12 # initialize rs2
and x15, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x12, 0xa359346a # initialize rs1
li x20, 0xf554a050 # initialize rs2
and x21, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x24, 0x1fd66d89 # initialize rs1
li x21, 0x8deab3b3 # initialize rs2
and x15, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x3, 0xe787cd4c # initialize rs1
li x22, 0x4456e0b2 # initialize rs2
and x30, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x22, 0xa88a147a # initialize rs1
li x23, 0x64d03051 # initialize rs2
and x19, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x28, 0x8df3854e # initialize rs1
li x24, 0xf7e05847 # initialize rs2
and x8, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x18, 0x8578aaa7 # initialize rs1
li x25, 0x6e1d4f4d # initialize rs2
and x8, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x22, 0xffd54ad6 # initialize rs1
li x26, 0x518699b8 # initialize rs2
and x18, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x17, 0xa844a3c5 # initialize rs1
li x27, 0xf6fbb6c1 # initialize rs2
and x18, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x23, 0xca13cb70 # initialize rs1
li x28, 0xf2aa19ff # initialize rs2
and x30, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x26, 0x5f845773 # initialize rs1
li x29, 0x4f0a99d7 # initialize rs2
and x2, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x19, 0xe080e2d4 # initialize rs1
li x30, 0xfc66e07a # initialize rs2
and x15, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x28, 0x6170b15c # initialize rs1
li x31, 0x979bc686 # initialize rs2
and x30, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 252)

# Testcase cp_rd (Test destination rd = x0)
li x14, 0x0884b289 # initialize rs1
li x10, 0x814d7ef6 # initialize rs2
and x0, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x7, 0xf23f2e84 # initialize rs1
li x24, 0xf1814714 # initialize rs2
and x1, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x16, 0x14e0790c # initialize rs1
li x15, 0x71a05bf8 # initialize rs2
and x2, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x6, 0xf14854a7 # initialize rs1
li x24, 0x7146e3e8 # initialize rs2
and x3, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0x72960d11 # initialize rs1
li x20, 0xde19e3de # initialize rs2
and x4, x18, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x03c130ca # initialize rs1
li x21, 0xbc4410c7 # initialize rs2
and x5, x27, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0xc6bc0baf # initialize rs1
li x22, 0x0d849d58 # initialize rs2
and x6, x5, x22 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0x18e6b02d # initialize rs1
li x29, 0x3c309d5d # initialize rs2
and x7, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x12, 0x0b6f1332 # initialize rs1
li x8, 0x98a649c9 # initialize rs2
and x8, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x11, 0x8254a836 # initialize rs1
li x10, 0x7a76fdbb # initialize rs2
and x9, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x26, 0x549f69b5 # initialize rs1
li x11, 0xc0d3e154 # initialize rs2
and x10, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x3, 0xd55da599 # initialize rs1
li x28, 0xc5c39e44 # initialize rs2
and x11, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0x078b5622 # initialize rs1
li x11, 0xf3b33d2e # initialize rs2
and x12, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x24, 0xdb245a7e # initialize rs1
li x25, 0x8b8ed36e # initialize rs2
and x13, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x29, 0x07851fc6 # initialize rs1
li x18, 0x0da967eb # initialize rs2
and x14, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x16, 0x7471766d # initialize rs1
li x13, 0x20b0a102 # initialize rs2
and x15, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x18, 0x85bfe5e0 # initialize rs1
li x10, 0xa407fc8e # initialize rs2
and x16, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0xd0e6ac21 # initialize rs1
li x6, 0x9ef821ed # initialize rs2
and x17, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x5, 0x4b92ffb0 # initialize rs1
li x1, 0x293abd13 # initialize rs2
and x18, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x28, 0xb657d1cb # initialize rs1
li x29, 0x1a3ca4c4 # initialize rs2
and x19, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x26, 0x785b5797 # initialize rs1
li x10, 0x1efa4d94 # initialize rs2
and x20, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x15, 0x3771dd21 # initialize rs1
li x18, 0x835bcd9c # initialize rs2
and x21, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x14, 0x85a03fe0 # initialize rs1
li x5, 0x4085be98 # initialize rs2
and x22, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x26, 0x0fe8a869 # initialize rs1
li x10, 0xbdd411ca # initialize rs2
and x23, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x2, 0x42963a13 # initialize rs1
li x24, 0x86fd9472 # initialize rs2
and x24, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x17, 0x0af40098 # initialize rs1
li x13, 0xaf11cee6 # initialize rs2
and x25, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x16, 0x50777433 # initialize rs1
li x11, 0xe2c1c565 # initialize rs2
and x26, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x884d58aa # initialize rs1
li x3, 0x503c263d # initialize rs2
and x27, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x24, 0x9b1d33a0 # initialize rs1
li x28, 0xb89782c9 # initialize rs2
and x28, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x31, 0x33626a8c # initialize rs1
li x12, 0x6a5c0fd4 # initialize rs2
and x29, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x11, 0xa2aaa53b # initialize rs1
li x10, 0xa601177d # initialize rs2
and x30, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x15, 0x0bbafdc9 # initialize rs1
li x17, 0x3c995c3e # initialize rs2
and x31, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x17, 0x00000000 # initialize rs1
li x11, 0x89e9659a # initialize rs2
and x9, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x26, 0x00000001 # initialize rs1
li x25, 0x17ab3201 # initialize rs2
and x14, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x18, 0x00000002 # initialize rs1
li x24, 0xfa7ceedc # initialize rs2
and x28, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x2, 0x80000000 # initialize rs1
li x10, 0xfc83f4d2 # initialize rs2
and x16, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x6, 0x80000001 # initialize rs1
li x15, 0xead0bf4f # initialize rs2
and x9, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x27, 0x7fffffff # initialize rs1
li x5, 0x3d904e92 # initialize rs2
and x26, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x28, 0x7ffffffe # initialize rs1
li x21, 0x07bd99a2 # initialize rs2
and x10, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0xffffffff # initialize rs1
li x24, 0xfb51a8cc # initialize rs2
and x21, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0xfffffffe # initialize rs1
li x26, 0xb041044d # initialize rs2
and x13, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x18, 0x5bbc8872 # initialize rs1
li x26, 0xc45598fc # initialize rs2
and x29, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x23, 0xaaaaaaaa # initialize rs1
li x24, 0xd14d0ce5 # initialize rs2
and x5, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x29, 0x55555555 # initialize rs1
li x2, 0xd3ae8196 # initialize rs2
and x27, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0x053b6da9 # initialize rs1
li x2, 0x00000000 # initialize rs2
and x12, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0xaced8bb2 # initialize rs1
li x12, 0x00000001 # initialize rs2
and x15, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0x001b57ae # initialize rs1
li x22, 0x00000002 # initialize rs2
and x25, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x24, 0xdc05f25a # initialize rs1
li x9, 0x80000000 # initialize rs2
and x1, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x14, 0xfd8f0343 # initialize rs1
li x27, 0x80000001 # initialize rs2
and x19, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x18, 0x9d2576ad # initialize rs1
li x13, 0x7fffffff # initialize rs2
and x17, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x30, 0x21704952 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
and x21, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x12, 0x79059101 # initialize rs1
li x29, 0xffffffff # initialize rs2
and x22, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x9, 0x154d18f7 # initialize rs1
li x24, 0xfffffffe # initialize rs2
and x10, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x11, 0xabf9703f # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
and x14, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x25, 0x6af5e763 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
and x28, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x11, 0x4ba84251 # initialize rs1
li x27, 0x55555555 # initialize rs2
and x14, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x8, 0x00000000 # initialize rs1
li x29, 0x00000000 # initialize rs2
and x5, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x10, 0x00000000 # initialize rs1
li x12, 0x00000001 # initialize rs2
and x24, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x29, 0x00000000 # initialize rs1
li x12, 0x00000002 # initialize rs2
and x18, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x11, 0x00000000 # initialize rs1
li x14, 0x80000000 # initialize rs2
and x23, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x22, 0x00000000 # initialize rs1
li x19, 0x80000001 # initialize rs2
and x28, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x12, 0x00000000 # initialize rs1
li x1, 0x7fffffff # initialize rs2
and x23, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x30, 0x00000000 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
and x28, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x12, 0x00000000 # initialize rs1
li x17, 0xffffffff # initialize rs2
and x8, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x16, 0x00000000 # initialize rs1
li x31, 0xfffffffe # initialize rs2
and x2, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x7, 0x00000000 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
and x11, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x14, 0x00000000 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
and x7, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x3, 0x00000000 # initialize rs1
li x28, 0x55555555 # initialize rs2
and x9, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x6, 0x00000001 # initialize rs1
li x11, 0x00000000 # initialize rs2
and x2, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x17, 0x00000001 # initialize rs1
li x13, 0x00000001 # initialize rs2
and x21, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x19, 0x00000001 # initialize rs1
li x20, 0x00000002 # initialize rs2
and x7, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x20, 0x00000001 # initialize rs1
li x14, 0x80000000 # initialize rs2
and x13, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x28, 0x00000001 # initialize rs1
li x12, 0x80000001 # initialize rs2
and x20, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x13, 0x00000001 # initialize rs1
li x26, 0x7fffffff # initialize rs2
and x30, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x2, 0x00000001 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
and x29, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x24, 0x00000001 # initialize rs1
li x17, 0xffffffff # initialize rs2
and x20, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x16, 0x00000001 # initialize rs1
li x1, 0xfffffffe # initialize rs2
and x30, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x21, 0x00000001 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
and x17, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x13, 0x00000001 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
and x22, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x5, 0x00000001 # initialize rs1
li x20, 0x55555555 # initialize rs2
and x25, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x18, 0x00000002 # initialize rs1
li x15, 0x00000000 # initialize rs2
and x6, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x6, 0x00000002 # initialize rs1
li x23, 0x00000001 # initialize rs2
and x12, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x25, 0x00000002 # initialize rs1
li x23, 0x00000002 # initialize rs2
and x28, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x28, 0x00000002 # initialize rs1
li x29, 0x80000000 # initialize rs2
and x14, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x31, 0x00000002 # initialize rs1
li x14, 0x80000001 # initialize rs2
and x26, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x10, 0x00000002 # initialize rs1
li x20, 0x7fffffff # initialize rs2
and x6, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x7, 0x00000002 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
and x15, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x15, 0x00000002 # initialize rs1
li x25, 0xffffffff # initialize rs2
and x22, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x7, 0x00000002 # initialize rs1
li x10, 0xfffffffe # initialize rs2
and x30, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x6, 0x00000002 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
and x21, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x7, 0x00000002 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
and x11, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x31, 0x00000002 # initialize rs1
li x30, 0x55555555 # initialize rs2
and x8, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x21, 0x80000000 # initialize rs1
li x2, 0x00000000 # initialize rs2
and x18, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x1, 0x80000000 # initialize rs1
li x18, 0x00000001 # initialize rs2
and x8, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x28, 0x80000000 # initialize rs1
li x14, 0x00000002 # initialize rs2
and x8, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x26, 0x80000000 # initialize rs1
li x5, 0x80000000 # initialize rs2
and x23, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x5, 0x80000000 # initialize rs1
li x27, 0x80000001 # initialize rs2
and x10, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x14, 0x80000000 # initialize rs1
li x2, 0x7fffffff # initialize rs2
and x16, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x29, 0x80000000 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
and x25, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x16, 0x80000000 # initialize rs1
li x13, 0xffffffff # initialize rs2
and x15, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x12, 0x80000000 # initialize rs1
li x21, 0xfffffffe # initialize rs2
and x27, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x20, 0x80000000 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
and x6, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x2, 0x80000000 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
and x31, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x30, 0x80000000 # initialize rs1
li x22, 0x55555555 # initialize rs2
and x23, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x20, 0x80000001 # initialize rs1
li x13, 0x00000000 # initialize rs2
and x10, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x13, 0x80000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
and x14, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x27, 0x80000001 # initialize rs1
li x22, 0x00000002 # initialize rs2
and x3, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x30, 0x80000001 # initialize rs1
li x6, 0x80000000 # initialize rs2
and x11, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x10, 0x80000001 # initialize rs1
li x31, 0x80000001 # initialize rs2
and x5, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x11, 0x80000001 # initialize rs1
li x3, 0x7fffffff # initialize rs2
and x7, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x12, 0x80000001 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
and x1, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x29, 0x80000001 # initialize rs1
li x18, 0xffffffff # initialize rs2
and x25, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x8, 0x80000001 # initialize rs1
li x28, 0xfffffffe # initialize rs2
and x1, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x26, 0x80000001 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
and x15, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x1, 0x80000001 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
and x20, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x26, 0x80000001 # initialize rs1
li x18, 0x55555555 # initialize rs2
and x17, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x30, 0x7fffffff # initialize rs1
li x20, 0x00000000 # initialize rs2
and x11, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x1, 0x7fffffff # initialize rs1
li x9, 0x00000001 # initialize rs2
and x20, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x29, 0x7fffffff # initialize rs1
li x24, 0x00000002 # initialize rs2
and x11, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x20, 0x7fffffff # initialize rs1
li x9, 0x80000000 # initialize rs2
and x18, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x23, 0x7fffffff # initialize rs1
li x19, 0x80000001 # initialize rs2
and x15, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x12, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
and x18, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x24, 0x7fffffff # initialize rs1
li x2, 0x7ffffffe # initialize rs2
and x22, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x12, 0x7fffffff # initialize rs1
li x25, 0xffffffff # initialize rs2
and x17, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x10, 0x7fffffff # initialize rs1
li x5, 0xfffffffe # initialize rs2
and x27, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x25, 0x7fffffff # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
and x30, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x5, 0x7fffffff # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
and x17, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x6, 0x7fffffff # initialize rs1
li x2, 0x55555555 # initialize rs2
and x29, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x23, 0x7ffffffe # initialize rs1
li x12, 0x00000000 # initialize rs2
and x20, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x10, 0x7ffffffe # initialize rs1
li x19, 0x00000001 # initialize rs2
and x16, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x16, 0x7ffffffe # initialize rs1
li x7, 0x00000002 # initialize rs2
and x20, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x27, 0x7ffffffe # initialize rs1
li x21, 0x80000000 # initialize rs2
and x7, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x9, 0x7ffffffe # initialize rs1
li x24, 0x80000001 # initialize rs2
and x15, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x5, 0x7ffffffe # initialize rs1
li x19, 0x7fffffff # initialize rs2
and x3, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x6, 0x7ffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
and x13, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x16, 0x7ffffffe # initialize rs1
li x20, 0xffffffff # initialize rs2
and x7, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x30, 0x7ffffffe # initialize rs1
li x29, 0xfffffffe # initialize rs2
and x20, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x26, 0x7ffffffe # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
and x18, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x30, 0x7ffffffe # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
and x21, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x18, 0x7ffffffe # initialize rs1
li x1, 0x55555555 # initialize rs2
and x27, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x31, 0xffffffff # initialize rs1
li x30, 0x00000000 # initialize rs2
and x1, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x16, 0xffffffff # initialize rs1
li x6, 0x00000001 # initialize rs2
and x29, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x7, 0xffffffff # initialize rs1
li x30, 0x00000002 # initialize rs2
and x12, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x10, 0xffffffff # initialize rs1
li x7, 0x80000000 # initialize rs2
and x2, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x23, 0xffffffff # initialize rs1
li x28, 0x80000001 # initialize rs2
and x22, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x21, 0xffffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
and x27, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x16, 0xffffffff # initialize rs1
li x6, 0x7ffffffe # initialize rs2
and x21, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x17, 0xffffffff # initialize rs1
li x28, 0xffffffff # initialize rs2
and x18, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x15, 0xffffffff # initialize rs1
li x8, 0xfffffffe # initialize rs2
and x24, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x25, 0xffffffff # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
and x17, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x12, 0xffffffff # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
and x29, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x21, 0xffffffff # initialize rs1
li x31, 0x55555555 # initialize rs2
and x10, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x24, 0xfffffffe # initialize rs1
li x11, 0x00000000 # initialize rs2
and x8, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x25, 0xfffffffe # initialize rs1
li x12, 0x00000001 # initialize rs2
and x7, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x28, 0xfffffffe # initialize rs1
li x2, 0x00000002 # initialize rs2
and x25, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x13, 0xfffffffe # initialize rs1
li x7, 0x80000000 # initialize rs2
and x5, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x13, 0xfffffffe # initialize rs1
li x28, 0x80000001 # initialize rs2
and x8, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x14, 0xfffffffe # initialize rs1
li x6, 0x7fffffff # initialize rs2
and x17, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x14, 0xfffffffe # initialize rs1
li x6, 0x7ffffffe # initialize rs2
and x7, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x21, 0xfffffffe # initialize rs1
li x1, 0xffffffff # initialize rs2
and x6, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x26, 0xfffffffe # initialize rs1
li x2, 0xfffffffe # initialize rs2
and x8, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x30, 0xfffffffe # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
and x9, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x31, 0xfffffffe # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
and x27, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x30, 0xfffffffe # initialize rs1
li x29, 0x55555555 # initialize rs2
and x5, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x3, 0x5bbc8872 # initialize rs1
li x19, 0x00000000 # initialize rs2
and x24, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x17, 0x5bbc8872 # initialize rs1
li x11, 0x00000001 # initialize rs2
and x5, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x27, 0x5bbc8872 # initialize rs1
li x25, 0x00000002 # initialize rs2
and x18, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x12, 0x5bbc8872 # initialize rs1
li x5, 0x80000000 # initialize rs2
and x1, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x26, 0x5bbc8872 # initialize rs1
li x20, 0x80000001 # initialize rs2
and x25, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x6, 0x5bbc8872 # initialize rs1
li x19, 0x7fffffff # initialize rs2
and x24, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x19, 0x5bbc8872 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
and x18, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x8, 0x5bbc8872 # initialize rs1
li x11, 0xffffffff # initialize rs2
and x21, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x3, 0x5bbc8872 # initialize rs1
li x5, 0xfffffffe # initialize rs2
and x29, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x6, 0x5bbc8872 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
and x8, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x19, 0x5bbc8872 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
and x11, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x13, 0x5bbc8872 # initialize rs1
li x6, 0x55555555 # initialize rs2
and x31, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x2, 0xaaaaaaaa # initialize rs1
li x12, 0x00000000 # initialize rs2
and x5, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x13, 0xaaaaaaaa # initialize rs1
li x12, 0x00000001 # initialize rs2
and x20, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x30, 0xaaaaaaaa # initialize rs1
li x17, 0x00000002 # initialize rs2
and x24, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x16, 0xaaaaaaaa # initialize rs1
li x22, 0x80000000 # initialize rs2
and x9, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x1, 0xaaaaaaaa # initialize rs1
li x31, 0x80000001 # initialize rs2
and x7, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x11, 0xaaaaaaaa # initialize rs1
li x26, 0x7fffffff # initialize rs2
and x25, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x18, 0xaaaaaaaa # initialize rs1
li x19, 0x7ffffffe # initialize rs2
and x16, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x14, 0xaaaaaaaa # initialize rs1
li x17, 0xffffffff # initialize rs2
and x7, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x20, 0xaaaaaaaa # initialize rs1
li x5, 0xfffffffe # initialize rs2
and x31, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x28, 0xaaaaaaaa # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
and x24, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
and x28, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x21, 0xaaaaaaaa # initialize rs1
li x19, 0x55555555 # initialize rs2
and x17, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x3, 0x55555555 # initialize rs1
li x7, 0x00000000 # initialize rs2
and x16, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x24, 0x55555555 # initialize rs1
li x28, 0x00000001 # initialize rs2
and x27, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x18, 0x55555555 # initialize rs1
li x13, 0x00000002 # initialize rs2
and x25, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x24, 0x55555555 # initialize rs1
li x29, 0x80000000 # initialize rs2
and x9, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x18, 0x55555555 # initialize rs1
li x7, 0x80000001 # initialize rs2
and x22, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x3, 0x55555555 # initialize rs1
li x17, 0x7fffffff # initialize rs2
and x13, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x25, 0x55555555 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
and x22, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x8, 0x55555555 # initialize rs1
li x24, 0xffffffff # initialize rs2
and x2, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x17, 0x55555555 # initialize rs1
li x23, 0xfffffffe # initialize rs2
and x15, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x9, 0x55555555 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
and x31, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x20, 0x55555555 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
and x10, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x16, 0x55555555 # initialize rs1
li x31, 0x55555555 # initialize rs2
and x22, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x5b7f740a # initialize rs1
li x0, 0x7094c424 # initialize rs2
and x21, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x31436217 # initialize rs1
li x1, 0xacb8e5f0 # initialize rs2
and x8, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x45a6c658 # initialize rs1
li x2, 0xafea3403 # initialize rs2
and x3, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x398e7895 # initialize rs1
li x3, 0xb686f0ed # initialize rs2
and x5, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd4e73d3c # initialize rs1
li x4, 0x4ad646e7 # initialize rs2
and x16, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6a376524 # initialize rs1
li x5, 0x3d1083e0 # initialize rs2
and x20, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x51dadeae # initialize rs1
li x6, 0x7400f629 # initialize rs2
and x9, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb3108177 # initialize rs1
li x7, 0xd89717fe # initialize rs2
and x24, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xcfc29099 # initialize rs1
li x8, 0x663b1f24 # initialize rs2
and x19, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x24f81964 # initialize rs1
li x9, 0x9aef0463 # initialize rs2
and x6, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xd7903e03 # initialize rs1
li x10, 0x5fa6f641 # initialize rs2
and x2, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x8d377777 # initialize rs1
li x11, 0xece4385a # initialize rs2
and x1, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x435c73e0 # initialize rs1
li x12, 0x0cda812e # initialize rs2
and x7, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xc43d2a2b # initialize rs1
li x13, 0x36be1a9a # initialize rs2
and x5, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xe2fa2c1f # initialize rs1
li x14, 0xea8ba01e # initialize rs2
and x16, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x49967959 # initialize rs1
li x15, 0x10e8c751 # initialize rs2
and x28, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x659cad26 # initialize rs1
li x16, 0x0e1367f0 # initialize rs2
and x22, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x5a0edf17 # initialize rs1
li x17, 0x00e6f8c1 # initialize rs2
and x26, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xb62145ce # initialize rs1
li x18, 0xcaabd25a # initialize rs2
and x25, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xc9b0bc8d # initialize rs1
li x19, 0x90b75105 # initialize rs2
and x1, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x4c86d5ba # initialize rs1
li x20, 0x712e1475 # initialize rs2
and x18, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x7e7d3bed # initialize rs1
li x21, 0xf7f5c409 # initialize rs2
and x31, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x674dc30d # initialize rs1
li x22, 0xb7773d40 # initialize rs2
and x26, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x36b3c921 # initialize rs1
li x23, 0x74668f00 # initialize rs2
and x10, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xdf95cd36 # initialize rs1
li x24, 0x19a5dd64 # initialize rs2
and x12, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xe8693bc4 # initialize rs1
li x25, 0xdcd96955 # initialize rs2
and x15, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x75ba192a # initialize rs1
li x26, 0x6803469d # initialize rs2
and x19, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xab25cee4 # initialize rs1
li x27, 0x9e1184b0 # initialize rs2
and x17, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x7b332824 # initialize rs1
li x28, 0x05f1b0ac # initialize rs2
and x31, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x08574cbc # initialize rs1
li x29, 0xa92f93aa # initialize rs2
and x31, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x3f027e48 # initialize rs1
li x30, 0xba6c478f # initialize rs2
and x7, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xfe1d4187 # initialize rs1
li x31, 0x7fe3a8c3 # initialize rs2
and x29, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x51f0089a # initialize rs1
li x22, 0xadee1703 # initialize rs2
and x0, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x836fd5c8 # initialize rs1
li x6, 0xf5ae7b18 # initialize rs2
and x1, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x72461275 # initialize rs1
li x10, 0x6cd74678 # initialize rs2
and x2, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x9cfff001 # initialize rs1
li x14, 0x6f4f2b74 # initialize rs2
and x3, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1857192e # initialize rs1
li x13, 0x56c6664f # initialize rs2
and x4, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x100776b5 # initialize rs1
li x17, 0xab38b8e9 # initialize rs2
and x5, x5, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcad1756b # initialize rs1
li x10, 0xf3d4710c # initialize rs2
and x6, x6, x10 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbf835919 # initialize rs1
li x12, 0xf4cba671 # initialize rs2
and x7, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x56d4dad8 # initialize rs1
li x25, 0x934083bd # initialize rs2
and x8, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x65fff04d # initialize rs1
li x26, 0x72910c53 # initialize rs2
and x9, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xbe94cf73 # initialize rs1
li x17, 0x6b1fa208 # initialize rs2
and x10, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xcd8db90b # initialize rs1
li x25, 0x3106e539 # initialize rs2
and x11, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xcab06133 # initialize rs1
li x24, 0x228f3ba4 # initialize rs2
and x12, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x993d9e7f # initialize rs1
li x5, 0x7b831fd4 # initialize rs2
and x13, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x283cc831 # initialize rs1
li x23, 0x16231eab # initialize rs2
and x14, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x67cd631f # initialize rs1
li x19, 0x2c207dad # initialize rs2
and x15, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x3f40c277 # initialize rs1
li x8, 0x062f2aa7 # initialize rs2
and x16, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x6ee18856 # initialize rs1
li x6, 0xb1073ebd # initialize rs2
and x17, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x9a9f3267 # initialize rs1
li x26, 0xe1870d85 # initialize rs2
and x18, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x76b71bfe # initialize rs1
li x21, 0x88c6523a # initialize rs2
and x19, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xcf5ef11c # initialize rs1
li x26, 0x6c43ed15 # initialize rs2
and x20, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x59ffb0f0 # initialize rs1
li x30, 0x19754d8e # initialize rs2
and x21, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x35181ca9 # initialize rs1
li x8, 0x65cd1d34 # initialize rs2
and x22, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xcf9ef2fb # initialize rs1
li x29, 0xe122991a # initialize rs2
and x23, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xc89ea3ad # initialize rs1
li x11, 0xbcba4cdf # initialize rs2
and x24, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x0601028d # initialize rs1
li x5, 0xadf15155 # initialize rs2
and x25, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xa3bb020f # initialize rs1
li x21, 0x1dbf5be7 # initialize rs2
and x26, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x2ad3ad7a # initialize rs1
li x13, 0x105893d3 # initialize rs2
and x27, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x7ebe98eb # initialize rs1
li x15, 0x8be54c1d # initialize rs2
and x28, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x846f7acd # initialize rs1
li x27, 0x5f905fb2 # initialize rs2
and x29, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xf5555e33 # initialize rs1
li x28, 0x801bd765 # initialize rs2
and x30, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xda376008 # initialize rs1
li x23, 0x954d86dd # initialize rs2
and x31, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x29, 0x26a3d320 # initialize rs1
li x0, 0x1782b151 # initialize rs2
and x0, x29, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x29, 0xf16e266d # initialize rs1
li x1, 0xcf9266f0 # initialize rs2
and x1, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x9, 0x97539935 # initialize rs1
li x2, 0x81cfc56d # initialize rs2
and x2, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x25, 0x17089124 # initialize rs1
li x3, 0x3190b7d5 # initialize rs2
and x3, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x16, 0x755fb8f2 # initialize rs1
li x4, 0xe8b23271 # initialize rs2
and x4, x16, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0x89270129 # initialize rs1
li x5, 0x1abc5e52 # initialize rs2
and x5, x11, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x36ea7d17 # initialize rs1
li x6, 0xdd908a0c # initialize rs2
and x6, x22, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x7b42e7e1 # initialize rs1
li x7, 0xe58cd896 # initialize rs2
and x7, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x18, 0xc1943b89 # initialize rs1
li x8, 0xe6ee7b13 # initialize rs2
and x8, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x29, 0x29252e60 # initialize rs1
li x9, 0xed0a86bc # initialize rs2
and x9, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x22, 0x56bc303a # initialize rs1
li x10, 0xac18b3da # initialize rs2
and x10, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x29, 0x552da374 # initialize rs1
li x11, 0x12eacea0 # initialize rs2
and x11, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x2, 0x97a278f0 # initialize rs1
li x12, 0xdfa80048 # initialize rs2
and x12, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xf6fd2420 # initialize rs1
li x13, 0xbf3f9b5b # initialize rs2
and x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x22, 0x6b3a8fa8 # initialize rs1
li x14, 0xdc8a3df0 # initialize rs2
and x14, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x3, 0xeb116626 # initialize rs1
li x15, 0x8c3eaa33 # initialize rs2
and x15, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x6, 0xbb6f8638 # initialize rs1
li x16, 0xa89adefe # initialize rs2
and x16, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x29, 0xc8ec2920 # initialize rs1
li x17, 0xc8381170 # initialize rs2
and x17, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x17, 0x0344adc8 # initialize rs1
li x18, 0x16ac6573 # initialize rs2
and x18, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x12, 0xf9e0b615 # initialize rs1
li x19, 0x9e67d1eb # initialize rs2
and x19, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x30, 0xd7948a30 # initialize rs1
li x20, 0x2e4d012b # initialize rs2
and x20, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x6, 0xc82a1738 # initialize rs1
li x21, 0x7000693b # initialize rs2
and x21, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x13, 0x962865e2 # initialize rs1
li x22, 0x515aeb8e # initialize rs2
and x22, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x2c825b0b # initialize rs1
li x23, 0x06e9b01e # initialize rs2
and x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x25, 0xbca5ae98 # initialize rs1
li x24, 0x42897b81 # initialize rs2
and x24, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x14, 0xc1e2fcaa # initialize rs1
li x25, 0x1983af44 # initialize rs2
and x25, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x29, 0xab040295 # initialize rs1
li x26, 0x1e38f713 # initialize rs2
and x26, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x3, 0xea94bb7a # initialize rs1
li x27, 0x767b8867 # initialize rs2
and x27, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x29, 0x746c051c # initialize rs1
li x28, 0xed072b0d # initialize rs2
and x28, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x26, 0x35e0f8e1 # initialize rs1
li x29, 0x5aa01790 # initialize rs2
and x29, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x5, 0xd5b833da # initialize rs1
li x30, 0x26f2f7ba # initialize rs2
and x30, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x10, 0x1b4d4165 # initialize rs1
li x31, 0x351b9373 # initialize rs2
and x31, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x95c26119 # initialize rs1
li x0, 0xa7a187f3 # initialize rs2
and x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xe86ad18b # initialize rs1
li x1, 0xfec3389c # initialize rs2
and x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x882e2490 # initialize rs1
li x2, 0x72e13f3b # initialize rs2
and x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xec6d717d # initialize rs1
li x3, 0xbcd02e99 # initialize rs2
and x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb8c635f6 # initialize rs1
li x4, 0x68a119a6 # initialize rs2
and x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbfbd6c44 # initialize rs1
li x5, 0xa825022d # initialize rs2
and x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe4fe857c # initialize rs1
li x6, 0xb9af6174 # initialize rs2
and x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x2e8ad3c2 # initialize rs1
li x7, 0xbe9a6a63 # initialize rs2
and x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x0973d6c6 # initialize rs1
li x8, 0x69a8a52f # initialize rs2
and x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x886517bf # initialize rs1
li x9, 0x0c1f9887 # initialize rs2
and x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x2b16654d # initialize rs1
li x10, 0xd8a6e8e6 # initialize rs2
and x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x7b504090 # initialize rs1
li x11, 0x4693a4e3 # initialize rs2
and x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xc4f3a548 # initialize rs1
li x12, 0x922d2684 # initialize rs2
and x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xe764c586 # initialize rs1
li x13, 0xae4abb42 # initialize rs2
and x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x308503ab # initialize rs1
li x14, 0xb0e248ef # initialize rs2
and x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x7068e2b8 # initialize rs1
li x15, 0x7af64818 # initialize rs2
and x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x6739576a # initialize rs1
li x16, 0xf2928893 # initialize rs2
and x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x3ddb2c64 # initialize rs1
li x17, 0x1e263f0b # initialize rs2
and x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x2a2d2d50 # initialize rs1
li x18, 0xb4c613f8 # initialize rs2
and x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xd6cf9281 # initialize rs1
li x19, 0xd8a17b29 # initialize rs2
and x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xfbfc5c07 # initialize rs1
li x20, 0x1f34bb98 # initialize rs2
and x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x2fe55a7a # initialize rs1
li x21, 0xaf8afed5 # initialize rs2
and x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x3f3fa7ec # initialize rs1
li x22, 0xc443ee6a # initialize rs2
and x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xee0747cc # initialize rs1
li x23, 0xd4b41f2a # initialize rs2
and x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xea21017e # initialize rs1
li x24, 0x52b4f614 # initialize rs2
and x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x8fc462ef # initialize rs1
li x25, 0x7eb30122 # initialize rs2
and x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x47004514 # initialize rs1
li x26, 0x9aac9c74 # initialize rs2
and x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xcc2e4c80 # initialize rs1
li x27, 0x4f6702ed # initialize rs2
and x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x195034e5 # initialize rs1
li x28, 0x0a3ea40f # initialize rs2
and x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x3a5c1ac3 # initialize rs1
li x29, 0xdc4f9df4 # initialize rs2
and x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x63d01d0a # initialize rs1
li x30, 0x85236c06 # initialize rs2
and x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x7aad8f87 # initialize rs1
li x31, 0x718ac72b # initialize rs2
and x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x25, x6 # perform first operation
and x29, x13, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x14, x1 # perform first operation
and x11, x25, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x16, x5 # perform first operation
and x26, x29, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x7, x22 # perform first operation
and x22, x2, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x3, x26 # perform first operation
and x5, x17, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x19, x3 # perform first operation
and x13, x9, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x9, x6 # perform first operation
and x31, x7, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x27, x17 # perform first operation
and x23, x3, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x18, x11 # perform first operation
and x6, x28, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x1, x22 # perform first operation
and x1, x20, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x20, x7 # perform first operation
and x7, x19, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x26, x1 # perform first operation
and x27, x22, x6 # perform second (triggering) operation

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
