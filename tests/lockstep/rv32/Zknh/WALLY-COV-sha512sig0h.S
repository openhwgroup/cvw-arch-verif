///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zknh/WALLY-COV-sha512sig0h.S
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
li x0, 0x15cabfa2 # initialize rs1
li x23, 0xb142fc49 # initialize rs2
sha512sig0h x12, x0, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x9f51fff6 # initialize rs1
li x24, 0x080b135d # initialize rs2
sha512sig0h x3, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb977a597 # initialize rs1
li x17, 0xb93b0eca # initialize rs2
sha512sig0h x16, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xffe6b5f7 # initialize rs1
li x13, 0x82f503ec # initialize rs2
sha512sig0h x24, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xacb396ba # initialize rs1
li x27, 0x7203962a # initialize rs2
sha512sig0h x22, x4, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x637647b2 # initialize rs1
li x30, 0x3edfd70b # initialize rs2
sha512sig0h x18, x5, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x366669e4 # initialize rs1
li x28, 0xd11cdbcf # initialize rs2
sha512sig0h x26, x6, x28 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x15189938 # initialize rs1
li x26, 0x7ebaafbe # initialize rs2
sha512sig0h x25, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xb0c3a3e8 # initialize rs1
li x6, 0xaef1d516 # initialize rs2
sha512sig0h x13, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xc0549175 # initialize rs1
li x22, 0x4544e831 # initialize rs2
sha512sig0h x25, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x87e1487a # initialize rs1
li x20, 0xfc53bc6c # initialize rs2
sha512sig0h x27, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x22b10301 # initialize rs1
li x19, 0x51fe0529 # initialize rs2
sha512sig0h x29, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xa8f70995 # initialize rs1
li x24, 0x6d1082e3 # initialize rs2
sha512sig0h x29, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xfac6a30e # initialize rs1
li x8, 0x5d52e278 # initialize rs2
sha512sig0h x24, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x2ef6fead # initialize rs1
li x15, 0x780df6b4 # initialize rs2
sha512sig0h x20, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x8ad68d99 # initialize rs1
li x3, 0xe651130c # initialize rs2
sha512sig0h x20, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xe37f489e # initialize rs1
li x29, 0x9c4ec2d8 # initialize rs2
sha512sig0h x21, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x32bcd86d # initialize rs1
li x23, 0x8f662fb2 # initialize rs2
sha512sig0h x18, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x41f8e26d # initialize rs1
li x5, 0xc05283f1 # initialize rs2
sha512sig0h x20, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x395de3c1 # initialize rs1
li x30, 0xee90070b # initialize rs2
sha512sig0h x24, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x032c3443 # initialize rs1
li x7, 0x3b84fe1d # initialize rs2
sha512sig0h x23, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xca475f9b # initialize rs1
li x22, 0x8fc26312 # initialize rs2
sha512sig0h x14, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x08de2c0e # initialize rs1
li x6, 0xb5bfdff4 # initialize rs2
sha512sig0h x24, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb108fea2 # initialize rs1
li x27, 0x0e6e1c7b # initialize rs2
sha512sig0h x30, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x5c618613 # initialize rs1
li x22, 0xf40d3f86 # initialize rs2
sha512sig0h x3, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x576ef1d5 # initialize rs1
li x28, 0x03d7fc22 # initialize rs2
sha512sig0h x22, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x1b4671ee # initialize rs1
li x12, 0xe2231aec # initialize rs2
sha512sig0h x15, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x4a2e4561 # initialize rs1
li x15, 0xe7770ed4 # initialize rs2
sha512sig0h x5, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xa3439478 # initialize rs1
li x11, 0x324dcf9b # initialize rs2
sha512sig0h x12, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x9da978fb # initialize rs1
li x18, 0x3f69bfc8 # initialize rs2
sha512sig0h x17, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xa6518779 # initialize rs1
li x16, 0x3512fa8b # initialize rs2
sha512sig0h x23, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x928f9c10 # initialize rs1
li x6, 0xeaee8352 # initialize rs2
sha512sig0h x25, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x26, 0xd3393f1b # initialize rs1
li x0, 0xb611e076 # initialize rs2
sha512sig0h x20, x26, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x25, 0xe63f7249 # initialize rs1
li x1, 0xcbf8f445 # initialize rs2
sha512sig0h x5, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x6, 0x43876a42 # initialize rs1
li x2, 0xa01ab606 # initialize rs2
sha512sig0h x10, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x9, 0x4afbe9c6 # initialize rs1
li x3, 0xafe417c6 # initialize rs2
sha512sig0h x8, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0xc8de6ab4 # initialize rs1
li x4, 0x5bd4b299 # initialize rs2
sha512sig0h x2, x25, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0xca33f912 # initialize rs1
li x5, 0x8289ed68 # initialize rs2
sha512sig0h x18, x3, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x2ebe0883 # initialize rs1
li x6, 0x86ad58fb # initialize rs2
sha512sig0h x14, x23, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x28, 0x37471546 # initialize rs1
li x7, 0xe117a27f # initialize rs2
sha512sig0h x14, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x28, 0x04d9eec2 # initialize rs1
li x8, 0x08832ca1 # initialize rs2
sha512sig0h x18, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x1, 0x54ee2058 # initialize rs1
li x9, 0xaf60341b # initialize rs2
sha512sig0h x12, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x2, 0x43ef3d76 # initialize rs1
li x10, 0xec25ef09 # initialize rs2
sha512sig0h x22, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x23, 0x29698103 # initialize rs1
li x11, 0x83058a4c # initialize rs2
sha512sig0h x2, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x31, 0x40115654 # initialize rs1
li x12, 0x3b02fcf5 # initialize rs2
sha512sig0h x9, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x20, 0x6c6ec663 # initialize rs1
li x13, 0xb62b67bb # initialize rs2
sha512sig0h x15, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x2, 0xa814b8eb # initialize rs1
li x14, 0xe17b36a0 # initialize rs2
sha512sig0h x17, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x24, 0xa2ce1a8b # initialize rs1
li x15, 0x6cb3058d # initialize rs2
sha512sig0h x14, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x23, 0xdbbf5c48 # initialize rs1
li x16, 0xdaa6d887 # initialize rs2
sha512sig0h x28, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x26, 0xfdda9d00 # initialize rs1
li x17, 0x34981932 # initialize rs2
sha512sig0h x3, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x29, 0x9de17197 # initialize rs1
li x18, 0x5dbd907c # initialize rs2
sha512sig0h x3, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x9, 0x550b93a7 # initialize rs1
li x19, 0x88c09206 # initialize rs2
sha512sig0h x26, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x22, 0xc82abd53 # initialize rs1
li x20, 0x3e97ffdd # initialize rs2
sha512sig0h x12, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x13, 0xf6381e4c # initialize rs1
li x21, 0x5785723a # initialize rs2
sha512sig0h x27, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x28, 0x9564f47c # initialize rs1
li x22, 0xdfffd1d5 # initialize rs2
sha512sig0h x27, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x10, 0x9d978d74 # initialize rs1
li x23, 0x4766b1d5 # initialize rs2
sha512sig0h x19, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x31, 0x9ac1799f # initialize rs1
li x24, 0xe84ddc6f # initialize rs2
sha512sig0h x5, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x8, 0xcf3562fa # initialize rs1
li x25, 0xb659bc3a # initialize rs2
sha512sig0h x18, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x18, 0x7a9143ad # initialize rs1
li x26, 0x15237b95 # initialize rs2
sha512sig0h x3, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x13, 0x67d0f0be # initialize rs1
li x27, 0x5e64bb20 # initialize rs2
sha512sig0h x18, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x5, 0x8d0fcf73 # initialize rs1
li x28, 0x9d90810a # initialize rs2
sha512sig0h x30, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x30, 0x704afefb # initialize rs1
li x29, 0x17f89fc2 # initialize rs2
sha512sig0h x13, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x13, 0x6f36c404 # initialize rs1
li x30, 0xbda2176e # initialize rs2
sha512sig0h x27, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x29, 0x1eac0167 # initialize rs1
li x31, 0x9bc9dc9e # initialize rs2
sha512sig0h x30, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 252)

# Testcase cp_rd (Test destination rd = x0)
li x6, 0x45f2aa60 # initialize rs1
li x3, 0xa4062e9b # initialize rs2
sha512sig0h x0, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x6, 0x0458fe3d # initialize rs1
li x25, 0x32686e70 # initialize rs2
sha512sig0h x1, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0x532f0a87 # initialize rs1
li x31, 0x655a7007 # initialize rs2
sha512sig0h x2, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x31, 0xd8efc76f # initialize rs1
li x8, 0xef637f2a # initialize rs2
sha512sig0h x3, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0x65a76c21 # initialize rs1
li x13, 0xe3812910 # initialize rs2
sha512sig0h x4, x23, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0x8256ea38 # initialize rs1
li x3, 0x6a9c3bc2 # initialize rs2
sha512sig0h x5, x2, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0x7f10005c # initialize rs1
li x22, 0x9865da5f # initialize rs2
sha512sig0h x6, x17, x22 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x28, 0x501da6f5 # initialize rs1
li x8, 0x12ecce4a # initialize rs2
sha512sig0h x7, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x12, 0x165e3f2e # initialize rs1
li x25, 0x9ab2e967 # initialize rs2
sha512sig0h x8, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x5, 0x779c351e # initialize rs1
li x29, 0x17c2062b # initialize rs2
sha512sig0h x9, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0x39158b5d # initialize rs1
li x16, 0x5fbdc7d6 # initialize rs2
sha512sig0h x10, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x19, 0x31b24a05 # initialize rs1
li x29, 0x1a67fbac # initialize rs2
sha512sig0h x11, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0xe6de3a30 # initialize rs1
li x19, 0x96346797 # initialize rs2
sha512sig0h x12, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x29, 0xbb3d6f0b # initialize rs1
li x17, 0x26b99697 # initialize rs2
sha512sig0h x13, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x15, 0x2257d73f # initialize rs1
li x28, 0xefc3bbe2 # initialize rs2
sha512sig0h x14, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x31, 0xee25a65b # initialize rs1
li x20, 0xcaaf5f9b # initialize rs2
sha512sig0h x15, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x27, 0x67eeade0 # initialize rs1
li x30, 0x22c66adf # initialize rs2
sha512sig0h x16, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x19, 0x50624aab # initialize rs1
li x1, 0x16d6295e # initialize rs2
sha512sig0h x17, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x28, 0x29ac2ba7 # initialize rs1
li x10, 0xf06eceff # initialize rs2
sha512sig0h x18, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x17, 0x4303fdc3 # initialize rs1
li x11, 0xdd4b0046 # initialize rs2
sha512sig0h x19, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xca0a76f0 # initialize rs1
li x28, 0xe1833c7f # initialize rs2
sha512sig0h x20, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x28, 0x9058efad # initialize rs1
li x19, 0x7ce330e0 # initialize rs2
sha512sig0h x21, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x18, 0xab4d495f # initialize rs1
li x10, 0xb476d32d # initialize rs2
sha512sig0h x22, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x5, 0x6bf4ff59 # initialize rs1
li x17, 0x1ed3d5c6 # initialize rs2
sha512sig0h x23, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x20, 0x8be85964 # initialize rs1
li x28, 0xa72dca75 # initialize rs2
sha512sig0h x24, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x12, 0x3db108db # initialize rs1
li x3, 0xa4f841ac # initialize rs2
sha512sig0h x25, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x24, 0xa3795bc6 # initialize rs1
li x28, 0x84d5ed94 # initialize rs2
sha512sig0h x26, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0x8ec171f2 # initialize rs1
li x30, 0x7d2601f7 # initialize rs2
sha512sig0h x27, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x17, 0xb494dee0 # initialize rs1
li x19, 0x81d6b2ca # initialize rs2
sha512sig0h x28, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x21, 0x6a864df8 # initialize rs1
li x7, 0x2e50a63a # initialize rs2
sha512sig0h x29, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x5, 0x74ba3be8 # initialize rs1
li x29, 0x53a48e18 # initialize rs2
sha512sig0h x30, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x18, 0x509e1490 # initialize rs1
li x27, 0x71907d05 # initialize rs2
sha512sig0h x31, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0x00000000 # initialize rs1
li x3, 0xb7046049 # initialize rs2
sha512sig0h x2, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x7, 0x00000001 # initialize rs1
li x11, 0x23787e86 # initialize rs2
sha512sig0h x6, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x27, 0x00000002 # initialize rs1
li x20, 0xd18e3d12 # initialize rs2
sha512sig0h x5, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x30, 0x80000000 # initialize rs1
li x16, 0xc0f84815 # initialize rs2
sha512sig0h x21, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x20, 0x80000001 # initialize rs1
li x5, 0xb5ad13d1 # initialize rs2
sha512sig0h x19, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x27, 0x7fffffff # initialize rs1
li x19, 0x83298661 # initialize rs2
sha512sig0h x17, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x21, 0x7ffffffe # initialize rs1
li x10, 0x1d7263b6 # initialize rs2
sha512sig0h x24, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0xffffffff # initialize rs1
li x16, 0xccc85369 # initialize rs2
sha512sig0h x22, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0xfffffffe # initialize rs1
li x1, 0xe53a014c # initialize rs2
sha512sig0h x9, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x19, 0x5bbc8872 # initialize rs1
li x8, 0x390702b2 # initialize rs2
sha512sig0h x6, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x1, 0xaaaaaaaa # initialize rs1
li x17, 0x279f4a0d # initialize rs2
sha512sig0h x8, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x11, 0x55555555 # initialize rs1
li x21, 0x3d8cddad # initialize rs2
sha512sig0h x9, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0xa6e81cc1 # initialize rs1
li x21, 0x00000000 # initialize rs2
sha512sig0h x19, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x18, 0x9a897a02 # initialize rs1
li x5, 0x00000001 # initialize rs2
sha512sig0h x19, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x31, 0x509cb713 # initialize rs1
li x12, 0x00000002 # initialize rs2
sha512sig0h x23, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x25, 0x04ff9e2c # initialize rs1
li x15, 0x80000000 # initialize rs2
sha512sig0h x14, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x15, 0x550b71d8 # initialize rs1
li x20, 0x80000001 # initialize rs2
sha512sig0h x21, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x5, 0x120d5d9c # initialize rs1
li x21, 0x7fffffff # initialize rs2
sha512sig0h x9, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x31, 0xdc7b08d3 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
sha512sig0h x26, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x26, 0xc100e496 # initialize rs1
li x11, 0xffffffff # initialize rs2
sha512sig0h x3, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x29, 0xa10def12 # initialize rs1
li x31, 0xfffffffe # initialize rs2
sha512sig0h x7, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x22, 0x4c9e3c34 # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
sha512sig0h x18, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x19, 0x3473ff6c # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
sha512sig0h x22, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x19, 0x365a7ead # initialize rs1
li x26, 0x55555555 # initialize rs2
sha512sig0h x13, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
sha512sig0h x5, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x22, 0x00000000 # initialize rs1
li x13, 0x00000001 # initialize rs2
sha512sig0h x3, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x12, 0x00000000 # initialize rs1
li x13, 0x00000002 # initialize rs2
sha512sig0h x29, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x1, 0x00000000 # initialize rs1
li x2, 0x80000000 # initialize rs2
sha512sig0h x23, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x22, 0x00000000 # initialize rs1
li x24, 0x80000001 # initialize rs2
sha512sig0h x15, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x11, 0x00000000 # initialize rs1
li x12, 0x7fffffff # initialize rs2
sha512sig0h x21, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x24, 0x00000000 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
sha512sig0h x15, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x6, 0x00000000 # initialize rs1
li x31, 0xffffffff # initialize rs2
sha512sig0h x2, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x21, 0x00000000 # initialize rs1
li x1, 0xfffffffe # initialize rs2
sha512sig0h x26, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x28, 0x00000000 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
sha512sig0h x14, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x5, 0x00000000 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
sha512sig0h x27, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x29, 0x00000000 # initialize rs1
li x1, 0x55555555 # initialize rs2
sha512sig0h x30, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x9, 0x00000001 # initialize rs1
li x20, 0x00000000 # initialize rs2
sha512sig0h x17, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x30, 0x00000001 # initialize rs1
li x11, 0x00000001 # initialize rs2
sha512sig0h x19, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x5, 0x00000001 # initialize rs1
li x18, 0x00000002 # initialize rs2
sha512sig0h x17, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x27, 0x00000001 # initialize rs1
li x24, 0x80000000 # initialize rs2
sha512sig0h x1, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x1, 0x00000001 # initialize rs1
li x11, 0x80000001 # initialize rs2
sha512sig0h x29, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x26, 0x00000001 # initialize rs1
li x31, 0x7fffffff # initialize rs2
sha512sig0h x21, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x5, 0x00000001 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
sha512sig0h x9, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x27, 0x00000001 # initialize rs1
li x16, 0xffffffff # initialize rs2
sha512sig0h x13, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x9, 0x00000001 # initialize rs1
li x21, 0xfffffffe # initialize rs2
sha512sig0h x2, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x5, 0x00000001 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
sha512sig0h x21, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x16, 0x00000001 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
sha512sig0h x23, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x30, 0x00000001 # initialize rs1
li x1, 0x55555555 # initialize rs2
sha512sig0h x12, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x14, 0x00000002 # initialize rs1
li x23, 0x00000000 # initialize rs2
sha512sig0h x8, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x27, 0x00000002 # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sig0h x11, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x17, 0x00000002 # initialize rs1
li x26, 0x00000002 # initialize rs2
sha512sig0h x28, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x12, 0x00000002 # initialize rs1
li x13, 0x80000000 # initialize rs2
sha512sig0h x3, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x26, 0x00000002 # initialize rs1
li x18, 0x80000001 # initialize rs2
sha512sig0h x6, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x30, 0x00000002 # initialize rs1
li x21, 0x7fffffff # initialize rs2
sha512sig0h x5, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x12, 0x00000002 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
sha512sig0h x13, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x15, 0x00000002 # initialize rs1
li x19, 0xffffffff # initialize rs2
sha512sig0h x31, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x18, 0x00000002 # initialize rs1
li x16, 0xfffffffe # initialize rs2
sha512sig0h x11, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x23, 0x00000002 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
sha512sig0h x31, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x29, 0x00000002 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
sha512sig0h x2, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x11, 0x00000002 # initialize rs1
li x31, 0x55555555 # initialize rs2
sha512sig0h x19, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x30, 0x80000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
sha512sig0h x24, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x25, 0x80000000 # initialize rs1
li x14, 0x00000001 # initialize rs2
sha512sig0h x15, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x8, 0x80000000 # initialize rs1
li x2, 0x00000002 # initialize rs2
sha512sig0h x7, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x27, 0x80000000 # initialize rs1
li x7, 0x80000000 # initialize rs2
sha512sig0h x11, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x29, 0x80000000 # initialize rs1
li x27, 0x80000001 # initialize rs2
sha512sig0h x16, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x21, 0x80000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
sha512sig0h x17, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x11, 0x80000000 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
sha512sig0h x9, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x10, 0x80000000 # initialize rs1
li x14, 0xffffffff # initialize rs2
sha512sig0h x16, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x2, 0x80000000 # initialize rs1
li x15, 0xfffffffe # initialize rs2
sha512sig0h x11, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x25, 0x80000000 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
sha512sig0h x8, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x14, 0x80000000 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
sha512sig0h x30, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x19, 0x80000000 # initialize rs1
li x10, 0x55555555 # initialize rs2
sha512sig0h x11, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x25, 0x80000001 # initialize rs1
li x8, 0x00000000 # initialize rs2
sha512sig0h x29, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x5, 0x80000001 # initialize rs1
li x1, 0x00000001 # initialize rs2
sha512sig0h x8, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x3, 0x80000001 # initialize rs1
li x24, 0x00000002 # initialize rs2
sha512sig0h x23, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x19, 0x80000001 # initialize rs1
li x14, 0x80000000 # initialize rs2
sha512sig0h x26, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x23, 0x80000001 # initialize rs1
li x27, 0x80000001 # initialize rs2
sha512sig0h x9, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x23, 0x80000001 # initialize rs1
li x12, 0x7fffffff # initialize rs2
sha512sig0h x8, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x13, 0x80000001 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sha512sig0h x5, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x11, 0x80000001 # initialize rs1
li x24, 0xffffffff # initialize rs2
sha512sig0h x31, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x24, 0x80000001 # initialize rs1
li x10, 0xfffffffe # initialize rs2
sha512sig0h x26, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x31, 0x80000001 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
sha512sig0h x11, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x20, 0x80000001 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
sha512sig0h x3, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x23, 0x80000001 # initialize rs1
li x1, 0x55555555 # initialize rs2
sha512sig0h x27, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x8, 0x7fffffff # initialize rs1
li x31, 0x00000000 # initialize rs2
sha512sig0h x5, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x10, 0x7fffffff # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sig0h x25, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x30, 0x7fffffff # initialize rs1
li x5, 0x00000002 # initialize rs2
sha512sig0h x11, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x24, 0x7fffffff # initialize rs1
li x15, 0x80000000 # initialize rs2
sha512sig0h x2, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x16, 0x7fffffff # initialize rs1
li x22, 0x80000001 # initialize rs2
sha512sig0h x8, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x11, 0x7fffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
sha512sig0h x22, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x26, 0x7fffffff # initialize rs1
li x10, 0x7ffffffe # initialize rs2
sha512sig0h x7, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x24, 0x7fffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
sha512sig0h x11, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x6, 0x7fffffff # initialize rs1
li x24, 0xfffffffe # initialize rs2
sha512sig0h x28, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x18, 0x7fffffff # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
sha512sig0h x30, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x15, 0x7fffffff # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
sha512sig0h x6, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x29, 0x7fffffff # initialize rs1
li x30, 0x55555555 # initialize rs2
sha512sig0h x28, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x19, 0x7ffffffe # initialize rs1
li x5, 0x00000000 # initialize rs2
sha512sig0h x23, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x6, 0x7ffffffe # initialize rs1
li x23, 0x00000001 # initialize rs2
sha512sig0h x13, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x29, 0x7ffffffe # initialize rs1
li x25, 0x00000002 # initialize rs2
sha512sig0h x10, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x18, 0x7ffffffe # initialize rs1
li x16, 0x80000000 # initialize rs2
sha512sig0h x23, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x1, 0x7ffffffe # initialize rs1
li x29, 0x80000001 # initialize rs2
sha512sig0h x27, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x25, 0x7ffffffe # initialize rs1
li x27, 0x7fffffff # initialize rs2
sha512sig0h x6, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x1, 0x7ffffffe # initialize rs1
li x15, 0x7ffffffe # initialize rs2
sha512sig0h x11, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x21, 0x7ffffffe # initialize rs1
li x25, 0xffffffff # initialize rs2
sha512sig0h x29, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x25, 0x7ffffffe # initialize rs1
li x6, 0xfffffffe # initialize rs2
sha512sig0h x11, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x22, 0x7ffffffe # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
sha512sig0h x7, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x15, 0x7ffffffe # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
sha512sig0h x29, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x3, 0x7ffffffe # initialize rs1
li x24, 0x55555555 # initialize rs2
sha512sig0h x5, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x8, 0xffffffff # initialize rs1
li x22, 0x00000000 # initialize rs2
sha512sig0h x6, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x30, 0xffffffff # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sig0h x8, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x31, 0xffffffff # initialize rs1
li x10, 0x00000002 # initialize rs2
sha512sig0h x11, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x13, 0xffffffff # initialize rs1
li x11, 0x80000000 # initialize rs2
sha512sig0h x18, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x13, 0xffffffff # initialize rs1
li x8, 0x80000001 # initialize rs2
sha512sig0h x28, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x14, 0xffffffff # initialize rs1
li x28, 0x7fffffff # initialize rs2
sha512sig0h x17, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x16, 0xffffffff # initialize rs1
li x10, 0x7ffffffe # initialize rs2
sha512sig0h x6, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x14, 0xffffffff # initialize rs1
li x28, 0xffffffff # initialize rs2
sha512sig0h x23, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x3, 0xffffffff # initialize rs1
li x13, 0xfffffffe # initialize rs2
sha512sig0h x23, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x11, 0xffffffff # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
sha512sig0h x27, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x15, 0xffffffff # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sha512sig0h x19, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x22, 0xffffffff # initialize rs1
li x19, 0x55555555 # initialize rs2
sha512sig0h x5, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x2, 0xfffffffe # initialize rs1
li x21, 0x00000000 # initialize rs2
sha512sig0h x24, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x20, 0xfffffffe # initialize rs1
li x27, 0x00000001 # initialize rs2
sha512sig0h x29, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x5, 0xfffffffe # initialize rs1
li x7, 0x00000002 # initialize rs2
sha512sig0h x6, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x12, 0xfffffffe # initialize rs1
li x2, 0x80000000 # initialize rs2
sha512sig0h x28, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x30, 0xfffffffe # initialize rs1
li x3, 0x80000001 # initialize rs2
sha512sig0h x11, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x30, 0xfffffffe # initialize rs1
li x11, 0x7fffffff # initialize rs2
sha512sig0h x31, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x12, 0xfffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
sha512sig0h x2, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x16, 0xfffffffe # initialize rs1
li x26, 0xffffffff # initialize rs2
sha512sig0h x18, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x9, 0xfffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
sha512sig0h x31, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x9, 0xfffffffe # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
sha512sig0h x10, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x17, 0xfffffffe # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
sha512sig0h x10, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x31, 0xfffffffe # initialize rs1
li x5, 0x55555555 # initialize rs2
sha512sig0h x1, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x7, 0x5bbc8872 # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sig0h x14, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x16, 0x5bbc8872 # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sig0h x12, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x19, 0x5bbc8872 # initialize rs1
li x9, 0x00000002 # initialize rs2
sha512sig0h x22, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x10, 0x5bbc8872 # initialize rs1
li x13, 0x80000000 # initialize rs2
sha512sig0h x5, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x5, 0x5bbc8872 # initialize rs1
li x8, 0x80000001 # initialize rs2
sha512sig0h x11, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x16, 0x5bbc8872 # initialize rs1
li x18, 0x7fffffff # initialize rs2
sha512sig0h x6, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x28, 0x5bbc8872 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
sha512sig0h x25, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x11, 0x5bbc8872 # initialize rs1
li x25, 0xffffffff # initialize rs2
sha512sig0h x29, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x28, 0x5bbc8872 # initialize rs1
li x3, 0xfffffffe # initialize rs2
sha512sig0h x29, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x3, 0x5bbc8872 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
sha512sig0h x27, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x25, 0x5bbc8872 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sha512sig0h x28, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x5, 0x5bbc8872 # initialize rs1
li x31, 0x55555555 # initialize rs2
sha512sig0h x30, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x1, 0xaaaaaaaa # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sig0h x9, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x12, 0xaaaaaaaa # initialize rs1
li x9, 0x00000001 # initialize rs2
sha512sig0h x10, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x16, 0xaaaaaaaa # initialize rs1
li x8, 0x00000002 # initialize rs2
sha512sig0h x15, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x6, 0xaaaaaaaa # initialize rs1
li x15, 0x80000000 # initialize rs2
sha512sig0h x17, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x5, 0xaaaaaaaa # initialize rs1
li x30, 0x80000001 # initialize rs2
sha512sig0h x19, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x19, 0xaaaaaaaa # initialize rs1
li x6, 0x7fffffff # initialize rs2
sha512sig0h x23, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x24, 0xaaaaaaaa # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sha512sig0h x20, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x8, 0xaaaaaaaa # initialize rs1
li x25, 0xffffffff # initialize rs2
sha512sig0h x28, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x28, 0xaaaaaaaa # initialize rs1
li x27, 0xfffffffe # initialize rs2
sha512sig0h x10, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x10, 0xaaaaaaaa # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
sha512sig0h x26, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
sha512sig0h x7, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x12, 0xaaaaaaaa # initialize rs1
li x28, 0x55555555 # initialize rs2
sha512sig0h x22, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x31, 0x55555555 # initialize rs1
li x17, 0x00000000 # initialize rs2
sha512sig0h x19, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x23, 0x55555555 # initialize rs1
li x2, 0x00000001 # initialize rs2
sha512sig0h x20, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x25, 0x55555555 # initialize rs1
li x3, 0x00000002 # initialize rs2
sha512sig0h x23, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x2, 0x55555555 # initialize rs1
li x18, 0x80000000 # initialize rs2
sha512sig0h x8, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x9, 0x55555555 # initialize rs1
li x11, 0x80000001 # initialize rs2
sha512sig0h x6, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x29, 0x55555555 # initialize rs1
li x20, 0x7fffffff # initialize rs2
sha512sig0h x5, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x22, 0x55555555 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
sha512sig0h x12, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x17, 0x55555555 # initialize rs1
li x3, 0xffffffff # initialize rs2
sha512sig0h x25, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x20, 0x55555555 # initialize rs1
li x19, 0xfffffffe # initialize rs2
sha512sig0h x15, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x2, 0x55555555 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
sha512sig0h x31, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x11, 0x55555555 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
sha512sig0h x23, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x29, 0x55555555 # initialize rs1
li x23, 0x55555555 # initialize rs2
sha512sig0h x19, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x28f03b55 # initialize rs1
li x0, 0xb9311e01 # initialize rs2
sha512sig0h x3, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x67b6365f # initialize rs1
li x1, 0x5fec166c # initialize rs2
sha512sig0h x2, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x20ec3abb # initialize rs1
li x2, 0xa7ff1ad8 # initialize rs2
sha512sig0h x30, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x31bb137c # initialize rs1
li x3, 0x76edb6ed # initialize rs2
sha512sig0h x28, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x794cb145 # initialize rs1
li x4, 0x7577c9f1 # initialize rs2
sha512sig0h x7, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0719af3e # initialize rs1
li x5, 0x9f5023b0 # initialize rs2
sha512sig0h x31, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4ad94a91 # initialize rs1
li x6, 0x31e9edf2 # initialize rs2
sha512sig0h x11, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x899f71b7 # initialize rs1
li x7, 0xab33f8a7 # initialize rs2
sha512sig0h x18, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x70ff9268 # initialize rs1
li x8, 0xdf76739a # initialize rs2
sha512sig0h x12, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x6e5e343a # initialize rs1
li x9, 0x4f2abf91 # initialize rs2
sha512sig0h x6, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x7ea15015 # initialize rs1
li x10, 0xd5cb9246 # initialize rs2
sha512sig0h x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x00c24827 # initialize rs1
li x11, 0xbc319052 # initialize rs2
sha512sig0h x22, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x4dc6f946 # initialize rs1
li x12, 0x002aa94e # initialize rs2
sha512sig0h x31, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xe0c6162b # initialize rs1
li x13, 0x72c94021 # initialize rs2
sha512sig0h x24, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xd9e3f448 # initialize rs1
li x14, 0xd6677424 # initialize rs2
sha512sig0h x19, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x9eef226d # initialize rs1
li x15, 0x5eb457ca # initialize rs2
sha512sig0h x26, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x6f77384c # initialize rs1
li x16, 0x7dff1e61 # initialize rs2
sha512sig0h x17, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x4d017deb # initialize rs1
li x17, 0x061f6483 # initialize rs2
sha512sig0h x3, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x7de7d785 # initialize rs1
li x18, 0x147b1660 # initialize rs2
sha512sig0h x2, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x4e19de61 # initialize rs1
li x19, 0x0d253928 # initialize rs2
sha512sig0h x18, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xcbcdcbd1 # initialize rs1
li x20, 0xcee6e6ec # initialize rs2
sha512sig0h x10, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xc05da057 # initialize rs1
li x21, 0x9df00261 # initialize rs2
sha512sig0h x6, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x703ca893 # initialize rs1
li x22, 0x8b5075aa # initialize rs2
sha512sig0h x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x219b3605 # initialize rs1
li x23, 0x4fb09003 # initialize rs2
sha512sig0h x30, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xc76075ea # initialize rs1
li x24, 0xcbe496bb # initialize rs2
sha512sig0h x27, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x4e7064af # initialize rs1
li x25, 0x3198199c # initialize rs2
sha512sig0h x9, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xfd07a452 # initialize rs1
li x26, 0xa58aaeae # initialize rs2
sha512sig0h x6, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x9fa7e205 # initialize rs1
li x27, 0xff0f20de # initialize rs2
sha512sig0h x15, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x9a202e74 # initialize rs1
li x28, 0xaef0d618 # initialize rs2
sha512sig0h x25, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x2876e7e9 # initialize rs1
li x29, 0x65dafd81 # initialize rs2
sha512sig0h x21, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x9c2f7f81 # initialize rs1
li x30, 0xf3a646cc # initialize rs2
sha512sig0h x22, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xe568769d # initialize rs1
li x31, 0xeae27623 # initialize rs2
sha512sig0h x21, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x11ba0c2b # initialize rs1
li x15, 0x5ee98e91 # initialize rs2
sha512sig0h x0, x0, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xfa8531c2 # initialize rs1
li x31, 0xd4d38c9a # initialize rs2
sha512sig0h x1, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xbafec56a # initialize rs1
li x18, 0x3b584478 # initialize rs2
sha512sig0h x2, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6f4bd16d # initialize rs1
li x16, 0x575c2273 # initialize rs2
sha512sig0h x3, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0d0739b7 # initialize rs1
li x5, 0x645d7ae1 # initialize rs2
sha512sig0h x4, x4, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xff6264de # initialize rs1
li x8, 0xdde3aecc # initialize rs2
sha512sig0h x5, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd7c2f18e # initialize rs1
li x26, 0x37f6affd # initialize rs2
sha512sig0h x6, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x998f87e8 # initialize rs1
li x4, 0x57b5442e # initialize rs2
sha512sig0h x7, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xa51a1052 # initialize rs1
li x22, 0x23c1cb4d # initialize rs2
sha512sig0h x8, x8, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x0e52e093 # initialize rs1
li x16, 0x1e8431e0 # initialize rs2
sha512sig0h x9, x9, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xd7dd0ff2 # initialize rs1
li x28, 0x324f0017 # initialize rs2
sha512sig0h x10, x10, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x3a61ff60 # initialize rs1
li x10, 0x115548b0 # initialize rs2
sha512sig0h x11, x11, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x47a43750 # initialize rs1
li x8, 0x423b25a7 # initialize rs2
sha512sig0h x12, x12, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd6c09f67 # initialize rs1
li x20, 0xa3635e57 # initialize rs2
sha512sig0h x13, x13, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xbe098c0b # initialize rs1
li x7, 0x958c6d58 # initialize rs2
sha512sig0h x14, x14, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x2db4a901 # initialize rs1
li x7, 0x9b7acf45 # initialize rs2
sha512sig0h x15, x15, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x1438cf32 # initialize rs1
li x9, 0xf24aae0e # initialize rs2
sha512sig0h x16, x16, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc0f64a38 # initialize rs1
li x26, 0x8fe1217a # initialize rs2
sha512sig0h x17, x17, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xff69354d # initialize rs1
li x28, 0xbc5db04e # initialize rs2
sha512sig0h x18, x18, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xed83aedb # initialize rs1
li x9, 0x67f39c63 # initialize rs2
sha512sig0h x19, x19, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x8095169f # initialize rs1
li x6, 0x7975f2fa # initialize rs2
sha512sig0h x20, x20, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x75483064 # initialize rs1
li x3, 0xb920847d # initialize rs2
sha512sig0h x21, x21, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x7e5d7804 # initialize rs1
li x10, 0x4730cf15 # initialize rs2
sha512sig0h x22, x22, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x5b40d2be # initialize rs1
li x11, 0xcee89e98 # initialize rs2
sha512sig0h x23, x23, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x8516fd8a # initialize rs1
li x22, 0xb06ea58e # initialize rs2
sha512sig0h x24, x24, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x874143d2 # initialize rs1
li x9, 0x323099f5 # initialize rs2
sha512sig0h x25, x25, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x1e9559d0 # initialize rs1
li x29, 0x186b7b4f # initialize rs2
sha512sig0h x26, x26, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x1e9a03ed # initialize rs1
li x6, 0x5e882bfb # initialize rs2
sha512sig0h x27, x27, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xc92fb893 # initialize rs1
li x27, 0x74a3bf9f # initialize rs2
sha512sig0h x28, x28, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x098a6d5b # initialize rs1
li x27, 0x5a60044f # initialize rs2
sha512sig0h x29, x29, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x480d7538 # initialize rs1
li x6, 0x93899a0e # initialize rs2
sha512sig0h x30, x30, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x4e8b3cab # initialize rs1
li x12, 0x83e81ab7 # initialize rs2
sha512sig0h x31, x31, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x14, 0xf756d83a # initialize rs1
li x0, 0xe3b2a4ca # initialize rs2
sha512sig0h x0, x14, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x31, 0x4ecad548 # initialize rs1
li x1, 0xa6b64891 # initialize rs2
sha512sig0h x1, x31, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x25, 0x0ccf8efa # initialize rs1
li x2, 0x6371d1b0 # initialize rs2
sha512sig0h x2, x25, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x9, 0x522b110f # initialize rs1
li x3, 0x4732e023 # initialize rs2
sha512sig0h x3, x9, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
li x20, 0x306f7608 # initialize rs1
li x4, 0x4cb46b3c # initialize rs2
sha512sig0h x4, x20, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x458f5e81 # initialize rs1
li x5, 0x3e0acc61 # initialize rs2
sha512sig0h x5, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x3af5fbad # initialize rs1
li x6, 0x1ebb0c23 # initialize rs2
sha512sig0h x6, x29, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0xaa3de19c # initialize rs1
li x7, 0x7e8ed44b # initialize rs2
sha512sig0h x7, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x11, 0x282c144f # initialize rs1
li x8, 0x4b5aed12 # initialize rs2
sha512sig0h x8, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x7, 0x27355aa3 # initialize rs1
li x9, 0x4674f31a # initialize rs2
sha512sig0h x9, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x19, 0x29bf67f9 # initialize rs1
li x10, 0xb7da7941 # initialize rs2
sha512sig0h x10, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x28, 0x5c635086 # initialize rs1
li x11, 0x07e1e46b # initialize rs2
sha512sig0h x11, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x24, 0x679b043d # initialize rs1
li x12, 0x1266a803 # initialize rs2
sha512sig0h x12, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x6, 0xd57f9d01 # initialize rs1
li x13, 0x721c2e22 # initialize rs2
sha512sig0h x13, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x17, 0x25efbf65 # initialize rs1
li x14, 0x2f50a839 # initialize rs2
sha512sig0h x14, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x14, 0x98253657 # initialize rs1
li x15, 0xec489169 # initialize rs2
sha512sig0h x15, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x13, 0x00f0a025 # initialize rs1
li x16, 0x4fc18d48 # initialize rs2
sha512sig0h x16, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x9, 0xe98486f2 # initialize rs1
li x17, 0x2a1df3cb # initialize rs2
sha512sig0h x17, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x15, 0x7e6be51c # initialize rs1
li x18, 0xb658f778 # initialize rs2
sha512sig0h x18, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x3, 0x70ecfe3a # initialize rs1
li x19, 0x6cc7d98d # initialize rs2
sha512sig0h x19, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x19, 0xba26185a # initialize rs1
li x20, 0xed9ba848 # initialize rs2
sha512sig0h x20, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x25, 0x36b98198 # initialize rs1
li x21, 0x54bb850f # initialize rs2
sha512sig0h x21, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x25, 0x20431778 # initialize rs1
li x22, 0x81f9ca52 # initialize rs2
sha512sig0h x22, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x1, 0xca87d0e8 # initialize rs1
li x23, 0x5bd752d6 # initialize rs2
sha512sig0h x23, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x9, 0x395c0b71 # initialize rs1
li x24, 0xf076c3a8 # initialize rs2
sha512sig0h x24, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x20, 0x890da164 # initialize rs1
li x25, 0x2a686b8f # initialize rs2
sha512sig0h x25, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x7, 0x880568cd # initialize rs1
li x26, 0xd7ebb165 # initialize rs2
sha512sig0h x26, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x10, 0x4ac224bb # initialize rs1
li x27, 0xbfbe3439 # initialize rs2
sha512sig0h x27, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x22, 0x7987ffd1 # initialize rs1
li x28, 0x2be4a21a # initialize rs2
sha512sig0h x28, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x1, 0x1f3de585 # initialize rs1
li x29, 0x18194319 # initialize rs2
sha512sig0h x29, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x26, 0x7442b8d8 # initialize rs1
li x30, 0xe0b3c13c # initialize rs2
sha512sig0h x30, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x26, 0x901059a6 # initialize rs1
li x31, 0x5a767bcd # initialize rs2
sha512sig0h x31, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xb70c8f55 # initialize rs1
li x0, 0x64cacc48 # initialize rs2
sha512sig0h x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xfb5ea1d3 # initialize rs1
li x1, 0xff310d1b # initialize rs2
sha512sig0h x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x52347312 # initialize rs1
li x2, 0x3292f49c # initialize rs2
sha512sig0h x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x32d2cfca # initialize rs1
li x3, 0xa7e8f245 # initialize rs2
sha512sig0h x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x07fc7b13 # initialize rs1
li x4, 0x1554fc49 # initialize rs2
sha512sig0h x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x53d7b0fa # initialize rs1
li x5, 0xdf899b8e # initialize rs2
sha512sig0h x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb4a0ce5a # initialize rs1
li x6, 0x58126405 # initialize rs2
sha512sig0h x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf16894a5 # initialize rs1
li x7, 0xbbcd5fa7 # initialize rs2
sha512sig0h x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x65d6a088 # initialize rs1
li x8, 0x28fe78c3 # initialize rs2
sha512sig0h x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x09de4471 # initialize rs1
li x9, 0xe55efce6 # initialize rs2
sha512sig0h x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x4d4e5c03 # initialize rs1
li x10, 0x95d45b31 # initialize rs2
sha512sig0h x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x3193456e # initialize rs1
li x11, 0x39d01066 # initialize rs2
sha512sig0h x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x9cb98973 # initialize rs1
li x12, 0x8117b26e # initialize rs2
sha512sig0h x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x3802fad6 # initialize rs1
li x13, 0x24a74c40 # initialize rs2
sha512sig0h x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x54951b83 # initialize rs1
li x14, 0x5cca98cc # initialize rs2
sha512sig0h x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x15bee37e # initialize rs1
li x15, 0xdca7beee # initialize rs2
sha512sig0h x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xa5b3edef # initialize rs1
li x16, 0xaf4e6c50 # initialize rs2
sha512sig0h x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x2a17da9e # initialize rs1
li x17, 0x739c7a45 # initialize rs2
sha512sig0h x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x50fbc357 # initialize rs1
li x18, 0x0d86f430 # initialize rs2
sha512sig0h x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x39df54b2 # initialize rs1
li x19, 0x74a00fe3 # initialize rs2
sha512sig0h x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x4f8b6752 # initialize rs1
li x20, 0xe22afa28 # initialize rs2
sha512sig0h x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xac88d314 # initialize rs1
li x21, 0x827e1724 # initialize rs2
sha512sig0h x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x15e43a6e # initialize rs1
li x22, 0x7f6f8e37 # initialize rs2
sha512sig0h x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x4071105f # initialize rs1
li x23, 0x83ac868a # initialize rs2
sha512sig0h x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xbb8edeae # initialize rs1
li x24, 0xa4413112 # initialize rs2
sha512sig0h x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xd89b588d # initialize rs1
li x25, 0xddf3a96c # initialize rs2
sha512sig0h x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x185c509b # initialize rs1
li x26, 0x76f3ced1 # initialize rs2
sha512sig0h x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xa3eca41f # initialize rs1
li x27, 0x70d31c4a # initialize rs2
sha512sig0h x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xe08555b5 # initialize rs1
li x28, 0x2968a2cc # initialize rs2
sha512sig0h x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x3e0e4aa5 # initialize rs1
li x29, 0x880c26ec # initialize rs2
sha512sig0h x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x27476a03 # initialize rs1
li x30, 0x8d17d387 # initialize rs2
sha512sig0h x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x3d8fbe04 # initialize rs1
li x31, 0xd9aef5e8 # initialize rs2
sha512sig0h x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x2, x12 # perform first operation
sha512sig0h x21, x5, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x3, x15 # perform first operation
sha512sig0h x19, x6, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x28, x20 # perform first operation
sha512sig0h x11, x1, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x15, x3 # perform first operation
sha512sig0h x2, x29, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x22, x23 # perform first operation
sha512sig0h x23, x29, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x21, x11 # perform first operation
sha512sig0h x11, x13, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x31, x17 # perform first operation
sha512sig0h x11, x16, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x25, x23 # perform first operation
sha512sig0h x31, x14, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x5, x3 # perform first operation
sha512sig0h x22, x24, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x5, x30 # perform first operation
sha512sig0h x5, x12, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x26, x13, x6 # perform first operation
sha512sig0h x6, x31, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x24, x6 # perform first operation
sha512sig0h x7, x19, x26 # perform second (triggering) operation

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
