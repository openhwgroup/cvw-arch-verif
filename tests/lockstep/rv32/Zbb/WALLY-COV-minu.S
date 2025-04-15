///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbb/WALLY-COV-minu.S
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
li x0, 0x7cf3649e # initialize rs1
li x7, 0xdcf433ce # initialize rs2
minu x8, x0, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xd7024beb # initialize rs1
li x13, 0x71e31a4d # initialize rs2
minu x31, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x05a0a06d # initialize rs1
li x27, 0x0ad2a036 # initialize rs2
minu x15, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x72bf8406 # initialize rs1
li x15, 0x6bcfeec4 # initialize rs2
minu x30, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe5648dd7 # initialize rs1
li x1, 0x693faa43 # initialize rs2
minu x24, x4, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x319dd211 # initialize rs1
li x6, 0xa824f878 # initialize rs2
minu x18, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0x8423ac76 # initialize rs1
li x8, 0xadb9b1ae # initialize rs2
minu x2, x6, x8 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb07f1c0e # initialize rs1
li x1, 0xd63f95a3 # initialize rs2
minu x30, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x3f61ea56 # initialize rs1
li x7, 0x02343cad # initialize rs2
minu x1, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xde811a3d # initialize rs1
li x22, 0x4fd40b6a # initialize rs2
minu x11, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xa53846f8 # initialize rs1
li x16, 0x9f254443 # initialize rs2
minu x21, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xf2418c82 # initialize rs1
li x17, 0xaf7256ef # initialize rs2
minu x27, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x0d9a90a5 # initialize rs1
li x8, 0xe894a70b # initialize rs2
minu x3, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x4bf07a04 # initialize rs1
li x14, 0x2bcbff33 # initialize rs2
minu x1, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x794efe3b # initialize rs1
li x3, 0xe5c9e9e7 # initialize rs2
minu x16, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xe7b7a131 # initialize rs1
li x7, 0xf95c1bcc # initialize rs2
minu x29, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x567cdc8c # initialize rs1
li x2, 0x90aacbc9 # initialize rs2
minu x7, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x3453e8a3 # initialize rs1
li x6, 0x4ec0ec39 # initialize rs2
minu x15, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xfa79eafe # initialize rs1
li x12, 0xad418cb7 # initialize rs2
minu x20, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x7c58e3e4 # initialize rs1
li x1, 0x5ffb367a # initialize rs2
minu x13, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xc51fcb65 # initialize rs1
li x19, 0x9c5eebc4 # initialize rs2
minu x31, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x6e586339 # initialize rs1
li x16, 0x25f17cdb # initialize rs2
minu x15, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x0178249f # initialize rs1
li x13, 0x05e1f9a6 # initialize rs2
minu x28, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xda3af429 # initialize rs1
li x6, 0x98d27439 # initialize rs2
minu x12, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x0bb969db # initialize rs1
li x13, 0x3e9d096b # initialize rs2
minu x21, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x56f0413a # initialize rs1
li x24, 0xf90400ad # initialize rs2
minu x31, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x194330bc # initialize rs1
li x21, 0xe2c742e7 # initialize rs2
minu x1, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x62d5b7ae # initialize rs1
li x3, 0x841ba987 # initialize rs2
minu x30, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xe74a0988 # initialize rs1
li x5, 0xec31c7ee # initialize rs2
minu x20, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xd3a7634d # initialize rs1
li x3, 0x48ed5b2d # initialize rs2
minu x12, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x6734bf1f # initialize rs1
li x15, 0xe486d51d # initialize rs2
minu x1, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x7568d040 # initialize rs1
li x20, 0xfeb1d42b # initialize rs2
minu x8, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x17, 0x50f3ef05 # initialize rs1
li x0, 0x8ea6fa88 # initialize rs2
minu x7, x17, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x12, 0x2c435bc4 # initialize rs1
li x1, 0xc5f29817 # initialize rs2
minu x26, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x8, 0x02a5edcc # initialize rs1
li x2, 0xe5769239 # initialize rs2
minu x22, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x26, 0x7940e17a # initialize rs1
li x3, 0x4832f3b5 # initialize rs2
minu x1, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x172a91e9 # initialize rs1
li x4, 0xf8bf30dc # initialize rs2
minu x13, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0x62db29ac # initialize rs1
li x5, 0x1fd50fd4 # initialize rs2
minu x28, x10, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0xd326d116 # initialize rs1
li x6, 0xa49ea273 # initialize rs2
minu x13, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x31, 0x3ce0311a # initialize rs1
li x7, 0xbc69c83f # initialize rs2
minu x1, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x18, 0xf058fa39 # initialize rs1
li x8, 0x68e714d2 # initialize rs2
minu x29, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0xaee6ca5c # initialize rs1
li x9, 0xccca7fd9 # initialize rs2
minu x24, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0x5a71f139 # initialize rs1
li x10, 0x51d018dd # initialize rs2
minu x19, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x30, 0x1753a1e2 # initialize rs1
li x11, 0x9221268a # initialize rs2
minu x19, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x15, 0x46cad833 # initialize rs1
li x12, 0x715c3e27 # initialize rs2
minu x6, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x31, 0x55b79f54 # initialize rs1
li x13, 0xf9ac0682 # initialize rs2
minu x21, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x24, 0xc6547399 # initialize rs1
li x14, 0x72d0ccab # initialize rs2
minu x19, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x20, 0x5d9f3db3 # initialize rs1
li x15, 0xad27ee14 # initialize rs2
minu x30, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x30, 0xffe6fd10 # initialize rs1
li x16, 0xd3a16618 # initialize rs2
minu x10, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x26, 0xa1f1c0dc # initialize rs1
li x17, 0xb33160b5 # initialize rs2
minu x19, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x29, 0x458ed2a0 # initialize rs1
li x18, 0xc3e69433 # initialize rs2
minu x1, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x8, 0x8718463d # initialize rs1
li x19, 0x5de05b89 # initialize rs2
minu x3, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x17, 0xbbe46604 # initialize rs1
li x20, 0x88403ebf # initialize rs2
minu x23, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x7, 0x44ce6fad # initialize rs1
li x21, 0x1e06427c # initialize rs2
minu x9, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x14, 0x00144675 # initialize rs1
li x22, 0xe796cf04 # initialize rs2
minu x13, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x3, 0xf88512a7 # initialize rs1
li x23, 0xd25d5fa7 # initialize rs2
minu x25, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x14, 0xbb26fe70 # initialize rs1
li x24, 0x2367c231 # initialize rs2
minu x12, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x16, 0xdc0313c9 # initialize rs1
li x25, 0x7696cb22 # initialize rs2
minu x8, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x27, 0x18ad1147 # initialize rs1
li x26, 0xfe862c9d # initialize rs2
minu x29, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x6, 0x0ad514d6 # initialize rs1
li x27, 0x65451b03 # initialize rs2
minu x11, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x10, 0xf3bd3886 # initialize rs1
li x28, 0x70a02dc5 # initialize rs2
minu x7, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x9, 0xa44d3a45 # initialize rs1
li x29, 0x328580aa # initialize rs2
minu x28, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x25, 0x2e5104f4 # initialize rs1
li x30, 0xaecf9a91 # initialize rs2
minu x29, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x17, 0x73f43f74 # initialize rs1
li x31, 0x75d774ea # initialize rs2
minu x26, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 252)

# Testcase cp_rd (Test destination rd = x0)
li x31, 0x6a40ba6f # initialize rs1
li x28, 0xfa6c5ab8 # initialize rs2
minu x0, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x2, 0x76437e70 # initialize rs1
li x11, 0xc4408dbf # initialize rs2
minu x1, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x10, 0x0a6c0b4d # initialize rs1
li x3, 0x5c030657 # initialize rs2
minu x2, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x17, 0xf89773c9 # initialize rs1
li x22, 0x4a927bea # initialize rs2
minu x3, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0x58c05d17 # initialize rs1
li x30, 0x41f29c22 # initialize rs2
minu x4, x3, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0x1769cf51 # initialize rs1
li x15, 0xf0b2d53c # initialize rs2
minu x5, x9, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0x3fbcf502 # initialize rs1
li x18, 0x5d681101 # initialize rs2
minu x6, x5, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x9744b019 # initialize rs1
li x6, 0x7cb9c9ad # initialize rs2
minu x7, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x16, 0xe4c00fd3 # initialize rs1
li x2, 0x633a0b0b # initialize rs2
minu x8, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x13, 0xd8c978aa # initialize rs1
li x8, 0x47c96cce # initialize rs2
minu x9, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x13, 0x7e1d2bce # initialize rs1
li x18, 0x746a66c8 # initialize rs2
minu x10, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x1, 0xf4407de3 # initialize rs1
li x12, 0xeea3b2b9 # initialize rs2
minu x11, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x6, 0x38842077 # initialize rs1
li x2, 0x904fa278 # initialize rs2
minu x12, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x15, 0x11eb457a # initialize rs1
li x28, 0x05c974b1 # initialize rs2
minu x13, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x11, 0xf1da27de # initialize rs1
li x27, 0x1c738310 # initialize rs2
minu x14, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x3, 0x6ae4f00d # initialize rs1
li x30, 0x5940f991 # initialize rs2
minu x15, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x24, 0xc8ceea88 # initialize rs1
li x13, 0xac5d88de # initialize rs2
minu x16, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x21, 0x931f5dc4 # initialize rs1
li x8, 0x1b8af9ac # initialize rs2
minu x17, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x26, 0x33d42e3f # initialize rs1
li x1, 0x9758fbee # initialize rs2
minu x18, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x14, 0x48c6a34b # initialize rs1
li x23, 0x509c8517 # initialize rs2
minu x19, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x66af54a6 # initialize rs1
li x21, 0xbd2f2286 # initialize rs2
minu x20, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x24, 0xfc97ca9f # initialize rs1
li x13, 0x5e848caf # initialize rs2
minu x21, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x5, 0x4e9588af # initialize rs1
li x28, 0x26044240 # initialize rs2
minu x22, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x12, 0xf8950697 # initialize rs1
li x17, 0xa541ad68 # initialize rs2
minu x23, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x11, 0x5c129d9c # initialize rs1
li x8, 0xaccb3a76 # initialize rs2
minu x24, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0x7b4d3bb1 # initialize rs1
li x18, 0x71f9ff76 # initialize rs2
minu x25, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x14, 0x493e4abd # initialize rs1
li x27, 0x69aeec00 # initialize rs2
minu x26, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x17, 0x770dcfc1 # initialize rs1
li x14, 0x7af38f16 # initialize rs2
minu x27, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x15, 0x0091d44b # initialize rs1
li x20, 0xf0cada86 # initialize rs2
minu x28, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x23, 0xbd2e9577 # initialize rs1
li x22, 0x6f89ecd4 # initialize rs2
minu x29, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x19, 0x133c3c43 # initialize rs1
li x25, 0xca6cf7ac # initialize rs2
minu x30, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x1, 0x9d5df05e # initialize rs1
li x30, 0xb536c30e # initialize rs2
minu x31, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x23, 0x00000000 # initialize rs1
li x7, 0x5309c12d # initialize rs2
minu x14, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x00000001 # initialize rs1
li x9, 0x6f2bd650 # initialize rs2
minu x8, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x00000002 # initialize rs1
li x29, 0xdc587ffe # initialize rs2
minu x16, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x1, 0x80000000 # initialize rs1
li x27, 0xf1988d3a # initialize rs2
minu x18, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x13, 0x80000001 # initialize rs1
li x20, 0x12d9c6c0 # initialize rs2
minu x21, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x10, 0x7fffffff # initialize rs1
li x26, 0x027d57d6 # initialize rs2
minu x31, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x19, 0x7ffffffe # initialize rs1
li x9, 0x6e332f2f # initialize rs2
minu x1, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x23, 0xffffffff # initialize rs1
li x1, 0x66b10556 # initialize rs2
minu x29, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0xfffffffe # initialize rs1
li x12, 0xcfd277f8 # initialize rs2
minu x23, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x18, 0x5bbc8872 # initialize rs1
li x21, 0xd46e0509 # initialize rs2
minu x24, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x31, 0xaaaaaaaa # initialize rs1
li x9, 0x1ec9c48b # initialize rs2
minu x7, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x3, 0x55555555 # initialize rs1
li x6, 0x8cba14ed # initialize rs2
minu x17, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0xf6dcf436 # initialize rs1
li x25, 0x00000000 # initialize rs2
minu x27, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0x6c36d030 # initialize rs1
li x30, 0x00000001 # initialize rs2
minu x29, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x17, 0x5d03e16e # initialize rs1
li x2, 0x00000002 # initialize rs2
minu x29, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x18, 0x5f09c376 # initialize rs1
li x19, 0x80000000 # initialize rs2
minu x29, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x5, 0xd08056d4 # initialize rs1
li x20, 0x80000001 # initialize rs2
minu x26, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x17, 0x3368957a # initialize rs1
li x9, 0x7fffffff # initialize rs2
minu x16, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x5, 0x547c78ea # initialize rs1
li x20, 0x7ffffffe # initialize rs2
minu x17, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x22, 0xac12fa3c # initialize rs1
li x11, 0xffffffff # initialize rs2
minu x14, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x21, 0xe79347b1 # initialize rs1
li x20, 0xfffffffe # initialize rs2
minu x13, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x19, 0xd2246ad5 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
minu x25, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x16, 0x12b13cc6 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
minu x25, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x30, 0x983a6d85 # initialize rs1
li x19, 0x55555555 # initialize rs2
minu x9, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x11, 0x00000000 # initialize rs1
li x12, 0x00000000 # initialize rs2
minu x30, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x26, 0x00000000 # initialize rs1
li x30, 0x00000001 # initialize rs2
minu x3, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x18, 0x00000000 # initialize rs1
li x19, 0x00000002 # initialize rs2
minu x21, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x1, 0x00000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
minu x26, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x16, 0x00000000 # initialize rs1
li x22, 0x80000001 # initialize rs2
minu x8, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x22, 0x00000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
minu x8, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x8, 0x00000000 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
minu x30, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x11, 0x00000000 # initialize rs1
li x14, 0xffffffff # initialize rs2
minu x29, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x22, 0x00000000 # initialize rs1
li x16, 0xfffffffe # initialize rs2
minu x10, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x6, 0x00000000 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
minu x10, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x26, 0x00000000 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
minu x14, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x18, 0x00000000 # initialize rs1
li x20, 0x55555555 # initialize rs2
minu x26, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x17, 0x00000001 # initialize rs1
li x21, 0x00000000 # initialize rs2
minu x19, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x27, 0x00000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
minu x23, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x26, 0x00000001 # initialize rs1
li x24, 0x00000002 # initialize rs2
minu x31, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x11, 0x00000001 # initialize rs1
li x31, 0x80000000 # initialize rs2
minu x16, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x28, 0x00000001 # initialize rs1
li x26, 0x80000001 # initialize rs2
minu x5, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x2, 0x00000001 # initialize rs1
li x26, 0x7fffffff # initialize rs2
minu x31, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x31, 0x00000001 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
minu x22, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x23, 0x00000001 # initialize rs1
li x30, 0xffffffff # initialize rs2
minu x21, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x1, 0x00000001 # initialize rs1
li x9, 0xfffffffe # initialize rs2
minu x14, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x19, 0x00000001 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
minu x8, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x16, 0x00000001 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
minu x8, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x9, 0x00000001 # initialize rs1
li x14, 0x55555555 # initialize rs2
minu x21, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x31, 0x00000002 # initialize rs1
li x24, 0x00000000 # initialize rs2
minu x30, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x29, 0x00000002 # initialize rs1
li x9, 0x00000001 # initialize rs2
minu x19, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x13, 0x00000002 # initialize rs1
li x10, 0x00000002 # initialize rs2
minu x7, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x12, 0x00000002 # initialize rs1
li x9, 0x80000000 # initialize rs2
minu x8, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x29, 0x00000002 # initialize rs1
li x26, 0x80000001 # initialize rs2
minu x14, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x22, 0x00000002 # initialize rs1
li x9, 0x7fffffff # initialize rs2
minu x12, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x20, 0x00000002 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
minu x14, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x19, 0x00000002 # initialize rs1
li x22, 0xffffffff # initialize rs2
minu x9, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x11, 0x00000002 # initialize rs1
li x1, 0xfffffffe # initialize rs2
minu x30, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x27, 0x00000002 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
minu x1, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x7, 0x00000002 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
minu x20, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x9, 0x00000002 # initialize rs1
li x31, 0x55555555 # initialize rs2
minu x2, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x26, 0x80000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
minu x14, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x8, 0x80000000 # initialize rs1
li x17, 0x00000001 # initialize rs2
minu x27, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x25, 0x80000000 # initialize rs1
li x23, 0x00000002 # initialize rs2
minu x18, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x24, 0x80000000 # initialize rs1
li x27, 0x80000000 # initialize rs2
minu x6, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x22, 0x80000000 # initialize rs1
li x26, 0x80000001 # initialize rs2
minu x10, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x28, 0x80000000 # initialize rs1
li x7, 0x7fffffff # initialize rs2
minu x22, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x18, 0x80000000 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
minu x7, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x13, 0x80000000 # initialize rs1
li x18, 0xffffffff # initialize rs2
minu x14, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x17, 0x80000000 # initialize rs1
li x8, 0xfffffffe # initialize rs2
minu x20, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x31, 0x80000000 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
minu x20, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x22, 0x80000000 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
minu x13, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x11, 0x80000000 # initialize rs1
li x17, 0x55555555 # initialize rs2
minu x27, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x14, 0x80000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
minu x2, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x13, 0x80000001 # initialize rs1
li x23, 0x00000001 # initialize rs2
minu x11, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x7, 0x80000001 # initialize rs1
li x8, 0x00000002 # initialize rs2
minu x31, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x1, 0x80000001 # initialize rs1
li x14, 0x80000000 # initialize rs2
minu x23, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x6, 0x80000001 # initialize rs1
li x5, 0x80000001 # initialize rs2
minu x25, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x12, 0x80000001 # initialize rs1
li x29, 0x7fffffff # initialize rs2
minu x9, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x14, 0x80000001 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
minu x9, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x28, 0x80000001 # initialize rs1
li x1, 0xffffffff # initialize rs2
minu x13, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x15, 0x80000001 # initialize rs1
li x23, 0xfffffffe # initialize rs2
minu x3, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x22, 0x80000001 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
minu x26, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x20, 0x80000001 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
minu x6, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x5, 0x80000001 # initialize rs1
li x26, 0x55555555 # initialize rs2
minu x31, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x18, 0x7fffffff # initialize rs1
li x29, 0x00000000 # initialize rs2
minu x8, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x10, 0x7fffffff # initialize rs1
li x9, 0x00000001 # initialize rs2
minu x28, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x21, 0x7fffffff # initialize rs1
li x16, 0x00000002 # initialize rs2
minu x3, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x23, 0x7fffffff # initialize rs1
li x18, 0x80000000 # initialize rs2
minu x13, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x14, 0x7fffffff # initialize rs1
li x24, 0x80000001 # initialize rs2
minu x23, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x29, 0x7fffffff # initialize rs1
li x6, 0x7fffffff # initialize rs2
minu x5, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x23, 0x7fffffff # initialize rs1
li x21, 0x7ffffffe # initialize rs2
minu x9, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x7, 0x7fffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
minu x22, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x9, 0x7fffffff # initialize rs1
li x14, 0xfffffffe # initialize rs2
minu x30, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x23, 0x7fffffff # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
minu x14, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x22, 0x7fffffff # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
minu x21, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x9, 0x7fffffff # initialize rs1
li x22, 0x55555555 # initialize rs2
minu x3, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x19, 0x7ffffffe # initialize rs1
li x8, 0x00000000 # initialize rs2
minu x1, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x31, 0x7ffffffe # initialize rs1
li x23, 0x00000001 # initialize rs2
minu x27, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x16, 0x7ffffffe # initialize rs1
li x8, 0x00000002 # initialize rs2
minu x18, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x17, 0x7ffffffe # initialize rs1
li x3, 0x80000000 # initialize rs2
minu x19, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x22, 0x7ffffffe # initialize rs1
li x5, 0x80000001 # initialize rs2
minu x14, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x29, 0x7ffffffe # initialize rs1
li x18, 0x7fffffff # initialize rs2
minu x13, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x23, 0x7ffffffe # initialize rs1
li x21, 0x7ffffffe # initialize rs2
minu x9, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x25, 0x7ffffffe # initialize rs1
li x11, 0xffffffff # initialize rs2
minu x31, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x18, 0x7ffffffe # initialize rs1
li x6, 0xfffffffe # initialize rs2
minu x9, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x14, 0x7ffffffe # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
minu x29, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x19, 0x7ffffffe # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
minu x30, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x16, 0x7ffffffe # initialize rs1
li x28, 0x55555555 # initialize rs2
minu x6, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x24, 0xffffffff # initialize rs1
li x9, 0x00000000 # initialize rs2
minu x21, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x6, 0xffffffff # initialize rs1
li x19, 0x00000001 # initialize rs2
minu x10, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x28, 0xffffffff # initialize rs1
li x30, 0x00000002 # initialize rs2
minu x1, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x10, 0xffffffff # initialize rs1
li x29, 0x80000000 # initialize rs2
minu x16, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x19, 0xffffffff # initialize rs1
li x15, 0x80000001 # initialize rs2
minu x29, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x28, 0xffffffff # initialize rs1
li x18, 0x7fffffff # initialize rs2
minu x21, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x22, 0xffffffff # initialize rs1
li x2, 0x7ffffffe # initialize rs2
minu x21, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x22, 0xffffffff # initialize rs1
li x25, 0xffffffff # initialize rs2
minu x26, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x17, 0xffffffff # initialize rs1
li x9, 0xfffffffe # initialize rs2
minu x14, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x7, 0xffffffff # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
minu x3, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x26, 0xffffffff # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
minu x9, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x15, 0xffffffff # initialize rs1
li x9, 0x55555555 # initialize rs2
minu x13, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x22, 0xfffffffe # initialize rs1
li x16, 0x00000000 # initialize rs2
minu x10, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x5, 0xfffffffe # initialize rs1
li x2, 0x00000001 # initialize rs2
minu x26, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x8, 0xfffffffe # initialize rs1
li x26, 0x00000002 # initialize rs2
minu x31, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x27, 0xfffffffe # initialize rs1
li x8, 0x80000000 # initialize rs2
minu x15, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x5, 0xfffffffe # initialize rs1
li x3, 0x80000001 # initialize rs2
minu x19, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x31, 0xfffffffe # initialize rs1
li x16, 0x7fffffff # initialize rs2
minu x6, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x22, 0xfffffffe # initialize rs1
li x2, 0x7ffffffe # initialize rs2
minu x23, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x2, 0xfffffffe # initialize rs1
li x1, 0xffffffff # initialize rs2
minu x5, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x12, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
minu x13, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x12, 0xfffffffe # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
minu x24, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x26, 0xfffffffe # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
minu x12, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x12, 0xfffffffe # initialize rs1
li x22, 0x55555555 # initialize rs2
minu x29, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x2, 0x5bbc8872 # initialize rs1
li x8, 0x00000000 # initialize rs2
minu x20, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x27, 0x5bbc8872 # initialize rs1
li x7, 0x00000001 # initialize rs2
minu x6, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x17, 0x5bbc8872 # initialize rs1
li x29, 0x00000002 # initialize rs2
minu x7, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x24, 0x5bbc8872 # initialize rs1
li x26, 0x80000000 # initialize rs2
minu x7, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x26, 0x5bbc8872 # initialize rs1
li x19, 0x80000001 # initialize rs2
minu x8, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x20, 0x5bbc8872 # initialize rs1
li x14, 0x7fffffff # initialize rs2
minu x12, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x15, 0x5bbc8872 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
minu x8, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x29, 0x5bbc8872 # initialize rs1
li x12, 0xffffffff # initialize rs2
minu x31, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x24, 0x5bbc8872 # initialize rs1
li x17, 0xfffffffe # initialize rs2
minu x5, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x8, 0x5bbc8872 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
minu x23, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x8, 0x5bbc8872 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
minu x26, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x26, 0x5bbc8872 # initialize rs1
li x5, 0x55555555 # initialize rs2
minu x16, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x3, 0xaaaaaaaa # initialize rs1
li x25, 0x00000000 # initialize rs2
minu x15, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x28, 0xaaaaaaaa # initialize rs1
li x25, 0x00000001 # initialize rs2
minu x23, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x10, 0xaaaaaaaa # initialize rs1
li x12, 0x00000002 # initialize rs2
minu x19, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x20, 0xaaaaaaaa # initialize rs1
li x7, 0x80000000 # initialize rs2
minu x13, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x12, 0xaaaaaaaa # initialize rs1
li x17, 0x80000001 # initialize rs2
minu x24, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x16, 0xaaaaaaaa # initialize rs1
li x2, 0x7fffffff # initialize rs2
minu x15, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x15, 0xaaaaaaaa # initialize rs1
li x13, 0x7ffffffe # initialize rs2
minu x14, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x13, 0xaaaaaaaa # initialize rs1
li x20, 0xffffffff # initialize rs2
minu x10, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x25, 0xaaaaaaaa # initialize rs1
li x5, 0xfffffffe # initialize rs2
minu x23, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x22, 0xaaaaaaaa # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
minu x31, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
minu x15, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x7, 0xaaaaaaaa # initialize rs1
li x15, 0x55555555 # initialize rs2
minu x17, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x28, 0x55555555 # initialize rs1
li x21, 0x00000000 # initialize rs2
minu x22, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x1, 0x55555555 # initialize rs1
li x13, 0x00000001 # initialize rs2
minu x12, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x5, 0x55555555 # initialize rs1
li x1, 0x00000002 # initialize rs2
minu x20, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x17, 0x55555555 # initialize rs1
li x29, 0x80000000 # initialize rs2
minu x16, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x11, 0x55555555 # initialize rs1
li x5, 0x80000001 # initialize rs2
minu x10, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x10, 0x55555555 # initialize rs1
li x5, 0x7fffffff # initialize rs2
minu x2, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x8, 0x55555555 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
minu x9, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x17, 0x55555555 # initialize rs1
li x6, 0xffffffff # initialize rs2
minu x7, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x2, 0x55555555 # initialize rs1
li x17, 0xfffffffe # initialize rs2
minu x6, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x31, 0x55555555 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
minu x3, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x17, 0x55555555 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
minu x15, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x19, 0x55555555 # initialize rs1
li x8, 0x55555555 # initialize rs2
minu x9, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xb9a70e1a # initialize rs1
li x0, 0x16c51832 # initialize rs2
minu x30, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x5fa8a954 # initialize rs1
li x1, 0xdedea16b # initialize rs2
minu x3, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xde36f478 # initialize rs1
li x2, 0xdfac2e62 # initialize rs2
minu x14, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xd75ff009 # initialize rs1
li x3, 0x1c136be7 # initialize rs2
minu x10, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x84437f7e # initialize rs1
li x4, 0xa534f9c2 # initialize rs2
minu x24, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x681150e8 # initialize rs1
li x5, 0x1ffb7a16 # initialize rs2
minu x6, x5, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x6, 0x868a31ad # initialize rs1
li x6, 0xebf0c150 # initialize rs2
minu x5, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7eb77688 # initialize rs1
li x7, 0x607c4171 # initialize rs2
minu x8, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6f58e1b6 # initialize rs1
li x8, 0x3203ec56 # initialize rs2
minu x2, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x40cb1dfb # initialize rs1
li x9, 0xb50e4b57 # initialize rs2
minu x6, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xd7940905 # initialize rs1
li x10, 0xd5b41b09 # initialize rs2
minu x12, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x88a75441 # initialize rs1
li x11, 0x3f5cdd06 # initialize rs2
minu x17, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xb2c79799 # initialize rs1
li x12, 0xb4fc32b8 # initialize rs2
minu x26, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x8e260f49 # initialize rs1
li x13, 0x6be71d17 # initialize rs2
minu x27, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x2fe1b7cf # initialize rs1
li x14, 0x596321b5 # initialize rs2
minu x15, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xb91cb5cd # initialize rs1
li x15, 0x70e659d1 # initialize rs2
minu x6, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x6f41d91d # initialize rs1
li x16, 0xf38252f8 # initialize rs2
minu x11, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xb8703a88 # initialize rs1
li x17, 0x153e2a86 # initialize rs2
minu x8, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x05bcf817 # initialize rs1
li x18, 0x14049e0b # initialize rs2
minu x29, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x0c804f81 # initialize rs1
li x19, 0x8b9b576d # initialize rs2
minu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x3c4494f4 # initialize rs1
li x20, 0x4c852c28 # initialize rs2
minu x31, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x7fafa3ff # initialize rs1
li x21, 0x6d22088e # initialize rs2
minu x17, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x28b05b54 # initialize rs1
li x22, 0x65ee9adc # initialize rs2
minu x8, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x1eaf3914 # initialize rs1
li x23, 0xb6379ffa # initialize rs2
minu x11, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x606fc437 # initialize rs1
li x24, 0xcdcb0cef # initialize rs2
minu x10, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xad38188b # initialize rs1
li x25, 0x358e7121 # initialize rs2
minu x16, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xf6081cc6 # initialize rs1
li x26, 0xe4b325d3 # initialize rs2
minu x22, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x59d37c84 # initialize rs1
li x27, 0x6962cab5 # initialize rs2
minu x2, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xd7c06346 # initialize rs1
li x28, 0xe92cea85 # initialize rs2
minu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x3187179e # initialize rs1
li x29, 0x93e3c165 # initialize rs2
minu x20, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xbe018e67 # initialize rs1
li x30, 0xe9be653f # initialize rs2
minu x14, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x10e107d8 # initialize rs1
li x31, 0xe8449c3c # initialize rs2
minu x18, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xec2c573a # initialize rs1
li x19, 0x64365ca4 # initialize rs2
minu x0, x0, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x6ac4e0ec # initialize rs1
li x1, 0x9d2e6f47 # initialize rs2
minu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x05eb5633 # initialize rs1
li x5, 0xfbc42bb0 # initialize rs2
minu x2, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xe180de23 # initialize rs1
li x31, 0x877a094e # initialize rs2
minu x3, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x62f3003e # initialize rs1
li x6, 0x85d80f10 # initialize rs2
minu x4, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf19e3ac7 # initialize rs1
li x10, 0x4f062532 # initialize rs2
minu x5, x5, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x46fecf17 # initialize rs1
li x8, 0xd54689f1 # initialize rs2
minu x6, x6, x8 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc9db88fd # initialize rs1
li x13, 0x648bbd81 # initialize rs2
minu x7, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xc5525a41 # initialize rs1
li x19, 0x3e93eb49 # initialize rs2
minu x8, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa0465f55 # initialize rs1
li x1, 0xc72c0833 # initialize rs2
minu x9, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x21b7fcef # initialize rs1
li x26, 0x8ffb6596 # initialize rs2
minu x10, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xea2dc558 # initialize rs1
li x14, 0xf7e935c0 # initialize rs2
minu x11, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x81779117 # initialize rs1
li x25, 0xd0daa520 # initialize rs2
minu x12, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x4aafb7e3 # initialize rs1
li x14, 0x410d9752 # initialize rs2
minu x13, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x559d0c09 # initialize rs1
li x11, 0xdf162244 # initialize rs2
minu x14, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x94f93934 # initialize rs1
li x13, 0xa381f3d9 # initialize rs2
minu x15, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x95a77da3 # initialize rs1
li x14, 0xc0fe8362 # initialize rs2
minu x16, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc1dd014e # initialize rs1
li x17, 0xe30aa7bf # initialize rs2
minu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x00863ef4 # initialize rs1
li x11, 0xdcaa82da # initialize rs2
minu x18, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x0d8e8b78 # initialize rs1
li x5, 0x89f51477 # initialize rs2
minu x19, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf003339c # initialize rs1
li x19, 0xb5a248a5 # initialize rs2
minu x20, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x57d3438b # initialize rs1
li x22, 0x1b8a8e53 # initialize rs2
minu x21, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xe8af3504 # initialize rs1
li x23, 0x3420b697 # initialize rs2
minu x22, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x8b0b608c # initialize rs1
li x31, 0x63f5d5ec # initialize rs2
minu x23, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x0d6fdbc0 # initialize rs1
li x7, 0xc3e43aab # initialize rs2
minu x24, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xc79c5165 # initialize rs1
li x24, 0x67b0b6b8 # initialize rs2
minu x25, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x2f64c8a3 # initialize rs1
li x6, 0x46ac7ef8 # initialize rs2
minu x26, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xcbe23961 # initialize rs1
li x23, 0xf2b232db # initialize rs2
minu x27, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x29b96726 # initialize rs1
li x19, 0xb0718787 # initialize rs2
minu x28, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xa231617b # initialize rs1
li x13, 0x94877693 # initialize rs2
minu x29, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x396fcf37 # initialize rs1
li x11, 0x5036ea2e # initialize rs2
minu x30, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x122a2dac # initialize rs1
li x2, 0x7df8a4a1 # initialize rs2
minu x31, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x11, 0xe01fdc66 # initialize rs1
li x0, 0x745ba74d # initialize rs2
minu x0, x11, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x20, 0x8881038a # initialize rs1
li x1, 0x3846c1d0 # initialize rs2
minu x1, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x19, 0x079608f7 # initialize rs1
li x2, 0x16819e76 # initialize rs2
minu x2, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x27, 0x2cc56735 # initialize rs1
li x3, 0xd54965c6 # initialize rs2
minu x3, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x98ecae1c # initialize rs1
li x4, 0xd27118c1 # initialize rs2
minu x4, x11, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0xf3dec8a7 # initialize rs1
li x5, 0xbc7f88eb # initialize rs2
minu x5, x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0x21ace93a # initialize rs1
li x6, 0xe9862c27 # initialize rs2
minu x6, x8, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0x9bcc6caa # initialize rs1
li x7, 0x4f50303e # initialize rs2
minu x7, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x28, 0xf00cf09c # initialize rs1
li x8, 0xa6b70dfa # initialize rs2
minu x8, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x14, 0xee679ed9 # initialize rs1
li x9, 0x54500a7a # initialize rs2
minu x9, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x30, 0x67a8915d # initialize rs1
li x10, 0xd4d8e2f5 # initialize rs2
minu x10, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x21, 0xef408246 # initialize rs1
li x11, 0xd5519fcc # initialize rs2
minu x11, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x27, 0x5cc0329f # initialize rs1
li x12, 0x85e54a9c # initialize rs2
minu x12, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x7, 0x400e719e # initialize rs1
li x13, 0x5b633fe5 # initialize rs2
minu x13, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x25, 0x98054c69 # initialize rs1
li x14, 0x80145dec # initialize rs2
minu x14, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x8, 0x78f73015 # initialize rs1
li x15, 0x647b6577 # initialize rs2
minu x15, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x21, 0x34805690 # initialize rs1
li x16, 0xa6b4b0a6 # initialize rs2
minu x16, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x24, 0x67b8caaf # initialize rs1
li x17, 0x32ad85af # initialize rs2
minu x17, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x2, 0x1cfe7c0f # initialize rs1
li x18, 0x9a407500 # initialize rs2
minu x18, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x15, 0xd0b88b80 # initialize rs1
li x19, 0x56ba5ec1 # initialize rs2
minu x19, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x3, 0x774a09c3 # initialize rs1
li x20, 0xccad3200 # initialize rs2
minu x20, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x1, 0x4bfaf11a # initialize rs1
li x21, 0xa7ba7b09 # initialize rs2
minu x21, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x16, 0xc7c40c43 # initialize rs1
li x22, 0x8c2feed3 # initialize rs2
minu x22, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x6, 0xd7867a48 # initialize rs1
li x23, 0x8fa0b348 # initialize rs2
minu x23, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x19, 0xdc4324f8 # initialize rs1
li x24, 0x15622c17 # initialize rs2
minu x24, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x31, 0x48dffde3 # initialize rs1
li x25, 0x89160dbd # initialize rs2
minu x25, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x7, 0x542cb1d5 # initialize rs1
li x26, 0x4e9de7af # initialize rs2
minu x26, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x30, 0xf2c26fb6 # initialize rs1
li x27, 0xc9d5543e # initialize rs2
minu x27, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x9, 0x286892e4 # initialize rs1
li x28, 0x4f65ab64 # initialize rs2
minu x28, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x3, 0xf33ac45c # initialize rs1
li x29, 0x4a5a10bf # initialize rs2
minu x29, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x15, 0x27cc4aac # initialize rs1
li x30, 0x04d477a7 # initialize rs2
minu x30, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x7, 0xe37c41e7 # initialize rs1
li x31, 0xb9c257cf # initialize rs2
minu x31, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x8f56f590 # initialize rs1
li x0, 0xd44a5b71 # initialize rs2
minu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x523fb99c # initialize rs1
li x1, 0xed5695d8 # initialize rs2
minu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x041a30a1 # initialize rs1
li x2, 0x95e01781 # initialize rs2
minu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xc1339b76 # initialize rs1
li x3, 0x11e786e0 # initialize rs2
minu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x13b65bea # initialize rs1
li x4, 0x9847d49d # initialize rs2
minu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfce78a6f # initialize rs1
li x5, 0xd53e0d59 # initialize rs2
minu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9c8ae956 # initialize rs1
li x6, 0x4d642a2f # initialize rs2
minu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x265ed38a # initialize rs1
li x7, 0x9be798fa # initialize rs2
minu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xac2cf1ac # initialize rs1
li x8, 0xcbd6d6b4 # initialize rs2
minu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x8049cc24 # initialize rs1
li x9, 0xcc83b19a # initialize rs2
minu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x4f7b9739 # initialize rs1
li x10, 0x978fa241 # initialize rs2
minu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x340b2c3c # initialize rs1
li x11, 0x661b75b9 # initialize rs2
minu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x52a531ec # initialize rs1
li x12, 0xfefb50c3 # initialize rs2
minu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x3250bd61 # initialize rs1
li x13, 0xa2bba15f # initialize rs2
minu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xabd51dcd # initialize rs1
li x14, 0xa67e4373 # initialize rs2
minu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xc2867faf # initialize rs1
li x15, 0xeb3c5127 # initialize rs2
minu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x142427e6 # initialize rs1
li x16, 0xbacb15b0 # initialize rs2
minu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x8247437f # initialize rs1
li x17, 0x99fd2fef # initialize rs2
minu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xbf269aff # initialize rs1
li x18, 0xf84c414e # initialize rs2
minu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xc555ebe2 # initialize rs1
li x19, 0x439b4279 # initialize rs2
minu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xcdff5de7 # initialize rs1
li x20, 0xe1a0a396 # initialize rs2
minu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x120ed722 # initialize rs1
li x21, 0x009877b1 # initialize rs2
minu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x9b365779 # initialize rs1
li x22, 0x4fd9ed7e # initialize rs2
minu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xac0ac176 # initialize rs1
li x23, 0x3ed9a044 # initialize rs2
minu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x3d4b92f5 # initialize rs1
li x24, 0x4510a95c # initialize rs2
minu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x60d27cb7 # initialize rs1
li x25, 0xb6060373 # initialize rs2
minu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x277edaa8 # initialize rs1
li x26, 0xc7d88cad # initialize rs2
minu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x03851472 # initialize rs1
li x27, 0x52119209 # initialize rs2
minu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x4a765d56 # initialize rs1
li x28, 0x76466a1f # initialize rs2
minu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xf0070623 # initialize rs1
li x29, 0x9aeb0b12 # initialize rs2
minu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xe8a075d8 # initialize rs1
li x30, 0x85d9d94a # initialize rs2
minu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x2aa650bb # initialize rs1
li x31, 0xc75df0e8 # initialize rs2
minu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x26, x21 # perform first operation
minu x13, x2, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x19, x10 # perform first operation
minu x15, x29, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x17, x8 # perform first operation
minu x11, x13, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x24, x19 # perform first operation
minu x29, x21, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x17, x13 # perform first operation
minu x5, x8, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x2, x29 # perform first operation
minu x11, x28, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x27, x23 # perform first operation
minu x17, x24, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x30, x22 # perform first operation
minu x27, x20, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x31, x23 # perform first operation
minu x9, x29, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x3, x25 # perform first operation
minu x3, x28, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x14, x12 # perform first operation
minu x12, x1, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x21, x19 # perform first operation
minu x7, x27, x13 # perform second (triggering) operation

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
