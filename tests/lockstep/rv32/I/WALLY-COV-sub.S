///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-sub.S
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
li x0, 0xd54cc625 # initialize rs1
li x27, 0x8f82d8c0 # initialize rs2
sub x26, x0, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x0a174fc6 # initialize rs1
li x12, 0x7065a95c # initialize rs2
sub x16, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x3612a486 # initialize rs1
li x7, 0x26bcb54b # initialize rs2
sub x29, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xbfb0fa12 # initialize rs1
li x9, 0x8f3a2478 # initialize rs2
sub x31, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x13695800 # initialize rs1
li x22, 0x6d6d81d9 # initialize rs2
sub x5, x4, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
li x5, 0x3c074215 # initialize rs1
li x16, 0x869b17eb # initialize rs2
sub x2, x5, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x82858110 # initialize rs1
li x19, 0xcce38cfc # initialize rs2
sub x12, x6, x19 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x379f277a # initialize rs1
li x9, 0xa335bea1 # initialize rs2
sub x18, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xf00bc6ee # initialize rs1
li x20, 0xeb043c3d # initialize rs2
sub x10, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xd145aa13 # initialize rs1
li x29, 0x836cb930 # initialize rs2
sub x15, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x12f7d37c # initialize rs1
li x11, 0xf657bfaf # initialize rs2
sub x1, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x63d998de # initialize rs1
li x7, 0x9c27ca40 # initialize rs2
sub x10, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xfbfbe2d6 # initialize rs1
li x29, 0x7ffa0b2c # initialize rs2
sub x20, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x96a100b8 # initialize rs1
li x18, 0x83363b56 # initialize rs2
sub x3, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xf170fbd5 # initialize rs1
li x20, 0xd5964622 # initialize rs2
sub x24, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x10a38481 # initialize rs1
li x30, 0x5400feab # initialize rs2
sub x14, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x64c7b8b6 # initialize rs1
li x2, 0x5fbe76da # initialize rs2
sub x19, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x67259c22 # initialize rs1
li x5, 0x42634772 # initialize rs2
sub x22, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xcf812e8e # initialize rs1
li x23, 0x6f4e6a65 # initialize rs2
sub x14, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xe93242d7 # initialize rs1
li x31, 0xa87fe329 # initialize rs2
sub x17, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xe1470b4c # initialize rs1
li x29, 0xcfd16a68 # initialize rs2
sub x1, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x327070a9 # initialize rs1
li x1, 0xacd3b7ab # initialize rs2
sub x22, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x922ca66c # initialize rs1
li x1, 0xc4c259ca # initialize rs2
sub x24, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xd422a20b # initialize rs1
li x10, 0xbbef5c79 # initialize rs2
sub x22, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x5d0127c6 # initialize rs1
li x31, 0x722675a5 # initialize rs2
sub x22, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xdd357aea # initialize rs1
li x8, 0x9cc07c6b # initialize rs2
sub x6, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x8304354d # initialize rs1
li x12, 0x1aa31253 # initialize rs2
sub x3, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xe977bd68 # initialize rs1
li x10, 0x06afedee # initialize rs2
sub x26, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x044d6003 # initialize rs1
li x21, 0xc3d2f3ad # initialize rs2
sub x11, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x4270a2b3 # initialize rs1
li x14, 0x9d87e81f # initialize rs2
sub x9, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x55413dd6 # initialize rs1
li x17, 0x86fd268d # initialize rs2
sub x10, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x473ba48f # initialize rs1
li x5, 0xa09ced1c # initialize rs2
sub x9, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x6, 0x29569575 # initialize rs1
li x0, 0xce6d8f31 # initialize rs2
sub x25, x6, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x17, 0x69f471a3 # initialize rs1
li x1, 0xb5642f10 # initialize rs2
sub x13, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x30, 0x3036ccdd # initialize rs1
li x2, 0xba851186 # initialize rs2
sub x20, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x19, 0xb796f060 # initialize rs1
li x3, 0xa1cfaae1 # initialize rs2
sub x2, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0x1ee9a912 # initialize rs1
li x4, 0x7c345f09 # initialize rs2
sub x9, x18, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x2a1e20d0 # initialize rs1
li x5, 0x2d2e3c7f # initialize rs2
sub x20, x23, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0xca855f39 # initialize rs1
li x6, 0xa8113e0b # initialize rs2
sub x9, x15, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0x0163d244 # initialize rs1
li x7, 0x678ccda1 # initialize rs2
sub x14, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x14, 0x5d1277ce # initialize rs1
li x8, 0x0fedb538 # initialize rs2
sub x6, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x8, 0x6bb6eb41 # initialize rs1
li x9, 0x0463026a # initialize rs2
sub x5, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x28, 0x3f8b2dc8 # initialize rs1
li x10, 0x29c83323 # initialize rs2
sub x19, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x25, 0x010ded82 # initialize rs1
li x11, 0xc3e21050 # initialize rs2
sub x8, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x21, 0xcd974914 # initialize rs1
li x12, 0x23a2bc75 # initialize rs2
sub x15, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x15, 0xaa589d8d # initialize rs1
li x13, 0x25d4e430 # initialize rs2
sub x14, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x19, 0xf78a7491 # initialize rs1
li x14, 0x0dbff178 # initialize rs2
sub x8, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x14, 0xbe0873e7 # initialize rs1
li x15, 0xcc808527 # initialize rs2
sub x5, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x7, 0x1de2821d # initialize rs1
li x16, 0x2a4e7db3 # initialize rs2
sub x3, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x23, 0xb77f287e # initialize rs1
li x17, 0x3832c644 # initialize rs2
sub x12, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x20, 0xcd4ea37b # initialize rs1
li x18, 0xb6f034cf # initialize rs2
sub x21, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x29, 0xaa28e521 # initialize rs1
li x19, 0xe1130ce7 # initialize rs2
sub x16, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x6, 0x6cbd32e7 # initialize rs1
li x20, 0x1e71ce83 # initialize rs2
sub x1, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x2, 0xe3077183 # initialize rs1
li x21, 0xeae80092 # initialize rs2
sub x12, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x7, 0x57c9c9dc # initialize rs1
li x22, 0x1356e413 # initialize rs2
sub x15, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x30, 0x78cb2351 # initialize rs1
li x23, 0x5f894e33 # initialize rs2
sub x12, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x28, 0x7c39b859 # initialize rs1
li x24, 0xab3f68f1 # initialize rs2
sub x21, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x9, 0xf4eb3104 # initialize rs1
li x25, 0xc52f21e4 # initialize rs2
sub x3, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0xe6b0d1e5 # initialize rs1
li x26, 0x4f93d100 # initialize rs2
sub x6, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x29, 0x29f36609 # initialize rs1
li x27, 0xbdcdb800 # initialize rs2
sub x21, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x1, 0xec51666e # initialize rs1
li x28, 0x7d9c541d # initialize rs2
sub x5, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x18, 0x995f643f # initialize rs1
li x29, 0x7db5dccb # initialize rs2
sub x3, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x26, 0x6f1f293c # initialize rs1
li x30, 0xea6d7442 # initialize rs2
sub x1, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x11, 0xd9dc2036 # initialize rs1
li x31, 0x6dcc1501 # initialize rs2
sub x6, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 252)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0xf0185ba0 # initialize rs1
li x31, 0x930efbee # initialize rs2
sub x0, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x3, 0x7c955067 # initialize rs1
li x31, 0x37f8bf04 # initialize rs2
sub x1, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x7, 0xad2bd9d0 # initialize rs1
li x30, 0xa1bf7972 # initialize rs2
sub x2, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x28, 0x39523266 # initialize rs1
li x8, 0x9c560e46 # initialize rs2
sub x3, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0x214d5a68 # initialize rs1
li x16, 0xaf8f1431 # initialize rs2
sub x4, x17, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0x2b185be9 # initialize rs1
li x18, 0x90feaf4e # initialize rs2
sub x5, x17, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0x746ee1be # initialize rs1
li x10, 0xdf817c56 # initialize rs2
sub x6, x14, x10 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0x2fb26b22 # initialize rs1
li x11, 0x3308df38 # initialize rs2
sub x7, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x18, 0x6740bdc2 # initialize rs1
li x13, 0x25b54048 # initialize rs2
sub x8, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x28, 0x633cca57 # initialize rs1
li x10, 0x26c51350 # initialize rs2
sub x9, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x19, 0x996466e5 # initialize rs1
li x6, 0xd3f69b81 # initialize rs2
sub x10, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x1, 0xb621cc62 # initialize rs1
li x21, 0x903a4ad3 # initialize rs2
sub x11, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x19, 0x0947b572 # initialize rs1
li x31, 0xbf9788fe # initialize rs2
sub x12, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x9, 0x7ffb761e # initialize rs1
li x15, 0xc728dfba # initialize rs2
sub x13, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x27, 0x42fe8e80 # initialize rs1
li x15, 0x9e83f83a # initialize rs2
sub x14, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x14, 0x8ae34eee # initialize rs1
li x20, 0x89b6f40f # initialize rs2
sub x15, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x1, 0x12a6560c # initialize rs1
li x11, 0xda0b0273 # initialize rs2
sub x16, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x14, 0x36c79d2a # initialize rs1
li x12, 0xa5ee8cf3 # initialize rs2
sub x17, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x6, 0x2981d4d1 # initialize rs1
li x5, 0x9ec5570a # initialize rs2
sub x18, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x15, 0x5596ec08 # initialize rs1
li x8, 0xdc62d8f9 # initialize rs2
sub x19, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x1, 0xb156d91f # initialize rs1
li x20, 0xfc224b2b # initialize rs2
sub x20, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xc26d9bfe # initialize rs1
li x17, 0x2bb2ab1c # initialize rs2
sub x21, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0x12312c25 # initialize rs1
li x20, 0x76e3c0af # initialize rs2
sub x22, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x15, 0x6f13c003 # initialize rs1
li x30, 0xdf110d4c # initialize rs2
sub x23, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x30, 0x1a08b61b # initialize rs1
li x13, 0x44d29fd3 # initialize rs2
sub x24, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x15, 0x72a97294 # initialize rs1
li x9, 0xe5edee15 # initialize rs2
sub x25, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x28, 0x34426da8 # initialize rs1
li x23, 0x29318d8a # initialize rs2
sub x26, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x7, 0x193eefdf # initialize rs1
li x1, 0x5ddc0c85 # initialize rs2
sub x27, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x22, 0x6991c666 # initialize rs1
li x5, 0x7f54afc9 # initialize rs2
sub x28, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x8, 0xec5aef00 # initialize rs1
li x7, 0x24473a78 # initialize rs2
sub x29, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x11, 0x89d05fd2 # initialize rs1
li x26, 0x5b1cdd41 # initialize rs2
sub x30, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x15, 0xaa5d21bc # initialize rs1
li x18, 0x100a8ee9 # initialize rs2
sub x31, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x27, 0x00000000 # initialize rs1
li x31, 0x5c33d330 # initialize rs2
sub x15, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x00000001 # initialize rs1
li x1, 0x63b221a9 # initialize rs2
sub x28, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x00000002 # initialize rs1
li x16, 0xb3a5a80c # initialize rs2
sub x18, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x7, 0x80000000 # initialize rs1
li x22, 0xebb25d58 # initialize rs2
sub x1, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x28, 0x80000001 # initialize rs1
li x9, 0xd4069268 # initialize rs2
sub x26, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x1, 0x7fffffff # initialize rs1
li x30, 0xa3946d85 # initialize rs2
sub x23, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x9, 0x7ffffffe # initialize rs1
li x12, 0x9045cc12 # initialize rs2
sub x5, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0xffffffff # initialize rs1
li x12, 0xb225cfc1 # initialize rs2
sub x14, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x28, 0xfffffffe # initialize rs1
li x25, 0x6f285fa7 # initialize rs2
sub x9, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x18, 0x5bbc8872 # initialize rs1
li x21, 0x47e73b56 # initialize rs2
sub x3, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x7, 0xaaaaaaaa # initialize rs1
li x25, 0xd20e9d26 # initialize rs2
sub x23, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x21, 0x55555555 # initialize rs1
li x2, 0xe4b75dc6 # initialize rs2
sub x23, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x2, 0xcd52a2a2 # initialize rs1
li x29, 0x00000000 # initialize rs2
sub x16, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0xc876f990 # initialize rs1
li x3, 0x00000001 # initialize rs2
sub x31, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x18, 0x88e88488 # initialize rs1
li x16, 0x00000002 # initialize rs2
sub x21, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x27, 0x211f5b4f # initialize rs1
li x1, 0x80000000 # initialize rs2
sub x24, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x24, 0x959eae01 # initialize rs1
li x10, 0x80000001 # initialize rs2
sub x19, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x13, 0x43668989 # initialize rs1
li x29, 0x7fffffff # initialize rs2
sub x19, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x14, 0x60248e80 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
sub x5, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0xdce60f0f # initialize rs1
li x16, 0xffffffff # initialize rs2
sub x10, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x21, 0x4b34a66c # initialize rs1
li x18, 0xfffffffe # initialize rs2
sub x6, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x6, 0xe90edf64 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
sub x1, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x14, 0x4939f66b # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
sub x23, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x6, 0xdcd6c593 # initialize rs1
li x16, 0x55555555 # initialize rs2
sub x28, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x23, 0x00000000 # initialize rs1
li x22, 0x00000000 # initialize rs2
sub x20, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x1, 0x00000000 # initialize rs1
li x19, 0x00000001 # initialize rs2
sub x13, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x30, 0x00000000 # initialize rs1
li x21, 0x00000002 # initialize rs2
sub x1, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x23, 0x00000000 # initialize rs1
li x19, 0x80000000 # initialize rs2
sub x25, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x1, 0x00000000 # initialize rs1
li x6, 0x80000001 # initialize rs2
sub x17, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x10, 0x00000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
sub x8, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x8, 0x00000000 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
sub x22, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x30, 0x00000000 # initialize rs1
li x29, 0xffffffff # initialize rs2
sub x16, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x9, 0x00000000 # initialize rs1
li x10, 0xfffffffe # initialize rs2
sub x3, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x30, 0x00000000 # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
sub x28, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x7, 0x00000000 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
sub x22, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x13, 0x00000000 # initialize rs1
li x30, 0x55555555 # initialize rs2
sub x19, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x3, 0x00000001 # initialize rs1
li x19, 0x00000000 # initialize rs2
sub x12, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x14, 0x00000001 # initialize rs1
li x3, 0x00000001 # initialize rs2
sub x6, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x14, 0x00000001 # initialize rs1
li x17, 0x00000002 # initialize rs2
sub x15, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x22, 0x00000001 # initialize rs1
li x29, 0x80000000 # initialize rs2
sub x30, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x14, 0x00000001 # initialize rs1
li x20, 0x80000001 # initialize rs2
sub x8, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x5, 0x00000001 # initialize rs1
li x14, 0x7fffffff # initialize rs2
sub x25, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x12, 0x00000001 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
sub x18, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x16, 0x00000001 # initialize rs1
li x23, 0xffffffff # initialize rs2
sub x27, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x5, 0x00000001 # initialize rs1
li x10, 0xfffffffe # initialize rs2
sub x28, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x15, 0x00000001 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
sub x30, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x25, 0x00000001 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
sub x14, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x22, 0x00000001 # initialize rs1
li x13, 0x55555555 # initialize rs2
sub x19, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x11, 0x00000002 # initialize rs1
li x24, 0x00000000 # initialize rs2
sub x7, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x26, 0x00000002 # initialize rs1
li x8, 0x00000001 # initialize rs2
sub x30, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x2, 0x00000002 # initialize rs1
li x13, 0x00000002 # initialize rs2
sub x3, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x30, 0x00000002 # initialize rs1
li x13, 0x80000000 # initialize rs2
sub x21, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x29, 0x00000002 # initialize rs1
li x13, 0x80000001 # initialize rs2
sub x6, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x2, 0x00000002 # initialize rs1
li x24, 0x7fffffff # initialize rs2
sub x9, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x31, 0x00000002 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
sub x25, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x11, 0x00000002 # initialize rs1
li x1, 0xffffffff # initialize rs2
sub x14, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x5, 0x00000002 # initialize rs1
li x6, 0xfffffffe # initialize rs2
sub x26, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x30, 0x00000002 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
sub x9, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x22, 0x00000002 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
sub x31, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x8, 0x00000002 # initialize rs1
li x27, 0x55555555 # initialize rs2
sub x30, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x7, 0x80000000 # initialize rs1
li x3, 0x00000000 # initialize rs2
sub x22, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x22, 0x80000000 # initialize rs1
li x24, 0x00000001 # initialize rs2
sub x14, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x7, 0x80000000 # initialize rs1
li x2, 0x00000002 # initialize rs2
sub x21, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x11, 0x80000000 # initialize rs1
li x15, 0x80000000 # initialize rs2
sub x19, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x23, 0x80000000 # initialize rs1
li x26, 0x80000001 # initialize rs2
sub x28, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x2, 0x80000000 # initialize rs1
li x16, 0x7fffffff # initialize rs2
sub x12, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x24, 0x80000000 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
sub x16, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x11, 0x80000000 # initialize rs1
li x17, 0xffffffff # initialize rs2
sub x1, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x26, 0x80000000 # initialize rs1
li x7, 0xfffffffe # initialize rs2
sub x8, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x13, 0x80000000 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
sub x18, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x17, 0x80000000 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
sub x21, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x9, 0x80000000 # initialize rs1
li x21, 0x55555555 # initialize rs2
sub x23, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x10, 0x80000001 # initialize rs1
li x5, 0x00000000 # initialize rs2
sub x30, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x11, 0x80000001 # initialize rs1
li x9, 0x00000001 # initialize rs2
sub x17, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x5, 0x80000001 # initialize rs1
li x30, 0x00000002 # initialize rs2
sub x27, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x19, 0x80000001 # initialize rs1
li x6, 0x80000000 # initialize rs2
sub x21, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x13, 0x80000001 # initialize rs1
li x8, 0x80000001 # initialize rs2
sub x29, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x5, 0x80000001 # initialize rs1
li x9, 0x7fffffff # initialize rs2
sub x29, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x18, 0x80000001 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sub x3, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x25, 0x80000001 # initialize rs1
li x3, 0xffffffff # initialize rs2
sub x27, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x25, 0x80000001 # initialize rs1
li x29, 0xfffffffe # initialize rs2
sub x9, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x5, 0x80000001 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
sub x6, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x9, 0x80000001 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sub x16, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x14, 0x80000001 # initialize rs1
li x25, 0x55555555 # initialize rs2
sub x26, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x17, 0x7fffffff # initialize rs1
li x28, 0x00000000 # initialize rs2
sub x20, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x8, 0x7fffffff # initialize rs1
li x31, 0x00000001 # initialize rs2
sub x29, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x15, 0x7fffffff # initialize rs1
li x31, 0x00000002 # initialize rs2
sub x30, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x10, 0x7fffffff # initialize rs1
li x5, 0x80000000 # initialize rs2
sub x6, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x19, 0x7fffffff # initialize rs1
li x6, 0x80000001 # initialize rs2
sub x9, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x31, 0x7fffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
sub x26, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x20, 0x7fffffff # initialize rs1
li x23, 0x7ffffffe # initialize rs2
sub x18, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x18, 0x7fffffff # initialize rs1
li x28, 0xffffffff # initialize rs2
sub x21, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x23, 0x7fffffff # initialize rs1
li x2, 0xfffffffe # initialize rs2
sub x10, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x23, 0x7fffffff # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
sub x22, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x24, 0x7fffffff # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
sub x6, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x5, 0x7fffffff # initialize rs1
li x8, 0x55555555 # initialize rs2
sub x28, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x16, 0x7ffffffe # initialize rs1
li x18, 0x00000000 # initialize rs2
sub x9, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x12, 0x7ffffffe # initialize rs1
li x22, 0x00000001 # initialize rs2
sub x21, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x28, 0x7ffffffe # initialize rs1
li x1, 0x00000002 # initialize rs2
sub x27, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x27, 0x7ffffffe # initialize rs1
li x29, 0x80000000 # initialize rs2
sub x24, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x30, 0x7ffffffe # initialize rs1
li x10, 0x80000001 # initialize rs2
sub x17, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x24, 0x7ffffffe # initialize rs1
li x21, 0x7fffffff # initialize rs2
sub x31, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x2, 0x7ffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
sub x25, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x17, 0x7ffffffe # initialize rs1
li x2, 0xffffffff # initialize rs2
sub x27, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x16, 0x7ffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
sub x21, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x31, 0x7ffffffe # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
sub x19, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x7, 0x7ffffffe # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
sub x22, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x31, 0x7ffffffe # initialize rs1
li x8, 0x55555555 # initialize rs2
sub x13, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x27, 0xffffffff # initialize rs1
li x6, 0x00000000 # initialize rs2
sub x28, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x21, 0xffffffff # initialize rs1
li x27, 0x00000001 # initialize rs2
sub x29, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x15, 0xffffffff # initialize rs1
li x25, 0x00000002 # initialize rs2
sub x26, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x13, 0xffffffff # initialize rs1
li x11, 0x80000000 # initialize rs2
sub x20, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x13, 0xffffffff # initialize rs1
li x19, 0x80000001 # initialize rs2
sub x14, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x15, 0xffffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
sub x27, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x24, 0xffffffff # initialize rs1
li x21, 0x7ffffffe # initialize rs2
sub x18, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x5, 0xffffffff # initialize rs1
li x19, 0xffffffff # initialize rs2
sub x13, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x7, 0xffffffff # initialize rs1
li x6, 0xfffffffe # initialize rs2
sub x23, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x16, 0xffffffff # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
sub x29, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x30, 0xffffffff # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sub x22, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x24, 0xffffffff # initialize rs1
li x29, 0x55555555 # initialize rs2
sub x28, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x6, 0xfffffffe # initialize rs1
li x22, 0x00000000 # initialize rs2
sub x16, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x31, 0xfffffffe # initialize rs1
li x9, 0x00000001 # initialize rs2
sub x1, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x8, 0xfffffffe # initialize rs1
li x6, 0x00000002 # initialize rs2
sub x26, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x31, 0xfffffffe # initialize rs1
li x13, 0x80000000 # initialize rs2
sub x2, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x6, 0xfffffffe # initialize rs1
li x24, 0x80000001 # initialize rs2
sub x16, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x9, 0xfffffffe # initialize rs1
li x29, 0x7fffffff # initialize rs2
sub x21, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x14, 0xfffffffe # initialize rs1
li x2, 0x7ffffffe # initialize rs2
sub x3, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x8, 0xfffffffe # initialize rs1
li x2, 0xffffffff # initialize rs2
sub x22, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x31, 0xfffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
sub x10, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x9, 0xfffffffe # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
sub x23, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x29, 0xfffffffe # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
sub x2, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x16, 0xfffffffe # initialize rs1
li x1, 0x55555555 # initialize rs2
sub x21, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x26, 0x5bbc8872 # initialize rs1
li x24, 0x00000000 # initialize rs2
sub x28, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x23, 0x5bbc8872 # initialize rs1
li x2, 0x00000001 # initialize rs2
sub x1, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x13, 0x5bbc8872 # initialize rs1
li x6, 0x00000002 # initialize rs2
sub x17, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x18, 0x5bbc8872 # initialize rs1
li x31, 0x80000000 # initialize rs2
sub x5, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x5, 0x5bbc8872 # initialize rs1
li x6, 0x80000001 # initialize rs2
sub x2, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x2, 0x5bbc8872 # initialize rs1
li x12, 0x7fffffff # initialize rs2
sub x21, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x16, 0x5bbc8872 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
sub x23, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x1, 0x5bbc8872 # initialize rs1
li x14, 0xffffffff # initialize rs2
sub x29, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x2, 0x5bbc8872 # initialize rs1
li x22, 0xfffffffe # initialize rs2
sub x23, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x8, 0x5bbc8872 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
sub x13, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x22, 0x5bbc8872 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
sub x12, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x11, 0x5bbc8872 # initialize rs1
li x24, 0x55555555 # initialize rs2
sub x10, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x22, 0xaaaaaaaa # initialize rs1
li x30, 0x00000000 # initialize rs2
sub x29, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x5, 0xaaaaaaaa # initialize rs1
li x12, 0x00000001 # initialize rs2
sub x29, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x15, 0xaaaaaaaa # initialize rs1
li x26, 0x00000002 # initialize rs2
sub x14, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x29, 0xaaaaaaaa # initialize rs1
li x16, 0x80000000 # initialize rs2
sub x3, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x12, 0xaaaaaaaa # initialize rs1
li x31, 0x80000001 # initialize rs2
sub x21, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x8, 0xaaaaaaaa # initialize rs1
li x24, 0x7fffffff # initialize rs2
sub x9, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x26, 0xaaaaaaaa # initialize rs1
li x24, 0x7ffffffe # initialize rs2
sub x20, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x12, 0xaaaaaaaa # initialize rs1
li x18, 0xffffffff # initialize rs2
sub x26, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x8, 0xaaaaaaaa # initialize rs1
li x25, 0xfffffffe # initialize rs2
sub x10, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x28, 0xaaaaaaaa # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
sub x29, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x31, 0xaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
sub x20, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x16, 0xaaaaaaaa # initialize rs1
li x14, 0x55555555 # initialize rs2
sub x29, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x19, 0x55555555 # initialize rs1
li x28, 0x00000000 # initialize rs2
sub x30, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x30, 0x55555555 # initialize rs1
li x5, 0x00000001 # initialize rs2
sub x2, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x12, 0x55555555 # initialize rs1
li x17, 0x00000002 # initialize rs2
sub x30, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x28, 0x55555555 # initialize rs1
li x9, 0x80000000 # initialize rs2
sub x19, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x2, 0x55555555 # initialize rs1
li x17, 0x80000001 # initialize rs2
sub x25, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x1, 0x55555555 # initialize rs1
li x6, 0x7fffffff # initialize rs2
sub x5, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x20, 0x55555555 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
sub x15, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x11, 0x55555555 # initialize rs1
li x5, 0xffffffff # initialize rs2
sub x15, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x30, 0x55555555 # initialize rs1
li x10, 0xfffffffe # initialize rs2
sub x19, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x23, 0x55555555 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
sub x20, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x1, 0x55555555 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
sub x15, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x5, 0x55555555 # initialize rs1
li x31, 0x55555555 # initialize rs2
sub x2, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x395c1b44 # initialize rs1
li x0, 0x9e899df6 # initialize rs2
sub x2, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xc8793f78 # initialize rs1
li x1, 0xe404335e # initialize rs2
sub x19, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x4145dd73 # initialize rs1
li x2, 0x4e7b2162 # initialize rs2
sub x15, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xd4fd88da # initialize rs1
li x3, 0xdbefae3d # initialize rs2
sub x29, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x063a216b # initialize rs1
li x4, 0x31faa4a8 # initialize rs2
sub x7, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd559829c # initialize rs1
li x5, 0x833ec556 # initialize rs2
sub x10, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4ad0fbda # initialize rs1
li x6, 0xf623200c # initialize rs2
sub x18, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x58ec89b3 # initialize rs1
li x7, 0xc7334d58 # initialize rs2
sub x31, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6937b3cd # initialize rs1
li x8, 0x2887bb51 # initialize rs2
sub x5, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xa677702d # initialize rs1
li x9, 0xf14f064c # initialize rs2
sub x21, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x184d4807 # initialize rs1
li x10, 0x7f61bf08 # initialize rs2
sub x20, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xf7188d27 # initialize rs1
li x11, 0xbdd8d833 # initialize rs2
sub x16, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xdca06420 # initialize rs1
li x12, 0x81bdc869 # initialize rs2
sub x30, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xfcda77c0 # initialize rs1
li x13, 0x40b09601 # initialize rs2
sub x28, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x8318965e # initialize rs1
li x14, 0xc0e4b3f0 # initialize rs2
sub x15, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xc1fbf1eb # initialize rs1
li x15, 0x91dc5095 # initialize rs2
sub x22, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x734770a1 # initialize rs1
li x16, 0x6291a857 # initialize rs2
sub x30, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x0f8d517d # initialize rs1
li x17, 0x4dd0cb9d # initialize rs2
sub x9, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x5ebd2e85 # initialize rs1
li x18, 0xd4019c69 # initialize rs2
sub x13, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x031ee5bd # initialize rs1
li x19, 0xad4e3ff7 # initialize rs2
sub x5, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xf423c25c # initialize rs1
li x20, 0x6dbd40ea # initialize rs2
sub x29, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xde69a9cd # initialize rs1
li x21, 0x6c39235b # initialize rs2
sub x6, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x887f5399 # initialize rs1
li x22, 0xb8357d04 # initialize rs2
sub x18, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xe8935362 # initialize rs1
li x23, 0x708a0348 # initialize rs2
sub x11, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x4acbd7c6 # initialize rs1
li x24, 0x12da0f04 # initialize rs2
sub x1, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x11ec5107 # initialize rs1
li x25, 0xbb9ff533 # initialize rs2
sub x23, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xec20bb2f # initialize rs1
li x26, 0x4ebeb563 # initialize rs2
sub x29, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x102ab054 # initialize rs1
li x27, 0xe802579b # initialize rs2
sub x16, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xcd4eed90 # initialize rs1
li x28, 0x59e22a0c # initialize rs2
sub x16, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x9601dce9 # initialize rs1
li x29, 0x1c89a00a # initialize rs2
sub x17, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xc9c09b9d # initialize rs1
li x30, 0x22a68776 # initialize rs2
sub x27, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xff2b92af # initialize rs1
li x31, 0xd2dd5b94 # initialize rs2
sub x10, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x01181023 # initialize rs1
li x9, 0xeff036f4 # initialize rs2
sub x0, x0, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x6274e3f9 # initialize rs1
li x27, 0x4d3d3442 # initialize rs2
sub x1, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xc3825085 # initialize rs1
li x28, 0x07b7483f # initialize rs2
sub x2, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x5bba50ae # initialize rs1
li x1, 0x365992d8 # initialize rs2
sub x3, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7add16ad # initialize rs1
li x23, 0x04115c33 # initialize rs2
sub x4, x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1dcdb3d0 # initialize rs1
li x15, 0x8c9fabf1 # initialize rs2
sub x5, x5, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xee15e47b # initialize rs1
li x26, 0x1cd98f14 # initialize rs2
sub x6, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdeeeb033 # initialize rs1
li x19, 0x5ef9392c # initialize rs2
sub x7, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x3726f4f7 # initialize rs1
li x2, 0x1f24a373 # initialize rs2
sub x8, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xcd02e29f # initialize rs1
li x12, 0x4f9991c3 # initialize rs2
sub x9, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xf393d719 # initialize rs1
li x11, 0xd6aee3c1 # initialize rs2
sub x10, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x64b1b72b # initialize rs1
li x31, 0xc4b510a3 # initialize rs2
sub x11, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x03cbb2e8 # initialize rs1
li x3, 0x60510272 # initialize rs2
sub x12, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x496ca9e9 # initialize rs1
li x3, 0x9a485fdf # initialize rs2
sub x13, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x468247f0 # initialize rs1
li x26, 0xbc60d5ff # initialize rs2
sub x14, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x4f932f8a # initialize rs1
li x17, 0x6267ac98 # initialize rs2
sub x15, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x3390b929 # initialize rs1
li x13, 0x05fbfc91 # initialize rs2
sub x16, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x19ba877d # initialize rs1
li x2, 0x53994dec # initialize rs2
sub x17, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xe77d2cee # initialize rs1
li x30, 0xbbb228ed # initialize rs2
sub x18, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x7f02883a # initialize rs1
li x30, 0x9d21749a # initialize rs2
sub x19, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3a8af956 # initialize rs1
li x26, 0xe7e23d32 # initialize rs2
sub x20, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x3d4daba7 # initialize rs1
li x1, 0x9dda3490 # initialize rs2
sub x21, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x20ada65b # initialize rs1
li x17, 0x82f2c2db # initialize rs2
sub x22, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x134b8971 # initialize rs1
li x11, 0x0a77fe0f # initialize rs2
sub x23, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x6405589b # initialize rs1
li x21, 0x507b12d8 # initialize rs2
sub x24, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xff34b659 # initialize rs1
li x6, 0x80a97b0f # initialize rs2
sub x25, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xc302aca4 # initialize rs1
li x24, 0x66cd3d93 # initialize rs2
sub x26, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x01ab0bc8 # initialize rs1
li x22, 0x447a670c # initialize rs2
sub x27, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xe7a1ef3f # initialize rs1
li x28, 0x3d61b8c9 # initialize rs2
sub x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x72baeed7 # initialize rs1
li x31, 0x26bcde4b # initialize rs2
sub x29, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x623eb139 # initialize rs1
li x28, 0xb9844875 # initialize rs2
sub x30, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x8c08a759 # initialize rs1
li x5, 0x0ea41d26 # initialize rs2
sub x31, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x30, 0x69e19c47 # initialize rs1
li x0, 0x5f306af5 # initialize rs2
sub x0, x30, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x2, 0xa6afbbfa # initialize rs1
li x1, 0x064b4ea1 # initialize rs2
sub x1, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x16, 0xa120cf16 # initialize rs1
li x2, 0x273f0fcd # initialize rs2
sub x2, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x10, 0x5fa27349 # initialize rs1
li x3, 0x8b85fc63 # initialize rs2
sub x3, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x14, 0x2cc4d608 # initialize rs1
li x4, 0xec6de9ed # initialize rs2
sub x4, x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0x1e86c537 # initialize rs1
li x5, 0x2f405d63 # initialize rs2
sub x5, x4, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0xd6347c35 # initialize rs1
li x6, 0x3ff4bec9 # initialize rs2
sub x6, x13, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0x84784f51 # initialize rs1
li x7, 0xab6d9796 # initialize rs2
sub x7, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x26, 0x291ebea0 # initialize rs1
li x8, 0x6af34049 # initialize rs2
sub x8, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x27, 0x57213940 # initialize rs1
li x9, 0x2060d056 # initialize rs2
sub x9, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x1, 0x2024b30d # initialize rs1
li x10, 0x65beb78b # initialize rs2
sub x10, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x7, 0xc628a427 # initialize rs1
li x11, 0x04159cfb # initialize rs2
sub x11, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x26, 0x74e2a601 # initialize rs1
li x12, 0x87f01d87 # initialize rs2
sub x12, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x24, 0x87c24e0d # initialize rs1
li x13, 0xf372a172 # initialize rs2
sub x13, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x28, 0xf429cb1a # initialize rs1
li x14, 0x359a4a1c # initialize rs2
sub x14, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x13, 0x1de4c513 # initialize rs1
li x15, 0xa57b27d1 # initialize rs2
sub x15, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x17, 0xe57070db # initialize rs1
li x16, 0xef886e11 # initialize rs2
sub x16, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x29, 0xdc9da77d # initialize rs1
li x17, 0x010fb915 # initialize rs2
sub x17, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x10, 0xb58f02d7 # initialize rs1
li x18, 0xf9fc54f7 # initialize rs2
sub x18, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x31, 0x5957c5c8 # initialize rs1
li x19, 0xddb2847d # initialize rs2
sub x19, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x6, 0x79aed5cc # initialize rs1
li x20, 0x7e7f0919 # initialize rs2
sub x20, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x12, 0x7ff02938 # initialize rs1
li x21, 0xca8293f4 # initialize rs2
sub x21, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x23, 0x5dbdaec0 # initialize rs1
li x22, 0x15b8b44b # initialize rs2
sub x22, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x24, 0x0e43567e # initialize rs1
li x23, 0x78d3d880 # initialize rs2
sub x23, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x20, 0x7dfbdce8 # initialize rs1
li x24, 0x6fe9ef80 # initialize rs2
sub x24, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x16, 0x4ea6f6fb # initialize rs1
li x25, 0xeb4e66b1 # initialize rs2
sub x25, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x3, 0x5b4b0fb2 # initialize rs1
li x26, 0x1ca64e98 # initialize rs2
sub x26, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x25, 0xb2ea036c # initialize rs1
li x27, 0x1fd8c826 # initialize rs2
sub x27, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x6, 0x721de9e6 # initialize rs1
li x28, 0x7dbb4de3 # initialize rs2
sub x28, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x31, 0xed82b304 # initialize rs1
li x29, 0xabe223d6 # initialize rs2
sub x29, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x27, 0xfdb9d370 # initialize rs1
li x30, 0x38e0ce99 # initialize rs2
sub x30, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x19, 0x172baa3d # initialize rs1
li x31, 0x7e03c3db # initialize rs2
sub x31, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xb53cb049 # initialize rs1
li x0, 0x3fd912ca # initialize rs2
sub x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xba82a772 # initialize rs1
li x1, 0x13ae3ba2 # initialize rs2
sub x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x5a9ca0aa # initialize rs1
li x2, 0xa3259234 # initialize rs2
sub x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x912cc99d # initialize rs1
li x3, 0x5db36f41 # initialize rs2
sub x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7dca50ec # initialize rs1
li x4, 0x4abd7a67 # initialize rs2
sub x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa48a631d # initialize rs1
li x5, 0x71d90b09 # initialize rs2
sub x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa5d9fe0f # initialize rs1
li x6, 0x0d757a26 # initialize rs2
sub x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf72e4963 # initialize rs1
li x7, 0x50d435dd # initialize rs2
sub x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x55488f53 # initialize rs1
li x8, 0x0ab66918 # initialize rs2
sub x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x41e83764 # initialize rs1
li x9, 0x2f474203 # initialize rs2
sub x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xbd536420 # initialize rs1
li x10, 0x7c910a54 # initialize rs2
sub x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xcd5902ef # initialize rs1
li x11, 0xd0ed443d # initialize rs2
sub x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x42877b15 # initialize rs1
li x12, 0x78d86cf6 # initialize rs2
sub x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x340fc8d5 # initialize rs1
li x13, 0x050952f4 # initialize rs2
sub x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x7b77bee7 # initialize rs1
li x14, 0x86c99cfa # initialize rs2
sub x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x5c007964 # initialize rs1
li x15, 0xa0c06b3e # initialize rs2
sub x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xd39f917b # initialize rs1
li x16, 0x98e6a6c3 # initialize rs2
sub x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xf00e9bb1 # initialize rs1
li x17, 0x0a30d236 # initialize rs2
sub x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xf52766ef # initialize rs1
li x18, 0x18f09d31 # initialize rs2
sub x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xf86bf1d3 # initialize rs1
li x19, 0xd883a9ce # initialize rs2
sub x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xe9f1864c # initialize rs1
li x20, 0x791c3478 # initialize rs2
sub x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xb3a70e97 # initialize rs1
li x21, 0x44964fce # initialize rs2
sub x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x2c12fd73 # initialize rs1
li x22, 0x2eb21c79 # initialize rs2
sub x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x6f093dfb # initialize rs1
li x23, 0xaf679cd5 # initialize rs2
sub x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xc0b016da # initialize rs1
li x24, 0xed65cf0d # initialize rs2
sub x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xe05cab41 # initialize rs1
li x25, 0x6860e123 # initialize rs2
sub x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xb76c837f # initialize rs1
li x26, 0x3efac70a # initialize rs2
sub x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x6e318658 # initialize rs1
li x27, 0xfa35f701 # initialize rs2
sub x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x343bfd81 # initialize rs1
li x28, 0x63a09de1 # initialize rs2
sub x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x978b61ad # initialize rs1
li x29, 0x622a96df # initialize rs2
sub x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xcbd3f3fc # initialize rs1
li x30, 0xd3f842c9 # initialize rs2
sub x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x38fe520b # initialize rs1
li x31, 0xa045210a # initialize rs2
sub x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x17, x26 # perform first operation
sub x16, x18, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x15, x25 # perform first operation
sub x23, x31, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x31, x7 # perform first operation
sub x9, x24, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x25, x11 # perform first operation
sub x27, x27, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x31, x3 # perform first operation
sub x3, x18, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x3, x25 # perform first operation
sub x14, x22, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x14, x15 # perform first operation
sub x19, x21, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x14, x18 # perform first operation
sub x3, x28, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x30, x23 # perform first operation
sub x24, x22, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x11, x24 # perform first operation
sub x11, x22, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x8, x26 # perform first operation
sub x26, x20, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x23, x13 # perform first operation
sub x22, x14, x1 # perform second (triggering) operation

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
