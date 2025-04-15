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

    

// ******************
// Tests from: WALLY-COV-czero.nez.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xd38347c4 # initialize rs1
li x10, 0x4e2e8a59 # initialize rs2
czero.nez x5, x0, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x18e1843b # initialize rs1
li x16, 0xb4c3ab99 # initialize rs2
czero.nez x14, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xcfbd6d62 # initialize rs1
li x21, 0xd3821f57 # initialize rs2
czero.nez x18, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x52c92445 # initialize rs1
li x30, 0xc4706595 # initialize rs2
czero.nez x15, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x87b41d75 # initialize rs1
li x16, 0x1a6a879b # initialize rs2
czero.nez x8, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7eea32b1 # initialize rs1
li x8, 0x9b6e5ae5 # initialize rs2
czero.nez x16, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1c7a60c9 # initialize rs1
li x7, 0x88dc36b7 # initialize rs2
czero.nez x5, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0x27425aac # initialize rs1
li x11, 0xc71b1f53 # initialize rs2
czero.nez x12, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x28c5b390 # initialize rs1
li x13, 0x77801368 # initialize rs2
czero.nez x26, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x2d1c219a # initialize rs1
li x28, 0xe23a99fc # initialize rs2
czero.nez x11, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x01fb13d7 # initialize rs1
li x31, 0x304c77a0 # initialize rs2
czero.nez x6, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x4c0afed4 # initialize rs1
li x22, 0x24cecc0b # initialize rs2
czero.nez x8, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x6cc81733 # initialize rs1
li x30, 0xd8547b03 # initialize rs2
czero.nez x26, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x01125653 # initialize rs1
li x30, 0xdacbc682 # initialize rs2
czero.nez x21, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x37c5947b # initialize rs1
li x7, 0x7796af07 # initialize rs2
czero.nez x22, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x7c6c3871 # initialize rs1
li x22, 0x61e3665e # initialize rs2
czero.nez x7, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x5c9461bf # initialize rs1
li x6, 0xbc6eddc9 # initialize rs2
czero.nez x30, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xd84743a3 # initialize rs1
li x14, 0xd446d30f # initialize rs2
czero.nez x23, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xbe446fe0 # initialize rs1
li x20, 0xfef436f4 # initialize rs2
czero.nez x23, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x567670cc # initialize rs1
li x23, 0x1b824dc6 # initialize rs2
czero.nez x3, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xcbb9807c # initialize rs1
li x14, 0xc446d931 # initialize rs2
czero.nez x23, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xd90d02dd # initialize rs1
li x23, 0x7ed8224c # initialize rs2
czero.nez x31, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xde871e87 # initialize rs1
li x29, 0x6a2647c3 # initialize rs2
czero.nez x26, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x060e84bc # initialize rs1
li x5, 0xc5e0a8fc # initialize rs2
czero.nez x11, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x69dc9e0d # initialize rs1
li x16, 0xa9205785 # initialize rs2
czero.nez x12, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x3d9371ce # initialize rs1
li x19, 0x15f94e13 # initialize rs2
czero.nez x1, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x5ac7709d # initialize rs1
li x17, 0x02a1ae2b # initialize rs2
czero.nez x15, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xee50f633 # initialize rs1
li x23, 0x298a8002 # initialize rs2
czero.nez x1, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xc34b5323 # initialize rs1
li x18, 0xdf6b4b36 # initialize rs2
czero.nez x25, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x54fdec9e # initialize rs1
li x16, 0xb141abad # initialize rs2
czero.nez x20, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xfced8d27 # initialize rs1
li x20, 0xeb576d66 # initialize rs2
czero.nez x12, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x4f45de6b # initialize rs1
li x15, 0xf47040dd # initialize rs2
czero.nez x16, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x12, 0x7527ffd4 # initialize rs1
li x0, 0x76bf0dbf # initialize rs2
czero.nez x14, x12, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x27, 0xd708074e # initialize rs1
li x1, 0x1bd32ee8 # initialize rs2
czero.nez x7, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x8, 0xebb0d8c5 # initialize rs1
li x2, 0x87db82ea # initialize rs2
czero.nez x22, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x2, 0x5c8b052a # initialize rs1
li x3, 0x75364075 # initialize rs2
czero.nez x9, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0xc0ecc879 # initialize rs1
li x4, 0xa3935ee3 # initialize rs2
czero.nez x3, x21, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0xff7416e2 # initialize rs1
li x5, 0x7d44ffc8 # initialize rs2
czero.nez x13, x28, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x16, 0xa4fec81d # initialize rs1
li x6, 0xf50e7339 # initialize rs2
czero.nez x26, x16, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0x4d2912d6 # initialize rs1
li x7, 0x29f96487 # initialize rs2
czero.nez x1, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x12, 0xcd9f9526 # initialize rs1
li x8, 0x04174da3 # initialize rs2
czero.nez x14, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x7, 0x4703e5dd # initialize rs1
li x9, 0x47a682b3 # initialize rs2
czero.nez x11, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x2, 0xc2182af0 # initialize rs1
li x10, 0x649801f9 # initialize rs2
czero.nez x20, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x20, 0x22b85768 # initialize rs1
li x11, 0xb5d1d8ee # initialize rs2
czero.nez x28, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x13, 0x2eb5314d # initialize rs1
li x12, 0x395559f2 # initialize rs2
czero.nez x1, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x25, 0xba6f9e15 # initialize rs1
li x13, 0x79809f5b # initialize rs2
czero.nez x11, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x9, 0x78e1a104 # initialize rs1
li x14, 0x85e52a17 # initialize rs2
czero.nez x7, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x8, 0xc5fb05bf # initialize rs1
li x15, 0xa446747e # initialize rs2
czero.nez x5, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x10, 0x02f8b494 # initialize rs1
li x16, 0x96bc6a7d # initialize rs2
czero.nez x1, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x5, 0x0465a881 # initialize rs1
li x17, 0x396f4886 # initialize rs2
czero.nez x23, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x3, 0xcf7ae216 # initialize rs1
li x18, 0x90c3d922 # initialize rs2
czero.nez x1, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x7, 0x373a7079 # initialize rs1
li x19, 0x1a104049 # initialize rs2
czero.nez x22, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0x80bc52c7 # initialize rs1
li x20, 0xcd53d55c # initialize rs2
czero.nez x5, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x24, 0x2512887b # initialize rs1
li x21, 0xb4c9f10a # initialize rs2
czero.nez x15, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x11, 0x351abf38 # initialize rs1
li x22, 0x14f48411 # initialize rs2
czero.nez x26, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x14, 0x77dde8aa # initialize rs1
li x23, 0x56a094bf # initialize rs2
czero.nez x2, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x31, 0xe30f91e5 # initialize rs1
li x24, 0x54a2fcf9 # initialize rs2
czero.nez x21, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x6, 0x4c6f22c1 # initialize rs1
li x25, 0xa89e2f78 # initialize rs2
czero.nez x18, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0x3cdb820c # initialize rs1
li x26, 0x9d27c617 # initialize rs2
czero.nez x2, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x2, 0xa4d10358 # initialize rs1
li x27, 0x96743b2e # initialize rs2
czero.nez x10, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x24, 0x0a3b6c55 # initialize rs1
li x28, 0xae1b4262 # initialize rs2
czero.nez x12, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x24, 0x1861d35b # initialize rs1
li x29, 0xab39de5b # initialize rs2
czero.nez x6, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x22, 0x58e69f87 # initialize rs1
li x30, 0xe3f7f7d9 # initialize rs2
czero.nez x31, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x16, 0x93d4a468 # initialize rs1
li x31, 0x18d2956b # initialize rs2
czero.nez x25, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 252)

# Testcase cp_rd (Test destination rd = x0)
li x19, 0x3ae18151 # initialize rs1
li x24, 0x86b39597 # initialize rs2
czero.nez x0, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x19, 0x0731283b # initialize rs1
li x29, 0x55dfe079 # initialize rs2
czero.nez x1, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x10, 0x87c26aaf # initialize rs1
li x16, 0x605976ec # initialize rs2
czero.nez x2, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0xaebb1016 # initialize rs1
li x30, 0x66d4dd70 # initialize rs2
czero.nez x3, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0x074c65c3 # initialize rs1
li x19, 0xe46ec271 # initialize rs2
czero.nez x4, x1, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x257d0889 # initialize rs1
li x16, 0x7704033e # initialize rs2
czero.nez x5, x3, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0x5f43b34c # initialize rs1
li x12, 0x2dcb1c96 # initialize rs2
czero.nez x6, x13, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0x1deb9eb7 # initialize rs1
li x10, 0xe1e49fa1 # initialize rs2
czero.nez x7, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x23, 0x92dcf0fe # initialize rs1
li x6, 0x1e90a180 # initialize rs2
czero.nez x8, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x6, 0x630d16d7 # initialize rs1
li x15, 0x1db498d6 # initialize rs2
czero.nez x9, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x30, 0x7c7a4f54 # initialize rs1
li x27, 0xc7d4dac5 # initialize rs2
czero.nez x10, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x28, 0x5b9b07d2 # initialize rs1
li x21, 0x4526e302 # initialize rs2
czero.nez x11, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x25, 0x748e17f4 # initialize rs1
li x19, 0x31ffd405 # initialize rs2
czero.nez x12, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x1, 0xb2990517 # initialize rs1
li x25, 0x32efd5c6 # initialize rs2
czero.nez x13, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x7, 0x0efd2210 # initialize rs1
li x20, 0xd8018d70 # initialize rs2
czero.nez x14, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x28, 0x941cf300 # initialize rs1
li x26, 0xea15ad74 # initialize rs2
czero.nez x15, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x30, 0x9a5882c6 # initialize rs1
li x23, 0xb61bcf5f # initialize rs2
czero.nez x16, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x15, 0x62c112a3 # initialize rs1
li x31, 0x9f10ff01 # initialize rs2
czero.nez x17, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x14, 0xc3cf3738 # initialize rs1
li x12, 0x194f0710 # initialize rs2
czero.nez x18, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x23, 0xd0ff0055 # initialize rs1
li x16, 0xe98539cb # initialize rs2
czero.nez x19, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x9, 0xa70f5b07 # initialize rs1
li x18, 0x2de77edd # initialize rs2
czero.nez x20, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x29, 0xee6056ac # initialize rs1
li x23, 0xce725993 # initialize rs2
czero.nez x21, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x6, 0x9ff09bd0 # initialize rs1
li x11, 0x0ca4180d # initialize rs2
czero.nez x22, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x13, 0x427349a7 # initialize rs1
li x2, 0x86f83029 # initialize rs2
czero.nez x23, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x18, 0x55851f50 # initialize rs1
li x25, 0xf55560a1 # initialize rs2
czero.nez x24, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x21, 0xaa934734 # initialize rs1
li x27, 0x7d1dbe06 # initialize rs2
czero.nez x25, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x3, 0x6f18f2a7 # initialize rs1
li x22, 0xd0326801 # initialize rs2
czero.nez x26, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x16, 0xc0c71535 # initialize rs1
li x22, 0x352100f6 # initialize rs2
czero.nez x27, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x24, 0xec6d2673 # initialize rs1
li x28, 0xec1b5c8e # initialize rs2
czero.nez x28, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x27, 0x30e9bb93 # initialize rs1
li x25, 0x28d2cb03 # initialize rs2
czero.nez x29, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0xa34196dd # initialize rs1
li x11, 0x1f64531b # initialize rs2
czero.nez x30, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x3, 0xe509ae1c # initialize rs1
li x29, 0xf3571b36 # initialize rs2
czero.nez x31, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x12, 0x00000000 # initialize rs1
li x31, 0x61e340a4 # initialize rs2
czero.nez x10, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0x00000001 # initialize rs1
li x21, 0x8e29078a # initialize rs2
czero.nez x14, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x6, 0x00000002 # initialize rs1
li x15, 0xe715ec96 # initialize rs2
czero.nez x27, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x6, 0x80000000 # initialize rs1
li x21, 0xcfe400c5 # initialize rs2
czero.nez x2, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x7, 0x80000001 # initialize rs1
li x8, 0x408a3f91 # initialize rs2
czero.nez x27, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x29, 0x7fffffff # initialize rs1
li x13, 0x53e3a632 # initialize rs2
czero.nez x31, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x20, 0x7ffffffe # initialize rs1
li x16, 0x0c2affc2 # initialize rs2
czero.nez x9, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x6, 0xffffffff # initialize rs1
li x31, 0x3f7b1082 # initialize rs2
czero.nez x15, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x25, 0xfffffffe # initialize rs1
li x6, 0x20215fea # initialize rs2
czero.nez x15, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x12, 0x5bbc8872 # initialize rs1
li x16, 0xf069a7bc # initialize rs2
czero.nez x3, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x3, 0xaaaaaaaa # initialize rs1
li x18, 0x4377c85b # initialize rs2
czero.nez x7, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x6, 0x55555555 # initialize rs1
li x23, 0xc5751a6c # initialize rs2
czero.nez x1, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0x302a112f # initialize rs1
li x6, 0x00000000 # initialize rs2
czero.nez x20, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x21, 0xd6b05255 # initialize rs1
li x16, 0x00000001 # initialize rs2
czero.nez x27, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x1, 0xfe8018b7 # initialize rs1
li x21, 0x00000002 # initialize rs2
czero.nez x25, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x25, 0xb9e2e512 # initialize rs1
li x10, 0x80000000 # initialize rs2
czero.nez x6, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x22, 0xa00e8023 # initialize rs1
li x29, 0x80000001 # initialize rs2
czero.nez x7, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x17, 0x978513e6 # initialize rs1
li x16, 0x7fffffff # initialize rs2
czero.nez x21, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x16, 0x2f549015 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
czero.nez x5, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x30, 0x4e87a9cb # initialize rs1
li x26, 0xffffffff # initialize rs2
czero.nez x11, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x30, 0x5ab1da44 # initialize rs1
li x31, 0xfffffffe # initialize rs2
czero.nez x11, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x26, 0xfcb93182 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
czero.nez x5, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x25, 0xd63151e1 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
czero.nez x3, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x5, 0x1c6d5019 # initialize rs1
li x28, 0x55555555 # initialize rs2
czero.nez x22, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x9, 0x00000000 # initialize rs1
li x3, 0x00000000 # initialize rs2
czero.nez x15, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x17, 0x00000000 # initialize rs1
li x15, 0x00000001 # initialize rs2
czero.nez x11, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x8, 0x00000000 # initialize rs1
li x5, 0x00000002 # initialize rs2
czero.nez x24, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x31, 0x00000000 # initialize rs1
li x12, 0x80000000 # initialize rs2
czero.nez x10, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x29, 0x00000000 # initialize rs1
li x19, 0x80000001 # initialize rs2
czero.nez x23, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x28, 0x00000000 # initialize rs1
li x10, 0x7fffffff # initialize rs2
czero.nez x5, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x26, 0x00000000 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
czero.nez x1, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x26, 0x00000000 # initialize rs1
li x1, 0xffffffff # initialize rs2
czero.nez x18, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x28, 0x00000000 # initialize rs1
li x11, 0xfffffffe # initialize rs2
czero.nez x10, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x23, 0x00000000 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
czero.nez x31, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x13, 0x00000000 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
czero.nez x19, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x14, 0x00000000 # initialize rs1
li x7, 0x55555555 # initialize rs2
czero.nez x2, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x12, 0x00000001 # initialize rs1
li x31, 0x00000000 # initialize rs2
czero.nez x29, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x25, 0x00000001 # initialize rs1
li x19, 0x00000001 # initialize rs2
czero.nez x6, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x2, 0x00000001 # initialize rs1
li x11, 0x00000002 # initialize rs2
czero.nez x6, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x21, 0x00000001 # initialize rs1
li x8, 0x80000000 # initialize rs2
czero.nez x18, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x22, 0x00000001 # initialize rs1
li x12, 0x80000001 # initialize rs2
czero.nez x8, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x25, 0x00000001 # initialize rs1
li x24, 0x7fffffff # initialize rs2
czero.nez x7, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x26, 0x00000001 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
czero.nez x17, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x15, 0x00000001 # initialize rs1
li x31, 0xffffffff # initialize rs2
czero.nez x16, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x25, 0x00000001 # initialize rs1
li x12, 0xfffffffe # initialize rs2
czero.nez x2, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x21, 0x00000001 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
czero.nez x22, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x20, 0x00000001 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
czero.nez x7, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x25, 0x00000001 # initialize rs1
li x26, 0x55555555 # initialize rs2
czero.nez x9, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x7, 0x00000002 # initialize rs1
li x13, 0x00000000 # initialize rs2
czero.nez x30, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x6, 0x00000002 # initialize rs1
li x8, 0x00000001 # initialize rs2
czero.nez x11, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x13, 0x00000002 # initialize rs1
li x15, 0x00000002 # initialize rs2
czero.nez x9, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x11, 0x00000002 # initialize rs1
li x5, 0x80000000 # initialize rs2
czero.nez x26, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x18, 0x00000002 # initialize rs1
li x1, 0x80000001 # initialize rs2
czero.nez x27, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x11, 0x00000002 # initialize rs1
li x13, 0x7fffffff # initialize rs2
czero.nez x29, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x27, 0x00000002 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
czero.nez x9, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x30, 0x00000002 # initialize rs1
li x13, 0xffffffff # initialize rs2
czero.nez x3, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x5, 0x00000002 # initialize rs1
li x2, 0xfffffffe # initialize rs2
czero.nez x20, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x6, 0x00000002 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
czero.nez x13, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x20, 0x00000002 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
czero.nez x18, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x24, 0x00000002 # initialize rs1
li x18, 0x55555555 # initialize rs2
czero.nez x13, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x18, 0x80000000 # initialize rs1
li x3, 0x00000000 # initialize rs2
czero.nez x6, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x29, 0x80000000 # initialize rs1
li x7, 0x00000001 # initialize rs2
czero.nez x10, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x2, 0x80000000 # initialize rs1
li x22, 0x00000002 # initialize rs2
czero.nez x15, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x30, 0x80000000 # initialize rs1
li x8, 0x80000000 # initialize rs2
czero.nez x19, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x2, 0x80000000 # initialize rs1
li x17, 0x80000001 # initialize rs2
czero.nez x10, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x17, 0x80000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
czero.nez x13, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x26, 0x80000000 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
czero.nez x14, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x23, 0x80000000 # initialize rs1
li x25, 0xffffffff # initialize rs2
czero.nez x10, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x24, 0x80000000 # initialize rs1
li x16, 0xfffffffe # initialize rs2
czero.nez x26, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x28, 0x80000000 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
czero.nez x1, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x25, 0x80000000 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
czero.nez x19, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x5, 0x80000000 # initialize rs1
li x28, 0x55555555 # initialize rs2
czero.nez x20, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x27, 0x80000001 # initialize rs1
li x24, 0x00000000 # initialize rs2
czero.nez x25, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x16, 0x80000001 # initialize rs1
li x11, 0x00000001 # initialize rs2
czero.nez x5, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x9, 0x80000001 # initialize rs1
li x17, 0x00000002 # initialize rs2
czero.nez x12, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x23, 0x80000001 # initialize rs1
li x10, 0x80000000 # initialize rs2
czero.nez x3, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x20, 0x80000001 # initialize rs1
li x13, 0x80000001 # initialize rs2
czero.nez x24, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x8, 0x80000001 # initialize rs1
li x18, 0x7fffffff # initialize rs2
czero.nez x22, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x25, 0x80000001 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
czero.nez x18, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x29, 0x80000001 # initialize rs1
li x11, 0xffffffff # initialize rs2
czero.nez x14, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x3, 0x80000001 # initialize rs1
li x27, 0xfffffffe # initialize rs2
czero.nez x2, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x3, 0x80000001 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
czero.nez x7, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x18, 0x80000001 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
czero.nez x9, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x6, 0x80000001 # initialize rs1
li x17, 0x55555555 # initialize rs2
czero.nez x29, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x23, 0x7fffffff # initialize rs1
li x6, 0x00000000 # initialize rs2
czero.nez x15, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x20, 0x7fffffff # initialize rs1
li x31, 0x00000001 # initialize rs2
czero.nez x23, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x17, 0x7fffffff # initialize rs1
li x10, 0x00000002 # initialize rs2
czero.nez x11, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x22, 0x7fffffff # initialize rs1
li x17, 0x80000000 # initialize rs2
czero.nez x23, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x11, 0x7fffffff # initialize rs1
li x10, 0x80000001 # initialize rs2
czero.nez x21, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x25, 0x7fffffff # initialize rs1
li x18, 0x7fffffff # initialize rs2
czero.nez x1, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x23, 0x7fffffff # initialize rs1
li x18, 0x7ffffffe # initialize rs2
czero.nez x28, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x27, 0x7fffffff # initialize rs1
li x28, 0xffffffff # initialize rs2
czero.nez x19, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x18, 0x7fffffff # initialize rs1
li x13, 0xfffffffe # initialize rs2
czero.nez x29, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x9, 0x7fffffff # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
czero.nez x25, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x21, 0x7fffffff # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
czero.nez x14, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x27, 0x7fffffff # initialize rs1
li x18, 0x55555555 # initialize rs2
czero.nez x9, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x18, 0x7ffffffe # initialize rs1
li x11, 0x00000000 # initialize rs2
czero.nez x16, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x19, 0x7ffffffe # initialize rs1
li x18, 0x00000001 # initialize rs2
czero.nez x28, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x9, 0x7ffffffe # initialize rs1
li x20, 0x00000002 # initialize rs2
czero.nez x30, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x17, 0x7ffffffe # initialize rs1
li x23, 0x80000000 # initialize rs2
czero.nez x27, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x28, 0x7ffffffe # initialize rs1
li x26, 0x80000001 # initialize rs2
czero.nez x3, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x10, 0x7ffffffe # initialize rs1
li x12, 0x7fffffff # initialize rs2
czero.nez x28, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x13, 0x7ffffffe # initialize rs1
li x22, 0x7ffffffe # initialize rs2
czero.nez x24, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x15, 0x7ffffffe # initialize rs1
li x16, 0xffffffff # initialize rs2
czero.nez x3, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x8, 0x7ffffffe # initialize rs1
li x16, 0xfffffffe # initialize rs2
czero.nez x9, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x10, 0x7ffffffe # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
czero.nez x31, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x10, 0x7ffffffe # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
czero.nez x14, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x17, 0x7ffffffe # initialize rs1
li x12, 0x55555555 # initialize rs2
czero.nez x25, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x10, 0xffffffff # initialize rs1
li x1, 0x00000000 # initialize rs2
czero.nez x25, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x31, 0xffffffff # initialize rs1
li x11, 0x00000001 # initialize rs2
czero.nez x13, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x9, 0xffffffff # initialize rs1
li x3, 0x00000002 # initialize rs2
czero.nez x15, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x19, 0xffffffff # initialize rs1
li x21, 0x80000000 # initialize rs2
czero.nez x3, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x24, 0xffffffff # initialize rs1
li x2, 0x80000001 # initialize rs2
czero.nez x28, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x14, 0xffffffff # initialize rs1
li x25, 0x7fffffff # initialize rs2
czero.nez x30, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x30, 0xffffffff # initialize rs1
li x7, 0x7ffffffe # initialize rs2
czero.nez x8, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x30, 0xffffffff # initialize rs1
li x10, 0xffffffff # initialize rs2
czero.nez x19, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x30, 0xffffffff # initialize rs1
li x5, 0xfffffffe # initialize rs2
czero.nez x27, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x25, 0xffffffff # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
czero.nez x19, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x31, 0xffffffff # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
czero.nez x1, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x26, 0xffffffff # initialize rs1
li x28, 0x55555555 # initialize rs2
czero.nez x6, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x17, 0xfffffffe # initialize rs1
li x22, 0x00000000 # initialize rs2
czero.nez x5, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x26, 0xfffffffe # initialize rs1
li x11, 0x00000001 # initialize rs2
czero.nez x24, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x14, 0xfffffffe # initialize rs1
li x31, 0x00000002 # initialize rs2
czero.nez x3, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x3, 0xfffffffe # initialize rs1
li x22, 0x80000000 # initialize rs2
czero.nez x27, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x7, 0xfffffffe # initialize rs1
li x6, 0x80000001 # initialize rs2
czero.nez x13, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x22, 0xfffffffe # initialize rs1
li x14, 0x7fffffff # initialize rs2
czero.nez x16, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x17, 0xfffffffe # initialize rs1
li x5, 0x7ffffffe # initialize rs2
czero.nez x11, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x20, 0xfffffffe # initialize rs1
li x25, 0xffffffff # initialize rs2
czero.nez x19, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x9, 0xfffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
czero.nez x5, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x28, 0xfffffffe # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
czero.nez x1, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x19, 0xfffffffe # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
czero.nez x23, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x2, 0xfffffffe # initialize rs1
li x5, 0x55555555 # initialize rs2
czero.nez x10, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x24, 0x5bbc8872 # initialize rs1
li x25, 0x00000000 # initialize rs2
czero.nez x17, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x6, 0x5bbc8872 # initialize rs1
li x5, 0x00000001 # initialize rs2
czero.nez x9, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x17, 0x5bbc8872 # initialize rs1
li x29, 0x00000002 # initialize rs2
czero.nez x22, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x1, 0x5bbc8872 # initialize rs1
li x16, 0x80000000 # initialize rs2
czero.nez x23, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x13, 0x5bbc8872 # initialize rs1
li x12, 0x80000001 # initialize rs2
czero.nez x27, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x2, 0x5bbc8872 # initialize rs1
li x1, 0x7fffffff # initialize rs2
czero.nez x20, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x27, 0x5bbc8872 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
czero.nez x14, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x2, 0x5bbc8872 # initialize rs1
li x1, 0xffffffff # initialize rs2
czero.nez x30, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x8, 0x5bbc8872 # initialize rs1
li x3, 0xfffffffe # initialize rs2
czero.nez x17, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x28, 0x5bbc8872 # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
czero.nez x5, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x2, 0x5bbc8872 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
czero.nez x5, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x26, 0x5bbc8872 # initialize rs1
li x19, 0x55555555 # initialize rs2
czero.nez x27, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x12, 0xaaaaaaaa # initialize rs1
li x28, 0x00000000 # initialize rs2
czero.nez x18, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x29, 0xaaaaaaaa # initialize rs1
li x21, 0x00000001 # initialize rs2
czero.nez x10, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x1, 0xaaaaaaaa # initialize rs1
li x25, 0x00000002 # initialize rs2
czero.nez x27, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x20, 0xaaaaaaaa # initialize rs1
li x31, 0x80000000 # initialize rs2
czero.nez x26, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x31, 0xaaaaaaaa # initialize rs1
li x10, 0x80000001 # initialize rs2
czero.nez x19, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x1, 0xaaaaaaaa # initialize rs1
li x16, 0x7fffffff # initialize rs2
czero.nez x30, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x30, 0xaaaaaaaa # initialize rs1
li x24, 0x7ffffffe # initialize rs2
czero.nez x10, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x9, 0xaaaaaaaa # initialize rs1
li x14, 0xffffffff # initialize rs2
czero.nez x8, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x14, 0xaaaaaaaa # initialize rs1
li x30, 0xfffffffe # initialize rs2
czero.nez x15, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x27, 0xaaaaaaaa # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
czero.nez x24, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
czero.nez x20, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x22, 0xaaaaaaaa # initialize rs1
li x16, 0x55555555 # initialize rs2
czero.nez x14, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x6, 0x55555555 # initialize rs1
li x15, 0x00000000 # initialize rs2
czero.nez x7, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x11, 0x55555555 # initialize rs1
li x12, 0x00000001 # initialize rs2
czero.nez x2, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x26, 0x55555555 # initialize rs1
li x19, 0x00000002 # initialize rs2
czero.nez x29, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x1, 0x55555555 # initialize rs1
li x26, 0x80000000 # initialize rs2
czero.nez x18, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x6, 0x55555555 # initialize rs1
li x24, 0x80000001 # initialize rs2
czero.nez x26, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x9, 0x55555555 # initialize rs1
li x29, 0x7fffffff # initialize rs2
czero.nez x21, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x3, 0x55555555 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
czero.nez x2, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x7, 0x55555555 # initialize rs1
li x8, 0xffffffff # initialize rs2
czero.nez x18, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x26, 0x55555555 # initialize rs1
li x8, 0xfffffffe # initialize rs2
czero.nez x29, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x5, 0x55555555 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
czero.nez x17, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x28, 0x55555555 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
czero.nez x22, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x17, 0x55555555 # initialize rs1
li x24, 0x55555555 # initialize rs2
czero.nez x23, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xed15c4c1 # initialize rs1
li x0, 0x087b1ed4 # initialize rs2
czero.nez x19, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xa77445b9 # initialize rs1
li x1, 0xcb6dba0f # initialize rs2
czero.nez x30, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x4857f1de # initialize rs1
li x2, 0x11662faa # initialize rs2
czero.nez x3, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x0bba5e27 # initialize rs1
li x3, 0xc3ccc0c7 # initialize rs2
czero.nez x15, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe6a1265c # initialize rs1
li x4, 0x298836fd # initialize rs2
czero.nez x14, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7bd5ee91 # initialize rs1
li x5, 0x734968ce # initialize rs2
czero.nez x22, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x43f3aa39 # initialize rs1
li x6, 0x63ddd188 # initialize rs2
czero.nez x5, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf0aac520 # initialize rs1
li x7, 0x1cb50edc # initialize rs2
czero.nez x24, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xf147938a # initialize rs1
li x8, 0xc396b0c3 # initialize rs2
czero.nez x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xa85afba7 # initialize rs1
li x9, 0xe873ac05 # initialize rs2
czero.nez x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x02d24a15 # initialize rs1
li x10, 0x23b6d5a8 # initialize rs2
czero.nez x15, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x11e2ff2d # initialize rs1
li x11, 0xa99ae92a # initialize rs2
czero.nez x29, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x91f40bdc # initialize rs1
li x12, 0x3b56ddae # initialize rs2
czero.nez x3, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xd2a706bd # initialize rs1
li x13, 0xf49104a7 # initialize rs2
czero.nez x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x4a7efc54 # initialize rs1
li x14, 0x5a66e90a # initialize rs2
czero.nez x18, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xb46dea8c # initialize rs1
li x15, 0x89c74cec # initialize rs2
czero.nez x22, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x76f7fea3 # initialize rs1
li x16, 0x4721ebc3 # initialize rs2
czero.nez x12, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x717ae0fe # initialize rs1
li x17, 0x46e76990 # initialize rs2
czero.nez x22, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xe8bc8003 # initialize rs1
li x18, 0x8c0ece2a # initialize rs2
czero.nez x10, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x24841ccc # initialize rs1
li x19, 0x8a5e6305 # initialize rs2
czero.nez x23, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x24054b74 # initialize rs1
li x20, 0x97ed3882 # initialize rs2
czero.nez x23, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x01a4420f # initialize rs1
li x21, 0x6b465138 # initialize rs2
czero.nez x5, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x66f14399 # initialize rs1
li x22, 0x5b5e7ca0 # initialize rs2
czero.nez x21, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x53c325f0 # initialize rs1
li x23, 0x40d3c849 # initialize rs2
czero.nez x30, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xf2b29347 # initialize rs1
li x24, 0x873363f0 # initialize rs2
czero.nez x26, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x6f076326 # initialize rs1
li x25, 0x98eec879 # initialize rs2
czero.nez x15, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xde89628a # initialize rs1
li x26, 0x08d8b917 # initialize rs2
czero.nez x23, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xcf38fcad # initialize rs1
li x27, 0xdbef0ba2 # initialize rs2
czero.nez x15, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x911d91b9 # initialize rs1
li x28, 0xe5909bc3 # initialize rs2
czero.nez x27, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xec0cb746 # initialize rs1
li x29, 0xd4778b26 # initialize rs2
czero.nez x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xa9c03f82 # initialize rs1
li x30, 0x2bd9d98c # initialize rs2
czero.nez x12, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x3d876c60 # initialize rs1
li x31, 0x5fee6bc0 # initialize rs2
czero.nez x29, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xef5fe565 # initialize rs1
li x31, 0x43b053b9 # initialize rs2
czero.nez x0, x0, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x7023fd85 # initialize rs1
li x20, 0x90039f53 # initialize rs2
czero.nez x1, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xf98ef95f # initialize rs1
li x22, 0xd13c382d # initialize rs2
czero.nez x2, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6ec8ad98 # initialize rs1
li x16, 0xb048be82 # initialize rs2
czero.nez x3, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x11e8c727 # initialize rs1
li x16, 0x4bfb5066 # initialize rs2
czero.nez x4, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb62c7ae2 # initialize rs1
li x23, 0x2f5e29f3 # initialize rs2
czero.nez x5, x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd2417c34 # initialize rs1
li x27, 0x410cf82c # initialize rs2
czero.nez x6, x6, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd8e8cae3 # initialize rs1
li x25, 0xb124c998 # initialize rs2
czero.nez x7, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xb9e926eb # initialize rs1
li x9, 0xce0b8957 # initialize rs2
czero.nez x8, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xeb6fab53 # initialize rs1
li x14, 0xd8947dae # initialize rs2
czero.nez x9, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x95f82ce5 # initialize rs1
li x20, 0x2f52a794 # initialize rs2
czero.nez x10, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x466d5801 # initialize rs1
li x10, 0xbef53d26 # initialize rs2
czero.nez x11, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x8771ec1c # initialize rs1
li x6, 0x3d5b8910 # initialize rs2
czero.nez x12, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xa727e08c # initialize rs1
li x15, 0x9dd51e45 # initialize rs2
czero.nez x13, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x6be220f3 # initialize rs1
li x28, 0x8ba47d56 # initialize rs2
czero.nez x14, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x5731d6e3 # initialize rs1
li x10, 0x2c9e5507 # initialize rs2
czero.nez x15, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xbf5ce260 # initialize rs1
li x18, 0x25ea50a4 # initialize rs2
czero.nez x16, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x64181c87 # initialize rs1
li x8, 0x3c3f2cbb # initialize rs2
czero.nez x17, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xa50a64dd # initialize rs1
li x20, 0xa8c294cd # initialize rs2
czero.nez x18, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x6a16d6eb # initialize rs1
li x15, 0x5ef99a22 # initialize rs2
czero.nez x19, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x98237cd0 # initialize rs1
li x17, 0xd3030bcf # initialize rs2
czero.nez x20, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x545688ef # initialize rs1
li x18, 0x95c95ce8 # initialize rs2
czero.nez x21, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x7f9b8781 # initialize rs1
li x17, 0x746bfcc8 # initialize rs2
czero.nez x22, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x7c44a1e9 # initialize rs1
li x26, 0xe7f29552 # initialize rs2
czero.nez x23, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xf021e076 # initialize rs1
li x10, 0xeafe2824 # initialize rs2
czero.nez x24, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x0c985cc7 # initialize rs1
li x23, 0xbc50f19a # initialize rs2
czero.nez x25, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x2fc7e6fa # initialize rs1
li x22, 0xf7255875 # initialize rs2
czero.nez x26, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x9040ab6b # initialize rs1
li x16, 0x80aab69b # initialize rs2
czero.nez x27, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x4d2908cc # initialize rs1
li x5, 0xeeff1962 # initialize rs2
czero.nez x28, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf30616c6 # initialize rs1
li x15, 0x9b966e9e # initialize rs2
czero.nez x29, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xa323159f # initialize rs1
li x9, 0x60c8ee6a # initialize rs2
czero.nez x30, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x764e0a6d # initialize rs1
li x22, 0xa7f81f6d # initialize rs2
czero.nez x31, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x23, 0x633b9989 # initialize rs1
li x0, 0x90a3ab5b # initialize rs2
czero.nez x0, x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x10, 0xe2894e7e # initialize rs1
li x1, 0x4685f5e9 # initialize rs2
czero.nez x1, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x27, 0x85a21d4f # initialize rs1
li x2, 0x5edc9396 # initialize rs2
czero.nez x2, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x7, 0xf22bffbe # initialize rs1
li x3, 0x114e386a # initialize rs2
czero.nez x3, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x5c8c73cf # initialize rs1
li x4, 0xdf7cbd3a # initialize rs2
czero.nez x4, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x1f2cbc5e # initialize rs1
li x5, 0x6097439c # initialize rs2
czero.nez x5, x3, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0x1185b804 # initialize rs1
li x6, 0x73aabfa0 # initialize rs2
czero.nez x6, x14, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x20, 0x047fd911 # initialize rs1
li x7, 0x9177773f # initialize rs2
czero.nez x7, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x5, 0xf878f7b2 # initialize rs1
li x8, 0xdcd095a1 # initialize rs2
czero.nez x8, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x29, 0x1760e492 # initialize rs1
li x9, 0x78ed9948 # initialize rs2
czero.nez x9, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x9, 0x660176b1 # initialize rs1
li x10, 0xbd1857dd # initialize rs2
czero.nez x10, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x15, 0x12caf71c # initialize rs1
li x11, 0xeb6213e7 # initialize rs2
czero.nez x11, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x19, 0xd2c5c893 # initialize rs1
li x12, 0x3235354d # initialize rs2
czero.nez x12, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x12, 0xe2ae6a65 # initialize rs1
li x13, 0x4b7dd484 # initialize rs2
czero.nez x13, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x31, 0x39988c25 # initialize rs1
li x14, 0x2b248038 # initialize rs2
czero.nez x14, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x1, 0xed798eaf # initialize rs1
li x15, 0x97d29e7e # initialize rs2
czero.nez x15, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x381139b9 # initialize rs1
li x16, 0xfa17a31e # initialize rs2
czero.nez x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x5, 0x2b87d464 # initialize rs1
li x17, 0xfae9c8e7 # initialize rs2
czero.nez x17, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x9, 0x988e1a74 # initialize rs1
li x18, 0x0bf74a2d # initialize rs2
czero.nez x18, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x27, 0x4c700bf9 # initialize rs1
li x19, 0x7180745d # initialize rs2
czero.nez x19, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x17, 0x56f1e4e6 # initialize rs1
li x20, 0xcdf46932 # initialize rs2
czero.nez x20, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0x3841bca9 # initialize rs1
li x21, 0x2f1bbf3e # initialize rs2
czero.nez x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x3, 0x3290ce45 # initialize rs1
li x22, 0xf6b932e0 # initialize rs2
czero.nez x22, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x11, 0x67b634f0 # initialize rs1
li x23, 0xccfd78c3 # initialize rs2
czero.nez x23, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x23, 0xff665a51 # initialize rs1
li x24, 0x085157b1 # initialize rs2
czero.nez x24, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x6, 0x3ec26e9a # initialize rs1
li x25, 0xb77fa14f # initialize rs2
czero.nez x25, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x5, 0xa3148e6a # initialize rs1
li x26, 0x267dc121 # initialize rs2
czero.nez x26, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x15, 0x9d262c78 # initialize rs1
li x27, 0x494000ab # initialize rs2
czero.nez x27, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x18, 0xc2d2d994 # initialize rs1
li x28, 0x5bb8382f # initialize rs2
czero.nez x28, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x26, 0x06ffede3 # initialize rs1
li x29, 0x89f3ed10 # initialize rs2
czero.nez x29, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x15, 0x37e5d705 # initialize rs1
li x30, 0xf12bd56b # initialize rs2
czero.nez x30, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x25, 0x49de5383 # initialize rs1
li x31, 0x7c06857e # initialize rs2
czero.nez x31, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x77191114 # initialize rs1
li x0, 0x921f8599 # initialize rs2
czero.nez x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x25111e62 # initialize rs1
li x1, 0x550c2a20 # initialize rs2
czero.nez x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xb6b9624d # initialize rs1
li x2, 0x84ff66ed # initialize rs2
czero.nez x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x5cc05c22 # initialize rs1
li x3, 0x389e4d90 # initialize rs2
czero.nez x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x68076a84 # initialize rs1
li x4, 0x882e0ea8 # initialize rs2
czero.nez x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0655fe7a # initialize rs1
li x5, 0x939db0ee # initialize rs2
czero.nez x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa1f32e2c # initialize rs1
li x6, 0xb6864fc1 # initialize rs2
czero.nez x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x15dc7295 # initialize rs1
li x7, 0xea940376 # initialize rs2
czero.nez x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x84715ccc # initialize rs1
li x8, 0xbb32b1b6 # initialize rs2
czero.nez x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xf8cd3ae6 # initialize rs1
li x9, 0x2ed0782c # initialize rs2
czero.nez x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x6cb7d154 # initialize rs1
li x10, 0x4f774ee3 # initialize rs2
czero.nez x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x6d9bc1c7 # initialize rs1
li x11, 0x1aa4a9bf # initialize rs2
czero.nez x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x7d0ef235 # initialize rs1
li x12, 0x317a244a # initialize rs2
czero.nez x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xfe145868 # initialize rs1
li x13, 0x30e5b638 # initialize rs2
czero.nez x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x27c6d64a # initialize rs1
li x14, 0xd006af6d # initialize rs2
czero.nez x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x96eacb1c # initialize rs1
li x15, 0xc4dafd69 # initialize rs2
czero.nez x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x1fd54a54 # initialize rs1
li x16, 0xa4cddf74 # initialize rs2
czero.nez x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xf6a59493 # initialize rs1
li x17, 0xe90a7ab7 # initialize rs2
czero.nez x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x7df64208 # initialize rs1
li x18, 0xf0e4067c # initialize rs2
czero.nez x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x7d5c9721 # initialize rs1
li x19, 0xe6dd15ee # initialize rs2
czero.nez x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x4b9250e5 # initialize rs1
li x20, 0x2c1d2fca # initialize rs2
czero.nez x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x828a36d7 # initialize rs1
li x21, 0xbbaeeefe # initialize rs2
czero.nez x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xc6f330b6 # initialize rs1
li x22, 0x064d5c02 # initialize rs2
czero.nez x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xcd58073a # initialize rs1
li x23, 0x6af68dcc # initialize rs2
czero.nez x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xefd25964 # initialize rs1
li x24, 0x926198bc # initialize rs2
czero.nez x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x72e54546 # initialize rs1
li x25, 0x3d2c5a01 # initialize rs2
czero.nez x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xacb61d86 # initialize rs1
li x26, 0x55af16e2 # initialize rs2
czero.nez x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xf5a0a5d0 # initialize rs1
li x27, 0x98c1b690 # initialize rs2
czero.nez x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xd0389378 # initialize rs1
li x28, 0x6232504f # initialize rs2
czero.nez x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xd9ab3d7e # initialize rs1
li x29, 0x2f627ffc # initialize rs2
czero.nez x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x7f830139 # initialize rs1
li x30, 0x490c3911 # initialize rs2
czero.nez x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x3c545e68 # initialize rs1
li x31, 0x7244a446 # initialize rs2
czero.nez x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x20, x6 # perform first operation
czero.nez x30, x23, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x24, x1 # perform first operation
czero.nez x31, x10, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x2, x29 # perform first operation
czero.nez x10, x8, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x9, x2 # perform first operation
czero.nez x2, x5, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x20, x14 # perform first operation
czero.nez x14, x31, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x10, x29 # perform first operation
czero.nez x10, x29, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x6, x9 # perform first operation
czero.nez x18, x23, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x9, x19 # perform first operation
czero.nez x30, x29, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x14, x26 # perform first operation
czero.nez x23, x30, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x17, x7 # perform first operation
czero.nez x17, x30, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x11, x3 # perform first operation
czero.nez x3, x26, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x22, x21 # perform first operation
czero.nez x6, x19, x5 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-czero.eqz.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x193b9e5c # initialize rs1
li x17, 0x1f7f31af # initialize rs2
czero.eqz x1, x0, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x8d21fac0 # initialize rs1
li x22, 0x4645507f # initialize rs2
czero.eqz x24, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xac3e534f # initialize rs1
li x29, 0x2fe36797 # initialize rs2
czero.eqz x10, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xbdbf39a8 # initialize rs1
li x23, 0xffb45b3e # initialize rs2
czero.eqz x15, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5dafdc18 # initialize rs1
li x6, 0x285aa521 # initialize rs2
czero.eqz x3, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x49842580 # initialize rs1
li x21, 0xdf7ac329 # initialize rs2
czero.eqz x27, x5, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc16d64b3 # initialize rs1
li x12, 0xb7db6e3f # initialize rs2
czero.eqz x8, x6, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x8, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9da13980 # initialize rs1
li x22, 0xc563d2e1 # initialize rs2
czero.eqz x27, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x4bd617c2 # initialize rs1
li x5, 0xd6d8ecd3 # initialize rs2
czero.eqz x7, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xd8f3486c # initialize rs1
li x21, 0x6b1322d2 # initialize rs2
czero.eqz x15, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x68097f18 # initialize rs1
li x21, 0x25bc248b # initialize rs2
czero.eqz x28, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x8e0c9d2f # initialize rs1
li x30, 0x346d7f44 # initialize rs2
czero.eqz x9, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x7239b854 # initialize rs1
li x18, 0x90799427 # initialize rs2
czero.eqz x3, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xf39d04e0 # initialize rs1
li x11, 0x73ebe178 # initialize rs2
czero.eqz x28, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x75040046 # initialize rs1
li x20, 0x2ce3ad7d # initialize rs2
czero.eqz x7, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x0b5c2d08 # initialize rs1
li x13, 0xb87cae4e # initialize rs2
czero.eqz x31, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xcad28ae3 # initialize rs1
li x24, 0x34ab955a # initialize rs2
czero.eqz x18, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x3a1ffaa7 # initialize rs1
li x30, 0xea6ea352 # initialize rs2
czero.eqz x3, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xccbbbee1 # initialize rs1
li x19, 0x9a5da171 # initialize rs2
czero.eqz x11, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xe2a1f34d # initialize rs1
li x1, 0x206a8c31 # initialize rs2
czero.eqz x7, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x6752f353 # initialize rs1
li x12, 0x5758340d # initialize rs2
czero.eqz x8, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xc9de5f49 # initialize rs1
li x2, 0xc3f6915c # initialize rs2
czero.eqz x5, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xef585c89 # initialize rs1
li x9, 0x9203906d # initialize rs2
czero.eqz x17, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x502d4906 # initialize rs1
li x25, 0x1f90960f # initialize rs2
czero.eqz x3, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x6f9e6540 # initialize rs1
li x5, 0xe734299f # initialize rs2
czero.eqz x25, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x883dccea # initialize rs1
li x21, 0x8d1e3f0a # initialize rs2
czero.eqz x11, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x234968a9 # initialize rs1
li x27, 0x8a36afe9 # initialize rs2
czero.eqz x9, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x14fae1c5 # initialize rs1
li x9, 0x12882871 # initialize rs2
czero.eqz x15, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x08ae2497 # initialize rs1
li x18, 0x6f9d13b7 # initialize rs2
czero.eqz x19, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x2565bff4 # initialize rs1
li x17, 0xd95a9391 # initialize rs2
czero.eqz x7, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x2a5c9fdc # initialize rs1
li x10, 0xb0dd1ad7 # initialize rs2
czero.eqz x13, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xad84ab5e # initialize rs1
li x9, 0x56684737 # initialize rs2
czero.eqz x27, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x21, 0xbc8a4f00 # initialize rs1
li x0, 0xf7670b55 # initialize rs2
czero.eqz x15, x21, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x29, 0xffa5ecc6 # initialize rs1
li x1, 0xfad02d06 # initialize rs2
czero.eqz x18, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x23, 0x8daa20c9 # initialize rs1
li x2, 0xbd5983e5 # initialize rs2
czero.eqz x14, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x1, 0xc60722af # initialize rs1
li x3, 0x64d1a4aa # initialize rs2
czero.eqz x8, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0xc88aa77a # initialize rs1
li x4, 0x1fe2766c # initialize rs2
czero.eqz x22, x21, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0x897645b0 # initialize rs1
li x5, 0x547f3e00 # initialize rs2
czero.eqz x13, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
li x20, 0x52e1d816 # initialize rs1
li x6, 0x1972fbc2 # initialize rs2
czero.eqz x5, x20, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0xa6ae161b # initialize rs1
li x7, 0x746c76b6 # initialize rs2
czero.eqz x3, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0x102271c7 # initialize rs1
li x8, 0x1f31ae61 # initialize rs2
czero.eqz x15, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0x545f65a2 # initialize rs1
li x9, 0xcd10bb65 # initialize rs2
czero.eqz x30, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x25, 0xbbb95576 # initialize rs1
li x10, 0xf6ce2c4b # initialize rs2
czero.eqz x19, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x2, 0x42deebc1 # initialize rs1
li x11, 0x28bae84b # initialize rs2
czero.eqz x9, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x9, 0xe3ac5e6d # initialize rs1
li x12, 0x3f6fa74e # initialize rs2
czero.eqz x13, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0xc6275a5e # initialize rs1
li x13, 0x361bdeb3 # initialize rs2
czero.eqz x26, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x1, 0xf274cc6e # initialize rs1
li x14, 0xb57484bc # initialize rs2
czero.eqz x2, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x10, 0x7a7c28b4 # initialize rs1
li x15, 0xc496fee9 # initialize rs2
czero.eqz x1, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x25, 0x0bd230c4 # initialize rs1
li x16, 0xbb0b60c4 # initialize rs2
czero.eqz x15, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x24, 0x0954dc8a # initialize rs1
li x17, 0xca858226 # initialize rs2
czero.eqz x3, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x24, 0x38eee031 # initialize rs1
li x18, 0xa2654e40 # initialize rs2
czero.eqz x30, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x26, 0xf43393bd # initialize rs1
li x19, 0xb12cfdb5 # initialize rs2
czero.eqz x29, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x21, 0xbf88c7a1 # initialize rs1
li x20, 0xe7af1add # initialize rs2
czero.eqz x26, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x2, 0xbc5efb0d # initialize rs1
li x21, 0x1313cf22 # initialize rs2
czero.eqz x22, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x15, 0x9eb3b871 # initialize rs1
li x22, 0xd0479caf # initialize rs2
czero.eqz x27, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x5, 0x932c663a # initialize rs1
li x23, 0xece0f423 # initialize rs2
czero.eqz x29, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x23, 0xeffec880 # initialize rs1
li x24, 0x98f25a1c # initialize rs2
czero.eqz x26, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x14, 0xd9aa2c1e # initialize rs1
li x25, 0x060b2d66 # initialize rs2
czero.eqz x26, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0xc4a55de6 # initialize rs1
li x26, 0x06e20ef0 # initialize rs2
czero.eqz x3, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x21, 0x18cc2170 # initialize rs1
li x27, 0x04da033b # initialize rs2
czero.eqz x29, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x15, 0x573720d3 # initialize rs1
li x28, 0x0eb86443 # initialize rs2
czero.eqz x11, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x30, 0xb6683973 # initialize rs1
li x29, 0xcc7bcdfc # initialize rs2
czero.eqz x22, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x1, 0xc684cebb # initialize rs1
li x30, 0x3da1596f # initialize rs2
czero.eqz x28, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x15, 0x28aae60b # initialize rs1
li x31, 0xba8554e2 # initialize rs2
czero.eqz x20, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 252)

# Testcase cp_rd (Test destination rd = x0)
li x29, 0xfc26da11 # initialize rs1
li x11, 0xb89719bc # initialize rs2
czero.eqz x0, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x14, 0xa95f34d4 # initialize rs1
li x12, 0x354b5cf4 # initialize rs2
czero.eqz x1, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x17, 0xa75192aa # initialize rs1
li x18, 0x16cf7140 # initialize rs2
czero.eqz x2, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x23, 0xd63bbe5a # initialize rs1
li x8, 0xb574c2f6 # initialize rs2
czero.eqz x3, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0x8e88cc1c # initialize rs1
li x25, 0xee3a8e38 # initialize rs2
czero.eqz x4, x23, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0xd3999e40 # initialize rs1
li x30, 0x79eea967 # initialize rs2
czero.eqz x5, x15, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x342e0bfd # initialize rs1
li x31, 0xf3acff91 # initialize rs2
czero.eqz x6, x9, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0x8b12845f # initialize rs1
li x12, 0x4959b49c # initialize rs2
czero.eqz x7, x4, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x28, 0x3c29879c # initialize rs1
li x17, 0x6380673b # initialize rs2
czero.eqz x8, x28, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x8, 0xd441e038 # initialize rs1
li x27, 0xba8fbbe1 # initialize rs2
czero.eqz x9, x8, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x19, 0x171b312a # initialize rs1
li x7, 0xde13e860 # initialize rs2
czero.eqz x10, x19, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x29, 0x62d71749 # initialize rs1
li x28, 0xce6e94dc # initialize rs2
czero.eqz x11, x29, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x4, 0xe1de7754 # initialize rs1
li x16, 0xa1815d27 # initialize rs2
czero.eqz x12, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x19, 0x2862f70a # initialize rs1
li x8, 0xa89a4a60 # initialize rs2
czero.eqz x13, x19, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x3, 0x7b723ad2 # initialize rs1
li x13, 0x9a3ea283 # initialize rs2
czero.eqz x14, x3, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0xf18ecc81 # initialize rs1
li x6, 0x7b10a3aa # initialize rs2
czero.eqz x15, x11, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x1, 0x088e21cb # initialize rs1
li x2, 0x160b4dc0 # initialize rs2
czero.eqz x16, x1, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x25, 0xc5ce39b2 # initialize rs1
li x8, 0x63e699bb # initialize rs2
czero.eqz x17, x25, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x27, 0xa6a15892 # initialize rs1
li x18, 0x5e470a85 # initialize rs2
czero.eqz x18, x27, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x28, 0x1c92a674 # initialize rs1
li x6, 0x60a59493 # initialize rs2
czero.eqz x19, x28, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x11, 0x1f4bd421 # initialize rs1
li x22, 0xf30901b2 # initialize rs2
czero.eqz x20, x11, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x26, 0xf48c1b18 # initialize rs1
li x2, 0x9d53796f # initialize rs2
czero.eqz x21, x26, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x16, 0xf8c31e6a # initialize rs1
li x2, 0x1280f525 # initialize rs2
czero.eqz x22, x16, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x20, 0x3cd79dd0 # initialize rs1
li x3, 0x8657b674 # initialize rs2
czero.eqz x23, x20, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x20, 0xd512d7a8 # initialize rs1
li x10, 0xb18cb7e4 # initialize rs2
czero.eqz x24, x20, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x9, 0xbc6e8e55 # initialize rs1
li x24, 0xa7a4d0b8 # initialize rs2
czero.eqz x25, x9, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x20, 0x5563c26b # initialize rs1
li x22, 0x7abfed37 # initialize rs2
czero.eqz x26, x20, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0x1ea03fe9 # initialize rs1
li x15, 0x695adfd9 # initialize rs2
czero.eqz x27, x19, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x4, 0x903df891 # initialize rs1
li x2, 0x90d1bec1 # initialize rs2
czero.eqz x28, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x6, 0x334fc190 # initialize rs1
li x21, 0x585ee37b # initialize rs2
czero.eqz x29, x6, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x3, 0x32605377 # initialize rs1
li x2, 0x95bf2250 # initialize rs2
czero.eqz x30, x3, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x25, 0x911b4a57 # initialize rs1
li x19, 0x417df350 # initialize rs2
czero.eqz x31, x25, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x00000000 # initialize rs1
li x7, 0x9f11b4be # initialize rs2
czero.eqz x15, x8, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x20, 0x00000001 # initialize rs1
li x18, 0xf05b93cb # initialize rs2
czero.eqz x31, x20, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x00000002 # initialize rs1
li x1, 0x1b8a9add # initialize rs2
czero.eqz x16, x15, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x21, 0x80000000 # initialize rs1
li x2, 0x751b5089 # initialize rs2
czero.eqz x29, x21, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x21, 0x80000001 # initialize rs1
li x17, 0xc383dc5d # initialize rs2
czero.eqz x16, x21, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x24, 0x7fffffff # initialize rs1
li x26, 0x6919390e # initialize rs2
czero.eqz x20, x24, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x28, 0x7ffffffe # initialize rs1
li x11, 0x294ef48c # initialize rs2
czero.eqz x7, x28, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x25, 0xffffffff # initialize rs1
li x20, 0x577742e4 # initialize rs2
czero.eqz x8, x25, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0xfffffffe # initialize rs1
li x22, 0x2c6da529 # initialize rs2
czero.eqz x12, x2, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x20, 0x5bbc8872 # initialize rs1
li x12, 0x64b7b730 # initialize rs2
czero.eqz x11, x20, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x19, 0xaaaaaaaa # initialize rs1
li x30, 0xd466e8e2 # initialize rs2
czero.eqz x6, x19, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x23, 0x55555555 # initialize rs1
li x9, 0x871cb194 # initialize rs2
czero.eqz x14, x23, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x13, 0x04aaef2d # initialize rs1
li x20, 0x00000000 # initialize rs2
czero.eqz x27, x13, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x19, 0x7275c70a # initialize rs1
li x28, 0x00000001 # initialize rs2
czero.eqz x7, x19, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x11, 0xbaebe86c # initialize rs1
li x4, 0x00000002 # initialize rs2
czero.eqz x17, x11, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x30, 0x907c1511 # initialize rs1
li x11, 0x80000000 # initialize rs2
czero.eqz x17, x30, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x3, 0xe64cf8d7 # initialize rs1
li x16, 0x80000001 # initialize rs2
czero.eqz x10, x3, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x11, 0x0d239ae3 # initialize rs1
li x26, 0x7fffffff # initialize rs2
czero.eqz x30, x11, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x4, 0xd34a29cf # initialize rs1
li x22, 0x7ffffffe # initialize rs2
czero.eqz x13, x4, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x15, 0xdaaee76a # initialize rs1
li x9, 0xffffffff # initialize rs2
czero.eqz x30, x15, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x25, 0xc5f43733 # initialize rs1
li x1, 0xfffffffe # initialize rs2
czero.eqz x14, x25, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x14, 0x91402b98 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
czero.eqz x6, x14, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x27, 0x72fbf8a8 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
czero.eqz x8, x27, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x1, 0x31398108 # initialize rs1
li x12, 0x55555555 # initialize rs2
czero.eqz x30, x1, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x26, 0x00000000 # initialize rs1
li x4, 0x00000000 # initialize rs2
czero.eqz x19, x26, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x29, 0x00000000 # initialize rs1
li x30, 0x00000001 # initialize rs2
czero.eqz x15, x29, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x23, 0x00000000 # initialize rs1
li x3, 0x00000002 # initialize rs2
czero.eqz x30, x23, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x16, 0x00000000 # initialize rs1
li x25, 0x80000000 # initialize rs2
czero.eqz x23, x16, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x17, 0x00000000 # initialize rs1
li x28, 0x80000001 # initialize rs2
czero.eqz x1, x17, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x7, 0x00000000 # initialize rs1
li x12, 0x7fffffff # initialize rs2
czero.eqz x28, x7, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x18, 0x00000000 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
czero.eqz x9, x18, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x16, 0x00000000 # initialize rs1
li x15, 0xffffffff # initialize rs2
czero.eqz x27, x16, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x29, 0x00000000 # initialize rs1
li x12, 0xfffffffe # initialize rs2
czero.eqz x28, x29, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x13, 0x00000000 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
czero.eqz x14, x13, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x18, 0x00000000 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
czero.eqz x14, x18, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x2, 0x00000000 # initialize rs1
li x1, 0x55555555 # initialize rs2
czero.eqz x23, x2, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x4, 0x00000001 # initialize rs1
li x3, 0x00000000 # initialize rs2
czero.eqz x26, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x13, 0x00000001 # initialize rs1
li x22, 0x00000001 # initialize rs2
czero.eqz x6, x13, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x31, 0x00000001 # initialize rs1
li x6, 0x00000002 # initialize rs2
czero.eqz x28, x31, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x11, 0x00000001 # initialize rs1
li x10, 0x80000000 # initialize rs2
czero.eqz x7, x11, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x23, 0x00000001 # initialize rs1
li x26, 0x80000001 # initialize rs2
czero.eqz x25, x23, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x28, 0x00000001 # initialize rs1
li x4, 0x7fffffff # initialize rs2
czero.eqz x3, x28, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x15, 0x00000001 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
czero.eqz x7, x15, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x8, 0x00000001 # initialize rs1
li x11, 0xffffffff # initialize rs2
czero.eqz x3, x8, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x27, 0x00000001 # initialize rs1
li x10, 0xfffffffe # initialize rs2
czero.eqz x12, x27, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x2, 0x00000001 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
czero.eqz x21, x2, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x11, 0x00000001 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
czero.eqz x7, x11, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x14, 0x00000001 # initialize rs1
li x13, 0x55555555 # initialize rs2
czero.eqz x8, x14, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x26, 0x00000002 # initialize rs1
li x11, 0x00000000 # initialize rs2
czero.eqz x29, x26, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x28, 0x00000002 # initialize rs1
li x12, 0x00000001 # initialize rs2
czero.eqz x6, x28, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x11, 0x00000002 # initialize rs1
li x2, 0x00000002 # initialize rs2
czero.eqz x6, x11, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x21, 0x00000002 # initialize rs1
li x26, 0x80000000 # initialize rs2
czero.eqz x11, x21, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x18, 0x00000002 # initialize rs1
li x28, 0x80000001 # initialize rs2
czero.eqz x14, x18, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x24, 0x00000002 # initialize rs1
li x20, 0x7fffffff # initialize rs2
czero.eqz x10, x24, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x1, 0x00000002 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
czero.eqz x16, x1, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x18, 0x00000002 # initialize rs1
li x20, 0xffffffff # initialize rs2
czero.eqz x25, x18, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x21, 0x00000002 # initialize rs1
li x17, 0xfffffffe # initialize rs2
czero.eqz x14, x21, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x4, 0x00000002 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
czero.eqz x20, x4, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x29, 0x00000002 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
czero.eqz x26, x29, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x9, 0x00000002 # initialize rs1
li x1, 0x55555555 # initialize rs2
czero.eqz x12, x9, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x28, 0x80000000 # initialize rs1
li x2, 0x00000000 # initialize rs2
czero.eqz x18, x28, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x10, 0x80000000 # initialize rs1
li x12, 0x00000001 # initialize rs2
czero.eqz x14, x10, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x20, 0x80000000 # initialize rs1
li x29, 0x00000002 # initialize rs2
czero.eqz x28, x20, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x4, 0x80000000 # initialize rs1
li x8, 0x80000000 # initialize rs2
czero.eqz x22, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x2, 0x80000000 # initialize rs1
li x30, 0x80000001 # initialize rs2
czero.eqz x1, x2, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x28, 0x80000000 # initialize rs1
li x27, 0x7fffffff # initialize rs2
czero.eqz x15, x28, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x15, 0x80000000 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
czero.eqz x11, x15, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x26, 0x80000000 # initialize rs1
li x7, 0xffffffff # initialize rs2
czero.eqz x23, x26, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x23, 0x80000000 # initialize rs1
li x4, 0xfffffffe # initialize rs2
czero.eqz x8, x23, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x3, 0x80000000 # initialize rs1
li x4, 0x5bbc8872 # initialize rs2
czero.eqz x10, x3, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x10, 0x80000000 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
czero.eqz x31, x10, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x24, 0x80000000 # initialize rs1
li x12, 0x55555555 # initialize rs2
czero.eqz x29, x24, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x31, 0x80000001 # initialize rs1
li x16, 0x00000000 # initialize rs2
czero.eqz x1, x31, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x22, 0x80000001 # initialize rs1
li x4, 0x00000001 # initialize rs2
czero.eqz x17, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x10, 0x80000001 # initialize rs1
li x1, 0x00000002 # initialize rs2
czero.eqz x3, x10, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x22, 0x80000001 # initialize rs1
li x12, 0x80000000 # initialize rs2
czero.eqz x4, x22, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x25, 0x80000001 # initialize rs1
li x30, 0x80000001 # initialize rs2
czero.eqz x31, x25, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x30, 0x80000001 # initialize rs1
li x27, 0x7fffffff # initialize rs2
czero.eqz x19, x30, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x12, 0x80000001 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
czero.eqz x18, x12, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x10, 0x80000001 # initialize rs1
li x19, 0xffffffff # initialize rs2
czero.eqz x15, x10, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x3, 0x80000001 # initialize rs1
li x1, 0xfffffffe # initialize rs2
czero.eqz x18, x3, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x15, 0x80000001 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
czero.eqz x27, x15, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x30, 0x80000001 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
czero.eqz x22, x30, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x28, 0x80000001 # initialize rs1
li x10, 0x55555555 # initialize rs2
czero.eqz x29, x28, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x12, 0x7fffffff # initialize rs1
li x30, 0x00000000 # initialize rs2
czero.eqz x4, x12, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x24, 0x7fffffff # initialize rs1
li x25, 0x00000001 # initialize rs2
czero.eqz x21, x24, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x31, 0x7fffffff # initialize rs1
li x26, 0x00000002 # initialize rs2
czero.eqz x21, x31, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x6, 0x7fffffff # initialize rs1
li x14, 0x80000000 # initialize rs2
czero.eqz x10, x6, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x14, 0x7fffffff # initialize rs1
li x21, 0x80000001 # initialize rs2
czero.eqz x8, x14, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x11, 0x7fffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
czero.eqz x22, x11, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x4, 0x7fffffff # initialize rs1
li x17, 0x7ffffffe # initialize rs2
czero.eqz x12, x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x4, 0x7fffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
czero.eqz x10, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x21, 0x7fffffff # initialize rs1
li x28, 0xfffffffe # initialize rs2
czero.eqz x29, x21, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x26, 0x7fffffff # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
czero.eqz x9, x26, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x27, 0x7fffffff # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
czero.eqz x24, x27, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x4, 0x7fffffff # initialize rs1
li x2, 0x55555555 # initialize rs2
czero.eqz x10, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x21, 0x7ffffffe # initialize rs1
li x31, 0x00000000 # initialize rs2
czero.eqz x6, x21, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x23, 0x7ffffffe # initialize rs1
li x6, 0x00000001 # initialize rs2
czero.eqz x8, x23, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x26, 0x7ffffffe # initialize rs1
li x3, 0x00000002 # initialize rs2
czero.eqz x10, x26, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x11, 0x7ffffffe # initialize rs1
li x4, 0x80000000 # initialize rs2
czero.eqz x30, x11, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x21, 0x7ffffffe # initialize rs1
li x13, 0x80000001 # initialize rs2
czero.eqz x2, x21, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x13, 0x7ffffffe # initialize rs1
li x29, 0x7fffffff # initialize rs2
czero.eqz x14, x13, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x27, 0x7ffffffe # initialize rs1
li x20, 0x7ffffffe # initialize rs2
czero.eqz x8, x27, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x7, 0x7ffffffe # initialize rs1
li x28, 0xffffffff # initialize rs2
czero.eqz x24, x7, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x22, 0x7ffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
czero.eqz x30, x22, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x8, 0x7ffffffe # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
czero.eqz x28, x8, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x17, 0x7ffffffe # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
czero.eqz x13, x17, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x9, 0x7ffffffe # initialize rs1
li x23, 0x55555555 # initialize rs2
czero.eqz x19, x9, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x12, 0xffffffff # initialize rs1
li x18, 0x00000000 # initialize rs2
czero.eqz x8, x12, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x3, 0xffffffff # initialize rs1
li x23, 0x00000001 # initialize rs2
czero.eqz x4, x3, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x27, 0xffffffff # initialize rs1
li x15, 0x00000002 # initialize rs2
czero.eqz x26, x27, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x20, 0xffffffff # initialize rs1
li x6, 0x80000000 # initialize rs2
czero.eqz x11, x20, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x12, 0xffffffff # initialize rs1
li x13, 0x80000001 # initialize rs2
czero.eqz x24, x12, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x24, 0xffffffff # initialize rs1
li x28, 0x7fffffff # initialize rs2
czero.eqz x25, x24, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x17, 0xffffffff # initialize rs1
li x22, 0x7ffffffe # initialize rs2
czero.eqz x18, x17, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x23, 0xffffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
czero.eqz x1, x23, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x12, 0xffffffff # initialize rs1
li x28, 0xfffffffe # initialize rs2
czero.eqz x13, x12, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x29, 0xffffffff # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
czero.eqz x15, x29, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x2, 0xffffffff # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
czero.eqz x3, x2, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x14, 0xffffffff # initialize rs1
li x17, 0x55555555 # initialize rs2
czero.eqz x21, x14, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x1, 0xfffffffe # initialize rs1
li x29, 0x00000000 # initialize rs2
czero.eqz x27, x1, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x13, 0xfffffffe # initialize rs1
li x17, 0x00000001 # initialize rs2
czero.eqz x20, x13, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x31, 0xfffffffe # initialize rs1
li x9, 0x00000002 # initialize rs2
czero.eqz x8, x31, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x23, 0xfffffffe # initialize rs1
li x18, 0x80000000 # initialize rs2
czero.eqz x24, x23, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x19, 0xfffffffe # initialize rs1
li x8, 0x80000001 # initialize rs2
czero.eqz x27, x19, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x11, 0xfffffffe # initialize rs1
li x9, 0x7fffffff # initialize rs2
czero.eqz x12, x11, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x10, 0xfffffffe # initialize rs1
li x31, 0x7ffffffe # initialize rs2
czero.eqz x2, x10, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x1, 0xfffffffe # initialize rs1
li x14, 0xffffffff # initialize rs2
czero.eqz x27, x1, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x25, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
czero.eqz x27, x25, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x2, 0xfffffffe # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
czero.eqz x1, x2, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x9, 0xfffffffe # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
czero.eqz x8, x9, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x25, 0xfffffffe # initialize rs1
li x18, 0x55555555 # initialize rs2
czero.eqz x20, x25, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x25, 0x5bbc8872 # initialize rs1
li x20, 0x00000000 # initialize rs2
czero.eqz x26, x25, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x9, 0x5bbc8872 # initialize rs1
li x21, 0x00000001 # initialize rs2
czero.eqz x16, x9, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x2, 0x5bbc8872 # initialize rs1
li x31, 0x00000002 # initialize rs2
czero.eqz x29, x2, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x6, 0x5bbc8872 # initialize rs1
li x30, 0x80000000 # initialize rs2
czero.eqz x17, x6, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x2, 0x5bbc8872 # initialize rs1
li x11, 0x80000001 # initialize rs2
czero.eqz x29, x2, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x23, 0x5bbc8872 # initialize rs1
li x1, 0x7fffffff # initialize rs2
czero.eqz x28, x23, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x19, 0x5bbc8872 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
czero.eqz x6, x19, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x17, 0x5bbc8872 # initialize rs1
li x1, 0xffffffff # initialize rs2
czero.eqz x18, x17, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x20, 0x5bbc8872 # initialize rs1
li x3, 0xfffffffe # initialize rs2
czero.eqz x27, x20, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x24, 0x5bbc8872 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
czero.eqz x28, x24, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x26, 0x5bbc8872 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
czero.eqz x19, x26, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x9, 0x5bbc8872 # initialize rs1
li x14, 0x55555555 # initialize rs2
czero.eqz x26, x9, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x19, 0xaaaaaaaa # initialize rs1
li x6, 0x00000000 # initialize rs2
czero.eqz x17, x19, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x31, 0xaaaaaaaa # initialize rs1
li x10, 0x00000001 # initialize rs2
czero.eqz x12, x31, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x18, 0xaaaaaaaa # initialize rs1
li x13, 0x00000002 # initialize rs2
czero.eqz x10, x18, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x25, 0xaaaaaaaa # initialize rs1
li x24, 0x80000000 # initialize rs2
czero.eqz x29, x25, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x6, 0xaaaaaaaa # initialize rs1
li x30, 0x80000001 # initialize rs2
czero.eqz x3, x6, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x26, 0xaaaaaaaa # initialize rs1
li x13, 0x7fffffff # initialize rs2
czero.eqz x21, x26, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x20, 0xaaaaaaaa # initialize rs1
li x7, 0x7ffffffe # initialize rs2
czero.eqz x31, x20, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x2, 0xaaaaaaaa # initialize rs1
li x1, 0xffffffff # initialize rs2
czero.eqz x30, x2, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x28, 0xaaaaaaaa # initialize rs1
li x2, 0xfffffffe # initialize rs2
czero.eqz x16, x28, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x20, 0xaaaaaaaa # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
czero.eqz x25, x20, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x24, 0xaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
czero.eqz x29, x24, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x21, 0xaaaaaaaa # initialize rs1
li x15, 0x55555555 # initialize rs2
czero.eqz x7, x21, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x7, 0x55555555 # initialize rs1
li x16, 0x00000000 # initialize rs2
czero.eqz x18, x7, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x23, 0x55555555 # initialize rs1
li x2, 0x00000001 # initialize rs2
czero.eqz x3, x23, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x13, 0x55555555 # initialize rs1
li x26, 0x00000002 # initialize rs2
czero.eqz x18, x13, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x6, 0x55555555 # initialize rs1
li x7, 0x80000000 # initialize rs2
czero.eqz x13, x6, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x29, 0x55555555 # initialize rs1
li x13, 0x80000001 # initialize rs2
czero.eqz x21, x29, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x11, 0x55555555 # initialize rs1
li x3, 0x7fffffff # initialize rs2
czero.eqz x19, x11, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x7, 0x55555555 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
czero.eqz x9, x7, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x8, 0x55555555 # initialize rs1
li x24, 0xffffffff # initialize rs2
czero.eqz x7, x8, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x18, 0x55555555 # initialize rs1
li x17, 0xfffffffe # initialize rs2
czero.eqz x25, x18, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x25, 0x55555555 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
czero.eqz x30, x25, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x22, 0x55555555 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
czero.eqz x17, x22, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x1, 0x55555555 # initialize rs1
li x26, 0x55555555 # initialize rs2
czero.eqz x6, x1, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x27a8a9b2 # initialize rs1
li x0, 0xaf6427de # initialize rs2
czero.eqz x11, x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xac94a2de # initialize rs1
li x1, 0xa765a7d7 # initialize rs2
czero.eqz x31, x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x60d76092 # initialize rs1
li x2, 0x6f88bea9 # initialize rs2
czero.eqz x30, x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x0506dfac # initialize rs1
li x3, 0x41a7c55d # initialize rs2
czero.eqz x3, x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x4, 0x3ba14756 # initialize rs1
li x4, 0xfda99203 # initialize rs2
czero.eqz x28, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x79b2f81c # initialize rs1
li x5, 0x8d4654d4 # initialize rs2
czero.eqz x8, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x92b76a3d # initialize rs1
li x6, 0xb6361e87 # initialize rs2
czero.eqz x27, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x27, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x52547d66 # initialize rs1
li x7, 0x9ef3e1e6 # initialize rs2
czero.eqz x14, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x9b4aedd9 # initialize rs1
li x8, 0xe49ec034 # initialize rs2
czero.eqz x5, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x8ad728e4 # initialize rs1
li x9, 0x403fd7cd # initialize rs2
czero.eqz x7, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xd54ca3a2 # initialize rs1
li x10, 0xdb4dd164 # initialize rs2
czero.eqz x18, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xa8ff91b8 # initialize rs1
li x11, 0x415ce595 # initialize rs2
czero.eqz x15, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x48644b70 # initialize rs1
li x12, 0x2aea7c20 # initialize rs2
czero.eqz x25, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xfd9662e6 # initialize rs1
li x13, 0xb6a3002a # initialize rs2
czero.eqz x7, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xf115e440 # initialize rs1
li x14, 0x6ebfb3d0 # initialize rs2
czero.eqz x2, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x68ec76d6 # initialize rs1
li x15, 0xf27f58c8 # initialize rs2
czero.eqz x13, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x43082776 # initialize rs1
li x16, 0xda8811e3 # initialize rs2
czero.eqz x18, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x9dad7694 # initialize rs1
li x17, 0xb252eb22 # initialize rs2
czero.eqz x24, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x811008bf # initialize rs1
li x18, 0xa27d5b7c # initialize rs2
czero.eqz x20, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x742ee121 # initialize rs1
li x19, 0xad2aa80f # initialize rs2
czero.eqz x6, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x60c2cfeb # initialize rs1
li x20, 0x66ef9b70 # initialize rs2
czero.eqz x28, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xe433ec84 # initialize rs1
li x21, 0x50fe4433 # initialize rs2
czero.eqz x1, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x13915cd6 # initialize rs1
li x22, 0xc32b9042 # initialize rs2
czero.eqz x23, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x717ff601 # initialize rs1
li x23, 0x60ac6f4b # initialize rs2
czero.eqz x17, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x6ab9de8d # initialize rs1
li x24, 0x8a91f5a7 # initialize rs2
czero.eqz x5, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x1aa44f85 # initialize rs1
li x25, 0xfc0858f5 # initialize rs2
czero.eqz x28, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x943a50e7 # initialize rs1
li x26, 0x7048f558 # initialize rs2
czero.eqz x18, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x68eec735 # initialize rs1
li x27, 0xfffc76ff # initialize rs2
czero.eqz x21, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x6a811573 # initialize rs1
li x28, 0xf27ffb5f # initialize rs2
czero.eqz x21, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x8ead849a # initialize rs1
li x29, 0xed983bda # initialize rs2
czero.eqz x18, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x35edac6f # initialize rs1
li x30, 0x54ade6fe # initialize rs2
czero.eqz x31, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x9fe86334 # initialize rs1
li x31, 0x9202ee08 # initialize rs2
czero.eqz x22, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xcf77448f # initialize rs1
li x20, 0x399fd4c7 # initialize rs2
czero.eqz x0, x0, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x7745e700 # initialize rs1
li x6, 0x194bcfe8 # initialize rs2
czero.eqz x1, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7f149beb # initialize rs1
li x29, 0xd57c802c # initialize rs2
czero.eqz x2, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x5cb725a9 # initialize rs1
li x13, 0x138f8b6e # initialize rs2
czero.eqz x3, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x20cb2d12 # initialize rs1
li x6, 0x3209fab7 # initialize rs2
czero.eqz x4, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x08143bd6 # initialize rs1
li x3, 0x9419d6cb # initialize rs2
czero.eqz x5, x5, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf5bc5996 # initialize rs1
li x8, 0xc65ec12a # initialize rs2
czero.eqz x6, x6, x8 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf3a21917 # initialize rs1
li x20, 0x0ff1d54e # initialize rs2
czero.eqz x7, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x15b6c9fc # initialize rs1
li x21, 0x0476bd04 # initialize rs2
czero.eqz x8, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc19e124b # initialize rs1
li x13, 0xb573cbf2 # initialize rs2
czero.eqz x9, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xbf075bdd # initialize rs1
li x31, 0x8d1a9981 # initialize rs2
czero.eqz x10, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xceec5503 # initialize rs1
li x26, 0xa40cc381 # initialize rs2
czero.eqz x11, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xfdf54b36 # initialize rs1
li x2, 0x0d567853 # initialize rs2
czero.eqz x12, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x868109b8 # initialize rs1
li x15, 0x0908a051 # initialize rs2
czero.eqz x13, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x4203ed51 # initialize rs1
li x7, 0x66d1cc25 # initialize rs2
czero.eqz x14, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8fb0b5c4 # initialize rs1
li x25, 0x19323de2 # initialize rs2
czero.eqz x15, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x79db2da1 # initialize rs1
li x19, 0x6a50c038 # initialize rs2
czero.eqz x16, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x4ea7a398 # initialize rs1
li x31, 0x552c76cb # initialize rs2
czero.eqz x17, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xe361ce88 # initialize rs1
li x29, 0xaaa79d79 # initialize rs2
czero.eqz x18, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x981c380e # initialize rs1
li x7, 0x2970e8ab # initialize rs2
czero.eqz x19, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xae55c497 # initialize rs1
li x20, 0x80607dcf # initialize rs2
czero.eqz x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x19fad043 # initialize rs1
li x29, 0x460cd693 # initialize rs2
czero.eqz x21, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb8761138 # initialize rs1
li x1, 0x13b5eb23 # initialize rs2
czero.eqz x22, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x3945f0e3 # initialize rs1
li x25, 0x89be8299 # initialize rs2
czero.eqz x23, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x1e174bd0 # initialize rs1
li x7, 0x966ac77c # initialize rs2
czero.eqz x24, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x68d06924 # initialize rs1
li x27, 0x4c29cdd8 # initialize rs2
czero.eqz x25, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x848cf950 # initialize rs1
li x10, 0x98ad7938 # initialize rs2
czero.eqz x26, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x19afb455 # initialize rs1
li x17, 0xcb077b9e # initialize rs2
czero.eqz x27, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x50958a09 # initialize rs1
li x3, 0x0d2a94be # initialize rs2
czero.eqz x28, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x138de909 # initialize rs1
li x10, 0x7bf3955b # initialize rs2
czero.eqz x29, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xd76c2888 # initialize rs1
li x5, 0xae9b27b0 # initialize rs2
czero.eqz x30, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x6260d0eb # initialize rs1
li x10, 0x74f13ee2 # initialize rs2
czero.eqz x31, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x17, 0xe8af7033 # initialize rs1
li x0, 0xb5afea88 # initialize rs2
czero.eqz x0, x17, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x18, 0x42496c1c # initialize rs1
li x1, 0xe0bd4814 # initialize rs2
czero.eqz x1, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x19, 0x2500be8d # initialize rs1
li x2, 0x072117cb # initialize rs2
czero.eqz x2, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x16, 0xabe9986e # initialize rs1
li x3, 0x81ec71e4 # initialize rs2
czero.eqz x3, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x580274ad # initialize rs1
li x4, 0xc8cc3d81 # initialize rs2
czero.eqz x4, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0x66b751c0 # initialize rs1
li x5, 0xaf1f98fa # initialize rs2
czero.eqz x5, x8, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0x52ffe764 # initialize rs1
li x6, 0x42b164b7 # initialize rs2
czero.eqz x6, x21, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0xe7605fc9 # initialize rs1
li x7, 0x0b6e5b31 # initialize rs2
czero.eqz x7, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x26, 0xedc83c85 # initialize rs1
li x8, 0x226afc86 # initialize rs2
czero.eqz x8, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x22, 0x06b01289 # initialize rs1
li x9, 0xeb20d8a1 # initialize rs2
czero.eqz x9, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x7, 0x0502ebcb # initialize rs1
li x10, 0x2d98e3f9 # initialize rs2
czero.eqz x10, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x28, 0xfa933488 # initialize rs1
li x11, 0x05a8a2e9 # initialize rs2
czero.eqz x11, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x6b20566c # initialize rs1
li x12, 0xfddf6a53 # initialize rs2
czero.eqz x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x21, 0xa2b90580 # initialize rs1
li x13, 0xf7a9dc77 # initialize rs2
czero.eqz x13, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x18, 0x794434ee # initialize rs1
li x14, 0xc82f623e # initialize rs2
czero.eqz x14, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x31, 0xaf7d10f2 # initialize rs1
li x15, 0x3d66578d # initialize rs2
czero.eqz x15, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x12, 0xff16eb38 # initialize rs1
li x16, 0xec677028 # initialize rs2
czero.eqz x16, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x5, 0x38701640 # initialize rs1
li x17, 0x9772aa67 # initialize rs2
czero.eqz x17, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x2, 0x182e73ed # initialize rs1
li x18, 0x2bd318fc # initialize rs2
czero.eqz x18, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x18, 0xfd493bba # initialize rs1
li x19, 0xbe9bf6ba # initialize rs2
czero.eqz x19, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x2, 0x36cfdcb3 # initialize rs1
li x20, 0x3f77b567 # initialize rs2
czero.eqz x20, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0x1ac6c832 # initialize rs1
li x21, 0xf8b72383 # initialize rs2
czero.eqz x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x7, 0x2142f3f6 # initialize rs1
li x22, 0x6c5fdb7a # initialize rs2
czero.eqz x22, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x5, 0x18453cdb # initialize rs1
li x23, 0x1077acb1 # initialize rs2
czero.eqz x23, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x7, 0x839b6905 # initialize rs1
li x24, 0xf847a0c5 # initialize rs2
czero.eqz x24, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x20, 0x7395db1b # initialize rs1
li x25, 0x490dd238 # initialize rs2
czero.eqz x25, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x2, 0xd133e668 # initialize rs1
li x26, 0x162b4b5d # initialize rs2
czero.eqz x26, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x12, 0x4e51d701 # initialize rs1
li x27, 0x090f6935 # initialize rs2
czero.eqz x27, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x20, 0x0b8e0d40 # initialize rs1
li x28, 0x2622741a # initialize rs2
czero.eqz x28, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x1, 0x3aea50a3 # initialize rs1
li x29, 0x6ba12491 # initialize rs2
czero.eqz x29, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x5, 0x2937ccf2 # initialize rs1
li x30, 0x030796b7 # initialize rs2
czero.eqz x30, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x20, 0xdf1a2bbf # initialize rs1
li x31, 0x466cbd2e # initialize rs2
czero.eqz x31, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe7eb5bfe # initialize rs1
li x0, 0x2125d0c6 # initialize rs2
czero.eqz x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x74f928a8 # initialize rs1
li x1, 0x408f477c # initialize rs2
czero.eqz x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x68e81593 # initialize rs1
li x2, 0x622681b9 # initialize rs2
czero.eqz x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x0eb54a74 # initialize rs1
li x3, 0x7c875941 # initialize rs2
czero.eqz x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x94afd676 # initialize rs1
li x4, 0x006c17e7 # initialize rs2
czero.eqz x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbd34f8f1 # initialize rs1
li x5, 0xb0839e9d # initialize rs2
czero.eqz x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1fe3139e # initialize rs1
li x6, 0xce7d9e0e # initialize rs2
czero.eqz x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x82cf7816 # initialize rs1
li x7, 0x544ce2b0 # initialize rs2
czero.eqz x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xe4161212 # initialize rs1
li x8, 0xffb846d5 # initialize rs2
czero.eqz x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xef82dd9a # initialize rs1
li x9, 0xf7831117 # initialize rs2
czero.eqz x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x6f83f8d8 # initialize rs1
li x10, 0x70b666bc # initialize rs2
czero.eqz x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x665b1005 # initialize rs1
li x11, 0xd8f46450 # initialize rs2
czero.eqz x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xa734d70e # initialize rs1
li x12, 0xc5dd7f0d # initialize rs2
czero.eqz x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x50b430a3 # initialize rs1
li x13, 0xc8b28977 # initialize rs2
czero.eqz x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x34145921 # initialize rs1
li x14, 0x0f1c8468 # initialize rs2
czero.eqz x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xe449fb84 # initialize rs1
li x15, 0x6aea132c # initialize rs2
czero.eqz x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x5b2820b0 # initialize rs1
li x16, 0x99ed087c # initialize rs2
czero.eqz x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x8de1adb8 # initialize rs1
li x17, 0x19d7c7d4 # initialize rs2
czero.eqz x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xb3364f94 # initialize rs1
li x18, 0x38258f0c # initialize rs2
czero.eqz x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xd024b6a0 # initialize rs1
li x19, 0x748f0774 # initialize rs2
czero.eqz x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x37e445d1 # initialize rs1
li x20, 0x6638adf6 # initialize rs2
czero.eqz x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc75defe1 # initialize rs1
li x21, 0x727505b0 # initialize rs2
czero.eqz x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x3d64c901 # initialize rs1
li x22, 0xb3d8bfa1 # initialize rs2
czero.eqz x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x6bf9de66 # initialize rs1
li x23, 0xa6bf954d # initialize rs2
czero.eqz x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x94517f2a # initialize rs1
li x24, 0x6a246a15 # initialize rs2
czero.eqz x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x4fdf2503 # initialize rs1
li x25, 0xf0f18d60 # initialize rs2
czero.eqz x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x093c8c4a # initialize rs1
li x26, 0xe1c7a4da # initialize rs2
czero.eqz x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xd3af0fb2 # initialize rs1
li x27, 0xe73c477f # initialize rs2
czero.eqz x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x41fb9f36 # initialize rs1
li x28, 0x03dc921c # initialize rs2
czero.eqz x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x92f1a66e # initialize rs1
li x29, 0x68ba2b32 # initialize rs2
czero.eqz x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x9f4bb792 # initialize rs1
li x30, 0xae0ff3a4 # initialize rs2
czero.eqz x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xe2ce034d # initialize rs1
li x31, 0xd91b612d # initialize rs2
czero.eqz x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x22, x8 # perform first operation
czero.eqz x14, x31, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x27, x31 # perform first operation
czero.eqz x7, x21, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x19, x16 # perform first operation
czero.eqz x3, x2, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x6, x17 # perform first operation
czero.eqz x6, x27, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x2, x5 # perform first operation
czero.eqz x10, x31, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x17, x8 # perform first operation
czero.eqz x8, x20, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x29, x7 # perform first operation
czero.eqz x6, x20, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x29, x9 # perform first operation
czero.eqz x30, x6, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x20, x23 # perform first operation
czero.eqz x22, x8, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x24, x27 # perform first operation
czero.eqz x24, x28, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x22, x8 # perform first operation
czero.eqz x8, x5, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x7, x12 # perform first operation
czero.eqz x9, x2, x13 # perform second (triggering) operation

#.EQU SIGSIZE,1568
.EQU SIGSIZE,3136 #combined


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
