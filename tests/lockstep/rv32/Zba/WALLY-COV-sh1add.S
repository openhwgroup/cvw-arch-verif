///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zba/WALLY-COV-sh1add.S
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
li x0, 0x947bf748 # initialize rs1
li x22, 0x75951410 # initialize rs2
sh1add x26, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xe2973040 # initialize rs1
li x27, 0x4a10bbe3 # initialize rs2
sh1add x11, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x5ba3eac2 # initialize rs1
li x17, 0x672a7747 # initialize rs2
sh1add x30, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x6d2c897c # initialize rs1
li x31, 0xd7f7a440 # initialize rs2
sh1add x26, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5c7640c4 # initialize rs1
li x10, 0x5ea9199e # initialize rs2
sh1add x28, x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x30c83e38 # initialize rs1
li x23, 0x7f3f88b7 # initialize rs2
sh1add x17, x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xeff801d8 # initialize rs1
li x5, 0xcd1e4f60 # initialize rs2
sh1add x30, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6939eabe # initialize rs1
li x13, 0x95f12a86 # initialize rs2
sh1add x14, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x772f6dc7 # initialize rs1
li x31, 0x578b7171 # initialize rs2
sh1add x24, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xe6ee5ecf # initialize rs1
li x15, 0xe1f77006 # initialize rs2
sh1add x12, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x20798cef # initialize rs1
li x27, 0xc76e0ff1 # initialize rs2
sh1add x18, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x2270c558 # initialize rs1
li x7, 0x97053019 # initialize rs2
sh1add x25, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x8e73a759 # initialize rs1
li x18, 0x7112daeb # initialize rs2
sh1add x13, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x20f0d098 # initialize rs1
li x9, 0x4147362e # initialize rs2
sh1add x6, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x009e2d90 # initialize rs1
li x11, 0xbc2c1cd9 # initialize rs2
sh1add x26, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x9dd8bac6 # initialize rs1
li x8, 0x36d314b8 # initialize rs2
sh1add x17, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x0a3d0352 # initialize rs1
li x12, 0xca11a063 # initialize rs2
sh1add x15, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x2f0066d3 # initialize rs1
li x16, 0x9c795180 # initialize rs2
sh1add x13, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x4b1e9ffe # initialize rs1
li x13, 0x51d3c1b0 # initialize rs2
sh1add x6, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x1a5c2446 # initialize rs1
li x10, 0xd7438457 # initialize rs2
sh1add x12, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xedb3362a # initialize rs1
li x19, 0x416ca965 # initialize rs2
sh1add x11, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xd63f7221 # initialize rs1
li x17, 0x780af1bf # initialize rs2
sh1add x24, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x5e232059 # initialize rs1
li x15, 0x522f6f47 # initialize rs2
sh1add x29, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x99eb2925 # initialize rs1
li x26, 0x6ca7e8bb # initialize rs2
sh1add x22, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x68c7f3a0 # initialize rs1
li x19, 0x89cfe710 # initialize rs2
sh1add x15, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xb965cda4 # initialize rs1
li x14, 0x43c04940 # initialize rs2
sh1add x5, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xfad04920 # initialize rs1
li x12, 0x2b283d64 # initialize rs2
sh1add x17, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xbecf8eb0 # initialize rs1
li x15, 0x0f4f3470 # initialize rs2
sh1add x10, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xe8d2f33a # initialize rs1
li x3, 0x5717f070 # initialize rs2
sh1add x9, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x77aaca31 # initialize rs1
li x31, 0x7e02504e # initialize rs2
sh1add x2, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xcd4f4752 # initialize rs1
li x2, 0x3135be3d # initialize rs2
sh1add x28, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xbedd0095 # initialize rs1
li x10, 0x6d13003f # initialize rs2
sh1add x8, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x2, 0x54a45d4b # initialize rs1
li x0, 0x5abe7f87 # initialize rs2
sh1add x18, x2, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x21, 0x3bd8a580 # initialize rs1
li x1, 0x4d042c38 # initialize rs2
sh1add x3, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x16, 0x9e1acd48 # initialize rs1
li x2, 0x78086d0f # initialize rs2
sh1add x3, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x16, 0x72d7a35f # initialize rs1
li x3, 0x5e8e28d8 # initialize rs2
sh1add x30, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0x80b6c3e0 # initialize rs1
li x4, 0x28d7efa1 # initialize rs2
sh1add x28, x3, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0xe3e86af7 # initialize rs1
li x5, 0x44326936 # initialize rs2
sh1add x27, x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0xe7ddbf0a # initialize rs1
li x6, 0xdecb494c # initialize rs2
sh1add x15, x1, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x2dd67344 # initialize rs1
li x7, 0x0a353891 # initialize rs2
sh1add x2, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x3, 0xf5d75a03 # initialize rs1
li x8, 0x382ba4b0 # initialize rs2
sh1add x20, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x25, 0x18d8aa8b # initialize rs1
li x9, 0xd27840d9 # initialize rs2
sh1add x6, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x6, 0x7a97afc7 # initialize rs1
li x10, 0xfb3ccf9a # initialize rs2
sh1add x11, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x9, 0x0b32972a # initialize rs1
li x11, 0x78be6599 # initialize rs2
sh1add x1, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x29, 0x25b1b8ee # initialize rs1
li x12, 0x2b200c28 # initialize rs2
sh1add x9, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x22, 0x5565753e # initialize rs1
li x13, 0xf58b987d # initialize rs2
sh1add x26, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x26, 0x50ee9e5c # initialize rs1
li x14, 0x5c1b1dcf # initialize rs2
sh1add x2, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x7, 0x627c9a1d # initialize rs1
li x15, 0xade58516 # initialize rs2
sh1add x9, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x15, 0x9de1402a # initialize rs1
li x16, 0xa697e0c5 # initialize rs2
sh1add x6, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x31, 0xfd48a316 # initialize rs1
li x17, 0xc89762d8 # initialize rs2
sh1add x2, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x25, 0x9cf2c7b4 # initialize rs1
li x18, 0x793eba34 # initialize rs2
sh1add x23, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x31, 0x6dd6cf74 # initialize rs1
li x19, 0xe6b33dec # initialize rs2
sh1add x14, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x30, 0xbf408412 # initialize rs1
li x20, 0x24ca935f # initialize rs2
sh1add x31, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x2, 0x6a589260 # initialize rs1
li x21, 0xd265b887 # initialize rs2
sh1add x8, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x27, 0xa24d0cb3 # initialize rs1
li x22, 0xbabbe5f8 # initialize rs2
sh1add x3, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x15, 0x508c4491 # initialize rs1
li x23, 0xbb2c8cf9 # initialize rs2
sh1add x21, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x28, 0x9388cf3d # initialize rs1
li x24, 0x58868bf3 # initialize rs2
sh1add x10, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x2, 0xad9da340 # initialize rs1
li x25, 0x44566630 # initialize rs2
sh1add x18, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x27, 0x33b3739f # initialize rs1
li x26, 0xd1615d8c # initialize rs2
sh1add x24, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x2, 0x5a59cfbd # initialize rs1
li x27, 0xfaf98e2a # initialize rs2
sh1add x19, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x31, 0xe9f27e29 # initialize rs1
li x28, 0x45041ef4 # initialize rs2
sh1add x24, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x3, 0x3bbaca69 # initialize rs1
li x29, 0x4e314c2f # initialize rs2
sh1add x23, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x20, 0xbde18f1d # initialize rs1
li x30, 0x199c0cf6 # initialize rs2
sh1add x31, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x25, 0x93e9a544 # initialize rs1
li x31, 0x51a1d1ca # initialize rs2
sh1add x18, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 252)

# Testcase cp_rd (Test destination rd = x0)
li x20, 0x0068f3c8 # initialize rs1
li x2, 0xd309eb61 # initialize rs2
sh1add x0, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x28, 0x3ef3fcf6 # initialize rs1
li x5, 0xd6564578 # initialize rs2
sh1add x1, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x17, 0xaad70f42 # initialize rs1
li x20, 0x51d9c1f4 # initialize rs2
sh1add x2, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x26, 0xe84f5f1d # initialize rs1
li x11, 0xf78654b9 # initialize rs2
sh1add x3, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0xea60939e # initialize rs1
li x10, 0xd74d7082 # initialize rs2
sh1add x4, x13, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0xab192d17 # initialize rs1
li x4, 0x1b306dc3 # initialize rs2
sh1add x5, x14, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0x81abf027 # initialize rs1
li x1, 0x6263f5f6 # initialize rs2
sh1add x6, x21, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x31, 0x3685b96e # initialize rs1
li x11, 0x9993b823 # initialize rs2
sh1add x7, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x20, 0x09733ac0 # initialize rs1
li x28, 0x197f2025 # initialize rs2
sh1add x8, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x17, 0xca338ab0 # initialize rs1
li x20, 0x68c93399 # initialize rs2
sh1add x9, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x23, 0xa8d3c0c1 # initialize rs1
li x12, 0xb009de81 # initialize rs2
sh1add x10, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x7, 0x7896f6fd # initialize rs1
li x18, 0xbc63db3a # initialize rs2
sh1add x11, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x21, 0x5c1aa2dd # initialize rs1
li x11, 0x528725c9 # initialize rs2
sh1add x12, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x9, 0x5c80632f # initialize rs1
li x23, 0x43638850 # initialize rs2
sh1add x13, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x22, 0xf7e49435 # initialize rs1
li x10, 0x2f9520d0 # initialize rs2
sh1add x14, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x7, 0x4ddee871 # initialize rs1
li x10, 0x834a0c03 # initialize rs2
sh1add x15, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x13, 0xa690eef4 # initialize rs1
li x8, 0xb2cd6aa5 # initialize rs2
sh1add x16, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x23, 0xdfa0aaea # initialize rs1
li x6, 0x83c02c53 # initialize rs2
sh1add x17, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x19, 0x3d893ca4 # initialize rs1
li x1, 0x55777057 # initialize rs2
sh1add x18, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x17, 0x02deb5bc # initialize rs1
li x2, 0x3868a755 # initialize rs2
sh1add x19, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x13, 0x192e11c4 # initialize rs1
li x7, 0xcaf2396b # initialize rs2
sh1add x20, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x5, 0x5dbafbc4 # initialize rs1
li x23, 0xc84a2094 # initialize rs2
sh1add x21, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x11, 0xe4c570f1 # initialize rs1
li x5, 0x6ba8ed1d # initialize rs2
sh1add x22, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x6, 0xc8652bf4 # initialize rs1
li x23, 0x599d16d8 # initialize rs2
sh1add x23, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x11, 0xec30e8e7 # initialize rs1
li x17, 0x15fd7cb9 # initialize rs2
sh1add x24, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x5, 0xbc3ebfc3 # initialize rs1
li x25, 0xb48bcd9c # initialize rs2
sh1add x25, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x17, 0xf9ad2156 # initialize rs1
li x6, 0xb01c33ec # initialize rs2
sh1add x26, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0x6ddfd349 # initialize rs1
li x30, 0x8ba20ad4 # initialize rs2
sh1add x27, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x8, 0x40d5aa8e # initialize rs1
li x24, 0x6dde826a # initialize rs2
sh1add x28, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x3d58d0f6 # initialize rs1
li x6, 0x60fda506 # initialize rs2
sh1add x29, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x25, 0x32134dcd # initialize rs1
li x26, 0x7e9df944 # initialize rs2
sh1add x30, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x8, 0x9762d21e # initialize rs1
li x6, 0xe07e0f7c # initialize rs2
sh1add x31, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x18, 0x00000000 # initialize rs1
li x3, 0xacd72458 # initialize rs2
sh1add x23, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x27, 0x00000001 # initialize rs1
li x28, 0x60e083c1 # initialize rs2
sh1add x30, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x6, 0x00000002 # initialize rs1
li x24, 0x956bd227 # initialize rs2
sh1add x15, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x6, 0x80000000 # initialize rs1
li x10, 0x3798a39e # initialize rs2
sh1add x28, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x1, 0x80000001 # initialize rs1
li x13, 0xa57f4760 # initialize rs2
sh1add x10, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x11, 0x7fffffff # initialize rs1
li x8, 0x6d2343c5 # initialize rs2
sh1add x29, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x24, 0x7ffffffe # initialize rs1
li x23, 0xa53f4d78 # initialize rs2
sh1add x16, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0xffffffff # initialize rs1
li x2, 0x3b16b52b # initialize rs2
sh1add x14, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x22, 0xfffffffe # initialize rs1
li x19, 0x96cdf833 # initialize rs2
sh1add x17, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x30, 0x5bbc8872 # initialize rs1
li x19, 0xf9af80bd # initialize rs2
sh1add x2, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # initialize rs1
li x1, 0xc9761443 # initialize rs2
sh1add x26, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x28, 0x55555555 # initialize rs1
li x23, 0x5ad88323 # initialize rs2
sh1add x5, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0x7f79c053 # initialize rs1
li x22, 0x00000000 # initialize rs2
sh1add x27, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0x4b162262 # initialize rs1
li x28, 0x00000001 # initialize rs2
sh1add x7, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x11, 0xa2b31522 # initialize rs1
li x1, 0x00000002 # initialize rs2
sh1add x8, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x12, 0xcbcbce89 # initialize rs1
li x1, 0x80000000 # initialize rs2
sh1add x2, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x30, 0x2217d728 # initialize rs1
li x28, 0x80000001 # initialize rs2
sh1add x24, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x2, 0xc0bf999d # initialize rs1
li x5, 0x7fffffff # initialize rs2
sh1add x18, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x12, 0x540ed2c4 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
sh1add x25, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0xf173d0c9 # initialize rs1
li x20, 0xffffffff # initialize rs2
sh1add x10, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0xad73fa1d # initialize rs1
li x20, 0xfffffffe # initialize rs2
sh1add x1, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x11, 0xa78f8d1e # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
sh1add x8, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x14, 0xb4a33229 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sh1add x9, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x12, 0x74cf9cd3 # initialize rs1
li x30, 0x55555555 # initialize rs2
sh1add x10, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x12, 0x00000000 # initialize rs1
li x19, 0x00000000 # initialize rs2
sh1add x14, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x18, 0x00000000 # initialize rs1
li x9, 0x00000001 # initialize rs2
sh1add x15, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x19, 0x00000000 # initialize rs1
li x27, 0x00000002 # initialize rs2
sh1add x17, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x10, 0x00000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
sh1add x25, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x1, 0x00000000 # initialize rs1
li x7, 0x80000001 # initialize rs2
sh1add x20, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x15, 0x00000000 # initialize rs1
li x1, 0x7fffffff # initialize rs2
sh1add x17, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x23, 0x00000000 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sh1add x21, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x20, 0x00000000 # initialize rs1
li x5, 0xffffffff # initialize rs2
sh1add x21, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x22, 0x00000000 # initialize rs1
li x16, 0xfffffffe # initialize rs2
sh1add x10, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x25, 0x00000000 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
sh1add x20, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x10, 0x00000000 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
sh1add x3, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x26, 0x00000000 # initialize rs1
li x28, 0x55555555 # initialize rs2
sh1add x31, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x25, 0x00000001 # initialize rs1
li x31, 0x00000000 # initialize rs2
sh1add x17, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x20, 0x00000001 # initialize rs1
li x28, 0x00000001 # initialize rs2
sh1add x14, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x24, 0x00000001 # initialize rs1
li x17, 0x00000002 # initialize rs2
sh1add x12, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x29, 0x00000001 # initialize rs1
li x9, 0x80000000 # initialize rs2
sh1add x18, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x12, 0x00000001 # initialize rs1
li x27, 0x80000001 # initialize rs2
sh1add x3, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x3, 0x00000001 # initialize rs1
li x13, 0x7fffffff # initialize rs2
sh1add x9, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x1, 0x00000001 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
sh1add x24, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x26, 0x00000001 # initialize rs1
li x16, 0xffffffff # initialize rs2
sh1add x2, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x12, 0x00000001 # initialize rs1
li x2, 0xfffffffe # initialize rs2
sh1add x9, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x30, 0x00000001 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
sh1add x21, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x9, 0x00000001 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
sh1add x20, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x5, 0x00000001 # initialize rs1
li x24, 0x55555555 # initialize rs2
sh1add x12, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x24, 0x00000002 # initialize rs1
li x2, 0x00000000 # initialize rs2
sh1add x27, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x15, 0x00000002 # initialize rs1
li x25, 0x00000001 # initialize rs2
sh1add x19, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x26, 0x00000002 # initialize rs1
li x5, 0x00000002 # initialize rs2
sh1add x11, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x17, 0x00000002 # initialize rs1
li x8, 0x80000000 # initialize rs2
sh1add x16, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x23, 0x00000002 # initialize rs1
li x2, 0x80000001 # initialize rs2
sh1add x20, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x5, 0x00000002 # initialize rs1
li x24, 0x7fffffff # initialize rs2
sh1add x23, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x10, 0x00000002 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
sh1add x12, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x23, 0x00000002 # initialize rs1
li x21, 0xffffffff # initialize rs2
sh1add x5, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x16, 0x00000002 # initialize rs1
li x28, 0xfffffffe # initialize rs2
sh1add x31, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x24, 0x00000002 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
sh1add x3, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x13, 0x00000002 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
sh1add x24, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x18, 0x00000002 # initialize rs1
li x11, 0x55555555 # initialize rs2
sh1add x21, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x14, 0x80000000 # initialize rs1
li x15, 0x00000000 # initialize rs2
sh1add x19, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x1, 0x80000000 # initialize rs1
li x2, 0x00000001 # initialize rs2
sh1add x12, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x24, 0x80000000 # initialize rs1
li x14, 0x00000002 # initialize rs2
sh1add x17, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x20, 0x80000000 # initialize rs1
li x13, 0x80000000 # initialize rs2
sh1add x14, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x28, 0x80000000 # initialize rs1
li x20, 0x80000001 # initialize rs2
sh1add x2, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x13, 0x80000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
sh1add x29, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x11, 0x80000000 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
sh1add x31, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x26, 0x80000000 # initialize rs1
li x1, 0xffffffff # initialize rs2
sh1add x28, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x29, 0x80000000 # initialize rs1
li x2, 0xfffffffe # initialize rs2
sh1add x20, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x12, 0x80000000 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
sh1add x16, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x20, 0x80000000 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
sh1add x23, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x22, 0x80000000 # initialize rs1
li x30, 0x55555555 # initialize rs2
sh1add x18, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x3, 0x80000001 # initialize rs1
li x28, 0x00000000 # initialize rs2
sh1add x13, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x8, 0x80000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
sh1add x27, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x5, 0x80000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
sh1add x12, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x28, 0x80000001 # initialize rs1
li x16, 0x80000000 # initialize rs2
sh1add x9, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x3, 0x80000001 # initialize rs1
li x26, 0x80000001 # initialize rs2
sh1add x11, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x8, 0x80000001 # initialize rs1
li x21, 0x7fffffff # initialize rs2
sh1add x20, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x26, 0x80000001 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
sh1add x13, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x27, 0x80000001 # initialize rs1
li x21, 0xffffffff # initialize rs2
sh1add x25, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x18, 0x80000001 # initialize rs1
li x26, 0xfffffffe # initialize rs2
sh1add x1, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x31, 0x80000001 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
sh1add x8, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x28, 0x80000001 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
sh1add x25, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x21, 0x80000001 # initialize rs1
li x18, 0x55555555 # initialize rs2
sh1add x16, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x24, 0x7fffffff # initialize rs1
li x12, 0x00000000 # initialize rs2
sh1add x2, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x18, 0x7fffffff # initialize rs1
li x7, 0x00000001 # initialize rs2
sh1add x3, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x22, 0x7fffffff # initialize rs1
li x13, 0x00000002 # initialize rs2
sh1add x17, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x5, 0x7fffffff # initialize rs1
li x26, 0x80000000 # initialize rs2
sh1add x15, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x2, 0x7fffffff # initialize rs1
li x11, 0x80000001 # initialize rs2
sh1add x21, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x8, 0x7fffffff # initialize rs1
li x14, 0x7fffffff # initialize rs2
sh1add x28, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x2, 0x7fffffff # initialize rs1
li x30, 0x7ffffffe # initialize rs2
sh1add x29, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x9, 0x7fffffff # initialize rs1
li x25, 0xffffffff # initialize rs2
sh1add x2, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x30, 0x7fffffff # initialize rs1
li x16, 0xfffffffe # initialize rs2
sh1add x3, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x3, 0x7fffffff # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
sh1add x29, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x24, 0x7fffffff # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
sh1add x21, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x1, 0x7fffffff # initialize rs1
li x18, 0x55555555 # initialize rs2
sh1add x15, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x17, 0x7ffffffe # initialize rs1
li x6, 0x00000000 # initialize rs2
sh1add x28, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x6, 0x7ffffffe # initialize rs1
li x24, 0x00000001 # initialize rs2
sh1add x29, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x11, 0x7ffffffe # initialize rs1
li x21, 0x00000002 # initialize rs2
sh1add x22, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x13, 0x7ffffffe # initialize rs1
li x3, 0x80000000 # initialize rs2
sh1add x11, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x30, 0x7ffffffe # initialize rs1
li x11, 0x80000001 # initialize rs2
sh1add x17, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x7, 0x7ffffffe # initialize rs1
li x8, 0x7fffffff # initialize rs2
sh1add x22, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x29, 0x7ffffffe # initialize rs1
li x8, 0x7ffffffe # initialize rs2
sh1add x20, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x18, 0x7ffffffe # initialize rs1
li x10, 0xffffffff # initialize rs2
sh1add x17, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x9, 0x7ffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
sh1add x22, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x10, 0x7ffffffe # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
sh1add x23, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x26, 0x7ffffffe # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
sh1add x23, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x3, 0x7ffffffe # initialize rs1
li x19, 0x55555555 # initialize rs2
sh1add x16, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x18, 0xffffffff # initialize rs1
li x7, 0x00000000 # initialize rs2
sh1add x10, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x3, 0xffffffff # initialize rs1
li x9, 0x00000001 # initialize rs2
sh1add x28, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x7, 0xffffffff # initialize rs1
li x1, 0x00000002 # initialize rs2
sh1add x10, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x3, 0xffffffff # initialize rs1
li x20, 0x80000000 # initialize rs2
sh1add x10, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x20, 0xffffffff # initialize rs1
li x6, 0x80000001 # initialize rs2
sh1add x1, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x19, 0xffffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
sh1add x1, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x22, 0xffffffff # initialize rs1
li x5, 0x7ffffffe # initialize rs2
sh1add x14, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x29, 0xffffffff # initialize rs1
li x26, 0xffffffff # initialize rs2
sh1add x13, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x20, 0xffffffff # initialize rs1
li x3, 0xfffffffe # initialize rs2
sh1add x5, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x9, 0xffffffff # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
sh1add x11, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x2, 0xffffffff # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
sh1add x10, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x5, 0xffffffff # initialize rs1
li x21, 0x55555555 # initialize rs2
sh1add x7, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x11, 0xfffffffe # initialize rs1
li x27, 0x00000000 # initialize rs2
sh1add x15, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x10, 0xfffffffe # initialize rs1
li x12, 0x00000001 # initialize rs2
sh1add x16, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x5, 0xfffffffe # initialize rs1
li x17, 0x00000002 # initialize rs2
sh1add x1, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x18, 0xfffffffe # initialize rs1
li x29, 0x80000000 # initialize rs2
sh1add x27, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x16, 0xfffffffe # initialize rs1
li x10, 0x80000001 # initialize rs2
sh1add x3, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x9, 0xfffffffe # initialize rs1
li x16, 0x7fffffff # initialize rs2
sh1add x31, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x11, 0xfffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
sh1add x22, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x20, 0xfffffffe # initialize rs1
li x18, 0xffffffff # initialize rs2
sh1add x13, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x26, 0xfffffffe # initialize rs1
li x6, 0xfffffffe # initialize rs2
sh1add x29, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x23, 0xfffffffe # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
sh1add x12, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x27, 0xfffffffe # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
sh1add x8, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x31, 0xfffffffe # initialize rs1
li x5, 0x55555555 # initialize rs2
sh1add x1, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x2, 0x5bbc8872 # initialize rs1
li x8, 0x00000000 # initialize rs2
sh1add x7, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x30, 0x5bbc8872 # initialize rs1
li x1, 0x00000001 # initialize rs2
sh1add x11, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x19, 0x5bbc8872 # initialize rs1
li x1, 0x00000002 # initialize rs2
sh1add x15, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x16, 0x5bbc8872 # initialize rs1
li x24, 0x80000000 # initialize rs2
sh1add x8, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x12, 0x5bbc8872 # initialize rs1
li x3, 0x80000001 # initialize rs2
sh1add x5, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x9, 0x5bbc8872 # initialize rs1
li x6, 0x7fffffff # initialize rs2
sh1add x24, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x22, 0x5bbc8872 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
sh1add x21, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x26, 0x5bbc8872 # initialize rs1
li x31, 0xffffffff # initialize rs2
sh1add x2, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x16, 0x5bbc8872 # initialize rs1
li x10, 0xfffffffe # initialize rs2
sh1add x3, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x15, 0x5bbc8872 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
sh1add x5, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x2, 0x5bbc8872 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
sh1add x16, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x9, 0x5bbc8872 # initialize rs1
li x16, 0x55555555 # initialize rs2
sh1add x11, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x25, 0xaaaaaaaa # initialize rs1
li x20, 0x00000000 # initialize rs2
sh1add x7, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x29, 0xaaaaaaaa # initialize rs1
li x10, 0x00000001 # initialize rs2
sh1add x15, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x1, 0xaaaaaaaa # initialize rs1
li x16, 0x00000002 # initialize rs2
sh1add x17, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x6, 0xaaaaaaaa # initialize rs1
li x21, 0x80000000 # initialize rs2
sh1add x27, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x10, 0xaaaaaaaa # initialize rs1
li x28, 0x80000001 # initialize rs2
sh1add x3, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x31, 0xaaaaaaaa # initialize rs1
li x3, 0x7fffffff # initialize rs2
sh1add x19, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x10, 0xaaaaaaaa # initialize rs1
li x7, 0x7ffffffe # initialize rs2
sh1add x21, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x23, 0xaaaaaaaa # initialize rs1
li x12, 0xffffffff # initialize rs2
sh1add x14, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x23, 0xaaaaaaaa # initialize rs1
li x2, 0xfffffffe # initialize rs2
sh1add x3, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x23, 0xaaaaaaaa # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
sh1add x5, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
sh1add x7, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x11, 0xaaaaaaaa # initialize rs1
li x9, 0x55555555 # initialize rs2
sh1add x20, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x1, 0x55555555 # initialize rs1
li x16, 0x00000000 # initialize rs2
sh1add x22, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x16, 0x55555555 # initialize rs1
li x8, 0x00000001 # initialize rs2
sh1add x25, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x15, 0x55555555 # initialize rs1
li x30, 0x00000002 # initialize rs2
sh1add x3, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x15, 0x55555555 # initialize rs1
li x20, 0x80000000 # initialize rs2
sh1add x6, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x16, 0x55555555 # initialize rs1
li x20, 0x80000001 # initialize rs2
sh1add x28, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x14, 0x55555555 # initialize rs1
li x30, 0x7fffffff # initialize rs2
sh1add x22, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x3, 0x55555555 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
sh1add x21, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x31, 0x55555555 # initialize rs1
li x21, 0xffffffff # initialize rs2
sh1add x6, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x15, 0x55555555 # initialize rs1
li x27, 0xfffffffe # initialize rs2
sh1add x7, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x22, 0x55555555 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
sh1add x17, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x25, 0x55555555 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sh1add x14, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x17, 0x55555555 # initialize rs1
li x20, 0x55555555 # initialize rs2
sh1add x25, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x7e73d36d # initialize rs1
li x0, 0x90dc0c9d # initialize rs2
sh1add x26, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x72cc3c01 # initialize rs1
li x1, 0x19929664 # initialize rs2
sh1add x2, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x06737859 # initialize rs1
li x2, 0x7e3d87d6 # initialize rs2
sh1add x23, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x3728cc6d # initialize rs1
li x3, 0x0cada81a # initialize rs2
sh1add x26, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x23d49336 # initialize rs1
li x4, 0x3df5f937 # initialize rs2
sh1add x10, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x64ff07ba # initialize rs1
li x5, 0x5530f724 # initialize rs2
sh1add x16, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0bbb81d4 # initialize rs1
li x6, 0x9f51b292 # initialize rs2
sh1add x25, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xed55efa3 # initialize rs1
li x7, 0x73480458 # initialize rs2
sh1add x12, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x235022dc # initialize rs1
li x8, 0x173cdd23 # initialize rs2
sh1add x31, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x87fbe46c # initialize rs1
li x9, 0x02779aa8 # initialize rs2
sh1add x6, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xe6964735 # initialize rs1
li x10, 0x20c33ff2 # initialize rs2
sh1add x20, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x98e83a1e # initialize rs1
li x11, 0x7318f524 # initialize rs2
sh1add x1, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x0902cd34 # initialize rs1
li x12, 0x254015da # initialize rs2
sh1add x29, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x1978ed68 # initialize rs1
li x13, 0xeabbb50b # initialize rs2
sh1add x29, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x3fa4e031 # initialize rs1
li x14, 0xee406d08 # initialize rs2
sh1add x30, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x174026f6 # initialize rs1
li x15, 0x4101f04b # initialize rs2
sh1add x3, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xb4e9605e # initialize rs1
li x16, 0x66c738db # initialize rs2
sh1add x6, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xd0a92252 # initialize rs1
li x17, 0x10aee063 # initialize rs2
sh1add x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xfa7be285 # initialize rs1
li x18, 0xff9fcc35 # initialize rs2
sh1add x19, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xc63030f8 # initialize rs1
li x19, 0xedce096d # initialize rs2
sh1add x9, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xabf75fd1 # initialize rs1
li x20, 0x1d3253f2 # initialize rs2
sh1add x16, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x328da5b9 # initialize rs1
li x21, 0x580f07b7 # initialize rs2
sh1add x19, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xac6d9250 # initialize rs1
li x22, 0x8cb84c0f # initialize rs2
sh1add x16, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xe15d3609 # initialize rs1
li x23, 0x6b248a35 # initialize rs2
sh1add x26, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xac8c8510 # initialize rs1
li x24, 0x674e8861 # initialize rs2
sh1add x18, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x9eb8c635 # initialize rs1
li x25, 0xcc221733 # initialize rs2
sh1add x9, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xc3a8f482 # initialize rs1
li x26, 0xc24a6430 # initialize rs2
sh1add x21, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x05fbc6e9 # initialize rs1
li x27, 0x1c5f0bb0 # initialize rs2
sh1add x26, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xf61fc4e2 # initialize rs1
li x28, 0xf4bf9f98 # initialize rs2
sh1add x19, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x3db04a8f # initialize rs1
li x29, 0xa040779f # initialize rs2
sh1add x18, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x937cef6b # initialize rs1
li x30, 0x02089d8a # initialize rs2
sh1add x15, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x682ede02 # initialize rs1
li x31, 0x8644e339 # initialize rs2
sh1add x6, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x6f8410fc # initialize rs1
li x29, 0x26f1e142 # initialize rs2
sh1add x0, x0, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xe2600999 # initialize rs1
li x6, 0x0f28413b # initialize rs2
sh1add x1, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x754a9e3b # initialize rs1
li x28, 0xafc82383 # initialize rs2
sh1add x2, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd4b593aa # initialize rs1
li x15, 0x8839bce8 # initialize rs2
sh1add x3, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x68ca8328 # initialize rs1
li x30, 0xea651ea4 # initialize rs2
sh1add x4, x4, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x86a4d0db # initialize rs1
li x7, 0xc017ab47 # initialize rs2
sh1add x5, x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2d8c8549 # initialize rs1
li x11, 0x0209b741 # initialize rs2
sh1add x6, x6, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x916fe7fe # initialize rs1
li x21, 0xb04c33f6 # initialize rs2
sh1add x7, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x558498cc # initialize rs1
li x27, 0x4375f5fd # initialize rs2
sh1add x8, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x9e2a7f51 # initialize rs1
li x1, 0x77e98c42 # initialize rs2
sh1add x9, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xb8848f99 # initialize rs1
li x6, 0xd417b62e # initialize rs2
sh1add x10, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x05580fef # initialize rs1
li x22, 0x589bd0e8 # initialize rs2
sh1add x11, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x93cf2bf1 # initialize rs1
li x30, 0x0c3c24b1 # initialize rs2
sh1add x12, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x38b0e32d # initialize rs1
li x14, 0xcc79f6db # initialize rs2
sh1add x13, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc4119470 # initialize rs1
li x31, 0xb70b21f1 # initialize rs2
sh1add x14, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xb9df3b90 # initialize rs1
li x1, 0x5de3869f # initialize rs2
sh1add x15, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xe13e4919 # initialize rs1
li x16, 0x7cd37723 # initialize rs2
sh1add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xfe640386 # initialize rs1
li x23, 0x6daccdf0 # initialize rs2
sh1add x17, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x74f44646 # initialize rs1
li x2, 0x86300df9 # initialize rs2
sh1add x18, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x86444ae4 # initialize rs1
li x24, 0x0c59ad54 # initialize rs2
sh1add x19, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf25004db # initialize rs1
li x21, 0x4265ecf5 # initialize rs2
sh1add x20, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x4fc91d1e # initialize rs1
li x10, 0x985bb12d # initialize rs2
sh1add x21, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x612fd03c # initialize rs1
li x6, 0x41e032f2 # initialize rs2
sh1add x22, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x7313ac65 # initialize rs1
li x24, 0x5911ef3f # initialize rs2
sh1add x23, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x9ddfd477 # initialize rs1
li x14, 0xbdb24cc2 # initialize rs2
sh1add x24, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x8b99fb93 # initialize rs1
li x6, 0x90ad193c # initialize rs2
sh1add x25, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x4baa99be # initialize rs1
li x6, 0x448cf4a8 # initialize rs2
sh1add x26, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x58d77552 # initialize rs1
li x6, 0xd8d31601 # initialize rs2
sh1add x27, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x508c96ff # initialize rs1
li x19, 0xe6089b78 # initialize rs2
sh1add x28, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xfc75ac5a # initialize rs1
li x14, 0xa2cc3ab8 # initialize rs2
sh1add x29, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xa9b45ad5 # initialize rs1
li x10, 0x7749ad5c # initialize rs2
sh1add x30, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xbf9f012d # initialize rs1
li x30, 0x3b65afdc # initialize rs2
sh1add x31, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x11, 0xf5620b38 # initialize rs1
li x0, 0x5d7d9f1a # initialize rs2
sh1add x0, x11, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x14, 0x90aef994 # initialize rs1
li x1, 0xa5766984 # initialize rs2
sh1add x1, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x10, 0x68d60606 # initialize rs1
li x2, 0xae49eed2 # initialize rs2
sh1add x2, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x25, 0xb7d37350 # initialize rs1
li x3, 0xf954ced3 # initialize rs2
sh1add x3, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0xb142b0d0 # initialize rs1
li x4, 0x504565e2 # initialize rs2
sh1add x4, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0xda5acf43 # initialize rs1
li x5, 0xc6f8ddac # initialize rs2
sh1add x5, x24, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0x5e8d77eb # initialize rs1
li x6, 0x2631dcce # initialize rs2
sh1add x6, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0xd97d8acf # initialize rs1
li x7, 0x7b06288d # initialize rs2
sh1add x7, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x17, 0x5ed6af7c # initialize rs1
li x8, 0x10367e4d # initialize rs2
sh1add x8, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x7, 0x24785ab8 # initialize rs1
li x9, 0x05913f50 # initialize rs2
sh1add x9, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x30, 0xd310baa6 # initialize rs1
li x10, 0xfdb4412f # initialize rs2
sh1add x10, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x20, 0x50d83695 # initialize rs1
li x11, 0xd2103387 # initialize rs2
sh1add x11, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x20, 0xb94eb61c # initialize rs1
li x12, 0x15a5c352 # initialize rs2
sh1add x12, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x12, 0xd8267dd6 # initialize rs1
li x13, 0x3f9b5667 # initialize rs2
sh1add x13, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x23, 0x95922af0 # initialize rs1
li x14, 0xe8a17a9c # initialize rs2
sh1add x14, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x20, 0x6edfa5a7 # initialize rs1
li x15, 0x40c6a9a0 # initialize rs2
sh1add x15, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x1, 0x35475966 # initialize rs1
li x16, 0xa69e7114 # initialize rs2
sh1add x16, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x14, 0xa75ebb56 # initialize rs1
li x17, 0x671595c1 # initialize rs2
sh1add x17, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x6, 0x4e14292d # initialize rs1
li x18, 0xa6a5389a # initialize rs2
sh1add x18, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x8, 0x634061a7 # initialize rs1
li x19, 0xfece1ecf # initialize rs2
sh1add x19, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x10, 0x7b6dfe9f # initialize rs1
li x20, 0xe3e2c45d # initialize rs2
sh1add x20, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x23, 0x7011d83f # initialize rs1
li x21, 0xc2047552 # initialize rs2
sh1add x21, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x13, 0xc4588119 # initialize rs1
li x22, 0xf165c19f # initialize rs2
sh1add x22, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x14, 0x5401baf4 # initialize rs1
li x23, 0xe792e7bb # initialize rs2
sh1add x23, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x2, 0xcfd77ba1 # initialize rs1
li x24, 0xee4da426 # initialize rs2
sh1add x24, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x19, 0xa72b3fa7 # initialize rs1
li x25, 0xc8beaf67 # initialize rs2
sh1add x25, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x9, 0xbf7449d7 # initialize rs1
li x26, 0x18104668 # initialize rs2
sh1add x26, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x1, 0xbd6490b4 # initialize rs1
li x27, 0xfe19e577 # initialize rs2
sh1add x27, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x9, 0x9ae2357b # initialize rs1
li x28, 0x399b87f3 # initialize rs2
sh1add x28, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x6, 0x02b7f214 # initialize rs1
li x29, 0x477aa8ea # initialize rs2
sh1add x29, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x8, 0x886dc605 # initialize rs1
li x30, 0x705569f8 # initialize rs2
sh1add x30, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x12, 0x9d4b1ece # initialize rs1
li x31, 0xb7a31edc # initialize rs2
sh1add x31, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x7685fb17 # initialize rs1
li x0, 0xc0c14833 # initialize rs2
sh1add x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x4efa2b90 # initialize rs1
li x1, 0x69f2d4c7 # initialize rs2
sh1add x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xfe56062e # initialize rs1
li x2, 0xa03ae800 # initialize rs2
sh1add x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x265609cf # initialize rs1
li x3, 0x981601c3 # initialize rs2
sh1add x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x927f6318 # initialize rs1
li x4, 0xb80d8a11 # initialize rs2
sh1add x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbd972859 # initialize rs1
li x5, 0xc64e5f5d # initialize rs2
sh1add x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb996da22 # initialize rs1
li x6, 0x829535dd # initialize rs2
sh1add x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe07327b1 # initialize rs1
li x7, 0xc119c269 # initialize rs2
sh1add x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x71f78ae0 # initialize rs1
li x8, 0xabdf45e1 # initialize rs2
sh1add x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xd8c85ef4 # initialize rs1
li x9, 0x7ff75a65 # initialize rs2
sh1add x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x7c443538 # initialize rs1
li x10, 0xe57c9123 # initialize rs2
sh1add x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x75d6fabf # initialize rs1
li x11, 0xc835de07 # initialize rs2
sh1add x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x8ed6cf2d # initialize rs1
li x12, 0x57d0b94a # initialize rs2
sh1add x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x1e98bce7 # initialize rs1
li x13, 0x59159194 # initialize rs2
sh1add x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x6505b9fb # initialize rs1
li x14, 0x467829a0 # initialize rs2
sh1add x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x1ec5248a # initialize rs1
li x15, 0xf8057539 # initialize rs2
sh1add x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xc16a9757 # initialize rs1
li x16, 0xa188a77c # initialize rs2
sh1add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x06753d1d # initialize rs1
li x17, 0x06b45a53 # initialize rs2
sh1add x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x6e341456 # initialize rs1
li x18, 0xed20417b # initialize rs2
sh1add x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x9a2fffcd # initialize rs1
li x19, 0x17d193eb # initialize rs2
sh1add x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x38eb5a20 # initialize rs1
li x20, 0xea3ac010 # initialize rs2
sh1add x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x626ec0a1 # initialize rs1
li x21, 0x3d4142e8 # initialize rs2
sh1add x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x4e3a726c # initialize rs1
li x22, 0x38d8f3a1 # initialize rs2
sh1add x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x571b8b0d # initialize rs1
li x23, 0x6ff9ee07 # initialize rs2
sh1add x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x166d5c8d # initialize rs1
li x24, 0x5281b828 # initialize rs2
sh1add x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x54dd5fbf # initialize rs1
li x25, 0xb0132a82 # initialize rs2
sh1add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xa65ca336 # initialize rs1
li x26, 0x5fb3b9a1 # initialize rs2
sh1add x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x7058460b # initialize rs1
li x27, 0xb8d5c30a # initialize rs2
sh1add x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x935455f4 # initialize rs1
li x28, 0xe314c53b # initialize rs2
sh1add x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x06886b22 # initialize rs1
li x29, 0xb1f0c081 # initialize rs2
sh1add x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x8325bb1b # initialize rs1
li x30, 0xb83ed554 # initialize rs2
sh1add x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x494d1926 # initialize rs1
li x31, 0x455ace7e # initialize rs2
sh1add x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x20, x12 # perform first operation
sh1add x6, x19, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x16, x24 # perform first operation
sh1add x6, x8, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x7, x30 # perform first operation
sh1add x24, x13, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x14, x26 # perform first operation
sh1add x14, x15, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x24, x5 # perform first operation
sh1add x13, x9, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x6, x1 # perform first operation
sh1add x6, x1, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x25, x10 # perform first operation
sh1add x2, x31, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x27, x22 # perform first operation
sh1add x13, x18, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x22, x27 # perform first operation
sh1add x1, x2, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x5, x8 # perform first operation
sh1add x5, x30, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x10, x31 # perform first operation
sh1add x31, x19, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x9, x20 # perform first operation
sh1add x26, x21, x25 # perform second (triggering) operation

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
