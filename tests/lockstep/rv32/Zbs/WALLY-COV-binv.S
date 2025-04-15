///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbs/WALLY-COV-binv.S
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
li x0, 0x79b4fd5a # initialize rs1
li x26, 0xd6777356 # initialize rs2
binv x5, x0, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x0ea8487b # initialize rs1
li x10, 0x6fdaac0c # initialize rs2
binv x23, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb5ad7076 # initialize rs1
li x19, 0x71948b8e # initialize rs2
binv x1, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x8bd6824b # initialize rs1
li x27, 0xb7598598 # initialize rs2
binv x28, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf0179ce1 # initialize rs1
li x12, 0x1194bd34 # initialize rs2
binv x28, x4, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfee3fc18 # initialize rs1
li x20, 0xe728893d # initialize rs2
binv x15, x5, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xaa04d749 # initialize rs1
li x17, 0x6aafd356 # initialize rs2
binv x15, x6, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xddf15292 # initialize rs1
li x9, 0x5de21255 # initialize rs2
binv x20, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xfbf68e0b # initialize rs1
li x3, 0x3f53632f # initialize rs2
binv x25, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xbb36474d # initialize rs1
li x23, 0xdc3b4139 # initialize rs2
binv x12, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x57c9f109 # initialize rs1
li x31, 0xeaad0836 # initialize rs2
binv x30, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xe8018f16 # initialize rs1
li x19, 0xc9db6d7d # initialize rs2
binv x14, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xcb9ad5c9 # initialize rs1
li x2, 0x259602a4 # initialize rs2
binv x27, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x8eb94500 # initialize rs1
li x19, 0x17891cbe # initialize rs2
binv x24, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x65632084 # initialize rs1
li x19, 0x7d0259a9 # initialize rs2
binv x8, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x33ecff50 # initialize rs1
li x9, 0xaa0180e8 # initialize rs2
binv x11, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xec944120 # initialize rs1
li x1, 0x11bc29b8 # initialize rs2
binv x8, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xa39e284c # initialize rs1
li x28, 0xc39870d4 # initialize rs2
binv x24, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xaf66920f # initialize rs1
li x27, 0xff5f7434 # initialize rs2
binv x7, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xd81632e1 # initialize rs1
li x25, 0x543b14da # initialize rs2
binv x10, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xcaacfac2 # initialize rs1
li x6, 0xab0d2040 # initialize rs2
binv x24, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xdab21c7f # initialize rs1
li x14, 0x76efe923 # initialize rs2
binv x18, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x3ffa6a91 # initialize rs1
li x19, 0x66f92593 # initialize rs2
binv x9, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xa5568ac2 # initialize rs1
li x10, 0x868685c2 # initialize rs2
binv x8, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x8c51d72c # initialize rs1
li x5, 0xbd24ec8d # initialize rs2
binv x13, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x188109c5 # initialize rs1
li x31, 0x45ee7a81 # initialize rs2
binv x7, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x72253086 # initialize rs1
li x15, 0x4b3d91c2 # initialize rs2
binv x16, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xf0a4859f # initialize rs1
li x14, 0x4326b11c # initialize rs2
binv x8, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x052d4b43 # initialize rs1
li x29, 0xbdd1cfa5 # initialize rs2
binv x22, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xfe59a4dc # initialize rs1
li x14, 0x711c8641 # initialize rs2
binv x6, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xccdc225c # initialize rs1
li x28, 0xbec26953 # initialize rs2
binv x16, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xc6338484 # initialize rs1
li x14, 0xa11c1522 # initialize rs2
binv x29, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x13, 0x00527f07 # initialize rs1
li x0, 0x9132e208 # initialize rs2
binv x5, x13, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x21, 0xc5798f04 # initialize rs1
li x1, 0x8ec677a9 # initialize rs2
binv x19, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x20, 0x1cf79cd4 # initialize rs1
li x2, 0x48be8294 # initialize rs2
binv x13, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x5, 0xae8b1f03 # initialize rs1
li x3, 0x9c14c4a2 # initialize rs2
binv x17, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0x03bdbaa9 # initialize rs1
li x4, 0xf4ed7b6d # initialize rs2
binv x9, x20, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x79226594 # initialize rs1
li x5, 0x053960f0 # initialize rs2
binv x22, x23, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0xfb9442ff # initialize rs1
li x6, 0xf8413aeb # initialize rs2
binv x29, x9, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x12, 0x40071f97 # initialize rs1
li x7, 0x69b06ddb # initialize rs2
binv x4, x12, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x10, 0x78d9d053 # initialize rs1
li x8, 0x5ad1e07e # initialize rs2
binv x15, x10, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x16, 0x21364627 # initialize rs1
li x9, 0xd41abb6d # initialize rs2
binv x28, x16, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x29, 0x0cd52875 # initialize rs1
li x10, 0xd1fdd1f6 # initialize rs2
binv x8, x29, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x31, 0x6f3f2a91 # initialize rs1
li x11, 0xb05df4bb # initialize rs2
binv x9, x31, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x28, 0x7a009d33 # initialize rs1
li x12, 0xba53bf69 # initialize rs2
binv x27, x28, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x6, 0x3b23a698 # initialize rs1
li x13, 0xbb49d86f # initialize rs2
binv x4, x6, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x11, 0xa88b0b74 # initialize rs1
li x14, 0x2a358232 # initialize rs2
binv x23, x11, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x13, 0xc294c5e6 # initialize rs1
li x15, 0xb00f1eda # initialize rs2
binv x16, x13, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x18, 0x5037b219 # initialize rs1
li x16, 0x47419ee0 # initialize rs2
binv x28, x18, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x7, 0x1465e363 # initialize rs1
li x17, 0xd1d69779 # initialize rs2
binv x19, x7, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x3, 0x1dd15627 # initialize rs1
li x18, 0x178abefa # initialize rs2
binv x10, x3, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x17, 0x914c97da # initialize rs1
li x19, 0x85d13daa # initialize rs2
binv x3, x17, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x13, 0xde5a0d04 # initialize rs1
li x20, 0x4635104f # initialize rs2
binv x3, x13, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x18, 0xb1a9e399 # initialize rs1
li x21, 0xe2bea7ce # initialize rs2
binv x13, x18, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x4, 0x75ff2f66 # initialize rs1
li x22, 0x0284cf8d # initialize rs2
binv x31, x4, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x4, 0x91cd2c51 # initialize rs1
li x23, 0xd25c5c60 # initialize rs2
binv x12, x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x29, 0x43d2c8cb # initialize rs1
li x24, 0xee39dd49 # initialize rs2
binv x6, x29, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x31, 0xc5f87a7e # initialize rs1
li x25, 0xb594ed6c # initialize rs2
binv x6, x31, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0x80a30ec1 # initialize rs1
li x26, 0x5825306b # initialize rs2
binv x3, x28, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x26, 0x01e9853c # initialize rs1
li x27, 0xe3429a25 # initialize rs2
binv x3, x26, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x4, 0x73fb0e22 # initialize rs1
li x28, 0x9b527fb4 # initialize rs2
binv x6, x4, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x8, 0xfd8ee7f8 # initialize rs1
li x29, 0x282c61b3 # initialize rs2
binv x6, x8, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x15, 0x2768a462 # initialize rs1
li x30, 0xefe9174d # initialize rs2
binv x9, x15, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x7, 0x1843572d # initialize rs1
li x31, 0x36db3a9e # initialize rs2
binv x15, x7, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 252)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0xe5df1d9d # initialize rs1
li x15, 0xea93f989 # initialize rs2
binv x0, x3, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x2, 0xe0f89380 # initialize rs1
li x24, 0xea56c787 # initialize rs2
binv x1, x2, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x19, 0xf9199321 # initialize rs1
li x1, 0x774fb601 # initialize rs2
binv x2, x19, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x8, 0x9841d133 # initialize rs1
li x23, 0xc801045c # initialize rs2
binv x3, x8, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
li x7, 0x882d166f # initialize rs1
li x26, 0x4a8e3a3b # initialize rs2
binv x4, x7, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x6940aec9 # initialize rs1
li x16, 0x0e6c3137 # initialize rs2
binv x5, x31, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0xd68d445f # initialize rs1
li x19, 0xfa69818a # initialize rs2
binv x6, x28, x19 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0x4b7f39e0 # initialize rs1
li x12, 0xa1bc1d2c # initialize rs2
binv x7, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x15, 0x4475bfce # initialize rs1
li x22, 0x87a8f40b # initialize rs2
binv x8, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x22, 0x990d02a1 # initialize rs1
li x3, 0x5e43d269 # initialize rs2
binv x9, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x23, 0xcce930aa # initialize rs1
li x26, 0x79a4ff68 # initialize rs2
binv x10, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0xe7fe0b62 # initialize rs1
li x16, 0xbc1c274e # initialize rs2
binv x11, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x21, 0x3fbbb1f2 # initialize rs1
li x19, 0x435f645c # initialize rs2
binv x12, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x1, 0xeadc3ca7 # initialize rs1
li x11, 0x1a799174 # initialize rs2
binv x13, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x29, 0x7f4693fd # initialize rs1
li x17, 0x3c5542c0 # initialize rs2
binv x14, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x6, 0xb9986bf8 # initialize rs1
li x12, 0xb02c5d81 # initialize rs2
binv x15, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x14, 0xa857730c # initialize rs1
li x6, 0xc7b45c95 # initialize rs2
binv x16, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x28, 0x46e77a1b # initialize rs1
li x3, 0x4f66f978 # initialize rs2
binv x17, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x1, 0x7f23e9bd # initialize rs1
li x31, 0xfacbda89 # initialize rs2
binv x18, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x5, 0x4a127357 # initialize rs1
li x23, 0xe67d1c90 # initialize rs2
binv x19, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x26, 0x367a923f # initialize rs1
li x2, 0x756af742 # initialize rs2
binv x20, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x26, 0x44c64c3d # initialize rs1
li x23, 0xbee02077 # initialize rs2
binv x21, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x18, 0x5bbbf7ad # initialize rs1
li x8, 0xe155723b # initialize rs2
binv x22, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0x7c3295ea # initialize rs1
li x13, 0x0f8073e7 # initialize rs2
binv x23, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x27, 0xd5d3bc0b # initialize rs1
li x22, 0x11b37186 # initialize rs2
binv x24, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0x91236a45 # initialize rs1
li x30, 0xb96cb8eb # initialize rs2
binv x25, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x30, 0xda02984b # initialize rs1
li x6, 0xeb782d2f # initialize rs2
binv x26, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0xb1248df6 # initialize rs1
li x14, 0xd99e8e7f # initialize rs2
binv x27, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x18, 0x9cd1db2e # initialize rs1
li x29, 0x772e0a83 # initialize rs2
binv x28, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x24, 0x28a3c910 # initialize rs1
li x15, 0x76ba665a # initialize rs2
binv x29, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x17, 0xb3f132c7 # initialize rs1
li x25, 0x5c2eded2 # initialize rs2
binv x30, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x3, 0x5858409e # initialize rs1
li x9, 0x43bc0a0e # initialize rs2
binv x31, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x19, 0x00000000 # initialize rs1
li x13, 0x93e70278 # initialize rs2
binv x14, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x2, 0x00000001 # initialize rs1
li x28, 0x45d01fe3 # initialize rs2
binv x26, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x28, 0x00000002 # initialize rs1
li x17, 0x194ceae8 # initialize rs2
binv x12, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x22, 0x80000000 # initialize rs1
li x12, 0x4b04a9eb # initialize rs2
binv x6, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x26, 0x80000001 # initialize rs1
li x10, 0x6758494f # initialize rs2
binv x16, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x14, 0x7fffffff # initialize rs1
li x1, 0x6330400b # initialize rs2
binv x7, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x6, 0x7ffffffe # initialize rs1
li x21, 0x8d238e80 # initialize rs2
binv x3, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x17, 0xffffffff # initialize rs1
li x10, 0x0fe9631d # initialize rs2
binv x18, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0xfffffffe # initialize rs1
li x25, 0xcec29530 # initialize rs2
binv x7, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x3, 0x5bbc8872 # initialize rs1
li x14, 0x354de9a4 # initialize rs2
binv x9, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
li x12, 0x80568859 # initialize rs2
binv x30, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x30, 0x55555555 # initialize rs1
li x12, 0xd4a286a1 # initialize rs2
binv x26, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0x7746f6eb # initialize rs1
li x19, 0x00000000 # initialize rs2
binv x25, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x29, 0xff713264 # initialize rs1
li x21, 0x00000001 # initialize rs2
binv x28, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x17, 0x1927e25d # initialize rs1
li x31, 0x00000002 # initialize rs2
binv x23, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x7, 0x54c84fbb # initialize rs1
li x27, 0x80000000 # initialize rs2
binv x23, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x24, 0x7b7438d6 # initialize rs1
li x15, 0x80000001 # initialize rs2
binv x5, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x5, 0x2de25eee # initialize rs1
li x31, 0x7fffffff # initialize rs2
binv x11, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x19, 0x827b0e33 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
binv x20, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x25, 0x5378452d # initialize rs1
li x27, 0xffffffff # initialize rs2
binv x10, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x7, 0x9debf523 # initialize rs1
li x25, 0xfffffffe # initialize rs2
binv x22, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x3, 0xe15f8b3b # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
binv x8, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x31, 0x5dbc3111 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
binv x6, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x26, 0x1f3539b5 # initialize rs1
li x12, 0x55555555 # initialize rs2
binv x20, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0x00000000 # initialize rs1
li x9, 0x00000000 # initialize rs2
binv x5, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x3, 0x00000000 # initialize rs1
li x22, 0x00000001 # initialize rs2
binv x9, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x30, 0x00000000 # initialize rs1
li x20, 0x00000002 # initialize rs2
binv x19, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x18, 0x00000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
binv x1, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x18, 0x00000000 # initialize rs1
li x12, 0x80000001 # initialize rs2
binv x19, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x16, 0x00000000 # initialize rs1
li x3, 0x7fffffff # initialize rs2
binv x21, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x1, 0x00000000 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
binv x8, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x21, 0x00000000 # initialize rs1
li x8, 0xffffffff # initialize rs2
binv x9, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x6, 0x00000000 # initialize rs1
li x19, 0xfffffffe # initialize rs2
binv x12, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x20, 0x00000000 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
binv x23, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x10, 0x00000000 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
binv x21, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x18, 0x00000000 # initialize rs1
li x10, 0x55555555 # initialize rs2
binv x31, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x5, 0x00000001 # initialize rs1
li x25, 0x00000000 # initialize rs2
binv x11, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x24, 0x00000001 # initialize rs1
li x6, 0x00000001 # initialize rs2
binv x15, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x29, 0x00000001 # initialize rs1
li x16, 0x00000002 # initialize rs2
binv x31, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x18, 0x00000001 # initialize rs1
li x10, 0x80000000 # initialize rs2
binv x28, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x18, 0x00000001 # initialize rs1
li x8, 0x80000001 # initialize rs2
binv x11, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x10, 0x00000001 # initialize rs1
li x20, 0x7fffffff # initialize rs2
binv x16, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x10, 0x00000001 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
binv x17, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x7, 0x00000001 # initialize rs1
li x6, 0xffffffff # initialize rs2
binv x23, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x30, 0x00000001 # initialize rs1
li x15, 0xfffffffe # initialize rs2
binv x5, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x2, 0x00000001 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
binv x16, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x31, 0x00000001 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
binv x16, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x2, 0x00000001 # initialize rs1
li x31, 0x55555555 # initialize rs2
binv x11, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x16, 0x00000002 # initialize rs1
li x27, 0x00000000 # initialize rs2
binv x9, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x3, 0x00000002 # initialize rs1
li x12, 0x00000001 # initialize rs2
binv x9, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x16, 0x00000002 # initialize rs1
li x22, 0x00000002 # initialize rs2
binv x2, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x14, 0x00000002 # initialize rs1
li x1, 0x80000000 # initialize rs2
binv x20, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x19, 0x00000002 # initialize rs1
li x16, 0x80000001 # initialize rs2
binv x6, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x5, 0x00000002 # initialize rs1
li x26, 0x7fffffff # initialize rs2
binv x25, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x17, 0x00000002 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
binv x5, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x24, 0x00000002 # initialize rs1
li x21, 0xffffffff # initialize rs2
binv x29, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x7, 0x00000002 # initialize rs1
li x22, 0xfffffffe # initialize rs2
binv x5, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x7, 0x00000002 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
binv x6, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x5, 0x00000002 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
binv x2, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x13, 0x00000002 # initialize rs1
li x21, 0x55555555 # initialize rs2
binv x28, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x25, 0x80000000 # initialize rs1
li x23, 0x00000000 # initialize rs2
binv x16, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x7, 0x80000000 # initialize rs1
li x2, 0x00000001 # initialize rs2
binv x5, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x25, 0x80000000 # initialize rs1
li x31, 0x00000002 # initialize rs2
binv x26, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x5, 0x80000000 # initialize rs1
li x18, 0x80000000 # initialize rs2
binv x8, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x9, 0x80000000 # initialize rs1
li x8, 0x80000001 # initialize rs2
binv x27, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x7, 0x80000000 # initialize rs1
li x3, 0x7fffffff # initialize rs2
binv x22, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x25, 0x80000000 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
binv x17, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x22, 0x80000000 # initialize rs1
li x31, 0xffffffff # initialize rs2
binv x3, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x1, 0x80000000 # initialize rs1
li x8, 0xfffffffe # initialize rs2
binv x17, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x30, 0x80000000 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
binv x27, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x24, 0x80000000 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
binv x17, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x3, 0x80000000 # initialize rs1
li x26, 0x55555555 # initialize rs2
binv x1, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x16, 0x80000001 # initialize rs1
li x9, 0x00000000 # initialize rs2
binv x8, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x6, 0x80000001 # initialize rs1
li x2, 0x00000001 # initialize rs2
binv x21, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x25, 0x80000001 # initialize rs1
li x29, 0x00000002 # initialize rs2
binv x27, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x22, 0x80000001 # initialize rs1
li x6, 0x80000000 # initialize rs2
binv x12, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x7, 0x80000001 # initialize rs1
li x28, 0x80000001 # initialize rs2
binv x31, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x21, 0x80000001 # initialize rs1
li x19, 0x7fffffff # initialize rs2
binv x20, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x28, 0x80000001 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
binv x16, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x13, 0x80000001 # initialize rs1
li x30, 0xffffffff # initialize rs2
binv x27, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x29, 0x80000001 # initialize rs1
li x18, 0xfffffffe # initialize rs2
binv x15, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x12, 0x80000001 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
binv x19, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x16, 0x80000001 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
binv x15, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x28, 0x80000001 # initialize rs1
li x21, 0x55555555 # initialize rs2
binv x6, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x30, 0x7fffffff # initialize rs1
li x6, 0x00000000 # initialize rs2
binv x22, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x24, 0x7fffffff # initialize rs1
li x11, 0x00000001 # initialize rs2
binv x16, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x6, 0x7fffffff # initialize rs1
li x1, 0x00000002 # initialize rs2
binv x29, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x24, 0x7fffffff # initialize rs1
li x30, 0x80000000 # initialize rs2
binv x13, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x11, 0x7fffffff # initialize rs1
li x24, 0x80000001 # initialize rs2
binv x8, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x6, 0x7fffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
binv x20, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x14, 0x7fffffff # initialize rs1
li x22, 0x7ffffffe # initialize rs2
binv x29, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x13, 0x7fffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
binv x17, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x6, 0x7fffffff # initialize rs1
li x1, 0xfffffffe # initialize rs2
binv x30, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x5, 0x7fffffff # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
binv x9, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x6, 0x7fffffff # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
binv x12, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x31, 0x7fffffff # initialize rs1
li x18, 0x55555555 # initialize rs2
binv x8, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x7, 0x7ffffffe # initialize rs1
li x3, 0x00000000 # initialize rs2
binv x21, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x13, 0x7ffffffe # initialize rs1
li x8, 0x00000001 # initialize rs2
binv x26, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x27, 0x7ffffffe # initialize rs1
li x26, 0x00000002 # initialize rs2
binv x30, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x15, 0x7ffffffe # initialize rs1
li x11, 0x80000000 # initialize rs2
binv x16, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x26, 0x7ffffffe # initialize rs1
li x27, 0x80000001 # initialize rs2
binv x24, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x30, 0x7ffffffe # initialize rs1
li x26, 0x7fffffff # initialize rs2
binv x23, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x7, 0x7ffffffe # initialize rs1
li x29, 0x7ffffffe # initialize rs2
binv x30, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x13, 0x7ffffffe # initialize rs1
li x21, 0xffffffff # initialize rs2
binv x17, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x31, 0x7ffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
binv x6, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x17, 0x7ffffffe # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
binv x12, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x30, 0x7ffffffe # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
binv x8, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x23, 0x7ffffffe # initialize rs1
li x26, 0x55555555 # initialize rs2
binv x21, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x31, 0xffffffff # initialize rs1
li x24, 0x00000000 # initialize rs2
binv x21, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x11, 0xffffffff # initialize rs1
li x20, 0x00000001 # initialize rs2
binv x31, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x26, 0xffffffff # initialize rs1
li x3, 0x00000002 # initialize rs2
binv x23, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x28, 0xffffffff # initialize rs1
li x22, 0x80000000 # initialize rs2
binv x26, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x24, 0xffffffff # initialize rs1
li x8, 0x80000001 # initialize rs2
binv x10, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x28, 0xffffffff # initialize rs1
li x14, 0x7fffffff # initialize rs2
binv x30, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x27, 0xffffffff # initialize rs1
li x26, 0x7ffffffe # initialize rs2
binv x28, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x23, 0xffffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
binv x30, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0xffffffff # initialize rs1
li x10, 0xfffffffe # initialize rs2
binv x7, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x23, 0xffffffff # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
binv x1, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x9, 0xffffffff # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
binv x13, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x3, 0xffffffff # initialize rs1
li x21, 0x55555555 # initialize rs2
binv x28, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x17, 0xfffffffe # initialize rs1
li x9, 0x00000000 # initialize rs2
binv x20, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x16, 0xfffffffe # initialize rs1
li x11, 0x00000001 # initialize rs2
binv x31, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x28, 0xfffffffe # initialize rs1
li x12, 0x00000002 # initialize rs2
binv x21, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x22, 0xfffffffe # initialize rs1
li x18, 0x80000000 # initialize rs2
binv x12, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x1, 0xfffffffe # initialize rs1
li x13, 0x80000001 # initialize rs2
binv x3, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x31, 0xfffffffe # initialize rs1
li x6, 0x7fffffff # initialize rs2
binv x1, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x15, 0xfffffffe # initialize rs1
li x31, 0x7ffffffe # initialize rs2
binv x25, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x20, 0xfffffffe # initialize rs1
li x9, 0xffffffff # initialize rs2
binv x18, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x15, 0xfffffffe # initialize rs1
li x18, 0xfffffffe # initialize rs2
binv x11, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x9, 0xfffffffe # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
binv x29, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x12, 0xfffffffe # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
binv x8, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x7, 0xfffffffe # initialize rs1
li x29, 0x55555555 # initialize rs2
binv x1, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x7, 0x5bbc8872 # initialize rs1
li x28, 0x00000000 # initialize rs2
binv x15, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x22, 0x5bbc8872 # initialize rs1
li x12, 0x00000001 # initialize rs2
binv x21, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x19, 0x5bbc8872 # initialize rs1
li x26, 0x00000002 # initialize rs2
binv x10, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x1, 0x5bbc8872 # initialize rs1
li x3, 0x80000000 # initialize rs2
binv x21, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x23, 0x5bbc8872 # initialize rs1
li x29, 0x80000001 # initialize rs2
binv x9, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x1, 0x5bbc8872 # initialize rs1
li x30, 0x7fffffff # initialize rs2
binv x2, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x3, 0x5bbc8872 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
binv x28, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x23, 0x5bbc8872 # initialize rs1
li x16, 0xffffffff # initialize rs2
binv x6, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x6, 0x5bbc8872 # initialize rs1
li x26, 0xfffffffe # initialize rs2
binv x21, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x7, 0x5bbc8872 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
binv x26, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x25, 0x5bbc8872 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
binv x17, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x12, 0x5bbc8872 # initialize rs1
li x18, 0x55555555 # initialize rs2
binv x29, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x18, 0xaaaaaaaa # initialize rs1
li x23, 0x00000000 # initialize rs2
binv x1, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x25, 0xaaaaaaaa # initialize rs1
li x22, 0x00000001 # initialize rs2
binv x5, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x25, 0xaaaaaaaa # initialize rs1
li x11, 0x00000002 # initialize rs2
binv x12, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x19, 0xaaaaaaaa # initialize rs1
li x22, 0x80000000 # initialize rs2
binv x18, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x12, 0xaaaaaaaa # initialize rs1
li x18, 0x80000001 # initialize rs2
binv x11, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x21, 0xaaaaaaaa # initialize rs1
li x12, 0x7fffffff # initialize rs2
binv x1, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x25, 0xaaaaaaaa # initialize rs1
li x23, 0x7ffffffe # initialize rs2
binv x19, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x14, 0xaaaaaaaa # initialize rs1
li x23, 0xffffffff # initialize rs2
binv x16, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x13, 0xaaaaaaaa # initialize rs1
li x20, 0xfffffffe # initialize rs2
binv x11, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x12, 0xaaaaaaaa # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
binv x27, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x13, 0xaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
binv x9, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x18, 0xaaaaaaaa # initialize rs1
li x10, 0x55555555 # initialize rs2
binv x16, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x23, 0x55555555 # initialize rs1
li x10, 0x00000000 # initialize rs2
binv x21, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x7, 0x55555555 # initialize rs1
li x30, 0x00000001 # initialize rs2
binv x6, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x3, 0x55555555 # initialize rs1
li x13, 0x00000002 # initialize rs2
binv x18, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x3, 0x55555555 # initialize rs1
li x18, 0x80000000 # initialize rs2
binv x11, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x16, 0x55555555 # initialize rs1
li x13, 0x80000001 # initialize rs2
binv x18, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x3, 0x55555555 # initialize rs1
li x23, 0x7fffffff # initialize rs2
binv x24, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x24, 0x55555555 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
binv x21, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x21, 0x55555555 # initialize rs1
li x17, 0xffffffff # initialize rs2
binv x30, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x30, 0x55555555 # initialize rs1
li x28, 0xfffffffe # initialize rs2
binv x25, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x29, 0x55555555 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
binv x5, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x7, 0x55555555 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
binv x19, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x31, 0x55555555 # initialize rs1
li x28, 0x55555555 # initialize rs2
binv x12, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xbe3c4b4b # initialize rs1
li x0, 0xba4caad5 # initialize rs2
binv x7, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xb2217402 # initialize rs1
li x1, 0x1aeada89 # initialize rs2
binv x22, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xe4d4c1e3 # initialize rs1
li x2, 0x00987084 # initialize rs2
binv x22, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xbdc65a80 # initialize rs1
li x3, 0x69f1a42a # initialize rs2
binv x9, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xba03f3ca # initialize rs1
li x4, 0x516a437e # initialize rs2
binv x13, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4197ad4f # initialize rs1
li x5, 0xdb4e7b1e # initialize rs2
binv x6, x5, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x6, 0x5ee25407 # initialize rs1
li x6, 0x6e200b3d # initialize rs2
binv x25, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x2697f085 # initialize rs1
li x7, 0x48a7c1c4 # initialize rs2
binv x12, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x9b5225a8 # initialize rs1
li x8, 0xb92cb712 # initialize rs2
binv x17, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xf62ba324 # initialize rs1
li x9, 0x0953f3bb # initialize rs2
binv x18, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x794b6cd2 # initialize rs1
li x10, 0x5ce11d19 # initialize rs2
binv x12, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x5a19daa5 # initialize rs1
li x11, 0x1d9f528b # initialize rs2
binv x7, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x25963a16 # initialize rs1
li x12, 0xa30695e8 # initialize rs2
binv x8, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x8b0143a4 # initialize rs1
li x13, 0x1f694cab # initialize rs2
binv x5, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x6fcbda1e # initialize rs1
li x14, 0xe7d3eb95 # initialize rs2
binv x24, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x174bc0fe # initialize rs1
li x15, 0x65b9efb2 # initialize rs2
binv x3, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x889e6a40 # initialize rs1
li x16, 0x63cacd1f # initialize rs2
binv x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xece84b67 # initialize rs1
li x17, 0x7442895f # initialize rs2
binv x8, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xa7a3c0e8 # initialize rs1
li x18, 0x117e758c # initialize rs2
binv x14, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xea58b761 # initialize rs1
li x19, 0x6616868d # initialize rs2
binv x1, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x55f37591 # initialize rs1
li x20, 0x805aac0c # initialize rs2
binv x18, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xb1f52fcd # initialize rs1
li x21, 0x350aae87 # initialize rs2
binv x13, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x8e0523d4 # initialize rs1
li x22, 0x55500622 # initialize rs2
binv x19, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x8f9b5670 # initialize rs1
li x23, 0x5220e6ca # initialize rs2
binv x5, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xa91a9ad4 # initialize rs1
li x24, 0xf211f799 # initialize rs2
binv x9, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xf2a968af # initialize rs1
li x25, 0x1b7e5789 # initialize rs2
binv x17, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x0d83bec3 # initialize rs1
li x26, 0xbce25e73 # initialize rs2
binv x2, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xe0863b7d # initialize rs1
li x27, 0x521345ad # initialize rs2
binv x21, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xc3816652 # initialize rs1
li x28, 0x5caedb9f # initialize rs2
binv x10, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xf0119450 # initialize rs1
li x29, 0x69ee10d6 # initialize rs2
binv x12, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x691e1867 # initialize rs1
li x30, 0x0b16af66 # initialize rs2
binv x9, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xd26402b9 # initialize rs1
li x31, 0xc02591cb # initialize rs2
binv x14, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x1d44a729 # initialize rs1
li x2, 0xe0eb7828 # initialize rs2
binv x0, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x99ab7afe # initialize rs1
li x27, 0xa5e5d503 # initialize rs2
binv x1, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x095c7abd # initialize rs1
li x30, 0xc30b3ccd # initialize rs2
binv x2, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x830d9242 # initialize rs1
li x18, 0x9115d0cf # initialize rs2
binv x3, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4acb0715 # initialize rs1
li x30, 0xbfd8d608 # initialize rs2
binv x4, x4, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8e23b244 # initialize rs1
li x24, 0x983f844d # initialize rs2
binv x5, x5, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2acdd168 # initialize rs1
li x9, 0x5d1fb893 # initialize rs2
binv x6, x6, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x860ab448 # initialize rs1
li x20, 0xaef2652d # initialize rs2
binv x7, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x61bcff6b # initialize rs1
li x13, 0x009faa46 # initialize rs2
binv x8, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xb3c7b0c7 # initialize rs1
li x30, 0x1fbb03db # initialize rs2
binv x9, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x4666654d # initialize rs1
li x31, 0x9e94637d # initialize rs2
binv x10, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa35450cd # initialize rs1
li x15, 0xa553e94a # initialize rs2
binv x11, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xadfb738f # initialize rs1
li x14, 0x703bb6b6 # initialize rs2
binv x12, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x0986f491 # initialize rs1
li x28, 0xfbba2f7c # initialize rs2
binv x13, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x9476ce98 # initialize rs1
li x28, 0x3844a828 # initialize rs2
binv x14, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xa3d7c979 # initialize rs1
li x14, 0xb971d896 # initialize rs2
binv x15, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xa8dd4a1b # initialize rs1
li x19, 0xae91ed38 # initialize rs2
binv x16, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x3fa3f15e # initialize rs1
li x18, 0xf1b28b38 # initialize rs2
binv x17, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xdf46883b # initialize rs1
li x9, 0x9d85948d # initialize rs2
binv x18, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xcd0bbc8f # initialize rs1
li x12, 0x3bf07b80 # initialize rs2
binv x19, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf942fb96 # initialize rs1
li x28, 0xbff27c16 # initialize rs2
binv x20, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x5eed037d # initialize rs1
li x21, 0xf6de685e # initialize rs2
binv x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xc022bf4a # initialize rs1
li x31, 0xe114f0b8 # initialize rs2
binv x22, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xddbdc91d # initialize rs1
li x25, 0xd095b952 # initialize rs2
binv x23, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x3634e246 # initialize rs1
li x28, 0x38d52371 # initialize rs2
binv x24, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x94869e71 # initialize rs1
li x14, 0x7a65d5ef # initialize rs2
binv x25, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x56290c83 # initialize rs1
li x7, 0x3966abd7 # initialize rs2
binv x26, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xc83c5386 # initialize rs1
li x1, 0x4db64bbc # initialize rs2
binv x27, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x1752bff0 # initialize rs1
li x5, 0x4b0725b8 # initialize rs2
binv x28, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x5aa9e627 # initialize rs1
li x3, 0x72e69bdb # initialize rs2
binv x29, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x82002764 # initialize rs1
li x6, 0xfcae4844 # initialize rs2
binv x30, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x5aa0618c # initialize rs1
li x11, 0x9c7d4838 # initialize rs2
binv x31, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x26, 0x89d88d8c # initialize rs1
li x0, 0x83124473 # initialize rs2
binv x0, x26, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x16, 0x13103442 # initialize rs1
li x1, 0x70c9e553 # initialize rs2
binv x1, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x7, 0xfd4228fc # initialize rs1
li x2, 0x7d0ecb79 # initialize rs2
binv x2, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x16, 0xa94ce428 # initialize rs1
li x3, 0x74cf7da2 # initialize rs2
binv x3, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0x05eb8e48 # initialize rs1
li x4, 0x954581eb # initialize rs2
binv x4, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0x646b1a13 # initialize rs1
li x5, 0x3c25bf5b # initialize rs2
binv x5, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
li x31, 0x4ebad5cf # initialize rs1
li x6, 0x3af07a2c # initialize rs2
binv x6, x31, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0x33c738f2 # initialize rs1
li x7, 0xaaf2b994 # initialize rs2
binv x7, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x6, 0x2d2ab584 # initialize rs1
li x8, 0xb15d2ac5 # initialize rs2
binv x8, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x29, 0x7a0be0b9 # initialize rs1
li x9, 0x33d96f04 # initialize rs2
binv x9, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x22, 0xaa0d2303 # initialize rs1
li x10, 0x33cac7c3 # initialize rs2
binv x10, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x3, 0xf9fbfbf6 # initialize rs1
li x11, 0x3cb48e40 # initialize rs2
binv x11, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x31, 0x80a3319c # initialize rs1
li x12, 0xca62b088 # initialize rs2
binv x12, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x28, 0x9342b8a1 # initialize rs1
li x13, 0x6df65cad # initialize rs2
binv x13, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x5, 0x8f5a73e3 # initialize rs1
li x14, 0x6f8a090e # initialize rs2
binv x14, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x17, 0x6f9a73d2 # initialize rs1
li x15, 0xdc9135f8 # initialize rs2
binv x15, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x8, 0xd3b26b68 # initialize rs1
li x16, 0xb21159fa # initialize rs2
binv x16, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x12, 0x2bcda91e # initialize rs1
li x17, 0x08432f5e # initialize rs2
binv x17, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x14, 0xed0f1087 # initialize rs1
li x18, 0x4b0ae327 # initialize rs2
binv x18, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x12, 0x6880cc38 # initialize rs1
li x19, 0x9a40a88c # initialize rs2
binv x19, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x14, 0x8e55d8bc # initialize rs1
li x20, 0x5e2f2a9a # initialize rs2
binv x20, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x20, 0x53a5aa56 # initialize rs1
li x21, 0xc9700d03 # initialize rs2
binv x21, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x25, 0x5dcf68c8 # initialize rs1
li x22, 0x46be006c # initialize rs2
binv x22, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x18, 0xc1feb2a3 # initialize rs1
li x23, 0x2d1cfee8 # initialize rs2
binv x23, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x30, 0x6c308191 # initialize rs1
li x24, 0x041a41a5 # initialize rs2
binv x24, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x1, 0xaca5dc50 # initialize rs1
li x25, 0xc9f4885a # initialize rs2
binv x25, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x11, 0x57a7a0f5 # initialize rs1
li x26, 0xd3e182b6 # initialize rs2
binv x26, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x9, 0x11c8ee72 # initialize rs1
li x27, 0x994a4b98 # initialize rs2
binv x27, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x8, 0xcfefdedb # initialize rs1
li x28, 0x8e533020 # initialize rs2
binv x28, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x25, 0x7e1335a8 # initialize rs1
li x29, 0x2f0256b7 # initialize rs2
binv x29, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x16, 0x6df421e5 # initialize rs1
li x30, 0x8399993b # initialize rs2
binv x30, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0xde27328e # initialize rs1
li x31, 0x70625dbe # initialize rs2
binv x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x6da7d941 # initialize rs1
li x0, 0xb380ade3 # initialize rs2
binv x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x2f3723a1 # initialize rs1
li x1, 0xa449dabd # initialize rs2
binv x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x13bf02e1 # initialize rs1
li x2, 0x77251a8e # initialize rs2
binv x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x48f6d524 # initialize rs1
li x3, 0xe32b12e1 # initialize rs2
binv x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf1df6cbd # initialize rs1
li x4, 0x4edde31a # initialize rs2
binv x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x14aa718a # initialize rs1
li x5, 0x30975453 # initialize rs2
binv x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4a772a14 # initialize rs1
li x6, 0xdc157a85 # initialize rs2
binv x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xda68d3cd # initialize rs1
li x7, 0x89f39cf8 # initialize rs2
binv x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xa1decc49 # initialize rs1
li x8, 0x11e764d0 # initialize rs2
binv x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x7294101e # initialize rs1
li x9, 0xf983fdf7 # initialize rs2
binv x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x572beab1 # initialize rs1
li x10, 0x9368dd74 # initialize rs2
binv x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x4755e1d1 # initialize rs1
li x11, 0x96ac79a8 # initialize rs2
binv x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xbfaea11f # initialize rs1
li x12, 0x5cbe4ca8 # initialize rs2
binv x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x85b2bae5 # initialize rs1
li x13, 0x80f386f2 # initialize rs2
binv x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x153cbd4d # initialize rs1
li x14, 0x554c6b1c # initialize rs2
binv x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x26e05a3c # initialize rs1
li x15, 0x3b018caf # initialize rs2
binv x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xa3759692 # initialize rs1
li x16, 0xce3ead9c # initialize rs2
binv x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x72b816f9 # initialize rs1
li x17, 0xaf597093 # initialize rs2
binv x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x84b6e215 # initialize rs1
li x18, 0x67449190 # initialize rs2
binv x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xd33ca1c5 # initialize rs1
li x19, 0xb204ff71 # initialize rs2
binv x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x62f693a6 # initialize rs1
li x20, 0x2ceaa3f2 # initialize rs2
binv x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xff18fc10 # initialize rs1
li x21, 0x2ad36eca # initialize rs2
binv x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x3138aa6f # initialize rs1
li x22, 0x9d06e30f # initialize rs2
binv x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x60fa2eb5 # initialize rs1
li x23, 0x17e90ee8 # initialize rs2
binv x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xaf37e92c # initialize rs1
li x24, 0xa2281ed8 # initialize rs2
binv x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x539c3b33 # initialize rs1
li x25, 0x6baf2476 # initialize rs2
binv x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x0b45abba # initialize rs1
li x26, 0x6daa0f0f # initialize rs2
binv x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xb1825aac # initialize rs1
li x27, 0x2673d6b4 # initialize rs2
binv x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x518a7cd2 # initialize rs1
li x28, 0x6bddac4c # initialize rs2
binv x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x102ec268 # initialize rs1
li x29, 0x4861d656 # initialize rs2
binv x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xf8ec4013 # initialize rs1
li x30, 0x8c8ea611 # initialize rs2
binv x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x26d2bde0 # initialize rs1
li x31, 0x03b33c7b # initialize rs2
binv x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x2, x22 # perform first operation
binv x6, x12, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x17, x29 # perform first operation
binv x3, x16, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x26, x9 # perform first operation
binv x29, x28, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x21, x12 # perform first operation
binv x12, x1, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x16, x14 # perform first operation
binv x16, x12, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x11, x20 # perform first operation
binv x11, x8, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x29, x21 # perform first operation
binv x28, x2, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x7, x1 # perform first operation
binv x21, x6, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x18, x14 # perform first operation
binv x27, x22, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x9, x2 # perform first operation
binv x9, x19, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x14, x26 # perform first operation
binv x26, x16, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x27, x17 # perform first operation
binv x21, x10, x24 # perform second (triggering) operation

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
