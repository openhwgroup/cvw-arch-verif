///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbb/WALLY-COV-maxu.S
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
li x0, 0x420eeb01 # initialize rs1
li x2, 0x0d97b740 # initialize rs2
maxu x26, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x925155dc # initialize rs1
li x28, 0x3f58e611 # initialize rs2
maxu x5, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x1cb20718 # initialize rs1
li x10, 0x2e7fcf6b # initialize rs2
maxu x6, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x2237950d # initialize rs1
li x23, 0xda2ccb91 # initialize rs2
maxu x17, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2ebe0b2a # initialize rs1
li x6, 0x2b80b9ab # initialize rs2
maxu x10, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x659228be # initialize rs1
li x13, 0x1f9fb484 # initialize rs2
maxu x8, x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x78f0e155 # initialize rs1
li x12, 0x48d55517 # initialize rs2
maxu x14, x6, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x498e4b07 # initialize rs1
li x3, 0x5e8a5b82 # initialize rs2
maxu x31, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xcd09268c # initialize rs1
li x31, 0xe9995615 # initialize rs2
maxu x23, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xc0cbb4af # initialize rs1
li x2, 0x5466d28f # initialize rs2
maxu x31, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xd3bd81a2 # initialize rs1
li x13, 0x7267d386 # initialize rs2
maxu x27, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x1387fba2 # initialize rs1
li x24, 0x64c0d2f2 # initialize rs2
maxu x25, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xbc3301e4 # initialize rs1
li x15, 0xd21d1dbb # initialize rs2
maxu x18, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x75da6c28 # initialize rs1
li x5, 0x497c6eb5 # initialize rs2
maxu x28, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x9767f31b # initialize rs1
li x12, 0xaa378f2e # initialize rs2
maxu x23, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x677ca0b0 # initialize rs1
li x19, 0x3e8ac2a6 # initialize rs2
maxu x28, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x9aa47bdd # initialize rs1
li x23, 0xe7ee45a2 # initialize rs2
maxu x21, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xac386775 # initialize rs1
li x9, 0xd41d52f1 # initialize rs2
maxu x27, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x313db3a5 # initialize rs1
li x25, 0xe2912115 # initialize rs2
maxu x2, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x868e03de # initialize rs1
li x3, 0xbd3066d3 # initialize rs2
maxu x30, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xcb55a0e7 # initialize rs1
li x21, 0x7214a036 # initialize rs2
maxu x6, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x4d605012 # initialize rs1
li x2, 0xbc0a27fa # initialize rs2
maxu x27, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xafc2f7bd # initialize rs1
li x8, 0x9bfd21f6 # initialize rs2
maxu x31, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x98d23c20 # initialize rs1
li x30, 0xd348604a # initialize rs2
maxu x7, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x03e2334b # initialize rs1
li x16, 0xbf756035 # initialize rs2
maxu x14, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x5c359972 # initialize rs1
li x7, 0x2c314ee0 # initialize rs2
maxu x31, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x6f2be84a # initialize rs1
li x25, 0xbd17febb # initialize rs2
maxu x27, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xb152b191 # initialize rs1
li x30, 0x65a7ef36 # initialize rs2
maxu x25, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x52f25ec4 # initialize rs1
li x15, 0x70214a11 # initialize rs2
maxu x13, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xcac851be # initialize rs1
li x13, 0xa378b519 # initialize rs2
maxu x22, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x65d575a6 # initialize rs1
li x16, 0x0eea911a # initialize rs2
maxu x29, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x928188e8 # initialize rs1
li x10, 0xf5b4d2f0 # initialize rs2
maxu x16, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x30, 0xb1d4a115 # initialize rs1
li x0, 0x98d057d4 # initialize rs2
maxu x16, x30, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x10, 0x1c51fe83 # initialize rs1
li x1, 0x207642bb # initialize rs2
maxu x21, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x10, 0xdf9ff14c # initialize rs1
li x2, 0x926a6ced # initialize rs2
maxu x5, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x30, 0x989e9be1 # initialize rs1
li x3, 0x45541ecf # initialize rs2
maxu x16, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0xd0ea70f1 # initialize rs1
li x4, 0x9aa3b24b # initialize rs2
maxu x21, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
li x2, 0x1330f5ee # initialize rs1
li x5, 0xd6d5912f # initialize rs2
maxu x23, x2, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x2cfeb674 # initialize rs1
li x6, 0x505e3097 # initialize rs2
maxu x11, x24, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0xb4cdab34 # initialize rs1
li x7, 0x6fc6ae7c # initialize rs2
maxu x26, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x13, 0xc7fbd912 # initialize rs1
li x8, 0xb9c43a03 # initialize rs2
maxu x22, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x13, 0x7d4de502 # initialize rs1
li x9, 0x03513193 # initialize rs2
maxu x7, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x3, 0x8ce33986 # initialize rs1
li x10, 0x26ef2170 # initialize rs2
maxu x29, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x19, 0x448b6718 # initialize rs1
li x11, 0x4dfbe5b8 # initialize rs2
maxu x15, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x18, 0xce4d48f3 # initialize rs1
li x12, 0x36c7473f # initialize rs2
maxu x16, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x22, 0x0d120580 # initialize rs1
li x13, 0xd799a11b # initialize rs2
maxu x27, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x19, 0xd6e2d87a # initialize rs1
li x14, 0x39954483 # initialize rs2
maxu x29, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x29, 0xa2a96e82 # initialize rs1
li x15, 0xe1d3f12a # initialize rs2
maxu x25, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x9, 0x235d9197 # initialize rs1
li x16, 0x08dd2bdb # initialize rs2
maxu x19, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x22, 0x6b5f4ff1 # initialize rs1
li x17, 0x6c94c1f7 # initialize rs2
maxu x19, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x7, 0xaba70c37 # initialize rs1
li x18, 0xcd009852 # initialize rs2
maxu x6, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x21, 0xad2124f7 # initialize rs1
li x19, 0x77cd9388 # initialize rs2
maxu x3, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x5, 0x25892de6 # initialize rs1
li x20, 0x3e9e3f3d # initialize rs2
maxu x29, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x7, 0x04aed906 # initialize rs1
li x21, 0x364e4eb5 # initialize rs2
maxu x3, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x16, 0x7b711c66 # initialize rs1
li x22, 0xbeecc96a # initialize rs2
maxu x19, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x10, 0xd3b4a330 # initialize rs1
li x23, 0x5c98c7a4 # initialize rs2
maxu x15, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x9, 0x85d36df8 # initialize rs1
li x24, 0xbddbd0ae # initialize rs2
maxu x6, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x14, 0x0234be34 # initialize rs1
li x25, 0x490be30b # initialize rs2
maxu x30, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x31, 0x7d9fe1ac # initialize rs1
li x26, 0x0398e3e1 # initialize rs2
maxu x20, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x15, 0x9f5a3b71 # initialize rs1
li x27, 0xf7d0bf7e # initialize rs2
maxu x26, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x30, 0xc98b8490 # initialize rs1
li x28, 0x2e1251c7 # initialize rs2
maxu x16, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x15, 0xc87e8977 # initialize rs1
li x29, 0x18b594fa # initialize rs2
maxu x6, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x13, 0xb62b052a # initialize rs1
li x30, 0x95962060 # initialize rs2
maxu x24, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x19, 0x9f3bed47 # initialize rs1
li x31, 0xf757f2c2 # initialize rs2
maxu x1, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 252)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0xbb256c56 # initialize rs1
li x27, 0x1cf85577 # initialize rs2
maxu x0, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x15, 0x9dd7061a # initialize rs1
li x2, 0xa10a8a91 # initialize rs2
maxu x1, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x31, 0x5ebcc16e # initialize rs1
li x26, 0xe1778710 # initialize rs2
maxu x2, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x18, 0xdac8f22b # initialize rs1
li x7, 0xa151c305 # initialize rs2
maxu x3, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0x8039d224 # initialize rs1
li x20, 0x546e5e28 # initialize rs2
maxu x4, x17, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x19, 0xcf8dac65 # initialize rs1
li x28, 0x88af71bf # initialize rs2
maxu x5, x19, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x3679780e # initialize rs1
li x19, 0x0327f2f2 # initialize rs2
maxu x6, x3, x19 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0xb7dc40f7 # initialize rs1
li x15, 0x3f81775f # initialize rs2
maxu x7, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x10, 0x9242e509 # initialize rs1
li x19, 0xd74d3258 # initialize rs2
maxu x8, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x7, 0x97fa7c7d # initialize rs1
li x3, 0x4bb58e37 # initialize rs2
maxu x9, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0x5b8f4930 # initialize rs1
li x1, 0xef1b2f40 # initialize rs2
maxu x10, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x27, 0xa862e252 # initialize rs1
li x31, 0x5f6d5cbb # initialize rs2
maxu x11, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x26, 0xc4ac1a2d # initialize rs1
li x10, 0x75bbf463 # initialize rs2
maxu x12, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0x0591f95f # initialize rs1
li x6, 0x87e2be73 # initialize rs2
maxu x13, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x10, 0xb8ecc51a # initialize rs1
li x14, 0x995c0b23 # initialize rs2
maxu x14, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x9, 0xab01c452 # initialize rs1
li x7, 0xc1905439 # initialize rs2
maxu x15, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x3, 0x96157750 # initialize rs1
li x12, 0x5daddbcd # initialize rs2
maxu x16, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x30, 0x7680cfb7 # initialize rs1
li x24, 0xa70c4103 # initialize rs2
maxu x17, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x19, 0x5da40258 # initialize rs1
li x24, 0xe7234c10 # initialize rs2
maxu x18, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x23, 0x269777ec # initialize rs1
li x7, 0x9d12b346 # initialize rs2
maxu x19, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x28, 0x8c68a74d # initialize rs1
li x31, 0xc3927cc5 # initialize rs2
maxu x20, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0x858be567 # initialize rs1
li x30, 0xba221f0d # initialize rs2
maxu x21, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x29, 0x9fa17abc # initialize rs1
li x21, 0xebfa1d8e # initialize rs2
maxu x22, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x18, 0x13c6e9dd # initialize rs1
li x7, 0xf777cf54 # initialize rs2
maxu x23, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x5, 0xf939fd3a # initialize rs1
li x6, 0x26b1d150 # initialize rs2
maxu x24, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x20, 0xd1401f61 # initialize rs1
li x29, 0xd1539fb2 # initialize rs2
maxu x25, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x9, 0xf7572829 # initialize rs1
li x8, 0x3d13dbb6 # initialize rs2
maxu x26, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0xfd7fcee3 # initialize rs1
li x1, 0x6ddc90eb # initialize rs2
maxu x27, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x19, 0x69465702 # initialize rs1
li x20, 0x3b15462b # initialize rs2
maxu x28, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x3, 0x5d418d8f # initialize rs1
li x28, 0x73f548f2 # initialize rs2
maxu x29, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x8, 0x299aa4dd # initialize rs1
li x13, 0x361fdde8 # initialize rs2
maxu x30, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x8, 0xfe8c3c11 # initialize rs1
li x3, 0x921c1ae3 # initialize rs2
maxu x31, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x15, 0x00000000 # initialize rs1
li x17, 0x11c80d8f # initialize rs2
maxu x21, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x3, 0x00000001 # initialize rs1
li x10, 0x25c1759a # initialize rs2
maxu x24, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x00000002 # initialize rs1
li x6, 0xc91d439c # initialize rs2
maxu x21, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x25, 0x80000000 # initialize rs1
li x1, 0xeb74a42d # initialize rs2
maxu x31, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x9, 0x80000001 # initialize rs1
li x11, 0xe711e0b2 # initialize rs2
maxu x7, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x6, 0x7fffffff # initialize rs1
li x11, 0xcd43f67f # initialize rs2
maxu x24, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x16, 0x7ffffffe # initialize rs1
li x7, 0x3ad82397 # initialize rs2
maxu x21, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x27, 0xffffffff # initialize rs1
li x16, 0xfb683c5e # initialize rs2
maxu x2, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0xfffffffe # initialize rs1
li x25, 0xb9aeb02a # initialize rs2
maxu x20, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x3, 0x5bbc8872 # initialize rs1
li x30, 0xc4cd3e3b # initialize rs2
maxu x5, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x22, 0xaaaaaaaa # initialize rs1
li x5, 0x26a7e5d7 # initialize rs2
maxu x14, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x21, 0x55555555 # initialize rs1
li x1, 0x98569bea # initialize rs2
maxu x11, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x26, 0x6cf3b9a4 # initialize rs1
li x2, 0x00000000 # initialize rs2
maxu x23, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0xb5d7acba # initialize rs1
li x5, 0x00000001 # initialize rs2
maxu x23, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x30, 0x5ecb79f5 # initialize rs1
li x12, 0x00000002 # initialize rs2
maxu x8, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x23, 0x8d68e9d2 # initialize rs1
li x11, 0x80000000 # initialize rs2
maxu x16, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x16, 0x7aa46a87 # initialize rs1
li x10, 0x80000001 # initialize rs2
maxu x11, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x25, 0x17a0acb0 # initialize rs1
li x27, 0x7fffffff # initialize rs2
maxu x28, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x27, 0x155550be # initialize rs1
li x22, 0x7ffffffe # initialize rs2
maxu x13, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x17, 0xcd39eaf0 # initialize rs1
li x30, 0xffffffff # initialize rs2
maxu x15, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x3, 0xd5072640 # initialize rs1
li x12, 0xfffffffe # initialize rs2
maxu x11, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x19, 0x692466c4 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
maxu x16, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x2, 0x601ca47f # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
maxu x5, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x31, 0x648b84da # initialize rs1
li x7, 0x55555555 # initialize rs2
maxu x9, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x3, 0x00000000 # initialize rs1
li x25, 0x00000000 # initialize rs2
maxu x15, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x11, 0x00000000 # initialize rs1
li x3, 0x00000001 # initialize rs2
maxu x16, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x24, 0x00000000 # initialize rs1
li x3, 0x00000002 # initialize rs2
maxu x7, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x21, 0x00000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
maxu x19, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x18, 0x00000000 # initialize rs1
li x22, 0x80000001 # initialize rs2
maxu x1, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x26, 0x00000000 # initialize rs1
li x3, 0x7fffffff # initialize rs2
maxu x30, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x16, 0x00000000 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
maxu x6, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x23, 0x00000000 # initialize rs1
li x3, 0xffffffff # initialize rs2
maxu x14, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x25, 0x00000000 # initialize rs1
li x2, 0xfffffffe # initialize rs2
maxu x13, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x13, 0x00000000 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
maxu x3, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x8, 0x00000000 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
maxu x24, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x8, 0x00000000 # initialize rs1
li x26, 0x55555555 # initialize rs2
maxu x18, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x23, 0x00000001 # initialize rs1
li x8, 0x00000000 # initialize rs2
maxu x10, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x30, 0x00000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
maxu x6, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x7, 0x00000001 # initialize rs1
li x15, 0x00000002 # initialize rs2
maxu x30, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x27, 0x00000001 # initialize rs1
li x7, 0x80000000 # initialize rs2
maxu x12, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x26, 0x00000001 # initialize rs1
li x14, 0x80000001 # initialize rs2
maxu x9, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x11, 0x00000001 # initialize rs1
li x6, 0x7fffffff # initialize rs2
maxu x19, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x14, 0x00000001 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
maxu x31, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x25, 0x00000001 # initialize rs1
li x28, 0xffffffff # initialize rs2
maxu x12, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x31, 0x00000001 # initialize rs1
li x22, 0xfffffffe # initialize rs2
maxu x2, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x11, 0x00000001 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
maxu x16, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x18, 0x00000001 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
maxu x8, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x21, 0x00000001 # initialize rs1
li x29, 0x55555555 # initialize rs2
maxu x3, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x30, 0x00000002 # initialize rs1
li x6, 0x00000000 # initialize rs2
maxu x8, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x9, 0x00000002 # initialize rs1
li x15, 0x00000001 # initialize rs2
maxu x20, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x26, 0x00000002 # initialize rs1
li x1, 0x00000002 # initialize rs2
maxu x28, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x10, 0x00000002 # initialize rs1
li x21, 0x80000000 # initialize rs2
maxu x9, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x6, 0x00000002 # initialize rs1
li x9, 0x80000001 # initialize rs2
maxu x25, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x17, 0x00000002 # initialize rs1
li x26, 0x7fffffff # initialize rs2
maxu x6, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x8, 0x00000002 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
maxu x27, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x8, 0x00000002 # initialize rs1
li x10, 0xffffffff # initialize rs2
maxu x22, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x18, 0x00000002 # initialize rs1
li x19, 0xfffffffe # initialize rs2
maxu x11, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x15, 0x00000002 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
maxu x1, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x16, 0x00000002 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
maxu x2, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x29, 0x00000002 # initialize rs1
li x15, 0x55555555 # initialize rs2
maxu x6, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x16, 0x80000000 # initialize rs1
li x11, 0x00000000 # initialize rs2
maxu x30, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x10, 0x80000000 # initialize rs1
li x17, 0x00000001 # initialize rs2
maxu x30, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x19, 0x80000000 # initialize rs1
li x26, 0x00000002 # initialize rs2
maxu x27, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x31, 0x80000000 # initialize rs1
li x23, 0x80000000 # initialize rs2
maxu x22, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x9, 0x80000000 # initialize rs1
li x14, 0x80000001 # initialize rs2
maxu x18, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x11, 0x80000000 # initialize rs1
li x8, 0x7fffffff # initialize rs2
maxu x3, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x21, 0x80000000 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
maxu x17, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x24, 0x80000000 # initialize rs1
li x18, 0xffffffff # initialize rs2
maxu x9, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x8, 0x80000000 # initialize rs1
li x30, 0xfffffffe # initialize rs2
maxu x17, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x6, 0x80000000 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
maxu x30, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x25, 0x80000000 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
maxu x6, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x9, 0x80000000 # initialize rs1
li x12, 0x55555555 # initialize rs2
maxu x24, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x12, 0x80000001 # initialize rs1
li x19, 0x00000000 # initialize rs2
maxu x16, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x12, 0x80000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
maxu x8, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x22, 0x80000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
maxu x21, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x12, 0x80000001 # initialize rs1
li x5, 0x80000000 # initialize rs2
maxu x29, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x18, 0x80000001 # initialize rs1
li x27, 0x80000001 # initialize rs2
maxu x3, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x20, 0x80000001 # initialize rs1
li x12, 0x7fffffff # initialize rs2
maxu x31, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x5, 0x80000001 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
maxu x18, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x3, 0x80000001 # initialize rs1
li x19, 0xffffffff # initialize rs2
maxu x16, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x12, 0x80000001 # initialize rs1
li x15, 0xfffffffe # initialize rs2
maxu x26, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x8, 0x80000001 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
maxu x16, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x11, 0x80000001 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
maxu x22, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x13, 0x80000001 # initialize rs1
li x7, 0x55555555 # initialize rs2
maxu x23, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x12, 0x7fffffff # initialize rs1
li x18, 0x00000000 # initialize rs2
maxu x11, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x27, 0x7fffffff # initialize rs1
li x23, 0x00000001 # initialize rs2
maxu x13, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x7, 0x7fffffff # initialize rs1
li x27, 0x00000002 # initialize rs2
maxu x14, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x6, 0x7fffffff # initialize rs1
li x18, 0x80000000 # initialize rs2
maxu x29, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x25, 0x7fffffff # initialize rs1
li x29, 0x80000001 # initialize rs2
maxu x3, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x31, 0x7fffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
maxu x7, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x20, 0x7fffffff # initialize rs1
li x29, 0x7ffffffe # initialize rs2
maxu x28, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x13, 0x7fffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
maxu x23, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x16, 0x7fffffff # initialize rs1
li x25, 0xfffffffe # initialize rs2
maxu x30, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x12, 0x7fffffff # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
maxu x13, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x19, 0x7fffffff # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
maxu x31, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x23, 0x7fffffff # initialize rs1
li x28, 0x55555555 # initialize rs2
maxu x31, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x5, 0x7ffffffe # initialize rs1
li x25, 0x00000000 # initialize rs2
maxu x28, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x31, 0x7ffffffe # initialize rs1
li x25, 0x00000001 # initialize rs2
maxu x13, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x5, 0x7ffffffe # initialize rs1
li x14, 0x00000002 # initialize rs2
maxu x9, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x18, 0x7ffffffe # initialize rs1
li x1, 0x80000000 # initialize rs2
maxu x26, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x14, 0x7ffffffe # initialize rs1
li x31, 0x80000001 # initialize rs2
maxu x8, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x25, 0x7ffffffe # initialize rs1
li x21, 0x7fffffff # initialize rs2
maxu x31, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x26, 0x7ffffffe # initialize rs1
li x9, 0x7ffffffe # initialize rs2
maxu x8, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x25, 0x7ffffffe # initialize rs1
li x3, 0xffffffff # initialize rs2
maxu x14, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x1, 0x7ffffffe # initialize rs1
li x18, 0xfffffffe # initialize rs2
maxu x11, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x17, 0x7ffffffe # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
maxu x29, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x15, 0x7ffffffe # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
maxu x20, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x10, 0x7ffffffe # initialize rs1
li x8, 0x55555555 # initialize rs2
maxu x1, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x18, 0xffffffff # initialize rs1
li x30, 0x00000000 # initialize rs2
maxu x6, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x13, 0xffffffff # initialize rs1
li x11, 0x00000001 # initialize rs2
maxu x23, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x15, 0xffffffff # initialize rs1
li x16, 0x00000002 # initialize rs2
maxu x6, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x18, 0xffffffff # initialize rs1
li x1, 0x80000000 # initialize rs2
maxu x9, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x11, 0xffffffff # initialize rs1
li x6, 0x80000001 # initialize rs2
maxu x5, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x22, 0xffffffff # initialize rs1
li x6, 0x7fffffff # initialize rs2
maxu x14, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x25, 0xffffffff # initialize rs1
li x28, 0x7ffffffe # initialize rs2
maxu x23, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x9, 0xffffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
maxu x13, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x3, 0xffffffff # initialize rs1
li x22, 0xfffffffe # initialize rs2
maxu x29, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x21, 0xffffffff # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
maxu x14, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x31, 0xffffffff # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
maxu x11, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x28, 0xffffffff # initialize rs1
li x23, 0x55555555 # initialize rs2
maxu x20, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x28, 0xfffffffe # initialize rs1
li x8, 0x00000000 # initialize rs2
maxu x23, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x6, 0xfffffffe # initialize rs1
li x30, 0x00000001 # initialize rs2
maxu x13, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x16, 0xfffffffe # initialize rs1
li x9, 0x00000002 # initialize rs2
maxu x10, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x22, 0xfffffffe # initialize rs1
li x8, 0x80000000 # initialize rs2
maxu x16, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x2, 0xfffffffe # initialize rs1
li x3, 0x80000001 # initialize rs2
maxu x5, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x12, 0xfffffffe # initialize rs1
li x5, 0x7fffffff # initialize rs2
maxu x11, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x16, 0xfffffffe # initialize rs1
li x23, 0x7ffffffe # initialize rs2
maxu x24, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x6, 0xfffffffe # initialize rs1
li x12, 0xffffffff # initialize rs2
maxu x7, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x24, 0xfffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
maxu x3, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x25, 0xfffffffe # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
maxu x13, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x25, 0xfffffffe # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
maxu x15, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x14, 0xfffffffe # initialize rs1
li x7, 0x55555555 # initialize rs2
maxu x13, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x1, 0x5bbc8872 # initialize rs1
li x29, 0x00000000 # initialize rs2
maxu x28, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x23, 0x5bbc8872 # initialize rs1
li x11, 0x00000001 # initialize rs2
maxu x13, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x13, 0x5bbc8872 # initialize rs1
li x8, 0x00000002 # initialize rs2
maxu x24, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x1, 0x5bbc8872 # initialize rs1
li x3, 0x80000000 # initialize rs2
maxu x2, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x12, 0x5bbc8872 # initialize rs1
li x15, 0x80000001 # initialize rs2
maxu x8, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x12, 0x5bbc8872 # initialize rs1
li x29, 0x7fffffff # initialize rs2
maxu x5, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x17, 0x5bbc8872 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
maxu x26, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x13, 0x5bbc8872 # initialize rs1
li x24, 0xffffffff # initialize rs2
maxu x5, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x23, 0x5bbc8872 # initialize rs1
li x25, 0xfffffffe # initialize rs2
maxu x27, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x29, 0x5bbc8872 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
maxu x7, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x15, 0x5bbc8872 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
maxu x10, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x7, 0x5bbc8872 # initialize rs1
li x19, 0x55555555 # initialize rs2
maxu x22, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x25, 0xaaaaaaaa # initialize rs1
li x9, 0x00000000 # initialize rs2
maxu x19, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x28, 0xaaaaaaaa # initialize rs1
li x13, 0x00000001 # initialize rs2
maxu x21, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x5, 0xaaaaaaaa # initialize rs1
li x7, 0x00000002 # initialize rs2
maxu x12, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x6, 0xaaaaaaaa # initialize rs1
li x30, 0x80000000 # initialize rs2
maxu x12, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x17, 0xaaaaaaaa # initialize rs1
li x14, 0x80000001 # initialize rs2
maxu x18, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x19, 0xaaaaaaaa # initialize rs1
li x5, 0x7fffffff # initialize rs2
maxu x9, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x14, 0xaaaaaaaa # initialize rs1
li x17, 0x7ffffffe # initialize rs2
maxu x6, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x13, 0xaaaaaaaa # initialize rs1
li x17, 0xffffffff # initialize rs2
maxu x11, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x19, 0xaaaaaaaa # initialize rs1
li x2, 0xfffffffe # initialize rs2
maxu x10, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x23, 0xaaaaaaaa # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
maxu x3, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x18, 0xaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
maxu x7, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x1, 0xaaaaaaaa # initialize rs1
li x13, 0x55555555 # initialize rs2
maxu x29, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x17, 0x55555555 # initialize rs1
li x11, 0x00000000 # initialize rs2
maxu x21, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x11, 0x55555555 # initialize rs1
li x27, 0x00000001 # initialize rs2
maxu x8, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x16, 0x55555555 # initialize rs1
li x18, 0x00000002 # initialize rs2
maxu x21, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x10, 0x55555555 # initialize rs1
li x18, 0x80000000 # initialize rs2
maxu x13, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x19, 0x55555555 # initialize rs1
li x9, 0x80000001 # initialize rs2
maxu x24, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x22, 0x55555555 # initialize rs1
li x21, 0x7fffffff # initialize rs2
maxu x5, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x6, 0x55555555 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
maxu x10, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x1, 0x55555555 # initialize rs1
li x16, 0xffffffff # initialize rs2
maxu x26, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x3, 0x55555555 # initialize rs1
li x10, 0xfffffffe # initialize rs2
maxu x11, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x26, 0x55555555 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
maxu x19, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x25, 0x55555555 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
maxu x30, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x8, 0x55555555 # initialize rs1
li x25, 0x55555555 # initialize rs2
maxu x7, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x5cf739a1 # initialize rs1
li x0, 0x24e45657 # initialize rs2
maxu x3, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x82435d84 # initialize rs1
li x1, 0x9b798d85 # initialize rs2
maxu x21, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x53b2bfa6 # initialize rs1
li x2, 0x677964ca # initialize rs2
maxu x9, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x772a598e # initialize rs1
li x3, 0xf492ad85 # initialize rs2
maxu x15, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x47aa2079 # initialize rs1
li x4, 0x4eb2dc44 # initialize rs2
maxu x18, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2b915612 # initialize rs1
li x5, 0x7535a606 # initialize rs2
maxu x17, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x00d8c5bf # initialize rs1
li x6, 0xcdb08de9 # initialize rs2
maxu x29, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x12cc6253 # initialize rs1
li x7, 0xa3eee671 # initialize rs2
maxu x21, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x03d4c5c8 # initialize rs1
li x8, 0xb3f27027 # initialize rs2
maxu x31, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x2eaa1168 # initialize rs1
li x9, 0xcf588a4e # initialize rs2
maxu x21, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x2ae188bc # initialize rs1
li x10, 0x4199e371 # initialize rs2
maxu x15, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x711b0d87 # initialize rs1
li x11, 0x5c26ebe3 # initialize rs2
maxu x14, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x1f525bd8 # initialize rs1
li x12, 0x493011c8 # initialize rs2
maxu x10, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x47d671a6 # initialize rs1
li x13, 0x17c3f8f9 # initialize rs2
maxu x19, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x094da211 # initialize rs1
li x14, 0x76334637 # initialize rs2
maxu x23, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x0a6c0e97 # initialize rs1
li x15, 0x22434990 # initialize rs2
maxu x3, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xdfc2243b # initialize rs1
li x16, 0x50916b99 # initialize rs2
maxu x17, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xd800c4ad # initialize rs1
li x17, 0xd9d5b196 # initialize rs2
maxu x6, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xa624005a # initialize rs1
li x18, 0xa07b7eb6 # initialize rs2
maxu x14, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x15f94d6e # initialize rs1
li x19, 0x0327c1d5 # initialize rs2
maxu x6, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xa452ab75 # initialize rs1
li x20, 0xc7abdc4d # initialize rs2
maxu x7, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x863ac1ad # initialize rs1
li x21, 0xac2bad94 # initialize rs2
maxu x15, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xd3d56bb3 # initialize rs1
li x22, 0xec9b71e2 # initialize rs2
maxu x13, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x273f682c # initialize rs1
li x23, 0xfff49e79 # initialize rs2
maxu x5, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x87a37fa9 # initialize rs1
li x24, 0xd0a0a1b8 # initialize rs2
maxu x5, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x25573607 # initialize rs1
li x25, 0x28610e63 # initialize rs2
maxu x9, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x93fca601 # initialize rs1
li x26, 0xca015260 # initialize rs2
maxu x18, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xae13eaee # initialize rs1
li x27, 0x5e2a0052 # initialize rs2
maxu x15, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x771ee3cf # initialize rs1
li x28, 0xd531b2be # initialize rs2
maxu x29, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x39f51e2c # initialize rs1
li x29, 0x3cb3bd91 # initialize rs2
maxu x13, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x4874a65e # initialize rs1
li x30, 0xb5862803 # initialize rs2
maxu x25, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xaaffc8b1 # initialize rs1
li x31, 0x17d0f063 # initialize rs2
maxu x24, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xb687f618 # initialize rs1
li x30, 0xca0ae989 # initialize rs2
maxu x0, x0, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x516f457b # initialize rs1
li x5, 0xa79be218 # initialize rs2
maxu x1, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x58872781 # initialize rs1
li x12, 0x96ed6b98 # initialize rs2
maxu x2, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6dd5a420 # initialize rs1
li x16, 0x3a666cef # initialize rs2
maxu x3, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd13c7ce0 # initialize rs1
li x7, 0x4122b6d1 # initialize rs2
maxu x4, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6da1e68e # initialize rs1
li x12, 0x753680e4 # initialize rs2
maxu x5, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x95ab761e # initialize rs1
li x16, 0x8651f422 # initialize rs2
maxu x6, x6, x16 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x28c71882 # initialize rs1
li x15, 0xd809d500 # initialize rs2
maxu x7, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd05563f8 # initialize rs1
li x9, 0xcc1c5616 # initialize rs2
maxu x8, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x8c3507b1 # initialize rs1
li x17, 0xd5d63cac # initialize rs2
maxu x9, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x61b83ee6 # initialize rs1
li x10, 0xd60ec1f5 # initialize rs2
maxu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x2d00548b # initialize rs1
li x12, 0xc7e27935 # initialize rs2
maxu x11, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xc08c663b # initialize rs1
li x31, 0x84f00bea # initialize rs2
maxu x12, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x2772548f # initialize rs1
li x16, 0xbdacf332 # initialize rs2
maxu x13, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x853ae38c # initialize rs1
li x12, 0xa9a794c6 # initialize rs2
maxu x14, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x6d38923e # initialize rs1
li x25, 0x157540ea # initialize rs2
maxu x15, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x44060230 # initialize rs1
li x28, 0x07ee7d4e # initialize rs2
maxu x16, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x6f6ed70e # initialize rs1
li x22, 0xf8a0b631 # initialize rs2
maxu x17, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x1206ebd7 # initialize rs1
li x15, 0xf3c8250c # initialize rs2
maxu x18, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x6f95e858 # initialize rs1
li x26, 0x0d58c496 # initialize rs2
maxu x19, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf9e86eb5 # initialize rs1
li x31, 0x387771f8 # initialize rs2
maxu x20, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x4443909f # initialize rs1
li x2, 0xe414839f # initialize rs2
maxu x21, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xab051628 # initialize rs1
li x7, 0xf06bad19 # initialize rs2
maxu x22, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x91f54158 # initialize rs1
li x6, 0x4e33cdcb # initialize rs2
maxu x23, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xbc65e6ed # initialize rs1
li x31, 0x0a53c6f3 # initialize rs2
maxu x24, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x25b382ed # initialize rs1
li x24, 0x959fc189 # initialize rs2
maxu x25, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x86d19fd6 # initialize rs1
li x24, 0x70de2053 # initialize rs2
maxu x26, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x1bcf1f9d # initialize rs1
li x25, 0xa4a9a3e7 # initialize rs2
maxu x27, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x064c338a # initialize rs1
li x31, 0x2c62135f # initialize rs2
maxu x28, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf15b208f # initialize rs1
li x8, 0x114656ba # initialize rs2
maxu x29, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xbbad6235 # initialize rs1
li x11, 0x9144c0d7 # initialize rs2
maxu x30, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x966bf72f # initialize rs1
li x16, 0x5ea2b54d # initialize rs2
maxu x31, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x16, 0x0dd1e20e # initialize rs1
li x0, 0x7992223d # initialize rs2
maxu x0, x16, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x12, 0xcb73caed # initialize rs1
li x1, 0x94f05ebd # initialize rs2
maxu x1, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x25, 0xb1eba911 # initialize rs1
li x2, 0x87c47d74 # initialize rs2
maxu x2, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x13, 0xdb5f3df1 # initialize rs1
li x3, 0x36f9b44e # initialize rs2
maxu x3, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x2d321e7c # initialize rs1
li x4, 0x7082e079 # initialize rs2
maxu x4, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0x52f4c75f # initialize rs1
li x5, 0x0c8450a2 # initialize rs2
maxu x5, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0xcd0a7d36 # initialize rs1
li x6, 0x2a061678 # initialize rs2
maxu x6, x21, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0xbc818d5f # initialize rs1
li x7, 0xcb562275 # initialize rs2
maxu x7, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x22, 0x14371a9a # initialize rs1
li x8, 0x58baf722 # initialize rs2
maxu x8, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x11, 0xb05bdeef # initialize rs1
li x9, 0x99fe78ed # initialize rs2
maxu x9, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x26, 0xf2d1ccb6 # initialize rs1
li x10, 0x4a66a8ae # initialize rs2
maxu x10, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x13, 0x1b58f946 # initialize rs1
li x11, 0x7bf90924 # initialize rs2
maxu x11, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x1, 0x4deabf50 # initialize rs1
li x12, 0x01093c72 # initialize rs2
maxu x12, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x2, 0x7c60f9aa # initialize rs1
li x13, 0xb06edabf # initialize rs2
maxu x13, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x6, 0x99eade9b # initialize rs1
li x14, 0x4a55dcf2 # initialize rs2
maxu x14, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x7, 0x6c593076 # initialize rs1
li x15, 0xfc614541 # initialize rs2
maxu x15, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x7, 0x1c34badb # initialize rs1
li x16, 0x02599a7d # initialize rs2
maxu x16, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x7, 0x106c4811 # initialize rs1
li x17, 0x308606f8 # initialize rs2
maxu x17, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x10, 0xd0653e29 # initialize rs1
li x18, 0x40f85eb0 # initialize rs2
maxu x18, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x14, 0x89939a99 # initialize rs1
li x19, 0x525e6078 # initialize rs2
maxu x19, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x28, 0x2df483a2 # initialize rs1
li x20, 0x6f4e5cbf # initialize rs2
maxu x20, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x19, 0xc19e8959 # initialize rs1
li x21, 0x91fd5a8d # initialize rs2
maxu x21, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x3, 0x4a17b0bb # initialize rs1
li x22, 0x9e5fa337 # initialize rs2
maxu x22, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x14, 0xd3e90fd2 # initialize rs1
li x23, 0xb477b783 # initialize rs2
maxu x23, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x17, 0x00dbab83 # initialize rs1
li x24, 0x2e792029 # initialize rs2
maxu x24, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x9, 0x1155c3b9 # initialize rs1
li x25, 0x6bfd3490 # initialize rs2
maxu x25, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x31, 0x3847d5fb # initialize rs1
li x26, 0xf4b40a7b # initialize rs2
maxu x26, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x5, 0xd38d0036 # initialize rs1
li x27, 0x15041fbc # initialize rs2
maxu x27, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x16, 0x977b36f3 # initialize rs1
li x28, 0x16c1036a # initialize rs2
maxu x28, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x22, 0x79736868 # initialize rs1
li x29, 0x230e2a0a # initialize rs2
maxu x29, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x18, 0x136fa74e # initialize rs1
li x30, 0x40d996a9 # initialize rs2
maxu x30, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x12, 0x3db25dad # initialize rs1
li x31, 0x0c9b1d5a # initialize rs2
maxu x31, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xca9e51b2 # initialize rs1
li x0, 0xb1584b36 # initialize rs2
maxu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x812b71b9 # initialize rs1
li x1, 0x5fce95c5 # initialize rs2
maxu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x4ff1957a # initialize rs1
li x2, 0xfb22fcac # initialize rs2
maxu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x08d37994 # initialize rs1
li x3, 0xf2e972a3 # initialize rs2
maxu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8b80539d # initialize rs1
li x4, 0xd2dd7b1f # initialize rs2
maxu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9a366b10 # initialize rs1
li x5, 0x2fc786f9 # initialize rs2
maxu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x30231758 # initialize rs1
li x6, 0xaa11f984 # initialize rs2
maxu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaa413200 # initialize rs1
li x7, 0xbe94545f # initialize rs2
maxu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xa288f80b # initialize rs1
li x8, 0xa8464237 # initialize rs2
maxu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xa49b4363 # initialize rs1
li x9, 0x2ee99d89 # initialize rs2
maxu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x3648e151 # initialize rs1
li x10, 0x98436fd8 # initialize rs2
maxu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x1c91d889 # initialize rs1
li x11, 0x7a91130b # initialize rs2
maxu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x6386c529 # initialize rs1
li x12, 0x873d154c # initialize rs2
maxu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x8b2d64b4 # initialize rs1
li x13, 0xd0e8c86c # initialize rs2
maxu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xbad4ed21 # initialize rs1
li x14, 0x625f9a83 # initialize rs2
maxu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xdfd92b84 # initialize rs1
li x15, 0xbf94d5c9 # initialize rs2
maxu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x3b622ee7 # initialize rs1
li x16, 0xaa9a226f # initialize rs2
maxu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xc6ed85f3 # initialize rs1
li x17, 0x50ae254d # initialize rs2
maxu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x8ea91ca5 # initialize rs1
li x18, 0x72943e2e # initialize rs2
maxu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x41805932 # initialize rs1
li x19, 0x257604f7 # initialize rs2
maxu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x6b349e0b # initialize rs1
li x20, 0xe90e9413 # initialize rs2
maxu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x938b3062 # initialize rs1
li x21, 0x1ffcce87 # initialize rs2
maxu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xbeeb3187 # initialize rs1
li x22, 0x357dd05e # initialize rs2
maxu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xe5db0641 # initialize rs1
li x23, 0x7d30252a # initialize rs2
maxu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x08e4d3f2 # initialize rs1
li x24, 0x8e35d160 # initialize rs2
maxu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x1be6342a # initialize rs1
li x25, 0x74e1d0b0 # initialize rs2
maxu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x28cf9df7 # initialize rs1
li x26, 0x1c0952f5 # initialize rs2
maxu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xc1df008a # initialize rs1
li x27, 0x48277621 # initialize rs2
maxu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x07182628 # initialize rs1
li x28, 0x8854e684 # initialize rs2
maxu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x2dec8442 # initialize rs1
li x29, 0x7a6d1a83 # initialize rs2
maxu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x88060107 # initialize rs1
li x30, 0x57c783f5 # initialize rs2
maxu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x43b96e44 # initialize rs1
li x31, 0x9908ea4a # initialize rs2
maxu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x9, x28 # perform first operation
maxu x26, x1, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x13, x12 # perform first operation
maxu x19, x15, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x7, x21 # perform first operation
maxu x8, x29, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x28, x3 # perform first operation
maxu x28, x22, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x27, x22 # perform first operation
maxu x22, x10, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x20, x29 # perform first operation
maxu x20, x16, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x12, x11 # perform first operation
maxu x7, x29, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x6, x16 # perform first operation
maxu x9, x25, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x23, x2 # perform first operation
maxu x14, x25, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x25, x9 # perform first operation
maxu x25, x21, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x5, x13 # perform first operation
maxu x13, x15, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x25, x15 # perform first operation
maxu x26, x28, x12 # perform second (triggering) operation

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
