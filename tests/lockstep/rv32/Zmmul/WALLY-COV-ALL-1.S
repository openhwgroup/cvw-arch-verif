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
// Tests from: WALLY-COV-mulhsu.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x6befd711 # initialize rs1
li x27, 0x0ffe5583 # initialize rs2
mulhsu x6, x0, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x688f9d2f # initialize rs1
li x25, 0x7e31cdb4 # initialize rs2
mulhsu x18, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x54459ca6 # initialize rs1
li x12, 0xb408a095 # initialize rs2
mulhsu x1, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x6020d6ba # initialize rs1
li x20, 0x5ce89b34 # initialize rs2
mulhsu x10, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xcb654204 # initialize rs1
li x25, 0x6e9c4ef9 # initialize rs2
mulhsu x12, x4, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa2459735 # initialize rs1
li x9, 0xc79df0ef # initialize rs2
mulhsu x4, x5, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4ac45246 # initialize rs1
li x17, 0xca01c60c # initialize rs2
mulhsu x30, x6, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf0e43b34 # initialize rs1
li x6, 0xfa166597 # initialize rs2
mulhsu x21, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xc6526dc1 # initialize rs1
li x5, 0x4923c786 # initialize rs2
mulhsu x21, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x76f41190 # initialize rs1
li x25, 0xe474725e # initialize rs2
mulhsu x31, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x7cc1a2a5 # initialize rs1
li x21, 0x06688305 # initialize rs2
mulhsu x5, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x044db20b # initialize rs1
li x29, 0xa23a9500 # initialize rs2
mulhsu x31, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xedc2c8c9 # initialize rs1
li x1, 0x5e4acebc # initialize rs2
mulhsu x20, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa76119b8 # initialize rs1
li x2, 0xb36f234f # initialize rs2
mulhsu x18, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x432cc367 # initialize rs1
li x26, 0x133ead40 # initialize rs2
mulhsu x29, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x76d6c08e # initialize rs1
li x11, 0xe15e1a8f # initialize rs2
mulhsu x22, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x4926a048 # initialize rs1
li x26, 0x5a334470 # initialize rs2
mulhsu x14, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xb8bb8b93 # initialize rs1
li x24, 0x53fe8e79 # initialize rs2
mulhsu x9, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x86a73424 # initialize rs1
li x6, 0x354137f7 # initialize rs2
mulhsu x3, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x7e4f2f3f # initialize rs1
li x14, 0xfe2f904f # initialize rs2
mulhsu x6, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x3aac61eb # initialize rs1
li x28, 0x7987ee5e # initialize rs2
mulhsu x13, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xb92c8461 # initialize rs1
li x13, 0x494f4a46 # initialize rs2
mulhsu x6, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xec3770ed # initialize rs1
li x24, 0x277e6c14 # initialize rs2
mulhsu x27, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x97a17375 # initialize rs1
li x30, 0xba7bc7e3 # initialize rs2
mulhsu x20, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x1f6d3d0e # initialize rs1
li x18, 0x150685d0 # initialize rs2
mulhsu x11, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x90ee1344 # initialize rs1
li x17, 0x9772e60c # initialize rs2
mulhsu x1, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x489cb007 # initialize rs1
li x29, 0xc9dfe89d # initialize rs2
mulhsu x19, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xc4295bfa # initialize rs1
li x6, 0x5dbf538c # initialize rs2
mulhsu x13, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x95d0f53a # initialize rs1
li x16, 0x995d92d3 # initialize rs2
mulhsu x27, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x3cafe981 # initialize rs1
li x17, 0xdc9e1cfe # initialize rs2
mulhsu x20, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xd1feff99 # initialize rs1
li x28, 0x20721aa4 # initialize rs2
mulhsu x6, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xb1a7869c # initialize rs1
li x9, 0x88fc90b3 # initialize rs2
mulhsu x12, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x22, 0x147f8cc5 # initialize rs1
li x0, 0x0fc47b58 # initialize rs2
mulhsu x23, x22, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x30, 0x032def70 # initialize rs1
li x1, 0x88239ae1 # initialize rs2
mulhsu x23, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x6, 0xe76dab14 # initialize rs1
li x2, 0x9542087c # initialize rs2
mulhsu x8, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x11, 0x4e6ffa35 # initialize rs1
li x3, 0xf7769cd3 # initialize rs2
mulhsu x29, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0xadb19a60 # initialize rs1
li x4, 0x894b1ff2 # initialize rs2
mulhsu x3, x13, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x7a76f85e # initialize rs1
li x5, 0x0c232c78 # initialize rs2
mulhsu x18, x27, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0xb148d362 # initialize rs1
li x6, 0xe8070dbe # initialize rs2
mulhsu x14, x21, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0x1c8c5322 # initialize rs1
li x7, 0x8da15256 # initialize rs2
mulhsu x28, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x4, 0xc5a3fbce # initialize rs1
li x8, 0xfecb202c # initialize rs2
mulhsu x11, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x13, 0x6e522a90 # initialize rs1
li x9, 0xb255b190 # initialize rs2
mulhsu x6, x13, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x24, 0x7d2a8892 # initialize rs1
li x10, 0x8f16061f # initialize rs2
mulhsu x26, x24, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x15, 0x81c4810e # initialize rs1
li x11, 0xcdde8b12 # initialize rs2
mulhsu x6, x15, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x8, 0xd66b4783 # initialize rs1
li x12, 0x2f658d8e # initialize rs2
mulhsu x6, x8, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0xbcdb9051 # initialize rs1
li x13, 0x2209fdbe # initialize rs2
mulhsu x11, x29, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x23, 0xa80f0197 # initialize rs1
li x14, 0x939d4035 # initialize rs2
mulhsu x29, x23, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x29, 0x9d3e3e00 # initialize rs1
li x15, 0x50ee4e3a # initialize rs2
mulhsu x28, x29, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x25, 0x4a213fca # initialize rs1
li x16, 0xab3e92ae # initialize rs2
mulhsu x12, x25, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x4, 0x1e4dc7ed # initialize rs1
li x17, 0xe38913a0 # initialize rs2
mulhsu x13, x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x11, 0x9943022c # initialize rs1
li x18, 0x0f77c995 # initialize rs2
mulhsu x4, x11, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x15, 0x9a5d6672 # initialize rs1
li x19, 0x08bcbb89 # initialize rs2
mulhsu x26, x15, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x4, 0xaa9a4970 # initialize rs1
li x20, 0x6958c831 # initialize rs2
mulhsu x15, x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x2, 0x611ac043 # initialize rs1
li x21, 0x39ee3e7e # initialize rs2
mulhsu x19, x2, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x23, 0x464a5f19 # initialize rs1
li x22, 0xe34991bc # initialize rs2
mulhsu x6, x23, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x6, 0x76c50d41 # initialize rs1
li x23, 0xc51d16d4 # initialize rs2
mulhsu x21, x6, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x8, 0x0e40d55f # initialize rs1
li x24, 0xf03f426a # initialize rs2
mulhsu x15, x8, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x27, 0x78109d77 # initialize rs1
li x25, 0x5c5bfa4a # initialize rs2
mulhsu x31, x27, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x20, 0xb647e843 # initialize rs1
li x26, 0x4ca6015f # initialize rs2
mulhsu x9, x20, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x26, 0x64449092 # initialize rs1
li x27, 0xfff535d8 # initialize rs2
mulhsu x3, x26, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x19, 0xbb80bbf7 # initialize rs1
li x28, 0xe6a43052 # initialize rs2
mulhsu x15, x19, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x1, 0x2a1aaa0b # initialize rs1
li x29, 0x94f5302f # initialize rs2
mulhsu x25, x1, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x8, 0x0aabff0a # initialize rs1
li x30, 0xf33dbfa8 # initialize rs2
mulhsu x15, x8, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x14, 0xbb41beb8 # initialize rs1
li x31, 0x97717629 # initialize rs2
mulhsu x6, x14, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 252)

# Testcase cp_rd (Test destination rd = x0)
li x12, 0x5fcae633 # initialize rs1
li x16, 0x2b7424f3 # initialize rs2
mulhsu x0, x12, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x5a082425 # initialize rs1
li x26, 0x2761f1b3 # initialize rs2
mulhsu x1, x1, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xd7fd1ba8 # initialize rs1
li x1, 0x07db70bf # initialize rs2
mulhsu x2, x2, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x17, 0xdf4229d0 # initialize rs1
li x6, 0x734aac38 # initialize rs2
mulhsu x3, x17, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
li x11, 0xf8faab46 # initialize rs1
li x17, 0x3cba6555 # initialize rs2
mulhsu x4, x11, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0x1b42decd # initialize rs1
li x29, 0x81834cda # initialize rs2
mulhsu x5, x14, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0x467bdbf6 # initialize rs1
li x4, 0xc4979bd2 # initialize rs2
mulhsu x6, x15, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x6f1ea489 # initialize rs1
li x2, 0x6840c3d6 # initialize rs2
mulhsu x7, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x17, 0xeb1b25d6 # initialize rs1
li x31, 0xf5ada338 # initialize rs2
mulhsu x8, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x11, 0xc15619ca # initialize rs1
li x24, 0x4ec4f9a9 # initialize rs2
mulhsu x9, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x26, 0x3b41646c # initialize rs1
li x24, 0xf1291aab # initialize rs2
mulhsu x10, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x18, 0xd27bf976 # initialize rs1
li x5, 0x3d4c51c9 # initialize rs2
mulhsu x11, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x6, 0x0343db5c # initialize rs1
li x11, 0x3420c710 # initialize rs2
mulhsu x12, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x17, 0x74c22d28 # initialize rs1
li x3, 0xdf9273e0 # initialize rs2
mulhsu x13, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x24, 0x42522a4b # initialize rs1
li x15, 0x6811011b # initialize rs2
mulhsu x14, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x20, 0x5cf2e316 # initialize rs1
li x19, 0x96fd41fc # initialize rs2
mulhsu x15, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x19, 0xb22f9b92 # initialize rs1
li x6, 0x5e9d865b # initialize rs2
mulhsu x16, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x8, 0x1747ef86 # initialize rs1
li x3, 0x9df1ff04 # initialize rs2
mulhsu x17, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x19, 0xd0cba244 # initialize rs1
li x18, 0xabd953fb # initialize rs2
mulhsu x18, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x719f6f52 # initialize rs1
li x11, 0x21027c86 # initialize rs2
mulhsu x19, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x26, 0x45e3fe91 # initialize rs1
li x1, 0xe7ab5688 # initialize rs2
mulhsu x20, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x1, 0xb999b7c8 # initialize rs1
li x22, 0xfc6cd7fd # initialize rs2
mulhsu x21, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x1, 0xc518a1a4 # initialize rs1
li x28, 0xdf277eac # initialize rs2
mulhsu x22, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x5, 0x2fde0377 # initialize rs1
li x2, 0x2601fe9d # initialize rs2
mulhsu x23, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x15, 0xe1cefd9a # initialize rs1
li x12, 0x3bb601da # initialize rs2
mulhsu x24, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x20, 0xa4d8c8f0 # initialize rs1
li x26, 0xbb08ac67 # initialize rs2
mulhsu x25, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x31, 0x48b53eeb # initialize rs1
li x27, 0x73437006 # initialize rs2
mulhsu x26, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0xaf7c2b6d # initialize rs1
li x5, 0x5076b693 # initialize rs2
mulhsu x27, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xdf94ff30 # initialize rs1
li x1, 0xf1140c99 # initialize rs2
mulhsu x28, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x18, 0x5934461b # initialize rs1
li x10, 0x9c91051d # initialize rs2
mulhsu x29, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0x18b121ff # initialize rs1
li x30, 0x241cb627 # initialize rs2
mulhsu x30, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x23, 0x4c258dff # initialize rs1
li x1, 0x472dfcaa # initialize rs2
mulhsu x31, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x6, 0x00000000 # initialize rs1
li x18, 0x59ab4c26 # initialize rs2
mulhsu x30, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x9, 0x00000001 # initialize rs1
li x19, 0x4e6a572a # initialize rs2
mulhsu x7, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0x00000002 # initialize rs1
li x30, 0x5ae3fe98 # initialize rs2
mulhsu x24, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x14, 0x80000000 # initialize rs1
li x26, 0x5b7ecdbb # initialize rs2
mulhsu x2, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x17, 0x80000001 # initialize rs1
li x22, 0xa46ee019 # initialize rs2
mulhsu x10, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x26, 0x7fffffff # initialize rs1
li x6, 0xf2a9fc53 # initialize rs2
mulhsu x5, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x23, 0x7ffffffe # initialize rs1
li x24, 0xde9f853d # initialize rs2
mulhsu x14, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0xffffffff # initialize rs1
li x31, 0xc64153e5 # initialize rs2
mulhsu x15, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0xfffffffe # initialize rs1
li x19, 0x1e72c88f # initialize rs2
mulhsu x21, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x1, 0x5bbc8872 # initialize rs1
li x7, 0xa7c7e93f # initialize rs2
mulhsu x23, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x15, 0xaaaaaaaa # initialize rs1
li x3, 0xc705c899 # initialize rs2
mulhsu x7, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x14, 0x55555555 # initialize rs1
li x6, 0x3fe16dae # initialize rs2
mulhsu x31, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0x2fea6fa5 # initialize rs1
li x23, 0x00000000 # initialize rs2
mulhsu x16, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x18, 0x79db8937 # initialize rs1
li x28, 0x00000001 # initialize rs2
mulhsu x19, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x9, 0xd5c46a9f # initialize rs1
li x6, 0x00000002 # initialize rs2
mulhsu x16, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x2, 0x3d48764d # initialize rs1
li x10, 0x80000000 # initialize rs2
mulhsu x11, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x23, 0x056ea01d # initialize rs1
li x31, 0x80000001 # initialize rs2
mulhsu x22, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x2, 0x034b478b # initialize rs1
li x7, 0x7fffffff # initialize rs2
mulhsu x18, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x29, 0x80f65e0f # initialize rs1
li x18, 0x7ffffffe # initialize rs2
mulhsu x19, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x12, 0xf479d0b2 # initialize rs1
li x15, 0xffffffff # initialize rs2
mulhsu x8, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x31, 0xf5f4491f # initialize rs1
li x15, 0xfffffffe # initialize rs2
mulhsu x27, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x15, 0x8cce077f # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
mulhsu x29, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x27, 0xbb760fde # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
mulhsu x1, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x27, 0x44a944f1 # initialize rs1
li x2, 0x55555555 # initialize rs2
mulhsu x13, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x3, 0x00000000 # initialize rs1
li x16, 0x00000000 # initialize rs2
mulhsu x8, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x25, 0x00000000 # initialize rs1
li x1, 0x00000001 # initialize rs2
mulhsu x3, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x31, 0x00000000 # initialize rs1
li x17, 0x00000002 # initialize rs2
mulhsu x15, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x19, 0x00000000 # initialize rs1
li x14, 0x80000000 # initialize rs2
mulhsu x26, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x3, 0x00000000 # initialize rs1
li x19, 0x80000001 # initialize rs2
mulhsu x10, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x28, 0x00000000 # initialize rs1
li x30, 0x7fffffff # initialize rs2
mulhsu x9, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x13, 0x00000000 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
mulhsu x16, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x13, 0x00000000 # initialize rs1
li x29, 0xffffffff # initialize rs2
mulhsu x3, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x7, 0x00000000 # initialize rs1
li x15, 0xfffffffe # initialize rs2
mulhsu x22, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x8, 0x00000000 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
mulhsu x17, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x15, 0x00000000 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
mulhsu x13, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x16, 0x00000000 # initialize rs1
li x19, 0x55555555 # initialize rs2
mulhsu x13, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x23, 0x00000001 # initialize rs1
li x26, 0x00000000 # initialize rs2
mulhsu x19, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x29, 0x00000001 # initialize rs1
li x30, 0x00000001 # initialize rs2
mulhsu x2, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x12, 0x00000001 # initialize rs1
li x1, 0x00000002 # initialize rs2
mulhsu x19, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x11, 0x00000001 # initialize rs1
li x27, 0x80000000 # initialize rs2
mulhsu x2, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x22, 0x00000001 # initialize rs1
li x14, 0x80000001 # initialize rs2
mulhsu x9, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x30, 0x00000001 # initialize rs1
li x18, 0x7fffffff # initialize rs2
mulhsu x23, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x8, 0x00000001 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
mulhsu x11, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x20, 0x00000001 # initialize rs1
li x31, 0xffffffff # initialize rs2
mulhsu x17, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x20, 0x00000001 # initialize rs1
li x13, 0xfffffffe # initialize rs2
mulhsu x10, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x30, 0x00000001 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
mulhsu x23, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x3, 0x00000001 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
mulhsu x7, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x18, 0x00000001 # initialize rs1
li x2, 0x55555555 # initialize rs2
mulhsu x22, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x23, 0x00000002 # initialize rs1
li x20, 0x00000000 # initialize rs2
mulhsu x7, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x16, 0x00000002 # initialize rs1
li x10, 0x00000001 # initialize rs2
mulhsu x17, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x10, 0x00000002 # initialize rs1
li x26, 0x00000002 # initialize rs2
mulhsu x18, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x9, 0x00000002 # initialize rs1
li x27, 0x80000000 # initialize rs2
mulhsu x3, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x23, 0x00000002 # initialize rs1
li x1, 0x80000001 # initialize rs2
mulhsu x17, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x14, 0x00000002 # initialize rs1
li x23, 0x7fffffff # initialize rs2
mulhsu x30, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x21, 0x00000002 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
mulhsu x30, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x12, 0x00000002 # initialize rs1
li x21, 0xffffffff # initialize rs2
mulhsu x10, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x23, 0x00000002 # initialize rs1
li x5, 0xfffffffe # initialize rs2
mulhsu x7, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x25, 0x00000002 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
mulhsu x20, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x12, 0x00000002 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
mulhsu x5, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x31, 0x00000002 # initialize rs1
li x6, 0x55555555 # initialize rs2
mulhsu x3, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x23, 0x80000000 # initialize rs1
li x3, 0x00000000 # initialize rs2
mulhsu x11, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x3, 0x80000000 # initialize rs1
li x23, 0x00000001 # initialize rs2
mulhsu x10, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x22, 0x80000000 # initialize rs1
li x16, 0x00000002 # initialize rs2
mulhsu x20, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x5, 0x80000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
mulhsu x17, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x26, 0x80000000 # initialize rs1
li x29, 0x80000001 # initialize rs2
mulhsu x3, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x1, 0x80000000 # initialize rs1
li x24, 0x7fffffff # initialize rs2
mulhsu x9, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x7, 0x80000000 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
mulhsu x27, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x27, 0x80000000 # initialize rs1
li x20, 0xffffffff # initialize rs2
mulhsu x30, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x26, 0x80000000 # initialize rs1
li x29, 0xfffffffe # initialize rs2
mulhsu x16, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x21, 0x80000000 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
mulhsu x25, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x9, 0x80000000 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
mulhsu x23, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x22, 0x80000000 # initialize rs1
li x24, 0x55555555 # initialize rs2
mulhsu x6, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x2, 0x80000001 # initialize rs1
li x11, 0x00000000 # initialize rs2
mulhsu x17, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x28, 0x80000001 # initialize rs1
li x14, 0x00000001 # initialize rs2
mulhsu x5, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x1, 0x80000001 # initialize rs1
li x16, 0x00000002 # initialize rs2
mulhsu x22, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x8, 0x80000001 # initialize rs1
li x1, 0x80000000 # initialize rs2
mulhsu x29, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x14, 0x80000001 # initialize rs1
li x7, 0x80000001 # initialize rs2
mulhsu x24, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x25, 0x80000001 # initialize rs1
li x14, 0x7fffffff # initialize rs2
mulhsu x16, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x28, 0x80000001 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
mulhsu x24, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x12, 0x80000001 # initialize rs1
li x15, 0xffffffff # initialize rs2
mulhsu x6, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x15, 0x80000001 # initialize rs1
li x19, 0xfffffffe # initialize rs2
mulhsu x30, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x2, 0x80000001 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
mulhsu x8, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x23, 0x80000001 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
mulhsu x8, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x12, 0x80000001 # initialize rs1
li x2, 0x55555555 # initialize rs2
mulhsu x24, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x26, 0x7fffffff # initialize rs1
li x16, 0x00000000 # initialize rs2
mulhsu x11, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x25, 0x7fffffff # initialize rs1
li x17, 0x00000001 # initialize rs2
mulhsu x21, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x11, 0x7fffffff # initialize rs1
li x12, 0x00000002 # initialize rs2
mulhsu x25, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x11, 0x7fffffff # initialize rs1
li x13, 0x80000000 # initialize rs2
mulhsu x20, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x11, 0x7fffffff # initialize rs1
li x16, 0x80000001 # initialize rs2
mulhsu x27, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x7, 0x7fffffff # initialize rs1
li x20, 0x7fffffff # initialize rs2
mulhsu x21, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x21, 0x7fffffff # initialize rs1
li x29, 0x7ffffffe # initialize rs2
mulhsu x6, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x31, 0x7fffffff # initialize rs1
li x17, 0xffffffff # initialize rs2
mulhsu x19, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x28, 0x7fffffff # initialize rs1
li x18, 0xfffffffe # initialize rs2
mulhsu x16, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x6, 0x7fffffff # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
mulhsu x8, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x9, 0x7fffffff # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
mulhsu x22, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x10, 0x7fffffff # initialize rs1
li x23, 0x55555555 # initialize rs2
mulhsu x15, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x12, 0x7ffffffe # initialize rs1
li x17, 0x00000000 # initialize rs2
mulhsu x21, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x10, 0x7ffffffe # initialize rs1
li x11, 0x00000001 # initialize rs2
mulhsu x3, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x24, 0x7ffffffe # initialize rs1
li x10, 0x00000002 # initialize rs2
mulhsu x12, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x11, 0x7ffffffe # initialize rs1
li x17, 0x80000000 # initialize rs2
mulhsu x2, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x26, 0x7ffffffe # initialize rs1
li x17, 0x80000001 # initialize rs2
mulhsu x18, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x18, 0x7ffffffe # initialize rs1
li x9, 0x7fffffff # initialize rs2
mulhsu x5, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x21, 0x7ffffffe # initialize rs1
li x19, 0x7ffffffe # initialize rs2
mulhsu x26, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x30, 0x7ffffffe # initialize rs1
li x8, 0xffffffff # initialize rs2
mulhsu x6, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x29, 0x7ffffffe # initialize rs1
li x8, 0xfffffffe # initialize rs2
mulhsu x3, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x20, 0x7ffffffe # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
mulhsu x8, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x10, 0x7ffffffe # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
mulhsu x27, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x8, 0x7ffffffe # initialize rs1
li x13, 0x55555555 # initialize rs2
mulhsu x5, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x7, 0xffffffff # initialize rs1
li x8, 0x00000000 # initialize rs2
mulhsu x18, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x28, 0xffffffff # initialize rs1
li x30, 0x00000001 # initialize rs2
mulhsu x18, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x27, 0xffffffff # initialize rs1
li x7, 0x00000002 # initialize rs2
mulhsu x9, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x24, 0xffffffff # initialize rs1
li x15, 0x80000000 # initialize rs2
mulhsu x26, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x18, 0xffffffff # initialize rs1
li x16, 0x80000001 # initialize rs2
mulhsu x30, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x20, 0xffffffff # initialize rs1
li x27, 0x7fffffff # initialize rs2
mulhsu x5, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x2, 0xffffffff # initialize rs1
li x17, 0x7ffffffe # initialize rs2
mulhsu x7, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x13, 0xffffffff # initialize rs1
li x10, 0xffffffff # initialize rs2
mulhsu x27, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x11, 0xffffffff # initialize rs1
li x6, 0xfffffffe # initialize rs2
mulhsu x29, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x26, 0xffffffff # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
mulhsu x19, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x5, 0xffffffff # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
mulhsu x1, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x24, 0xffffffff # initialize rs1
li x8, 0x55555555 # initialize rs2
mulhsu x22, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x23, 0xfffffffe # initialize rs1
li x29, 0x00000000 # initialize rs2
mulhsu x31, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x27, 0xfffffffe # initialize rs1
li x16, 0x00000001 # initialize rs2
mulhsu x14, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x5, 0xfffffffe # initialize rs1
li x11, 0x00000002 # initialize rs2
mulhsu x22, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x26, 0xfffffffe # initialize rs1
li x15, 0x80000000 # initialize rs2
mulhsu x24, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x8, 0xfffffffe # initialize rs1
li x17, 0x80000001 # initialize rs2
mulhsu x21, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x20, 0xfffffffe # initialize rs1
li x28, 0x7fffffff # initialize rs2
mulhsu x16, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x23, 0xfffffffe # initialize rs1
li x25, 0x7ffffffe # initialize rs2
mulhsu x31, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x3, 0xfffffffe # initialize rs1
li x5, 0xffffffff # initialize rs2
mulhsu x8, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x26, 0xfffffffe # initialize rs1
li x15, 0xfffffffe # initialize rs2
mulhsu x17, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x16, 0xfffffffe # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
mulhsu x2, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x20, 0xfffffffe # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
mulhsu x14, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x30, 0xfffffffe # initialize rs1
li x29, 0x55555555 # initialize rs2
mulhsu x10, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x8, 0x5bbc8872 # initialize rs1
li x24, 0x00000000 # initialize rs2
mulhsu x31, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x1, 0x5bbc8872 # initialize rs1
li x24, 0x00000001 # initialize rs2
mulhsu x11, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x26, 0x5bbc8872 # initialize rs1
li x18, 0x00000002 # initialize rs2
mulhsu x16, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x3, 0x5bbc8872 # initialize rs1
li x1, 0x80000000 # initialize rs2
mulhsu x16, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x17, 0x5bbc8872 # initialize rs1
li x23, 0x80000001 # initialize rs2
mulhsu x10, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x7, 0x5bbc8872 # initialize rs1
li x24, 0x7fffffff # initialize rs2
mulhsu x13, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x28, 0x5bbc8872 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
mulhsu x26, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x25, 0x5bbc8872 # initialize rs1
li x16, 0xffffffff # initialize rs2
mulhsu x12, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x17, 0x5bbc8872 # initialize rs1
li x31, 0xfffffffe # initialize rs2
mulhsu x1, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x8, 0x5bbc8872 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
mulhsu x21, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x25, 0x5bbc8872 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
mulhsu x18, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x17, 0x5bbc8872 # initialize rs1
li x21, 0x55555555 # initialize rs2
mulhsu x14, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x19, 0xaaaaaaaa # initialize rs1
li x8, 0x00000000 # initialize rs2
mulhsu x14, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x19, 0xaaaaaaaa # initialize rs1
li x9, 0x00000001 # initialize rs2
mulhsu x11, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x26, 0xaaaaaaaa # initialize rs1
li x27, 0x00000002 # initialize rs2
mulhsu x5, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x23, 0xaaaaaaaa # initialize rs1
li x30, 0x80000000 # initialize rs2
mulhsu x8, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x17, 0xaaaaaaaa # initialize rs1
li x28, 0x80000001 # initialize rs2
mulhsu x29, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x14, 0xaaaaaaaa # initialize rs1
li x16, 0x7fffffff # initialize rs2
mulhsu x25, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x22, 0xaaaaaaaa # initialize rs1
li x25, 0x7ffffffe # initialize rs2
mulhsu x5, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x17, 0xaaaaaaaa # initialize rs1
li x16, 0xffffffff # initialize rs2
mulhsu x20, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x31, 0xaaaaaaaa # initialize rs1
li x7, 0xfffffffe # initialize rs2
mulhsu x18, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x9, 0xaaaaaaaa # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
mulhsu x12, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x29, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
mulhsu x18, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x11, 0xaaaaaaaa # initialize rs1
li x17, 0x55555555 # initialize rs2
mulhsu x25, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x24, 0x55555555 # initialize rs1
li x31, 0x00000000 # initialize rs2
mulhsu x21, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x29, 0x55555555 # initialize rs1
li x7, 0x00000001 # initialize rs2
mulhsu x13, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x7, 0x55555555 # initialize rs1
li x20, 0x00000002 # initialize rs2
mulhsu x9, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x21, 0x55555555 # initialize rs1
li x6, 0x80000000 # initialize rs2
mulhsu x29, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x31, 0x55555555 # initialize rs1
li x29, 0x80000001 # initialize rs2
mulhsu x16, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x5, 0x55555555 # initialize rs1
li x3, 0x7fffffff # initialize rs2
mulhsu x12, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x11, 0x55555555 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
mulhsu x23, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x23, 0x55555555 # initialize rs1
li x26, 0xffffffff # initialize rs2
mulhsu x24, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x23, 0x55555555 # initialize rs1
li x6, 0xfffffffe # initialize rs2
mulhsu x18, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x31, 0x55555555 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
mulhsu x8, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x11, 0x55555555 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
mulhsu x14, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x10, 0x55555555 # initialize rs1
li x27, 0x55555555 # initialize rs2
mulhsu x28, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xca825a61 # initialize rs1
li x0, 0xf0315f25 # initialize rs2
mulhsu x24, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x49e7593b # initialize rs1
li x1, 0x75ef58f5 # initialize rs2
mulhsu x11, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x799a25f5 # initialize rs1
li x2, 0xd9d086d0 # initialize rs2
mulhsu x14, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x47416d4e # initialize rs1
li x3, 0x3ed84cba # initialize rs2
mulhsu x9, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xadb6ad27 # initialize rs1
li x4, 0x8568e365 # initialize rs2
mulhsu x25, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe8cde339 # initialize rs1
li x5, 0x4a309455 # initialize rs2
mulhsu x24, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7aae06e3 # initialize rs1
li x6, 0x967e360b # initialize rs2
mulhsu x22, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x22, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf403ca20 # initialize rs1
li x7, 0xa6c3acfd # initialize rs2
mulhsu x13, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x488e538e # initialize rs1
li x8, 0x6e2ef7d1 # initialize rs2
mulhsu x18, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x93e8d225 # initialize rs1
li x9, 0x69443e42 # initialize rs2
mulhsu x20, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xfe09a249 # initialize rs1
li x10, 0xf6a51df7 # initialize rs2
mulhsu x21, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x2251da67 # initialize rs1
li x11, 0x304f4daa # initialize rs2
mulhsu x20, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xba786c74 # initialize rs1
li x12, 0xa2c06f2c # initialize rs2
mulhsu x11, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xb637e69c # initialize rs1
li x13, 0x993d7e3d # initialize rs2
mulhsu x17, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x638f2c82 # initialize rs1
li x14, 0x3eb5881b # initialize rs2
mulhsu x18, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xf108471e # initialize rs1
li x15, 0x08996cda # initialize rs2
mulhsu x24, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x70459d42 # initialize rs1
li x16, 0x9d09ae82 # initialize rs2
mulhsu x23, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x8e654d2a # initialize rs1
li x17, 0x7045eeb0 # initialize rs2
mulhsu x25, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x3ada2f73 # initialize rs1
li x18, 0xb9097047 # initialize rs2
mulhsu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x8145e7fb # initialize rs1
li x19, 0x30cc0e8d # initialize rs2
mulhsu x18, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xaae87f4d # initialize rs1
li x20, 0xc9dc9e2c # initialize rs2
mulhsu x6, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xf0508e89 # initialize rs1
li x21, 0xc4206ed9 # initialize rs2
mulhsu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x2dbd44e2 # initialize rs1
li x22, 0xc1999e1b # initialize rs2
mulhsu x10, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xece8c491 # initialize rs1
li x23, 0xbe2c0f77 # initialize rs2
mulhsu x7, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x4f9c971b # initialize rs1
li x24, 0x0046ebcf # initialize rs2
mulhsu x10, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x88332422 # initialize rs1
li x25, 0xd4a8f26f # initialize rs2
mulhsu x2, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x61f0ca81 # initialize rs1
li x26, 0x46f7d633 # initialize rs2
mulhsu x8, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x22317b76 # initialize rs1
li x27, 0x077c2d9f # initialize rs2
mulhsu x17, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x9704793a # initialize rs1
li x28, 0x55f5bf8b # initialize rs2
mulhsu x8, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xf7a589c3 # initialize rs1
li x29, 0x1439f7ee # initialize rs2
mulhsu x9, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xbde44d28 # initialize rs1
li x30, 0xf01e8f0f # initialize rs2
mulhsu x13, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xe8b044a2 # initialize rs1
li x31, 0x9e550e9b # initialize rs2
mulhsu x12, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x37c5c662 # initialize rs1
li x18, 0x9a9ae5ee # initialize rs2
mulhsu x0, x0, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xf3df90bf # initialize rs1
li x18, 0x4d88b40e # initialize rs2
mulhsu x1, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x4db526ed # initialize rs1
li x15, 0x6bc892d8 # initialize rs2
mulhsu x2, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xe53a0fbd # initialize rs1
li x24, 0x772fd9b7 # initialize rs2
mulhsu x3, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x85795838 # initialize rs1
li x19, 0x64f7b902 # initialize rs2
mulhsu x4, x4, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x376de383 # initialize rs1
li x13, 0xe16d3168 # initialize rs2
mulhsu x5, x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x65f5d4aa # initialize rs1
li x26, 0x3749ddc2 # initialize rs2
mulhsu x6, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9b4b9b38 # initialize rs1
li x14, 0xb0cf4c23 # initialize rs2
mulhsu x7, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xa1191279 # initialize rs1
li x24, 0xac0d388f # initialize rs2
mulhsu x8, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x01d4d328 # initialize rs1
li x18, 0xcb9d2a90 # initialize rs2
mulhsu x9, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x674192d2 # initialize rs1
li x22, 0x890b1ed6 # initialize rs2
mulhsu x10, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x0299ec6d # initialize rs1
li x9, 0x7a939e63 # initialize rs2
mulhsu x11, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x16caeae6 # initialize rs1
li x17, 0xe5fdb673 # initialize rs2
mulhsu x12, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x2c3605b6 # initialize rs1
li x25, 0x715acb6a # initialize rs2
mulhsu x13, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc6ac6ba4 # initialize rs1
li x27, 0x7e76c987 # initialize rs2
mulhsu x14, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x6fd305fc # initialize rs1
li x29, 0x2dce4f58 # initialize rs2
mulhsu x15, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x80bc27d9 # initialize rs1
li x6, 0x0c77dbee # initialize rs2
mulhsu x16, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xe8af1334 # initialize rs1
li x28, 0x81452f3d # initialize rs2
mulhsu x17, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x4514fca6 # initialize rs1
li x14, 0x9be3a008 # initialize rs2
mulhsu x18, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x10cb6441 # initialize rs1
li x26, 0x0c9cffd7 # initialize rs2
mulhsu x19, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3633f6c7 # initialize rs1
li x26, 0xc6420ef4 # initialize rs2
mulhsu x20, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x6697ca7a # initialize rs1
li x3, 0x2ea33391 # initialize rs2
mulhsu x21, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6afad690 # initialize rs1
li x10, 0xbee619fa # initialize rs2
mulhsu x22, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x13aab80c # initialize rs1
li x28, 0x355056d4 # initialize rs2
mulhsu x23, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x5c0ce190 # initialize rs1
li x11, 0x02fc179b # initialize rs2
mulhsu x24, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x37426fa6 # initialize rs1
li x12, 0x94612bc7 # initialize rs2
mulhsu x25, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x34601f1a # initialize rs1
li x7, 0x928f984e # initialize rs2
mulhsu x26, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xbf74a645 # initialize rs1
li x27, 0x4b3769d1 # initialize rs2
mulhsu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x86852cfe # initialize rs1
li x16, 0xdd62ebcf # initialize rs2
mulhsu x28, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xd597db28 # initialize rs1
li x16, 0x179e99bb # initialize rs2
mulhsu x29, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xf97ce07d # initialize rs1
li x30, 0x2c8771ba # initialize rs2
mulhsu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xa91530f1 # initialize rs1
li x10, 0xb7bb7e2a # initialize rs2
mulhsu x31, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x28, 0xbb11074a # initialize rs1
li x0, 0x701db29a # initialize rs2
mulhsu x0, x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x29, 0xf133f0a7 # initialize rs1
li x1, 0x1ac2bdb6 # initialize rs2
mulhsu x1, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x23, 0xd930a453 # initialize rs1
li x2, 0x3f4f0871 # initialize rs2
mulhsu x2, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x6, 0xf59bb1f9 # initialize rs1
li x3, 0xa925248e # initialize rs2
mulhsu x3, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0x3667d97b # initialize rs1
li x4, 0x2a429ce0 # initialize rs2
mulhsu x4, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0x60a241f8 # initialize rs1
li x5, 0xc6204418 # initialize rs2
mulhsu x5, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
li x11, 0x9ff972f2 # initialize rs1
li x6, 0xcaa0fb11 # initialize rs2
mulhsu x6, x11, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0x9a7e642e # initialize rs1
li x7, 0xab2e8b78 # initialize rs2
mulhsu x7, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x13, 0x29099e31 # initialize rs1
li x8, 0x9c7c828f # initialize rs2
mulhsu x8, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x29, 0xdf774542 # initialize rs1
li x9, 0xf908a67b # initialize rs2
mulhsu x9, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x30, 0x91cdf8fe # initialize rs1
li x10, 0xc8407e5a # initialize rs2
mulhsu x10, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x17, 0xd2a047c1 # initialize rs1
li x11, 0x5db5f112 # initialize rs2
mulhsu x11, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x23, 0x0881744d # initialize rs1
li x12, 0xe16cf6bd # initialize rs2
mulhsu x12, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x9, 0x1c238677 # initialize rs1
li x13, 0xe29dfaf3 # initialize rs2
mulhsu x13, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x4c0d1464 # initialize rs1
li x14, 0x7504f404 # initialize rs2
mulhsu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x11, 0xbf4e9ac8 # initialize rs1
li x15, 0xc27c8310 # initialize rs2
mulhsu x15, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x3, 0x7fca2a9a # initialize rs1
li x16, 0x2552484b # initialize rs2
mulhsu x16, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x25, 0xd258b7f2 # initialize rs1
li x17, 0xff0cf783 # initialize rs2
mulhsu x17, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x3, 0xbee488ba # initialize rs1
li x18, 0x2e4cfd55 # initialize rs2
mulhsu x18, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x14, 0xd62a7b35 # initialize rs1
li x19, 0xcd7a8a08 # initialize rs2
mulhsu x19, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x21, 0xc6abf665 # initialize rs1
li x20, 0x89a1b957 # initialize rs2
mulhsu x20, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x6, 0x43d0ca82 # initialize rs1
li x21, 0x3863cba1 # initialize rs2
mulhsu x21, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x28, 0x0090b3c0 # initialize rs1
li x22, 0x3d796ee6 # initialize rs2
mulhsu x22, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x16, 0x0ebdc959 # initialize rs1
li x23, 0x511a2dd4 # initialize rs2
mulhsu x23, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x9, 0x6b5ea37b # initialize rs1
li x24, 0x2ec1fa96 # initialize rs2
mulhsu x24, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x7, 0x92d81186 # initialize rs1
li x25, 0x6e1b7cf4 # initialize rs2
mulhsu x25, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x25, 0x66d4cb1b # initialize rs1
li x26, 0x09e835df # initialize rs2
mulhsu x26, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x8, 0xf4530ea0 # initialize rs1
li x27, 0x6ae493cc # initialize rs2
mulhsu x27, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x7, 0xcbd23ed1 # initialize rs1
li x28, 0x258d7817 # initialize rs2
mulhsu x28, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x3, 0xad95dbfb # initialize rs1
li x29, 0x08b2cd4f # initialize rs2
mulhsu x29, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x1, 0xece51207 # initialize rs1
li x30, 0x1b12577b # initialize rs2
mulhsu x30, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x29, 0xc88265c3 # initialize rs1
li x31, 0xb59df383 # initialize rs2
mulhsu x31, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x4e1384e7 # initialize rs1
li x0, 0xaa9be6a8 # initialize rs2
mulhsu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x41be4802 # initialize rs1
li x1, 0x9c843ce7 # initialize rs2
mulhsu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xc07a96ff # initialize rs1
li x2, 0xbebbbf87 # initialize rs2
mulhsu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x2b6bc951 # initialize rs1
li x3, 0xcb36dbf1 # initialize rs2
mulhsu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe0ccc6ef # initialize rs1
li x4, 0xf5d836ae # initialize rs2
mulhsu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0831043b # initialize rs1
li x5, 0x9f2a56f2 # initialize rs2
mulhsu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9ca4bb30 # initialize rs1
li x6, 0x7f939e5e # initialize rs2
mulhsu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc1722a95 # initialize rs1
li x7, 0x3dc098ad # initialize rs2
mulhsu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xce18c99b # initialize rs1
li x8, 0x20b03d0b # initialize rs2
mulhsu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x8f98b859 # initialize rs1
li x9, 0x7d6bd84f # initialize rs2
mulhsu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xe40a7919 # initialize rs1
li x10, 0x54cc72e3 # initialize rs2
mulhsu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x4fff66d4 # initialize rs1
li x11, 0x771ab508 # initialize rs2
mulhsu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x63bf19a0 # initialize rs1
li x12, 0x4de93817 # initialize rs2
mulhsu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x0943e52b # initialize rs1
li x13, 0x72145060 # initialize rs2
mulhsu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x020cf58e # initialize rs1
li x14, 0x7f7066be # initialize rs2
mulhsu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x9e5b94ca # initialize rs1
li x15, 0xc4af9ec1 # initialize rs2
mulhsu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x0734dfc4 # initialize rs1
li x16, 0x4c017eab # initialize rs2
mulhsu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xe52373a8 # initialize rs1
li x17, 0x062e37cd # initialize rs2
mulhsu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xdb469220 # initialize rs1
li x18, 0x776c6b6e # initialize rs2
mulhsu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xdbdfed6e # initialize rs1
li x19, 0x1cb3b6d3 # initialize rs2
mulhsu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x2c0b3a08 # initialize rs1
li x20, 0x610f9e0d # initialize rs2
mulhsu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xde3310a0 # initialize rs1
li x21, 0x4e2cf319 # initialize rs2
mulhsu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x0fefde3e # initialize rs1
li x22, 0x3004b4dd # initialize rs2
mulhsu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xcd133630 # initialize rs1
li x23, 0x2709735b # initialize rs2
mulhsu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xf0befb11 # initialize rs1
li x24, 0x2abbe937 # initialize rs2
mulhsu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x605ddbc8 # initialize rs1
li x25, 0x50874d93 # initialize rs2
mulhsu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xd7f38f2b # initialize rs1
li x26, 0x42100b9d # initialize rs2
mulhsu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x4648d9c8 # initialize rs1
li x27, 0x23c10666 # initialize rs2
mulhsu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xc15c6926 # initialize rs1
li x28, 0x9b4f5d8e # initialize rs2
mulhsu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x0d0fcab3 # initialize rs1
li x29, 0x58e6bd07 # initialize rs2
mulhsu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x7f933187 # initialize rs1
li x30, 0x16ee6c24 # initialize rs2
mulhsu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xa15a616e # initialize rs1
li x31, 0x9178a3f7 # initialize rs2
mulhsu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x31, x22 # perform first operation
mulhsu x5, x1, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x24, x28 # perform first operation
mulhsu x23, x14, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x16, x6 # perform first operation
mulhsu x5, x18, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x8, x24 # perform first operation
mulhsu x8, x30, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x28, x26 # perform first operation
mulhsu x26, x22, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x10, x20 # perform first operation
mulhsu x31, x21, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x11, x3 # perform first operation
mulhsu x14, x25, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x17, x16 # perform first operation
mulhsu x27, x9, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x16, x27 # perform first operation
mulhsu x18, x26, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x23, x11 # perform first operation
mulhsu x23, x9, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x21, x3 # perform first operation
mulhsu x3, x19, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x8, x26 # perform first operation
mulhsu x15, x7, x17 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-mulh.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x5dbb328f # initialize rs1
li x28, 0xe5919b6f # initialize rs2
mulh x6, x0, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x42431c71 # initialize rs1
li x30, 0xd0b5e046 # initialize rs2
mulh x28, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x8576ffc2 # initialize rs1
li x6, 0x509fee4c # initialize rs2
mulh x20, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x12cfee96 # initialize rs1
li x5, 0x666fea99 # initialize rs2
mulh x17, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf8ff9838 # initialize rs1
li x19, 0x9e491539 # initialize rs2
mulh x11, x4, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7d0e26bb # initialize rs1
li x7, 0x504fc633 # initialize rs2
mulh x28, x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x55b84a5d # initialize rs1
li x11, 0x1542bc61 # initialize rs2
mulh x15, x6, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x04ff399d # initialize rs1
li x5, 0x66ad5af3 # initialize rs2
mulh x19, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x2872b1a1 # initialize rs1
li x30, 0x1a986d5e # initialize rs2
mulh x9, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x2f4895f8 # initialize rs1
li x16, 0xa544c189 # initialize rs2
mulh x23, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x47b6d67c # initialize rs1
li x11, 0x57f94609 # initialize rs2
mulh x7, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x31033a3c # initialize rs1
li x21, 0x743d3f63 # initialize rs2
mulh x9, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x0fc40fee # initialize rs1
li x1, 0x0a10e7b0 # initialize rs2
mulh x17, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x426da32b # initialize rs1
li x2, 0xab833c81 # initialize rs2
mulh x18, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xdf76185c # initialize rs1
li x15, 0xe3144200 # initialize rs2
mulh x13, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xb1fd9a25 # initialize rs1
li x30, 0x8812c447 # initialize rs2
mulh x6, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xb7a41d0e # initialize rs1
li x19, 0x89a52996 # initialize rs2
mulh x21, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xf2a26886 # initialize rs1
li x1, 0xf297193e # initialize rs2
mulh x16, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x2335539a # initialize rs1
li x6, 0xc12ebfb6 # initialize rs2
mulh x7, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x7bfe01ef # initialize rs1
li x26, 0x581287b1 # initialize rs2
mulh x13, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xb179d2b5 # initialize rs1
li x18, 0x59aad829 # initialize rs2
mulh x12, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xfdb89b23 # initialize rs1
li x24, 0x7d3d9f68 # initialize rs2
mulh x16, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x5feb68a4 # initialize rs1
li x25, 0xdbca6996 # initialize rs2
mulh x16, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xc35b6d54 # initialize rs1
li x22, 0x684a1902 # initialize rs2
mulh x18, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xc43ac81a # initialize rs1
li x1, 0xbc4b94d2 # initialize rs2
mulh x14, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xe30356a4 # initialize rs1
li x19, 0x08d7f817 # initialize rs2
mulh x7, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x429dee92 # initialize rs1
li x25, 0x2acc6c70 # initialize rs2
mulh x3, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xf389253a # initialize rs1
li x18, 0x4c8c367a # initialize rs2
mulh x12, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xb50a9953 # initialize rs1
li x3, 0x99e0b977 # initialize rs2
mulh x25, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x7b9d0297 # initialize rs1
li x30, 0x38032368 # initialize rs2
mulh x2, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x7b55ff75 # initialize rs1
li x2, 0x31b1b044 # initialize rs2
mulh x16, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x079dbf5e # initialize rs1
li x15, 0x4104d2ec # initialize rs2
mulh x6, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x23, 0xcdd24804 # initialize rs1
li x0, 0x3ccd9e8d # initialize rs2
mulh x11, x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x31, 0x71bf0ff8 # initialize rs1
li x1, 0x3b299d89 # initialize rs2
mulh x30, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x12, 0x7fb430e0 # initialize rs1
li x2, 0x1b1f5fc3 # initialize rs2
mulh x26, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x11, 0xc4d590fc # initialize rs1
li x3, 0x9f6527a2 # initialize rs2
mulh x7, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0x04feb1de # initialize rs1
li x4, 0xf7b353b2 # initialize rs2
mulh x18, x24, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x00eb2709 # initialize rs1
li x5, 0xf2dd7e33 # initialize rs2
mulh x27, x3, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0xf5ebb374 # initialize rs1
li x6, 0x78785c38 # initialize rs2
mulh x14, x3, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0xadf65a80 # initialize rs1
li x7, 0xcd0ad42d # initialize rs2
mulh x23, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x30, 0x1d963eec # initialize rs1
li x8, 0xb7af5f2b # initialize rs2
mulh x1, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x22, 0xc5f3dc5f # initialize rs1
li x9, 0xc859f2f8 # initialize rs2
mulh x11, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x18, 0xba2aa89e # initialize rs1
li x10, 0xb2ea12c7 # initialize rs2
mulh x12, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x14, 0x0bd40ec9 # initialize rs1
li x11, 0xe3f0c55d # initialize rs2
mulh x17, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x1, 0x4a753bb2 # initialize rs1
li x12, 0x14ecd7cf # initialize rs2
mulh x16, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0xd4fd9d2e # initialize rs1
li x13, 0xfda98fb0 # initialize rs2
mulh x25, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x31, 0xd71e65ed # initialize rs1
li x14, 0x89fc9f61 # initialize rs2
mulh x17, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x18, 0x4cafcbc2 # initialize rs1
li x15, 0xed62811f # initialize rs2
mulh x8, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x21, 0x83e5179d # initialize rs1
li x16, 0x30e70555 # initialize rs2
mulh x14, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x2, 0xd4fa9b63 # initialize rs1
li x17, 0x3ec7cfb3 # initialize rs2
mulh x14, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x24, 0x4f5307a0 # initialize rs1
li x18, 0x0fdefebb # initialize rs2
mulh x29, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x12, 0x86e7af65 # initialize rs1
li x19, 0x2861cf3f # initialize rs2
mulh x27, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x7, 0x5dfbefca # initialize rs1
li x20, 0xf77f9977 # initialize rs2
mulh x10, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x27, 0x0be9e89a # initialize rs1
li x21, 0x61067094 # initialize rs2
mulh x2, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x3, 0x25a5d4b8 # initialize rs1
li x22, 0xab05d7c6 # initialize rs2
mulh x15, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x22, 0x506671f9 # initialize rs1
li x23, 0x4678994f # initialize rs2
mulh x28, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x1, 0x5f2898d9 # initialize rs1
li x24, 0xe6b39d35 # initialize rs2
mulh x12, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x30, 0xe4279381 # initialize rs1
li x25, 0x8e2b51d8 # initialize rs2
mulh x8, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0x76d0e0ee # initialize rs1
li x26, 0x09636861 # initialize rs2
mulh x8, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x10, 0xb4c7db77 # initialize rs1
li x27, 0x72ecd8fe # initialize rs2
mulh x13, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x24, 0x402b5535 # initialize rs1
li x28, 0xe9b3a823 # initialize rs2
mulh x1, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x13, 0x7bbaa262 # initialize rs1
li x29, 0xdddc3936 # initialize rs2
mulh x17, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x2, 0x56e19f0e # initialize rs1
li x30, 0x771b3f5d # initialize rs2
mulh x11, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x14, 0xa94d6f60 # initialize rs1
li x31, 0x0a690ab9 # initialize rs2
mulh x25, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 252)

# Testcase cp_rd (Test destination rd = x0)
li x11, 0xec4ad914 # initialize rs1
li x26, 0xfe2374c2 # initialize rs2
mulh x0, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x6, 0x9dc86b23 # initialize rs1
li x5, 0x1b7076ef # initialize rs2
mulh x1, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x12, 0xa6726023 # initialize rs1
li x6, 0xd7a78e64 # initialize rs2
mulh x2, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x26, 0x03c6638b # initialize rs1
li x2, 0x020c187e # initialize rs2
mulh x3, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0x192b6988 # initialize rs1
li x29, 0xa1a2ae0d # initialize rs2
mulh x4, x12, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0xced705b8 # initialize rs1
li x25, 0xd15cfdc4 # initialize rs2
mulh x5, x1, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x110c2db3 # initialize rs1
li x4, 0x0036db37 # initialize rs2
mulh x6, x9, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0xa53d0d65 # initialize rs1
li x20, 0x3d20ca88 # initialize rs2
mulh x7, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x1, 0xb693fca1 # initialize rs1
li x20, 0xc2b0f6fb # initialize rs2
mulh x8, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x7, 0xcda2e5a6 # initialize rs1
li x10, 0x288cd02f # initialize rs2
mulh x9, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x16, 0x97fd24bc # initialize rs1
li x18, 0xc3f807b0 # initialize rs2
mulh x10, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x1, 0x8f34948a # initialize rs1
li x20, 0x5e5553f9 # initialize rs2
mulh x11, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x24, 0x24e2038e # initialize rs1
li x25, 0x151cb813 # initialize rs2
mulh x12, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x24, 0xaf58109f # initialize rs1
li x30, 0xad7c33db # initialize rs2
mulh x13, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0x865371d1 # initialize rs1
li x2, 0x56df9f53 # initialize rs2
mulh x14, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x24, 0xed237b54 # initialize rs1
li x20, 0x8cc264cb # initialize rs2
mulh x15, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x10, 0xe717aadb # initialize rs1
li x25, 0x5cc7cee8 # initialize rs2
mulh x16, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0x1fc554b1 # initialize rs1
li x23, 0xb44713fe # initialize rs2
mulh x17, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x26, 0xd55e1063 # initialize rs1
li x2, 0xa7de7835 # initialize rs2
mulh x18, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x20, 0x68d738da # initialize rs1
li x29, 0x028ef2e3 # initialize rs2
mulh x19, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x24, 0x1946a165 # initialize rs1
li x13, 0x0d6b2757 # initialize rs2
mulh x20, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xec4fc3ae # initialize rs1
li x24, 0xa124af07 # initialize rs2
mulh x21, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x30, 0xd4069144 # initialize rs1
li x15, 0x5deb46fe # initialize rs2
mulh x22, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x11, 0x1452c22c # initialize rs1
li x23, 0x56563ddc # initialize rs2
mulh x23, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0xfe07202c # initialize rs1
li x2, 0x73a1e54b # initialize rs2
mulh x24, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x12, 0xd0d8a790 # initialize rs1
li x8, 0xbba3d184 # initialize rs2
mulh x25, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x8, 0x8e771085 # initialize rs1
li x23, 0x6216c829 # initialize rs2
mulh x26, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x15, 0xc2137f05 # initialize rs1
li x22, 0xef95f096 # initialize rs2
mulh x27, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x22, 0xd1c369e7 # initialize rs1
li x6, 0xae67ff48 # initialize rs2
mulh x28, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x7, 0x437c48e9 # initialize rs1
li x15, 0x28738d4e # initialize rs2
mulh x29, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x24, 0xc09645a0 # initialize rs1
li x20, 0x27640739 # initialize rs2
mulh x30, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0x1612b678 # initialize rs1
li x16, 0x50f78a0d # initialize rs2
mulh x31, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x11, 0x00000000 # initialize rs1
li x14, 0xef62558a # initialize rs2
mulh x21, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0x00000001 # initialize rs1
li x18, 0x1a64ad01 # initialize rs2
mulh x2, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x00000002 # initialize rs1
li x25, 0x40dc1fda # initialize rs2
mulh x17, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x12, 0x80000000 # initialize rs1
li x6, 0x78765941 # initialize rs2
mulh x15, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x17, 0x80000001 # initialize rs1
li x24, 0x2ae5fb52 # initialize rs2
mulh x13, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x9, 0x7fffffff # initialize rs1
li x24, 0x96103c31 # initialize rs2
mulh x29, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs1
li x2, 0xc840f9ec # initialize rs2
mulh x26, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x24, 0xffffffff # initialize rs1
li x19, 0x2d49fe02 # initialize rs2
mulh x10, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x24, 0xfffffffe # initialize rs1
li x31, 0x03092701 # initialize rs2
mulh x25, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x5, 0x5bbc8872 # initialize rs1
li x15, 0x9e5ffc68 # initialize rs2
mulh x8, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x3, 0xaaaaaaaa # initialize rs1
li x19, 0x1866e87c # initialize rs2
mulh x27, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x25, 0x55555555 # initialize rs1
li x13, 0xfab4c4ef # initialize rs2
mulh x24, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x14, 0xbd74dece # initialize rs1
li x16, 0x00000000 # initialize rs2
mulh x23, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x13, 0x0ba809d2 # initialize rs1
li x23, 0x00000001 # initialize rs2
mulh x10, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0x972a5371 # initialize rs1
li x6, 0x00000002 # initialize rs2
mulh x23, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x20, 0x897cc17e # initialize rs1
li x12, 0x80000000 # initialize rs2
mulh x5, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x15, 0x47c4e9d5 # initialize rs1
li x18, 0x80000001 # initialize rs2
mulh x29, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x23, 0x0c16f559 # initialize rs1
li x5, 0x7fffffff # initialize rs2
mulh x2, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x14, 0x78fd5829 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
mulh x5, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x14, 0xdbd552d2 # initialize rs1
li x6, 0xffffffff # initialize rs2
mulh x31, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x28, 0xea55bb01 # initialize rs1
li x22, 0xfffffffe # initialize rs2
mulh x16, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x18, 0xbab63708 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
mulh x23, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x17, 0x4bfb53ef # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
mulh x20, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x3, 0xe090358c # initialize rs1
li x14, 0x55555555 # initialize rs2
mulh x2, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x5, 0x00000000 # initialize rs1
li x31, 0x00000000 # initialize rs2
mulh x23, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x31, 0x00000000 # initialize rs1
li x3, 0x00000001 # initialize rs2
mulh x12, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x12, 0x00000000 # initialize rs1
li x14, 0x00000002 # initialize rs2
mulh x11, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x21, 0x00000000 # initialize rs1
li x8, 0x80000000 # initialize rs2
mulh x29, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x15, 0x00000000 # initialize rs1
li x29, 0x80000001 # initialize rs2
mulh x8, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x5, 0x00000000 # initialize rs1
li x13, 0x7fffffff # initialize rs2
mulh x30, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x17, 0x00000000 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
mulh x16, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x21, 0x00000000 # initialize rs1
li x13, 0xffffffff # initialize rs2
mulh x11, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x1, 0x00000000 # initialize rs1
li x18, 0xfffffffe # initialize rs2
mulh x28, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x19, 0x00000000 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
mulh x28, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x23, 0x00000000 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
mulh x10, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x27, 0x00000000 # initialize rs1
li x17, 0x55555555 # initialize rs2
mulh x14, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x21, 0x00000001 # initialize rs1
li x30, 0x00000000 # initialize rs2
mulh x3, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x31, 0x00000001 # initialize rs1
li x17, 0x00000001 # initialize rs2
mulh x19, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x8, 0x00000001 # initialize rs1
li x7, 0x00000002 # initialize rs2
mulh x20, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x2, 0x00000001 # initialize rs1
li x12, 0x80000000 # initialize rs2
mulh x11, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x5, 0x00000001 # initialize rs1
li x15, 0x80000001 # initialize rs2
mulh x28, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x18, 0x00000001 # initialize rs1
li x17, 0x7fffffff # initialize rs2
mulh x23, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x14, 0x00000001 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
mulh x19, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x18, 0x00000001 # initialize rs1
li x3, 0xffffffff # initialize rs2
mulh x30, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x11, 0x00000001 # initialize rs1
li x7, 0xfffffffe # initialize rs2
mulh x8, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x11, 0x00000001 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
mulh x2, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x31, 0x00000001 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
mulh x2, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x2, 0x00000001 # initialize rs1
li x25, 0x55555555 # initialize rs2
mulh x10, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x7, 0x00000002 # initialize rs1
li x1, 0x00000000 # initialize rs2
mulh x24, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x9, 0x00000002 # initialize rs1
li x26, 0x00000001 # initialize rs2
mulh x21, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x15, 0x00000002 # initialize rs1
li x24, 0x00000002 # initialize rs2
mulh x3, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x28, 0x00000002 # initialize rs1
li x1, 0x80000000 # initialize rs2
mulh x30, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x20, 0x00000002 # initialize rs1
li x31, 0x80000001 # initialize rs2
mulh x19, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x19, 0x00000002 # initialize rs1
li x6, 0x7fffffff # initialize rs2
mulh x10, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x5, 0x00000002 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
mulh x11, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x8, 0x00000002 # initialize rs1
li x16, 0xffffffff # initialize rs2
mulh x6, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x8, 0x00000002 # initialize rs1
li x2, 0xfffffffe # initialize rs2
mulh x16, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x9, 0x00000002 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
mulh x22, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x31, 0x00000002 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
mulh x28, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x18, 0x00000002 # initialize rs1
li x14, 0x55555555 # initialize rs2
mulh x28, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x18, 0x80000000 # initialize rs1
li x23, 0x00000000 # initialize rs2
mulh x30, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x9, 0x80000000 # initialize rs1
li x13, 0x00000001 # initialize rs2
mulh x31, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x9, 0x80000000 # initialize rs1
li x16, 0x00000002 # initialize rs2
mulh x1, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x13, 0x80000000 # initialize rs1
li x11, 0x80000000 # initialize rs2
mulh x27, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x28, 0x80000000 # initialize rs1
li x30, 0x80000001 # initialize rs2
mulh x16, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x22, 0x80000000 # initialize rs1
li x13, 0x7fffffff # initialize rs2
mulh x17, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x12, 0x80000000 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
mulh x13, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x6, 0x80000000 # initialize rs1
li x29, 0xffffffff # initialize rs2
mulh x17, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x23, 0x80000000 # initialize rs1
li x15, 0xfffffffe # initialize rs2
mulh x26, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x10, 0x80000000 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
mulh x31, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x14, 0x80000000 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
mulh x22, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x21, 0x80000000 # initialize rs1
li x18, 0x55555555 # initialize rs2
mulh x16, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x5, 0x80000001 # initialize rs1
li x13, 0x00000000 # initialize rs2
mulh x26, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x29, 0x80000001 # initialize rs1
li x21, 0x00000001 # initialize rs2
mulh x20, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x23, 0x80000001 # initialize rs1
li x9, 0x00000002 # initialize rs2
mulh x29, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x26, 0x80000001 # initialize rs1
li x30, 0x80000000 # initialize rs2
mulh x18, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x7, 0x80000001 # initialize rs1
li x20, 0x80000001 # initialize rs2
mulh x16, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x25, 0x80000001 # initialize rs1
li x27, 0x7fffffff # initialize rs2
mulh x22, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x14, 0x80000001 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
mulh x16, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x24, 0x80000001 # initialize rs1
li x25, 0xffffffff # initialize rs2
mulh x7, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x27, 0x80000001 # initialize rs1
li x19, 0xfffffffe # initialize rs2
mulh x10, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x18, 0x80000001 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
mulh x11, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x16, 0x80000001 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
mulh x12, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x10, 0x80000001 # initialize rs1
li x18, 0x55555555 # initialize rs2
mulh x21, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x24, 0x7fffffff # initialize rs1
li x8, 0x00000000 # initialize rs2
mulh x21, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x28, 0x7fffffff # initialize rs1
li x17, 0x00000001 # initialize rs2
mulh x9, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x30, 0x7fffffff # initialize rs1
li x23, 0x00000002 # initialize rs2
mulh x9, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x19, 0x7fffffff # initialize rs1
li x14, 0x80000000 # initialize rs2
mulh x25, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x30, 0x7fffffff # initialize rs1
li x9, 0x80000001 # initialize rs2
mulh x31, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x15, 0x7fffffff # initialize rs1
li x18, 0x7fffffff # initialize rs2
mulh x29, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x14, 0x7fffffff # initialize rs1
li x26, 0x7ffffffe # initialize rs2
mulh x23, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x24, 0x7fffffff # initialize rs1
li x10, 0xffffffff # initialize rs2
mulh x2, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x6, 0x7fffffff # initialize rs1
li x19, 0xfffffffe # initialize rs2
mulh x14, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x27, 0x7fffffff # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
mulh x30, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x27, 0x7fffffff # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
mulh x2, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x6, 0x7fffffff # initialize rs1
li x17, 0x55555555 # initialize rs2
mulh x2, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x20, 0x7ffffffe # initialize rs1
li x12, 0x00000000 # initialize rs2
mulh x10, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x6, 0x7ffffffe # initialize rs1
li x27, 0x00000001 # initialize rs2
mulh x22, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x17, 0x7ffffffe # initialize rs1
li x13, 0x00000002 # initialize rs2
mulh x18, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x11, 0x7ffffffe # initialize rs1
li x8, 0x80000000 # initialize rs2
mulh x25, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x14, 0x7ffffffe # initialize rs1
li x5, 0x80000001 # initialize rs2
mulh x22, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x28, 0x7ffffffe # initialize rs1
li x25, 0x7fffffff # initialize rs2
mulh x26, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x9, 0x7ffffffe # initialize rs1
li x28, 0x7ffffffe # initialize rs2
mulh x19, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x9, 0x7ffffffe # initialize rs1
li x31, 0xffffffff # initialize rs2
mulh x25, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x28, 0x7ffffffe # initialize rs1
li x6, 0xfffffffe # initialize rs2
mulh x22, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x18, 0x7ffffffe # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
mulh x16, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x24, 0x7ffffffe # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
mulh x18, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x2, 0x7ffffffe # initialize rs1
li x9, 0x55555555 # initialize rs2
mulh x6, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x25, 0xffffffff # initialize rs1
li x15, 0x00000000 # initialize rs2
mulh x9, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x17, 0xffffffff # initialize rs1
li x8, 0x00000001 # initialize rs2
mulh x29, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x26, 0xffffffff # initialize rs1
li x15, 0x00000002 # initialize rs2
mulh x19, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x19, 0xffffffff # initialize rs1
li x25, 0x80000000 # initialize rs2
mulh x29, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x19, 0xffffffff # initialize rs1
li x11, 0x80000001 # initialize rs2
mulh x26, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x29, 0xffffffff # initialize rs1
li x18, 0x7fffffff # initialize rs2
mulh x3, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x9, 0xffffffff # initialize rs1
li x7, 0x7ffffffe # initialize rs2
mulh x5, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x6, 0xffffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
mulh x30, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x29, 0xffffffff # initialize rs1
li x10, 0xfffffffe # initialize rs2
mulh x31, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x23, 0xffffffff # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
mulh x21, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x2, 0xffffffff # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
mulh x8, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x5, 0xffffffff # initialize rs1
li x7, 0x55555555 # initialize rs2
mulh x19, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x1, 0xfffffffe # initialize rs1
li x31, 0x00000000 # initialize rs2
mulh x14, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x6, 0xfffffffe # initialize rs1
li x28, 0x00000001 # initialize rs2
mulh x12, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x13, 0xfffffffe # initialize rs1
li x25, 0x00000002 # initialize rs2
mulh x11, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x9, 0xfffffffe # initialize rs1
li x5, 0x80000000 # initialize rs2
mulh x26, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x17, 0xfffffffe # initialize rs1
li x19, 0x80000001 # initialize rs2
mulh x9, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x8, 0xfffffffe # initialize rs1
li x15, 0x7fffffff # initialize rs2
mulh x23, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x25, 0xfffffffe # initialize rs1
li x20, 0x7ffffffe # initialize rs2
mulh x6, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x31, 0xfffffffe # initialize rs1
li x19, 0xffffffff # initialize rs2
mulh x25, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x21, 0xfffffffe # initialize rs1
li x26, 0xfffffffe # initialize rs2
mulh x2, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x9, 0xfffffffe # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
mulh x18, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x16, 0xfffffffe # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
mulh x19, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x27, 0xfffffffe # initialize rs1
li x28, 0x55555555 # initialize rs2
mulh x8, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x19, 0x5bbc8872 # initialize rs1
li x22, 0x00000000 # initialize rs2
mulh x1, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x20, 0x5bbc8872 # initialize rs1
li x15, 0x00000001 # initialize rs2
mulh x27, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x14, 0x5bbc8872 # initialize rs1
li x28, 0x00000002 # initialize rs2
mulh x17, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x23, 0x5bbc8872 # initialize rs1
li x31, 0x80000000 # initialize rs2
mulh x30, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x13, 0x5bbc8872 # initialize rs1
li x11, 0x80000001 # initialize rs2
mulh x22, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x2, 0x5bbc8872 # initialize rs1
li x6, 0x7fffffff # initialize rs2
mulh x10, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x17, 0x5bbc8872 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
mulh x28, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x8, 0x5bbc8872 # initialize rs1
li x15, 0xffffffff # initialize rs2
mulh x31, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x25, 0x5bbc8872 # initialize rs1
li x15, 0xfffffffe # initialize rs2
mulh x5, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x18, 0x5bbc8872 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
mulh x30, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x16, 0x5bbc8872 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
mulh x28, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x6, 0x5bbc8872 # initialize rs1
li x16, 0x55555555 # initialize rs2
mulh x25, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x28, 0xaaaaaaaa # initialize rs1
li x5, 0x00000000 # initialize rs2
mulh x2, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x2, 0xaaaaaaaa # initialize rs1
li x6, 0x00000001 # initialize rs2
mulh x18, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x17, 0xaaaaaaaa # initialize rs1
li x26, 0x00000002 # initialize rs2
mulh x21, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x29, 0xaaaaaaaa # initialize rs1
li x9, 0x80000000 # initialize rs2
mulh x28, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x18, 0xaaaaaaaa # initialize rs1
li x5, 0x80000001 # initialize rs2
mulh x13, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x22, 0xaaaaaaaa # initialize rs1
li x5, 0x7fffffff # initialize rs2
mulh x13, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x20, 0xaaaaaaaa # initialize rs1
li x14, 0x7ffffffe # initialize rs2
mulh x1, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x12, 0xaaaaaaaa # initialize rs1
li x10, 0xffffffff # initialize rs2
mulh x21, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x31, 0xaaaaaaaa # initialize rs1
li x5, 0xfffffffe # initialize rs2
mulh x27, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x17, 0xaaaaaaaa # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
mulh x8, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x30, 0xaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
mulh x11, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x16, 0xaaaaaaaa # initialize rs1
li x7, 0x55555555 # initialize rs2
mulh x2, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x30, 0x55555555 # initialize rs1
li x27, 0x00000000 # initialize rs2
mulh x22, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x30, 0x55555555 # initialize rs1
li x7, 0x00000001 # initialize rs2
mulh x13, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x16, 0x55555555 # initialize rs1
li x26, 0x00000002 # initialize rs2
mulh x6, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x11, 0x55555555 # initialize rs1
li x1, 0x80000000 # initialize rs2
mulh x26, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x6, 0x55555555 # initialize rs1
li x23, 0x80000001 # initialize rs2
mulh x27, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x13, 0x55555555 # initialize rs1
li x6, 0x7fffffff # initialize rs2
mulh x29, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x28, 0x55555555 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
mulh x25, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x17, 0x55555555 # initialize rs1
li x5, 0xffffffff # initialize rs2
mulh x12, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x14, 0x55555555 # initialize rs1
li x1, 0xfffffffe # initialize rs2
mulh x16, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x24, 0x55555555 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
mulh x5, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x30, 0x55555555 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
mulh x24, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x14, 0x55555555 # initialize rs1
li x17, 0x55555555 # initialize rs2
mulh x2, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xe2cabe95 # initialize rs1
li x0, 0x10e3c45f # initialize rs2
mulh x25, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xcc7ab83d # initialize rs1
li x1, 0x90d15024 # initialize rs2
mulh x23, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x8740123d # initialize rs1
li x2, 0x2aef0b4c # initialize rs2
mulh x16, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x16955946 # initialize rs1
li x3, 0x8a9575b2 # initialize rs2
mulh x12, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x40ff53e5 # initialize rs1
li x4, 0x78a446bd # initialize rs2
mulh x25, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x91c31bf7 # initialize rs1
li x5, 0x5a17035f # initialize rs2
mulh x19, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0421ed4f # initialize rs1
li x6, 0xf7cbd5b6 # initialize rs2
mulh x30, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x137ef6d6 # initialize rs1
li x7, 0x1cb51ca5 # initialize rs2
mulh x26, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x9d8e1296 # initialize rs1
li x8, 0xd0d22af2 # initialize rs2
mulh x25, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x9b7895f8 # initialize rs1
li x9, 0x0ce69c6d # initialize rs2
mulh x18, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x3696e975 # initialize rs1
li x10, 0xfb6f528a # initialize rs2
mulh x2, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x1c914720 # initialize rs1
li x11, 0xac38429e # initialize rs2
mulh x25, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x5240e7e7 # initialize rs1
li x12, 0xe481fa30 # initialize rs2
mulh x17, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xec934107 # initialize rs1
li x13, 0xd6c8cdb2 # initialize rs2
mulh x11, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xde93b7f0 # initialize rs1
li x14, 0xa124a142 # initialize rs2
mulh x30, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x35c84470 # initialize rs1
li x15, 0x6fe4cd52 # initialize rs2
mulh x21, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xda64ca03 # initialize rs1
li x16, 0xe4618b0c # initialize rs2
mulh x8, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x287e7808 # initialize rs1
li x17, 0xdbba19b0 # initialize rs2
mulh x11, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x0c356a3a # initialize rs1
li x18, 0x3bf22102 # initialize rs2
mulh x23, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xe0919f4e # initialize rs1
li x19, 0x3b6e4670 # initialize rs2
mulh x3, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x41bb1c1f # initialize rs1
li x20, 0xa8190be6 # initialize rs2
mulh x18, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x02774cca # initialize rs1
li x21, 0xcc1ce131 # initialize rs2
mulh x1, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x2fc9b7b4 # initialize rs1
li x22, 0x553bbfb5 # initialize rs2
mulh x31, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xe19635ce # initialize rs1
li x23, 0x380e5190 # initialize rs2
mulh x25, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x669b4e6d # initialize rs1
li x24, 0x30e19519 # initialize rs2
mulh x11, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x7c6c6f26 # initialize rs1
li x25, 0x478fe1d0 # initialize rs2
mulh x27, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x097c50ea # initialize rs1
li x26, 0xeccf5ef5 # initialize rs2
mulh x18, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xc433705d # initialize rs1
li x27, 0x3353c0c7 # initialize rs2
mulh x26, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xa4f7f255 # initialize rs1
li x28, 0xc8cf9c6e # initialize rs2
mulh x24, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x4cb4e4ce # initialize rs1
li x29, 0x86d73eb2 # initialize rs2
mulh x17, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xaebd0843 # initialize rs1
li x30, 0x9c854696 # initialize rs2
mulh x22, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x5cb8913e # initialize rs1
li x31, 0x3f11a5e4 # initialize rs2
mulh x2, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xf00ce5e8 # initialize rs1
li x15, 0x1c94687b # initialize rs2
mulh x0, x0, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xf7ce2783 # initialize rs1
li x15, 0x41b64ea3 # initialize rs2
mulh x1, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x8c5068da # initialize rs1
li x13, 0xe79a097d # initialize rs2
mulh x2, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x0128d8f2 # initialize rs1
li x16, 0xccf6a4a6 # initialize rs2
mulh x3, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe2c1601d # initialize rs1
li x27, 0x8884330f # initialize rs2
mulh x4, x4, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2486499c # initialize rs1
li x8, 0x5b628588 # initialize rs2
mulh x5, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x47f1a837 # initialize rs1
li x17, 0xab29439a # initialize rs2
mulh x6, x6, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfc49caa8 # initialize rs1
li x21, 0x81ae18b3 # initialize rs2
mulh x7, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x2a1d404b # initialize rs1
li x22, 0xbf76b19c # initialize rs2
mulh x8, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf7436497 # initialize rs1
li x28, 0x3b63928b # initialize rs2
mulh x9, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x71b1893c # initialize rs1
li x21, 0xcfe48b27 # initialize rs2
mulh x10, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x4060bba8 # initialize rs1
li x27, 0x672f13ba # initialize rs2
mulh x11, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x434479ca # initialize rs1
li x25, 0xdb24a2e5 # initialize rs2
mulh x12, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x9c78c849 # initialize rs1
li x2, 0x18716bbc # initialize rs2
mulh x13, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc3a00eed # initialize rs1
li x6, 0x32c941c1 # initialize rs2
mulh x14, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8956c0e2 # initialize rs1
li x1, 0x9d6a2ef5 # initialize rs2
mulh x15, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x78212236 # initialize rs1
li x30, 0x06621afe # initialize rs2
mulh x16, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x815594a4 # initialize rs1
li x22, 0x824beec6 # initialize rs2
mulh x17, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xe5cdcac6 # initialize rs1
li x8, 0xb14feeb8 # initialize rs2
mulh x18, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x1febf700 # initialize rs1
li x14, 0xdc65a8e2 # initialize rs2
mulh x19, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xb80b8497 # initialize rs1
li x21, 0x45811470 # initialize rs2
mulh x20, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xcaf91f73 # initialize rs1
li x8, 0x6452470f # initialize rs2
mulh x21, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x0e8ab7b1 # initialize rs1
li x21, 0x38444b82 # initialize rs2
mulh x22, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x73a6e1f6 # initialize rs1
li x26, 0x36c7cc98 # initialize rs2
mulh x23, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x1fee855e # initialize rs1
li x26, 0xf8ac7f29 # initialize rs2
mulh x24, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xa51040cd # initialize rs1
li x21, 0xa436969d # initialize rs2
mulh x25, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x4a29d745 # initialize rs1
li x11, 0x633794e7 # initialize rs2
mulh x26, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x6c5acf87 # initialize rs1
li x3, 0xa82fc7ac # initialize rs2
mulh x27, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xcc8ca497 # initialize rs1
li x26, 0x57b9ec6e # initialize rs2
mulh x28, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x47182aa7 # initialize rs1
li x8, 0x2a316e0b # initialize rs2
mulh x29, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xeab33e7e # initialize rs1
li x15, 0x73f4b2e4 # initialize rs2
mulh x30, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xcb77878a # initialize rs1
li x1, 0x5a1b8fc5 # initialize rs2
mulh x31, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x23, 0xc218c578 # initialize rs1
li x0, 0xdc250b45 # initialize rs2
mulh x0, x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x28, 0x5611ce79 # initialize rs1
li x1, 0x6334946c # initialize rs2
mulh x1, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x7, 0x6e2a5105 # initialize rs1
li x2, 0x0c489fa6 # initialize rs2
mulh x2, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x6, 0x63f47c6c # initialize rs1
li x3, 0xbf0fae52 # initialize rs2
mulh x3, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0xfd89e546 # initialize rs1
li x4, 0xb0f098b6 # initialize rs2
mulh x4, x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x1d1455e2 # initialize rs1
li x5, 0x2cc2c046 # initialize rs2
mulh x5, x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0x09f8ca9b # initialize rs1
li x6, 0x50565365 # initialize rs2
mulh x6, x25, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0x0b4bd85d # initialize rs1
li x7, 0xfe745c1e # initialize rs2
mulh x7, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x28, 0x90da8de3 # initialize rs1
li x8, 0x34294fb4 # initialize rs2
mulh x8, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x25, 0xf0687d74 # initialize rs1
li x9, 0x53142fa6 # initialize rs2
mulh x9, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x25, 0x5d00961e # initialize rs1
li x10, 0xd8279e34 # initialize rs2
mulh x10, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x7, 0x8801b80c # initialize rs1
li x11, 0x6fb36969 # initialize rs2
mulh x11, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x22, 0xa4dc079b # initialize rs1
li x12, 0x337cc8b9 # initialize rs2
mulh x12, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x9, 0x111c2989 # initialize rs1
li x13, 0x2730db0c # initialize rs2
mulh x13, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x19, 0xf5d008d0 # initialize rs1
li x14, 0x88b70c8a # initialize rs2
mulh x14, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x14, 0xac2153a7 # initialize rs1
li x15, 0xc8116817 # initialize rs2
mulh x15, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x29, 0x69659859 # initialize rs1
li x16, 0x8b029be2 # initialize rs2
mulh x16, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x31, 0xdf8e6a3f # initialize rs1
li x17, 0x97cf00cc # initialize rs2
mulh x17, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x13, 0xabaf39e4 # initialize rs1
li x18, 0x130a6590 # initialize rs2
mulh x18, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x14, 0xd6274998 # initialize rs1
li x19, 0x40232890 # initialize rs2
mulh x19, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x17, 0x75d40fcf # initialize rs1
li x20, 0x80806fd1 # initialize rs2
mulh x20, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x12, 0xb80d4e03 # initialize rs1
li x21, 0x51efdd77 # initialize rs2
mulh x21, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x11, 0x6d89fd96 # initialize rs1
li x22, 0x67acd1ef # initialize rs2
mulh x22, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x30, 0x8b50d279 # initialize rs1
li x23, 0xaa046d7b # initialize rs2
mulh x23, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x30, 0xd4cd445b # initialize rs1
li x24, 0x029fca87 # initialize rs2
mulh x24, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x30, 0x02b2f4d7 # initialize rs1
li x25, 0x4fc67324 # initialize rs2
mulh x25, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x14, 0x08ef23ff # initialize rs1
li x26, 0x30245b6a # initialize rs2
mulh x26, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x18, 0x532359db # initialize rs1
li x27, 0x49297720 # initialize rs2
mulh x27, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x10, 0xf05064b7 # initialize rs1
li x28, 0xfc9c862e # initialize rs2
mulh x28, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x31, 0x2ec1080d # initialize rs1
li x29, 0x2479cc70 # initialize rs2
mulh x29, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x8, 0xb62dc359 # initialize rs1
li x30, 0xede7a971 # initialize rs2
mulh x30, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x6, 0x5ac6f962 # initialize rs1
li x31, 0x32a9c9d5 # initialize rs2
mulh x31, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe86b2365 # initialize rs1
li x0, 0xada5531f # initialize rs2
mulh x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x5f4b311b # initialize rs1
li x1, 0xfe130f20 # initialize rs2
mulh x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x71ac07c6 # initialize rs1
li x2, 0x51b98f83 # initialize rs2
mulh x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xefbdeb38 # initialize rs1
li x3, 0xe4fd3183 # initialize rs2
mulh x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc3519fcb # initialize rs1
li x4, 0x04405d49 # initialize rs2
mulh x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfe6fc5c6 # initialize rs1
li x5, 0x2d9757d3 # initialize rs2
mulh x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb6f0f2bc # initialize rs1
li x6, 0x0c8fe258 # initialize rs2
mulh x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x860098fd # initialize rs1
li x7, 0x08c73d59 # initialize rs2
mulh x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xbfc95372 # initialize rs1
li x8, 0xf3d867db # initialize rs2
mulh x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xf55bde9c # initialize rs1
li x9, 0x0bc53a07 # initialize rs2
mulh x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xbddfe276 # initialize rs1
li x10, 0x451393b4 # initialize rs2
mulh x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xf0bf44e5 # initialize rs1
li x11, 0xa78c2a1e # initialize rs2
mulh x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x2b80d948 # initialize rs1
li x12, 0x3e6fdb7e # initialize rs2
mulh x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x13ea96e4 # initialize rs1
li x13, 0x5736ea7e # initialize rs2
mulh x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xe3e988f2 # initialize rs1
li x14, 0xbf609bc9 # initialize rs2
mulh x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xe89671cd # initialize rs1
li x15, 0xaf14a6b4 # initialize rs2
mulh x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x3047f66d # initialize rs1
li x16, 0x25834e1b # initialize rs2
mulh x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xaf4b9d9f # initialize rs1
li x17, 0x9402963b # initialize rs2
mulh x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xc5c38468 # initialize rs1
li x18, 0x9c466109 # initialize rs2
mulh x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x66415dd4 # initialize rs1
li x19, 0xb92147f2 # initialize rs2
mulh x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xa322bda7 # initialize rs1
li x20, 0x0095b822 # initialize rs2
mulh x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xcc91ba99 # initialize rs1
li x21, 0x1bef3aab # initialize rs2
mulh x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x6b0acd67 # initialize rs1
li x22, 0xb1c8ede9 # initialize rs2
mulh x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x3b7a24f2 # initialize rs1
li x23, 0xd06f7da6 # initialize rs2
mulh x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x705c4d26 # initialize rs1
li x24, 0x2fea344e # initialize rs2
mulh x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x24b86bf5 # initialize rs1
li x25, 0x8de01e65 # initialize rs2
mulh x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x26c3c640 # initialize rs1
li x26, 0xacba9ac7 # initialize rs2
mulh x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x86bb5e3f # initialize rs1
li x27, 0xb536e225 # initialize rs2
mulh x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x9a4e68f4 # initialize rs1
li x28, 0x6f18f5bb # initialize rs2
mulh x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x95082284 # initialize rs1
li x29, 0x49aeae6d # initialize rs2
mulh x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x6172c6cd # initialize rs1
li x30, 0x8569f7c7 # initialize rs2
mulh x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x9253fce4 # initialize rs1
li x31, 0xd8361018 # initialize rs2
mulh x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x12, x30 # perform first operation
mulh x26, x10, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x7, x20 # perform first operation
mulh x3, x12, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x12, x27 # perform first operation
mulh x2, x30, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x14, x9 # perform first operation
mulh x14, x8, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x21, x23 # perform first operation
mulh x2, x17, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x14, x12 # perform first operation
mulh x9, x28, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x10, x11 # perform first operation
mulh x26, x9, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x22, x21 # perform first operation
mulh x27, x1, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x7, x18 # perform first operation
mulh x14, x15, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x21, x24 # perform first operation
mulh x21, x16, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x7, x15 # perform first operation
mulh x15, x8, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x28, x30 # perform first operation
mulh x13, x14, x24 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-mulhu.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x17432fcd # initialize rs1
li x6, 0xf722f804 # initialize rs2
mulhu x3, x0, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x79b5073b # initialize rs1
li x6, 0x56b86d48 # initialize rs2
mulhu x29, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x18aa79a4 # initialize rs1
li x28, 0x468a6db5 # initialize rs2
mulhu x21, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x2e10f2ab # initialize rs1
li x12, 0xcdd5943d # initialize rs2
mulhu x8, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe90868a6 # initialize rs1
li x11, 0x4c6a8908 # initialize rs2
mulhu x3, x4, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x299da4ba # initialize rs1
li x16, 0xfaed267a # initialize rs2
mulhu x26, x5, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x86fcef4d # initialize rs1
li x14, 0x0628a242 # initialize rs2
mulhu x7, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xc559b47e # initialize rs1
li x22, 0xcd3d110f # initialize rs2
mulhu x23, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x776a6cda # initialize rs1
li x29, 0x8156b383 # initialize rs2
mulhu x17, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xe998b974 # initialize rs1
li x3, 0x5e52af30 # initialize rs2
mulhu x22, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xac3861a7 # initialize rs1
li x18, 0x19529dc4 # initialize rs2
mulhu x26, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xe0ee6806 # initialize rs1
li x20, 0x07a3ab42 # initialize rs2
mulhu x23, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x50e1950f # initialize rs1
li x7, 0xa748715c # initialize rs2
mulhu x5, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x76220212 # initialize rs1
li x18, 0xe7048adc # initialize rs2
mulhu x6, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x4e0b7acf # initialize rs1
li x19, 0x8416e166 # initialize rs2
mulhu x26, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1a0812f1 # initialize rs1
li x14, 0xbe3d8eb1 # initialize rs2
mulhu x30, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xc834e8e9 # initialize rs1
li x1, 0xacdeb9f7 # initialize rs2
mulhu x14, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xd9f02161 # initialize rs1
li x30, 0x5052af5f # initialize rs2
mulhu x2, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x1a656987 # initialize rs1
li x29, 0x2fd434a3 # initialize rs2
mulhu x30, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x9d14f89a # initialize rs1
li x11, 0x47edd060 # initialize rs2
mulhu x30, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x122058d2 # initialize rs1
li x31, 0xc9abb433 # initialize rs2
mulhu x12, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x5eb54149 # initialize rs1
li x25, 0x7d08dbd1 # initialize rs2
mulhu x29, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xb4055bf8 # initialize rs1
li x10, 0x0dbd1395 # initialize rs2
mulhu x13, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x2d10070e # initialize rs1
li x20, 0xe1438e69 # initialize rs2
mulhu x27, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x7afc0b01 # initialize rs1
li x22, 0xc5e52ff2 # initialize rs2
mulhu x6, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x8a4df606 # initialize rs1
li x26, 0xaa952447 # initialize rs2
mulhu x27, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xe425999d # initialize rs1
li x22, 0x5c4aa9f3 # initialize rs2
mulhu x9, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x0d88be99 # initialize rs1
li x24, 0x76767d0f # initialize rs2
mulhu x3, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xf104c157 # initialize rs1
li x25, 0xa56c53ae # initialize rs2
mulhu x13, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xbd15e0b5 # initialize rs1
li x27, 0xfea1c7bd # initialize rs2
mulhu x7, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x7f816533 # initialize rs1
li x8, 0x45c1e58b # initialize rs2
mulhu x14, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xd4457a2a # initialize rs1
li x7, 0x9a7a720a # initialize rs2
mulhu x20, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x19, 0x510b3e2c # initialize rs1
li x0, 0xc1b9c240 # initialize rs2
mulhu x30, x19, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x5, 0x20e9c169 # initialize rs1
li x1, 0x828a790c # initialize rs2
mulhu x9, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0xec0ba0db # initialize rs1
li x2, 0xaeb55997 # initialize rs2
mulhu x6, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x26, 0x051f006b # initialize rs1
li x3, 0x3b7f5e81 # initialize rs2
mulhu x27, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0xc62483b2 # initialize rs1
li x4, 0xc735c58f # initialize rs2
mulhu x22, x21, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0xe2d7d4b3 # initialize rs1
li x5, 0x7ab7d882 # initialize rs2
mulhu x19, x20, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0x90a1eb8d # initialize rs1
li x6, 0x320e64b3 # initialize rs2
mulhu x3, x26, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0xee42ba24 # initialize rs1
li x7, 0x73246184 # initialize rs2
mulhu x28, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x21, 0xa7663a0b # initialize rs1
li x8, 0xf48b3296 # initialize rs2
mulhu x12, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x22, 0x8226b78e # initialize rs1
li x9, 0x28022560 # initialize rs2
mulhu x1, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x20, 0x03d4f02c # initialize rs1
li x10, 0xf0c785d1 # initialize rs2
mulhu x21, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x26, 0x9ff9b0cd # initialize rs1
li x11, 0x4cbe2896 # initialize rs2
mulhu x18, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x22, 0x3bc74405 # initialize rs1
li x12, 0x287fe776 # initialize rs2
mulhu x3, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x18, 0x7440b45c # initialize rs1
li x13, 0xb1a61252 # initialize rs2
mulhu x11, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x3, 0xb8279e6f # initialize rs1
li x14, 0x63eafa4b # initialize rs2
mulhu x31, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x1, 0x4177c169 # initialize rs1
li x15, 0x3bdeea5a # initialize rs2
mulhu x13, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x2, 0x5f21fc43 # initialize rs1
li x16, 0x6b0ea3d1 # initialize rs2
mulhu x25, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x22, 0xc943417a # initialize rs1
li x17, 0x1f25cc39 # initialize rs2
mulhu x12, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x7, 0x5eae3357 # initialize rs1
li x18, 0x540d546d # initialize rs2
mulhu x25, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x22, 0x26c2dc04 # initialize rs1
li x19, 0xbb8bbd49 # initialize rs2
mulhu x26, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x24, 0xceeb5b75 # initialize rs1
li x20, 0x15a874af # initialize rs2
mulhu x9, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x28, 0x47c5472c # initialize rs1
li x21, 0x9a96499d # initialize rs2
mulhu x29, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x27, 0x776bd701 # initialize rs1
li x22, 0x031cdba2 # initialize rs2
mulhu x8, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x7, 0x60d6cf94 # initialize rs1
li x23, 0x5ee84b9b # initialize rs2
mulhu x31, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x14, 0xc774f98a # initialize rs1
li x24, 0x14f2d5e4 # initialize rs2
mulhu x29, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x8, 0x4c35d676 # initialize rs1
li x25, 0xf27dea0d # initialize rs2
mulhu x29, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x10, 0x61aee5cc # initialize rs1
li x26, 0xa2cb9b6f # initialize rs2
mulhu x18, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x25, 0x5b764edb # initialize rs1
li x27, 0xbd584fe9 # initialize rs2
mulhu x20, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x26, 0xa3cd0f9f # initialize rs1
li x28, 0x92cc4f74 # initialize rs2
mulhu x12, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x7, 0x9d974ad4 # initialize rs1
li x29, 0xa2cdf16a # initialize rs2
mulhu x1, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x16, 0x441f809a # initialize rs1
li x30, 0xfb9c5f10 # initialize rs2
mulhu x18, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x28, 0x3f8d32fc # initialize rs1
li x31, 0x9f26daea # initialize rs2
mulhu x12, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 252)

# Testcase cp_rd (Test destination rd = x0)
li x9, 0x72815b08 # initialize rs1
li x3, 0x11df0951 # initialize rs2
mulhu x0, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x22, 0xc155aea3 # initialize rs1
li x14, 0x0c64a93e # initialize rs2
mulhu x1, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0x7edc301a # initialize rs1
li x5, 0xeaed4c33 # initialize rs2
mulhu x2, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x6, 0xc05c5669 # initialize rs1
li x12, 0x41213427 # initialize rs2
mulhu x3, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0xe3b2422f # initialize rs1
li x14, 0x763948a4 # initialize rs2
mulhu x4, x24, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x091f1367 # initialize rs1
li x8, 0x148874ab # initialize rs2
mulhu x5, x27, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0xb6948412 # initialize rs1
li x9, 0x70986212 # initialize rs2
mulhu x6, x3, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x9da59f2c # initialize rs1
li x19, 0x4debca54 # initialize rs2
mulhu x7, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x7, 0x64a570c3 # initialize rs1
li x12, 0x834e87f8 # initialize rs2
mulhu x8, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x2, 0x9fd65ba6 # initialize rs1
li x24, 0x030b3c84 # initialize rs2
mulhu x9, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x29, 0x4876bc61 # initialize rs1
li x30, 0x43a7aa0f # initialize rs2
mulhu x10, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x24, 0xa595e877 # initialize rs1
li x19, 0xb4bc6b84 # initialize rs2
mulhu x11, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x1, 0xcf0760c2 # initialize rs1
li x15, 0xaad4ff29 # initialize rs2
mulhu x12, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x2, 0x13cf0855 # initialize rs1
li x23, 0x3cfd9a10 # initialize rs2
mulhu x13, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x29, 0xe4ec6561 # initialize rs1
li x3, 0x59898c14 # initialize rs2
mulhu x14, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0xffe96744 # initialize rs1
li x6, 0x88e87872 # initialize rs2
mulhu x15, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x7, 0x0efcedbb # initialize rs1
li x17, 0xf1dc987d # initialize rs2
mulhu x16, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x23, 0x65db7377 # initialize rs1
li x22, 0x38c2ab3b # initialize rs2
mulhu x17, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x15, 0xc0db5c1f # initialize rs1
li x21, 0xbdc221cb # initialize rs2
mulhu x18, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x18, 0xd7295ba4 # initialize rs1
li x6, 0x6476146e # initialize rs2
mulhu x19, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x6, 0x31b107f5 # initialize rs1
li x18, 0xdbc25b97 # initialize rs2
mulhu x20, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x16, 0xc1d8c0f5 # initialize rs1
li x26, 0x9f8ffdb1 # initialize rs2
mulhu x21, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x12, 0x71e238e9 # initialize rs1
li x21, 0xa74cf740 # initialize rs2
mulhu x22, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0x50a8919a # initialize rs1
li x11, 0x657b2ad1 # initialize rs2
mulhu x23, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x16, 0xed42b671 # initialize rs1
li x28, 0xb6e65b2f # initialize rs2
mulhu x24, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x1, 0x9d176eb4 # initialize rs1
li x31, 0xf570474f # initialize rs2
mulhu x25, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x17, 0xf128a4f7 # initialize rs1
li x9, 0x5dc86724 # initialize rs2
mulhu x26, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x3, 0xca270b8b # initialize rs1
li x12, 0x0f9d9af1 # initialize rs2
mulhu x27, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x26, 0x6e0b1ce1 # initialize rs1
li x13, 0xe19214fd # initialize rs2
mulhu x28, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x3, 0xad5d8a27 # initialize rs1
li x21, 0xb6eb3e1d # initialize rs2
mulhu x29, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x26, 0x230e5bdb # initialize rs1
li x21, 0xa3991969 # initialize rs2
mulhu x30, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x15, 0xe0bab547 # initialize rs1
li x18, 0x6ea5b916 # initialize rs2
mulhu x31, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x00000000 # initialize rs1
li x3, 0x03c7d871 # initialize rs2
mulhu x30, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x15, 0x00000001 # initialize rs1
li x18, 0x62bcda87 # initialize rs2
mulhu x31, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x00000002 # initialize rs1
li x31, 0x37463392 # initialize rs2
mulhu x26, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x12, 0x80000000 # initialize rs1
li x11, 0x5cdd28eb # initialize rs2
mulhu x6, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x26, 0x80000001 # initialize rs1
li x25, 0x7b751ab1 # initialize rs2
mulhu x6, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x19, 0x7fffffff # initialize rs1
li x12, 0xdc4d4216 # initialize rs2
mulhu x6, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x16, 0x7ffffffe # initialize rs1
li x7, 0x2e2275b0 # initialize rs2
mulhu x21, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x17, 0xffffffff # initialize rs1
li x8, 0xe7d46b00 # initialize rs2
mulhu x2, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x26, 0xfffffffe # initialize rs1
li x8, 0xf7ba5d18 # initialize rs2
mulhu x1, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x9, 0x5bbc8872 # initialize rs1
li x11, 0x60ec2fe7 # initialize rs2
mulhu x1, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x8, 0xaaaaaaaa # initialize rs1
li x20, 0x6e543615 # initialize rs2
mulhu x18, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x23, 0x55555555 # initialize rs1
li x13, 0x007b486e # initialize rs2
mulhu x15, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x17, 0x4ecc5e53 # initialize rs1
li x18, 0x00000000 # initialize rs2
mulhu x24, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0x8e3e264b # initialize rs1
li x13, 0x00000001 # initialize rs2
mulhu x29, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x30, 0xc4069d10 # initialize rs1
li x11, 0x00000002 # initialize rs2
mulhu x10, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x2, 0x0035918f # initialize rs1
li x19, 0x80000000 # initialize rs2
mulhu x31, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x8, 0x86299b5d # initialize rs1
li x29, 0x80000001 # initialize rs2
mulhu x21, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x3, 0xd8fa40db # initialize rs1
li x14, 0x7fffffff # initialize rs2
mulhu x13, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x22, 0x9484a513 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
mulhu x3, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x30, 0x15f445cb # initialize rs1
li x29, 0xffffffff # initialize rs2
mulhu x16, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x21, 0x7c6ebceb # initialize rs1
li x11, 0xfffffffe # initialize rs2
mulhu x1, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x19, 0xb21b2225 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
mulhu x29, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x31, 0x4be76ece # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
mulhu x12, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x22, 0xaba00d75 # initialize rs1
li x19, 0x55555555 # initialize rs2
mulhu x16, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x11, 0x00000000 # initialize rs1
li x24, 0x00000000 # initialize rs2
mulhu x16, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x18, 0x00000000 # initialize rs1
li x6, 0x00000001 # initialize rs2
mulhu x22, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x3, 0x00000000 # initialize rs1
li x16, 0x00000002 # initialize rs2
mulhu x18, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x18, 0x00000000 # initialize rs1
li x12, 0x80000000 # initialize rs2
mulhu x11, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x26, 0x00000000 # initialize rs1
li x31, 0x80000001 # initialize rs2
mulhu x14, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x6, 0x00000000 # initialize rs1
li x31, 0x7fffffff # initialize rs2
mulhu x10, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x29, 0x00000000 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
mulhu x7, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x9, 0x00000000 # initialize rs1
li x25, 0xffffffff # initialize rs2
mulhu x22, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x16, 0x00000000 # initialize rs1
li x11, 0xfffffffe # initialize rs2
mulhu x14, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x14, 0x00000000 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
mulhu x10, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x19, 0x00000000 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
mulhu x3, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x9, 0x00000000 # initialize rs1
li x31, 0x55555555 # initialize rs2
mulhu x2, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x19, 0x00000001 # initialize rs1
li x20, 0x00000000 # initialize rs2
mulhu x15, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x25, 0x00000001 # initialize rs1
li x7, 0x00000001 # initialize rs2
mulhu x23, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x19, 0x00000001 # initialize rs1
li x8, 0x00000002 # initialize rs2
mulhu x2, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x24, 0x00000001 # initialize rs1
li x22, 0x80000000 # initialize rs2
mulhu x9, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x6, 0x00000001 # initialize rs1
li x23, 0x80000001 # initialize rs2
mulhu x30, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x6, 0x00000001 # initialize rs1
li x1, 0x7fffffff # initialize rs2
mulhu x30, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x26, 0x00000001 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
mulhu x3, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x2, 0x00000001 # initialize rs1
li x8, 0xffffffff # initialize rs2
mulhu x27, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x30, 0x00000001 # initialize rs1
li x31, 0xfffffffe # initialize rs2
mulhu x28, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x31, 0x00000001 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
mulhu x15, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x3, 0x00000001 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
mulhu x28, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x7, 0x00000001 # initialize rs1
li x26, 0x55555555 # initialize rs2
mulhu x2, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x11, 0x00000002 # initialize rs1
li x1, 0x00000000 # initialize rs2
mulhu x17, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x23, 0x00000002 # initialize rs1
li x27, 0x00000001 # initialize rs2
mulhu x1, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x19, 0x00000002 # initialize rs1
li x16, 0x00000002 # initialize rs2
mulhu x10, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x10, 0x00000002 # initialize rs1
li x9, 0x80000000 # initialize rs2
mulhu x27, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x25, 0x00000002 # initialize rs1
li x10, 0x80000001 # initialize rs2
mulhu x24, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x18, 0x00000002 # initialize rs1
li x22, 0x7fffffff # initialize rs2
mulhu x31, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x6, 0x00000002 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
mulhu x8, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x9, 0x00000002 # initialize rs1
li x28, 0xffffffff # initialize rs2
mulhu x27, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x5, 0x00000002 # initialize rs1
li x9, 0xfffffffe # initialize rs2
mulhu x29, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x12, 0x00000002 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
mulhu x25, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x25, 0x00000002 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
mulhu x23, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x5, 0x00000002 # initialize rs1
li x28, 0x55555555 # initialize rs2
mulhu x2, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x14, 0x80000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
mulhu x28, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x28, 0x80000000 # initialize rs1
li x31, 0x00000001 # initialize rs2
mulhu x9, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x2, 0x80000000 # initialize rs1
li x5, 0x00000002 # initialize rs2
mulhu x26, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x2, 0x80000000 # initialize rs1
li x17, 0x80000000 # initialize rs2
mulhu x25, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x9, 0x80000000 # initialize rs1
li x17, 0x80000001 # initialize rs2
mulhu x18, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x15, 0x80000000 # initialize rs1
li x22, 0x7fffffff # initialize rs2
mulhu x1, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x30, 0x80000000 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
mulhu x22, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x7, 0x80000000 # initialize rs1
li x24, 0xffffffff # initialize rs2
mulhu x11, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x1, 0x80000000 # initialize rs1
li x13, 0xfffffffe # initialize rs2
mulhu x26, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x9, 0x80000000 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
mulhu x17, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x11, 0x80000000 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
mulhu x28, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x30, 0x80000000 # initialize rs1
li x18, 0x55555555 # initialize rs2
mulhu x3, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x25, 0x80000001 # initialize rs1
li x3, 0x00000000 # initialize rs2
mulhu x21, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x28, 0x80000001 # initialize rs1
li x10, 0x00000001 # initialize rs2
mulhu x19, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x3, 0x80000001 # initialize rs1
li x18, 0x00000002 # initialize rs2
mulhu x20, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x21, 0x80000001 # initialize rs1
li x16, 0x80000000 # initialize rs2
mulhu x29, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x13, 0x80000001 # initialize rs1
li x2, 0x80000001 # initialize rs2
mulhu x15, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x5, 0x80000001 # initialize rs1
li x26, 0x7fffffff # initialize rs2
mulhu x21, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x31, 0x80000001 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
mulhu x23, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x27, 0x80000001 # initialize rs1
li x5, 0xffffffff # initialize rs2
mulhu x23, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x18, 0x80000001 # initialize rs1
li x21, 0xfffffffe # initialize rs2
mulhu x31, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x19, 0x80000001 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
mulhu x18, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x3, 0x80000001 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
mulhu x7, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x9, 0x80000001 # initialize rs1
li x5, 0x55555555 # initialize rs2
mulhu x6, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x10, 0x7fffffff # initialize rs1
li x2, 0x00000000 # initialize rs2
mulhu x20, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x7, 0x7fffffff # initialize rs1
li x24, 0x00000001 # initialize rs2
mulhu x22, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x13, 0x7fffffff # initialize rs1
li x28, 0x00000002 # initialize rs2
mulhu x17, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x28, 0x7fffffff # initialize rs1
li x21, 0x80000000 # initialize rs2
mulhu x24, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x20, 0x7fffffff # initialize rs1
li x12, 0x80000001 # initialize rs2
mulhu x26, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x20, 0x7fffffff # initialize rs1
li x9, 0x7fffffff # initialize rs2
mulhu x13, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x6, 0x7fffffff # initialize rs1
li x8, 0x7ffffffe # initialize rs2
mulhu x5, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x25, 0x7fffffff # initialize rs1
li x23, 0xffffffff # initialize rs2
mulhu x5, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x25, 0x7fffffff # initialize rs1
li x26, 0xfffffffe # initialize rs2
mulhu x6, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x11, 0x7fffffff # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
mulhu x16, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x17, 0x7fffffff # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
mulhu x16, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x22, 0x7fffffff # initialize rs1
li x18, 0x55555555 # initialize rs2
mulhu x25, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x17, 0x7ffffffe # initialize rs1
li x6, 0x00000000 # initialize rs2
mulhu x19, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x17, 0x7ffffffe # initialize rs1
li x13, 0x00000001 # initialize rs2
mulhu x5, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x27, 0x7ffffffe # initialize rs1
li x24, 0x00000002 # initialize rs2
mulhu x12, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x17, 0x7ffffffe # initialize rs1
li x3, 0x80000000 # initialize rs2
mulhu x15, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x23, 0x7ffffffe # initialize rs1
li x10, 0x80000001 # initialize rs2
mulhu x11, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x15, 0x7ffffffe # initialize rs1
li x1, 0x7fffffff # initialize rs2
mulhu x20, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x17, 0x7ffffffe # initialize rs1
li x13, 0x7ffffffe # initialize rs2
mulhu x31, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x19, 0x7ffffffe # initialize rs1
li x15, 0xffffffff # initialize rs2
mulhu x14, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x9, 0x7ffffffe # initialize rs1
li x14, 0xfffffffe # initialize rs2
mulhu x21, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x16, 0x7ffffffe # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
mulhu x8, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x2, 0x7ffffffe # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
mulhu x5, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x5, 0x7ffffffe # initialize rs1
li x29, 0x55555555 # initialize rs2
mulhu x23, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x23, 0xffffffff # initialize rs1
li x7, 0x00000000 # initialize rs2
mulhu x25, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x12, 0xffffffff # initialize rs1
li x22, 0x00000001 # initialize rs2
mulhu x3, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x28, 0xffffffff # initialize rs1
li x26, 0x00000002 # initialize rs2
mulhu x2, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x2, 0xffffffff # initialize rs1
li x26, 0x80000000 # initialize rs2
mulhu x18, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x5, 0xffffffff # initialize rs1
li x26, 0x80000001 # initialize rs2
mulhu x6, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x1, 0xffffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
mulhu x19, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x6, 0xffffffff # initialize rs1
li x5, 0x7ffffffe # initialize rs2
mulhu x29, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x7, 0xffffffff # initialize rs1
li x19, 0xffffffff # initialize rs2
mulhu x30, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x29, 0xffffffff # initialize rs1
li x30, 0xfffffffe # initialize rs2
mulhu x14, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x27, 0xffffffff # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
mulhu x22, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x29, 0xffffffff # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
mulhu x23, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x27, 0xffffffff # initialize rs1
li x6, 0x55555555 # initialize rs2
mulhu x1, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x22, 0xfffffffe # initialize rs1
li x9, 0x00000000 # initialize rs2
mulhu x11, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x14, 0xfffffffe # initialize rs1
li x20, 0x00000001 # initialize rs2
mulhu x3, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x18, 0xfffffffe # initialize rs1
li x2, 0x00000002 # initialize rs2
mulhu x17, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x28, 0xfffffffe # initialize rs1
li x30, 0x80000000 # initialize rs2
mulhu x13, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x29, 0xfffffffe # initialize rs1
li x22, 0x80000001 # initialize rs2
mulhu x12, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x6, 0xfffffffe # initialize rs1
li x20, 0x7fffffff # initialize rs2
mulhu x14, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x22, 0xfffffffe # initialize rs1
li x26, 0x7ffffffe # initialize rs2
mulhu x15, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x5, 0xfffffffe # initialize rs1
li x3, 0xffffffff # initialize rs2
mulhu x29, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x26, 0xfffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
mulhu x2, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x14, 0xfffffffe # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
mulhu x19, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x19, 0xfffffffe # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
mulhu x18, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x5, 0xfffffffe # initialize rs1
li x31, 0x55555555 # initialize rs2
mulhu x20, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x3, 0x5bbc8872 # initialize rs1
li x25, 0x00000000 # initialize rs2
mulhu x20, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x26, 0x5bbc8872 # initialize rs1
li x10, 0x00000001 # initialize rs2
mulhu x12, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x17, 0x5bbc8872 # initialize rs1
li x5, 0x00000002 # initialize rs2
mulhu x26, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x13, 0x5bbc8872 # initialize rs1
li x31, 0x80000000 # initialize rs2
mulhu x11, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x10, 0x5bbc8872 # initialize rs1
li x15, 0x80000001 # initialize rs2
mulhu x29, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x8, 0x5bbc8872 # initialize rs1
li x11, 0x7fffffff # initialize rs2
mulhu x24, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x27, 0x5bbc8872 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
mulhu x5, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x14, 0x5bbc8872 # initialize rs1
li x3, 0xffffffff # initialize rs2
mulhu x16, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x17, 0x5bbc8872 # initialize rs1
li x31, 0xfffffffe # initialize rs2
mulhu x16, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x3, 0x5bbc8872 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
mulhu x19, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x27, 0x5bbc8872 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
mulhu x5, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x19, 0x5bbc8872 # initialize rs1
li x15, 0x55555555 # initialize rs2
mulhu x27, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x28, 0xaaaaaaaa # initialize rs1
li x5, 0x00000000 # initialize rs2
mulhu x11, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x13, 0xaaaaaaaa # initialize rs1
li x23, 0x00000001 # initialize rs2
mulhu x16, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x5, 0xaaaaaaaa # initialize rs1
li x16, 0x00000002 # initialize rs2
mulhu x18, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x22, 0xaaaaaaaa # initialize rs1
li x30, 0x80000000 # initialize rs2
mulhu x5, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x12, 0xaaaaaaaa # initialize rs1
li x9, 0x80000001 # initialize rs2
mulhu x3, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x13, 0xaaaaaaaa # initialize rs1
li x7, 0x7fffffff # initialize rs2
mulhu x16, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x10, 0xaaaaaaaa # initialize rs1
li x18, 0x7ffffffe # initialize rs2
mulhu x21, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x22, 0xaaaaaaaa # initialize rs1
li x10, 0xffffffff # initialize rs2
mulhu x5, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x19, 0xaaaaaaaa # initialize rs1
li x6, 0xfffffffe # initialize rs2
mulhu x15, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x22, 0xaaaaaaaa # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
mulhu x31, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x12, 0xaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
mulhu x7, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x21, 0xaaaaaaaa # initialize rs1
li x1, 0x55555555 # initialize rs2
mulhu x26, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x20, 0x55555555 # initialize rs1
li x17, 0x00000000 # initialize rs2
mulhu x1, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x14, 0x55555555 # initialize rs1
li x29, 0x00000001 # initialize rs2
mulhu x12, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x22, 0x55555555 # initialize rs1
li x16, 0x00000002 # initialize rs2
mulhu x15, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x30, 0x55555555 # initialize rs1
li x31, 0x80000000 # initialize rs2
mulhu x25, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x30, 0x55555555 # initialize rs1
li x10, 0x80000001 # initialize rs2
mulhu x6, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x25, 0x55555555 # initialize rs1
li x1, 0x7fffffff # initialize rs2
mulhu x31, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x30, 0x55555555 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
mulhu x21, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x7, 0x55555555 # initialize rs1
li x10, 0xffffffff # initialize rs2
mulhu x26, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x10, 0x55555555 # initialize rs1
li x13, 0xfffffffe # initialize rs2
mulhu x11, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x7, 0x55555555 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
mulhu x11, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x7, 0x55555555 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
mulhu x8, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x31, 0x55555555 # initialize rs1
li x25, 0x55555555 # initialize rs2
mulhu x24, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x91d20c9f # initialize rs1
li x0, 0xae4f3841 # initialize rs2
mulhu x30, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xc70fe58a # initialize rs1
li x1, 0xcf1c4a18 # initialize rs2
mulhu x13, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x8258fad3 # initialize rs1
li x2, 0xfa3aed1c # initialize rs2
mulhu x21, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xf7c0ab85 # initialize rs1
li x3, 0xd8ba0fdb # initialize rs2
mulhu x16, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x933dff40 # initialize rs1
li x4, 0x8accd521 # initialize rs2
mulhu x27, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe23cbf70 # initialize rs1
li x5, 0xe27c55e3 # initialize rs2
mulhu x3, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcf0384aa # initialize rs1
li x6, 0xc538e58d # initialize rs2
mulhu x31, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc2a66d83 # initialize rs1
li x7, 0x9ae9c365 # initialize rs2
mulhu x1, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xa67d06e2 # initialize rs1
li x8, 0x950680c7 # initialize rs2
mulhu x18, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x95e8bb1d # initialize rs1
li x9, 0x65fd46cf # initialize rs2
mulhu x23, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xd0e2d76c # initialize rs1
li x10, 0x13d71b6f # initialize rs2
mulhu x7, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x17bde8c1 # initialize rs1
li x11, 0x46d2911a # initialize rs2
mulhu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x3a806211 # initialize rs1
li x12, 0xad013fda # initialize rs2
mulhu x5, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x3a6c728c # initialize rs1
li x13, 0x323cf684 # initialize rs2
mulhu x27, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x87c9935c # initialize rs1
li x14, 0x437cf64b # initialize rs2
mulhu x30, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xd8088dae # initialize rs1
li x15, 0x1550efe9 # initialize rs2
mulhu x14, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x72d731fd # initialize rs1
li x16, 0x0671db31 # initialize rs2
mulhu x27, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x5e80ce8f # initialize rs1
li x17, 0xf2a976d8 # initialize rs2
mulhu x26, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xc9d5f9f0 # initialize rs1
li x18, 0xe3fdb771 # initialize rs2
mulhu x19, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xaf1f603f # initialize rs1
li x19, 0x7a08c6c9 # initialize rs2
mulhu x7, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x3c34ad3a # initialize rs1
li x20, 0xa6d6243b # initialize rs2
mulhu x30, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x7cc32e9b # initialize rs1
li x21, 0xcee8a89d # initialize rs2
mulhu x18, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x5fe09f34 # initialize rs1
li x22, 0x6206e96b # initialize rs2
mulhu x30, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x15bbfb5a # initialize rs1
li x23, 0xd82ddb21 # initialize rs2
mulhu x13, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xba1b1b97 # initialize rs1
li x24, 0xcefa1052 # initialize rs2
mulhu x22, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x9b35d970 # initialize rs1
li x25, 0x3a2cf51e # initialize rs2
mulhu x5, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x19a6ba96 # initialize rs1
li x26, 0xd362cffa # initialize rs2
mulhu x1, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x66077413 # initialize rs1
li x27, 0xbb16bd32 # initialize rs2
mulhu x28, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xd1871b08 # initialize rs1
li x28, 0x0763cde9 # initialize rs2
mulhu x29, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x2ebdfa52 # initialize rs1
li x29, 0x1c43a4be # initialize rs2
mulhu x5, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xf3cef31c # initialize rs1
li x30, 0x560ee237 # initialize rs2
mulhu x13, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x945ad728 # initialize rs1
li x31, 0x771f589d # initialize rs2
mulhu x16, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xed6bb107 # initialize rs1
li x9, 0x9a5f35d9 # initialize rs2
mulhu x0, x0, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x5eb18481 # initialize rs1
li x17, 0xb52a1fa6 # initialize rs2
mulhu x1, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xa40b5ed0 # initialize rs1
li x20, 0xa2c7a558 # initialize rs2
mulhu x2, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x2a412c6d # initialize rs1
li x5, 0x40f14fa4 # initialize rs2
mulhu x3, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xadc0f024 # initialize rs1
li x12, 0xb3898e8b # initialize rs2
mulhu x4, x4, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6c6e3170 # initialize rs1
li x22, 0x4cbd7b24 # initialize rs2
mulhu x5, x5, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdb55f6a2 # initialize rs1
li x17, 0xfe0e7580 # initialize rs2
mulhu x6, x6, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5701122b # initialize rs1
li x20, 0x935c3891 # initialize rs2
mulhu x7, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x69a95f89 # initialize rs1
li x16, 0x310fdde5 # initialize rs2
mulhu x8, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x2a7de062 # initialize rs1
li x19, 0x87f245f4 # initialize rs2
mulhu x9, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xfacd4dcd # initialize rs1
li x7, 0x1f937c1e # initialize rs2
mulhu x10, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xe1e4da45 # initialize rs1
li x21, 0x6a1f9a9d # initialize rs2
mulhu x11, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x9736cc34 # initialize rs1
li x30, 0x5dc83fa5 # initialize rs2
mulhu x12, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xb907f7e4 # initialize rs1
li x1, 0x3db31a0e # initialize rs2
mulhu x13, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x189a7313 # initialize rs1
li x21, 0x6c7f76d8 # initialize rs2
mulhu x14, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x9939e065 # initialize rs1
li x28, 0x11d2b024 # initialize rs2
mulhu x15, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xf379fdcb # initialize rs1
li x22, 0xd0679bbc # initialize rs2
mulhu x16, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xbd2dbdd5 # initialize rs1
li x11, 0x12dfa1e2 # initialize rs2
mulhu x17, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x10b0c4f7 # initialize rs1
li x29, 0x4316c21b # initialize rs2
mulhu x18, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x43561db3 # initialize rs1
li x12, 0x27ca0093 # initialize rs2
mulhu x19, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x85f55018 # initialize rs1
li x19, 0xd731c0ef # initialize rs2
mulhu x20, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x90f55051 # initialize rs1
li x13, 0x5db49a67 # initialize rs2
mulhu x21, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xbed239e1 # initialize rs1
li x15, 0x887ac400 # initialize rs2
mulhu x22, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa0be1bb3 # initialize rs1
li x29, 0x6f08c1d7 # initialize rs2
mulhu x23, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7ee872f6 # initialize rs1
li x20, 0x875abe7f # initialize rs2
mulhu x24, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x7a361778 # initialize rs1
li x27, 0x4674db21 # initialize rs2
mulhu x25, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xdf7a1ca9 # initialize rs1
li x31, 0x970d9d47 # initialize rs2
mulhu x26, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x4e2f7fd8 # initialize rs1
li x9, 0x1c4e28de # initialize rs2
mulhu x27, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x2ce1fb85 # initialize rs1
li x28, 0xb7cd7cdb # initialize rs2
mulhu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xacf75a02 # initialize rs1
li x8, 0x4697d84c # initialize rs2
mulhu x29, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x3df610c0 # initialize rs1
li x10, 0xb148af22 # initialize rs2
mulhu x30, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xb4e4f45f # initialize rs1
li x22, 0xa35bed46 # initialize rs2
mulhu x31, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x14, 0x87c6eb03 # initialize rs1
li x0, 0xc8336bf4 # initialize rs2
mulhu x0, x14, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x17, 0xb39b1136 # initialize rs1
li x1, 0x311e0741 # initialize rs2
mulhu x1, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x25, 0x9066dc09 # initialize rs1
li x2, 0xa2cfac48 # initialize rs2
mulhu x2, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x5, 0x0abfafed # initialize rs1
li x3, 0x4293904e # initialize rs2
mulhu x3, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0xdf2b2ce9 # initialize rs1
li x4, 0x0717b35d # initialize rs2
mulhu x4, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0xb62d6a46 # initialize rs1
li x5, 0x5a15673d # initialize rs2
mulhu x5, x27, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0x14d86c14 # initialize rs1
li x6, 0x90b846e8 # initialize rs2
mulhu x6, x19, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0xf0057d9c # initialize rs1
li x7, 0xf79dd7b8 # initialize rs2
mulhu x7, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x28, 0x029bb19c # initialize rs1
li x8, 0x232cfe04 # initialize rs2
mulhu x8, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x13, 0xfc2e4d1f # initialize rs1
li x9, 0x227ca45b # initialize rs2
mulhu x9, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x18, 0xcd452c7d # initialize rs1
li x10, 0x2fea5e39 # initialize rs2
mulhu x10, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x19, 0x4f947f6a # initialize rs1
li x11, 0xe254e856 # initialize rs2
mulhu x11, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x30, 0xe1153a51 # initialize rs1
li x12, 0xb51d4a0e # initialize rs2
mulhu x12, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x1, 0x076f6bd1 # initialize rs1
li x13, 0x3f8f0939 # initialize rs2
mulhu x13, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x1, 0x695d7cc3 # initialize rs1
li x14, 0x5c6f90d5 # initialize rs2
mulhu x14, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x24, 0x09881864 # initialize rs1
li x15, 0x76e64e1e # initialize rs2
mulhu x15, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x28, 0xd8214a6b # initialize rs1
li x16, 0xb6396fd1 # initialize rs2
mulhu x16, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x21, 0x926dc048 # initialize rs1
li x17, 0x32d485cc # initialize rs2
mulhu x17, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x24, 0x50a6f0af # initialize rs1
li x18, 0xd500df64 # initialize rs2
mulhu x18, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x13, 0xa4456def # initialize rs1
li x19, 0x8f3d3ff1 # initialize rs2
mulhu x19, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x22, 0x3c4981df # initialize rs1
li x20, 0x826440a4 # initialize rs2
mulhu x20, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xd45a6984 # initialize rs1
li x21, 0x419154db # initialize rs2
mulhu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x23, 0xd596a40b # initialize rs1
li x22, 0x307b304e # initialize rs2
mulhu x22, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x19, 0x602e10b4 # initialize rs1
li x23, 0x751333a7 # initialize rs2
mulhu x23, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x1, 0x6d7d404f # initialize rs1
li x24, 0x09651159 # initialize rs2
mulhu x24, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x15, 0x941af236 # initialize rs1
li x25, 0x0527c807 # initialize rs2
mulhu x25, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x9, 0xe13f5be6 # initialize rs1
li x26, 0xb3d99254 # initialize rs2
mulhu x26, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x6, 0x8cb9f092 # initialize rs1
li x27, 0x75722cd1 # initialize rs2
mulhu x27, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x6, 0x350ebe16 # initialize rs1
li x28, 0xd36d21f4 # initialize rs2
mulhu x28, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x28, 0x0d8e3cdd # initialize rs1
li x29, 0xaf7964ab # initialize rs2
mulhu x29, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x12, 0x6acc92ba # initialize rs1
li x30, 0xf85a0011 # initialize rs2
mulhu x30, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x5, 0xc479738e # initialize rs1
li x31, 0x729629ac # initialize rs2
mulhu x31, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x4972c203 # initialize rs1
li x0, 0x01ba73bf # initialize rs2
mulhu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x2f5ff80d # initialize rs1
li x1, 0xb5da6f83 # initialize rs2
mulhu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x94c96c42 # initialize rs1
li x2, 0x52a47bea # initialize rs2
mulhu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x62638a07 # initialize rs1
li x3, 0xffba3c01 # initialize rs2
mulhu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb4625956 # initialize rs1
li x4, 0x0e4ec274 # initialize rs2
mulhu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdb602064 # initialize rs1
li x5, 0x97d5fc7e # initialize rs2
mulhu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x84c10165 # initialize rs1
li x6, 0x34936338 # initialize rs2
mulhu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x90717f57 # initialize rs1
li x7, 0x59c941fe # initialize rs2
mulhu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x6e6e2a7c # initialize rs1
li x8, 0x0e0266a4 # initialize rs2
mulhu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xf8f32a0a # initialize rs1
li x9, 0xa1e3f289 # initialize rs2
mulhu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x04606571 # initialize rs1
li x10, 0x244ab8c0 # initialize rs2
mulhu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x02c4ecd7 # initialize rs1
li x11, 0x8ce50214 # initialize rs2
mulhu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xa46b119a # initialize rs1
li x12, 0x9a980047 # initialize rs2
mulhu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x61e1bd09 # initialize rs1
li x13, 0x88172079 # initialize rs2
mulhu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xb80ab22c # initialize rs1
li x14, 0x7ea3886b # initialize rs2
mulhu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xc78b7881 # initialize rs1
li x15, 0xa5684e2c # initialize rs2
mulhu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x43ba1aeb # initialize rs1
li x16, 0x3badbd75 # initialize rs2
mulhu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x852b5fce # initialize rs1
li x17, 0x87274548 # initialize rs2
mulhu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x3c12bdc4 # initialize rs1
li x18, 0x41f82b51 # initialize rs2
mulhu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x65735c76 # initialize rs1
li x19, 0x4526570e # initialize rs2
mulhu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x0d6fedaf # initialize rs1
li x20, 0xf7eec62d # initialize rs2
mulhu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xe19e97d0 # initialize rs1
li x21, 0x1006cdeb # initialize rs2
mulhu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x2e75245e # initialize rs1
li x22, 0x0782fe8f # initialize rs2
mulhu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x99539651 # initialize rs1
li x23, 0x8566b0aa # initialize rs2
mulhu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x7d1cd16f # initialize rs1
li x24, 0x7bdb3ae8 # initialize rs2
mulhu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xab43bac7 # initialize rs1
li x25, 0x4674cee4 # initialize rs2
mulhu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xc965d074 # initialize rs1
li x26, 0xc11700e3 # initialize rs2
mulhu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x12e4b229 # initialize rs1
li x27, 0xa7993605 # initialize rs2
mulhu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xe246579d # initialize rs1
li x28, 0x1c70eac7 # initialize rs2
mulhu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x7662068e # initialize rs1
li x29, 0x26b4f9d7 # initialize rs2
mulhu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xeda22bb8 # initialize rs1
li x30, 0x421beadc # initialize rs2
mulhu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x947bd225 # initialize rs1
li x31, 0x0c5248b4 # initialize rs2
mulhu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x5, x22 # perform first operation
mulhu x19, x31, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x27, x3 # perform first operation
mulhu x26, x7, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x19, x25 # perform first operation
mulhu x27, x29, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x6, x24 # perform first operation
mulhu x6, x29, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x26, x10 # perform first operation
mulhu x30, x18, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x25, x29 # perform first operation
mulhu x29, x26, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x19, x12 # perform first operation
mulhu x27, x28, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x7, x14 # perform first operation
mulhu x24, x22, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x8, x27 # perform first operation
mulhu x16, x7, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x15, x5 # perform first operation
mulhu x15, x25, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x1, x31 # perform first operation
mulhu x31, x9, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x13, x6 # perform first operation
mulhu x20, x11, x12 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-mul.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xb8c98178 # initialize rs1
li x2, 0x9c098d64 # initialize rs2
mul x26, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xd179d4f8 # initialize rs1
li x8, 0x66bc34ca # initialize rs2
mul x24, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xfb5e041d # initialize rs1
li x29, 0x521af14e # initialize rs2
mul x28, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x6926bb14 # initialize rs1
li x5, 0xf4a4d294 # initialize rs2
mul x25, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x80b96cea # initialize rs1
li x10, 0xb211d0b7 # initialize rs2
mul x8, x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x43025d5a # initialize rs1
li x18, 0x03203d43 # initialize rs2
mul x9, x5, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xac42cbce # initialize rs1
li x26, 0x1c0984f7 # initialize rs2
mul x12, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfb6b01c4 # initialize rs1
li x14, 0x83c20b3a # initialize rs2
mul x12, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xaeedb360 # initialize rs1
li x18, 0xf65e1ec3 # initialize rs2
mul x3, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x704ce1fb # initialize rs1
li x22, 0x8df8228b # initialize rs2
mul x16, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x9799fef7 # initialize rs1
li x3, 0x4a679270 # initialize rs2
mul x19, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa09b3878 # initialize rs1
li x17, 0x2f69ed12 # initialize rs2
mul x27, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xaf8deb1f # initialize rs1
li x2, 0x7d7e4425 # initialize rs2
mul x27, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x47715d14 # initialize rs1
li x24, 0x0feb71fb # initialize rs2
mul x16, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x077acbd9 # initialize rs1
li x1, 0xe1821b97 # initialize rs2
mul x31, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc11ed59b # initialize rs1
li x18, 0xcf4bc615 # initialize rs2
mul x23, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x08f63eab # initialize rs1
li x28, 0x67dccbd6 # initialize rs2
mul x23, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x7271588d # initialize rs1
li x3, 0x426542a0 # initialize rs2
mul x30, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xa2d0be2e # initialize rs1
li x27, 0xec072c45 # initialize rs2
mul x20, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xc567b78a # initialize rs1
li x9, 0x8dd068e1 # initialize rs2
mul x31, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x4b4f4902 # initialize rs1
li x21, 0x130b66da # initialize rs2
mul x28, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xad76cf42 # initialize rs1
li x13, 0x6bc78a33 # initialize rs2
mul x10, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xe10ba049 # initialize rs1
li x6, 0x96ead85d # initialize rs2
mul x23, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xa011c122 # initialize rs1
li x27, 0x403071f1 # initialize rs2
mul x26, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x47320b15 # initialize rs1
li x10, 0x6d2afb28 # initialize rs2
mul x12, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x5adee5d9 # initialize rs1
li x20, 0xf585031a # initialize rs2
mul x7, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x89cc640f # initialize rs1
li x20, 0x0a569f5b # initialize rs2
mul x8, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xa34c8c40 # initialize rs1
li x5, 0x4443fed6 # initialize rs2
mul x26, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x473363fd # initialize rs1
li x13, 0xbc2ebb31 # initialize rs2
mul x19, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x324414f2 # initialize rs1
li x14, 0xb1a1bf4e # initialize rs2
mul x9, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x9e521f42 # initialize rs1
li x11, 0x3d2b651b # initialize rs2
mul x1, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xbfe47921 # initialize rs1
li x23, 0xb0cf5e2d # initialize rs2
mul x21, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x27, 0xa537c6fc # initialize rs1
li x0, 0x8c0af779 # initialize rs2
mul x30, x27, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x31, 0x62dc5be7 # initialize rs1
li x1, 0xe9e126df # initialize rs2
mul x11, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x11, 0x3feb7d44 # initialize rs1
li x2, 0xec2ecc2c # initialize rs2
mul x19, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x5, 0x494d03f4 # initialize rs1
li x3, 0xceed911e # initialize rs2
mul x29, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0x76cdd968 # initialize rs1
li x4, 0xb82db550 # initialize rs2
mul x24, x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0xdcf60980 # initialize rs1
li x5, 0x13db9952 # initialize rs2
mul x30, x28, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0x777794bc # initialize rs1
li x6, 0x45dc31b2 # initialize rs2
mul x25, x20, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x52bbc1f6 # initialize rs1
li x7, 0xe46bfcb5 # initialize rs2
mul x16, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x17, 0xdeb92e4b # initialize rs1
li x8, 0x39e194e4 # initialize rs2
mul x21, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x7, 0x9303cb01 # initialize rs1
li x9, 0x5f010a30 # initialize rs2
mul x20, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x3, 0x02587f19 # initialize rs1
li x10, 0xb6ad3244 # initialize rs2
mul x15, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x19, 0xc3b38d12 # initialize rs1
li x11, 0xd2c0b670 # initialize rs2
mul x9, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x9, 0x6b870858 # initialize rs1
li x12, 0x20b30ebd # initialize rs2
mul x5, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x3, 0xcf628840 # initialize rs1
li x13, 0x6e2225eb # initialize rs2
mul x15, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x15, 0x1c6d2efa # initialize rs1
li x14, 0xc4cf3a51 # initialize rs2
mul x12, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x20, 0x59874e8c # initialize rs1
li x15, 0x490ea0b2 # initialize rs2
mul x16, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0x73a8cd66 # initialize rs1
li x16, 0x470769ee # initialize rs2
mul x17, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0x3219bfd6 # initialize rs1
li x17, 0xf8a41705 # initialize rs2
mul x28, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x29, 0xdbb64e54 # initialize rs1
li x18, 0x7152ce67 # initialize rs2
mul x25, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x11, 0x0f9ba287 # initialize rs1
li x19, 0x3a791523 # initialize rs2
mul x7, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x21, 0x89fb8acc # initialize rs1
li x20, 0x253639ee # initialize rs2
mul x5, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x19, 0xe7b4f4c1 # initialize rs1
li x21, 0x6e48455e # initialize rs2
mul x11, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x6, 0x7521ca87 # initialize rs1
li x22, 0x0f41525d # initialize rs2
mul x26, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x27, 0x9d54eed5 # initialize rs1
li x23, 0x43cce517 # initialize rs2
mul x7, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x6, 0x20eefa64 # initialize rs1
li x24, 0x69ac9e38 # initialize rs2
mul x19, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x3, 0x55686a50 # initialize rs1
li x25, 0x0bf720c7 # initialize rs2
mul x26, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x18, 0x688bc59e # initialize rs1
li x26, 0x808e5602 # initialize rs2
mul x16, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x9, 0x41a89dc3 # initialize rs1
li x27, 0xb8690771 # initialize rs2
mul x8, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x18, 0xd9844a36 # initialize rs1
li x28, 0x908262aa # initialize rs2
mul x7, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x18, 0xbbbf836c # initialize rs1
li x29, 0x2bd1b9d2 # initialize rs2
mul x27, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x17, 0x23c0e4a6 # initialize rs1
li x30, 0x6143fbf8 # initialize rs2
mul x2, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x10, 0xa45051b3 # initialize rs1
li x31, 0x30ba5b0c # initialize rs2
mul x29, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 252)

# Testcase cp_rd (Test destination rd = x0)
li x23, 0x42b3932f # initialize rs1
li x27, 0xcb660400 # initialize rs2
mul x0, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x15, 0xf6a46b43 # initialize rs1
li x5, 0xf1389bfe # initialize rs2
mul x1, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x27, 0xa1b7c8b5 # initialize rs1
li x14, 0xc05f17cf # initialize rs2
mul x2, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0xec567265 # initialize rs1
li x26, 0x2cd7b568 # initialize rs2
mul x3, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0x10d1f0af # initialize rs1
li x31, 0xae03607d # initialize rs2
mul x4, x24, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x22, 0xe0313d4c # initialize rs1
li x11, 0xe82f66c2 # initialize rs2
mul x5, x22, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0xd928f23c # initialize rs1
li x29, 0xda4e97fe # initialize rs2
mul x6, x27, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0x676f210b # initialize rs1
li x17, 0xf73cea98 # initialize rs2
mul x7, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x14, 0x5ca02390 # initialize rs1
li x21, 0x88cff377 # initialize rs2
mul x8, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x26, 0x646eaa16 # initialize rs1
li x23, 0xaadd7989 # initialize rs2
mul x9, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x71a2b988 # initialize rs1
li x19, 0xdbb5af14 # initialize rs2
mul x10, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x16, 0xd13164d3 # initialize rs1
li x8, 0x18843d59 # initialize rs2
mul x11, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x26, 0x57745bc3 # initialize rs1
li x5, 0x137d8aa9 # initialize rs2
mul x12, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x29, 0xb9785707 # initialize rs1
li x14, 0xe2fc4ec0 # initialize rs2
mul x13, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x29, 0xce196ab7 # initialize rs1
li x3, 0x7c2ca259 # initialize rs2
mul x14, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x1, 0xb26cea1b # initialize rs1
li x21, 0xa7b1fa6a # initialize rs2
mul x15, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x25, 0xccfa0697 # initialize rs1
li x18, 0xa2061141 # initialize rs2
mul x16, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x11, 0xa51e72d2 # initialize rs1
li x20, 0xfd3a285a # initialize rs2
mul x17, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x25, 0xab49f468 # initialize rs1
li x9, 0x22e81071 # initialize rs2
mul x18, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x28, 0xf04f85ff # initialize rs1
li x27, 0xe524820f # initialize rs2
mul x19, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x17, 0x2cb924b9 # initialize rs1
li x22, 0x39d02dd3 # initialize rs2
mul x20, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x24, 0x742b2672 # initialize rs1
li x17, 0xd6cced45 # initialize rs2
mul x21, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x26, 0x8ab3115b # initialize rs1
li x13, 0xf16fc737 # initialize rs2
mul x22, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x21, 0xadbc4fe8 # initialize rs1
li x16, 0x28c58e93 # initialize rs2
mul x23, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x3, 0x32207b6b # initialize rs1
li x25, 0xbb03becf # initialize rs2
mul x24, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x3, 0xc76c19be # initialize rs1
li x25, 0xc2143dae # initialize rs2
mul x25, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x11, 0x76592811 # initialize rs1
li x1, 0x013dd29d # initialize rs2
mul x26, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x5, 0x806e0544 # initialize rs1
li x28, 0x282f53ed # initialize rs2
mul x27, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x31, 0x51c50ae7 # initialize rs1
li x11, 0xd8b4ecc9 # initialize rs2
mul x28, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x2, 0xdf6e90ea # initialize rs1
li x31, 0x111bd85d # initialize rs2
mul x29, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x5, 0x86e10d32 # initialize rs1
li x19, 0x212f6a52 # initialize rs2
mul x30, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x15, 0x9490d9de # initialize rs1
li x16, 0x292a8109 # initialize rs2
mul x31, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x00000000 # initialize rs1
li x11, 0xed51b523 # initialize rs2
mul x23, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x00000001 # initialize rs1
li x29, 0xf009696f # initialize rs2
mul x18, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x00000002 # initialize rs1
li x19, 0x6b9143d7 # initialize rs2
mul x18, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x14, 0x80000000 # initialize rs1
li x3, 0xe1367989 # initialize rs2
mul x6, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x7, 0x80000001 # initialize rs1
li x14, 0x42b6c52c # initialize rs2
mul x25, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x6, 0x7fffffff # initialize rs1
li x11, 0x71b0364d # initialize rs2
mul x26, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x17, 0x7ffffffe # initialize rs1
li x13, 0x1cfcfd9f # initialize rs2
mul x15, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0xffffffff # initialize rs1
li x1, 0xb9e1c5b4 # initialize rs2
mul x18, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0xfffffffe # initialize rs1
li x3, 0x7b9eb787 # initialize rs2
mul x25, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x22, 0x5bbc8872 # initialize rs1
li x31, 0x35a7f7db # initialize rs2
mul x1, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x17, 0xaaaaaaaa # initialize rs1
li x3, 0xece1192c # initialize rs2
mul x15, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x26, 0x55555555 # initialize rs1
li x24, 0x09b1af0f # initialize rs2
mul x19, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0x8f796404 # initialize rs1
li x8, 0x00000000 # initialize rs2
mul x25, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0xb2a6c497 # initialize rs1
li x27, 0x00000001 # initialize rs2
mul x13, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x12, 0xf5c505b1 # initialize rs1
li x21, 0x00000002 # initialize rs2
mul x11, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x28, 0x14d6f0b6 # initialize rs1
li x16, 0x80000000 # initialize rs2
mul x7, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x25, 0xf761d4fc # initialize rs1
li x20, 0x80000001 # initialize rs2
mul x3, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x31, 0xd93f2771 # initialize rs1
li x20, 0x7fffffff # initialize rs2
mul x9, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x25, 0x96ce0ab0 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
mul x24, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x18, 0xbdb22445 # initialize rs1
li x13, 0xffffffff # initialize rs2
mul x24, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x2, 0x23559a17 # initialize rs1
li x22, 0xfffffffe # initialize rs2
mul x31, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x7, 0x878a5eae # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
mul x17, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x7, 0x3bcba8ac # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
mul x3, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x13, 0x478ecde9 # initialize rs1
li x31, 0x55555555 # initialize rs2
mul x14, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x5, 0x00000000 # initialize rs1
li x2, 0x00000000 # initialize rs2
mul x17, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x15, 0x00000000 # initialize rs1
li x2, 0x00000001 # initialize rs2
mul x16, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x30, 0x00000000 # initialize rs1
li x6, 0x00000002 # initialize rs2
mul x26, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x8, 0x00000000 # initialize rs1
li x13, 0x80000000 # initialize rs2
mul x14, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x17, 0x00000000 # initialize rs1
li x23, 0x80000001 # initialize rs2
mul x28, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x2, 0x00000000 # initialize rs1
li x6, 0x7fffffff # initialize rs2
mul x20, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x24, 0x00000000 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
mul x28, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x13, 0x00000000 # initialize rs1
li x27, 0xffffffff # initialize rs2
mul x29, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x24, 0x00000000 # initialize rs1
li x31, 0xfffffffe # initialize rs2
mul x26, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x11, 0x00000000 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
mul x24, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x17, 0x00000000 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
mul x20, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x29, 0x00000000 # initialize rs1
li x6, 0x55555555 # initialize rs2
mul x12, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x22, 0x00000001 # initialize rs1
li x6, 0x00000000 # initialize rs2
mul x9, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x9, 0x00000001 # initialize rs1
li x10, 0x00000001 # initialize rs2
mul x12, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x10, 0x00000001 # initialize rs1
li x18, 0x00000002 # initialize rs2
mul x6, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x30, 0x00000001 # initialize rs1
li x18, 0x80000000 # initialize rs2
mul x1, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x19, 0x00000001 # initialize rs1
li x15, 0x80000001 # initialize rs2
mul x1, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x20, 0x00000001 # initialize rs1
li x26, 0x7fffffff # initialize rs2
mul x19, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x12, 0x00000001 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
mul x31, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x23, 0x00000001 # initialize rs1
li x15, 0xffffffff # initialize rs2
mul x8, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x20, 0x00000001 # initialize rs1
li x15, 0xfffffffe # initialize rs2
mul x29, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x27, 0x00000001 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
mul x23, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x2, 0x00000001 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
mul x7, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x23, 0x00000001 # initialize rs1
li x21, 0x55555555 # initialize rs2
mul x25, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x30, 0x00000002 # initialize rs1
li x1, 0x00000000 # initialize rs2
mul x7, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x22, 0x00000002 # initialize rs1
li x12, 0x00000001 # initialize rs2
mul x6, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x8, 0x00000002 # initialize rs1
li x11, 0x00000002 # initialize rs2
mul x3, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x6, 0x00000002 # initialize rs1
li x11, 0x80000000 # initialize rs2
mul x10, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x10, 0x00000002 # initialize rs1
li x15, 0x80000001 # initialize rs2
mul x8, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x14, 0x00000002 # initialize rs1
li x6, 0x7fffffff # initialize rs2
mul x1, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x31, 0x00000002 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
mul x27, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x27, 0x00000002 # initialize rs1
li x25, 0xffffffff # initialize rs2
mul x31, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x11, 0x00000002 # initialize rs1
li x3, 0xfffffffe # initialize rs2
mul x30, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x28, 0x00000002 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
mul x11, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x13, 0x00000002 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
mul x16, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x19, 0x00000002 # initialize rs1
li x25, 0x55555555 # initialize rs2
mul x2, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x9, 0x80000000 # initialize rs1
li x29, 0x00000000 # initialize rs2
mul x19, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x28, 0x80000000 # initialize rs1
li x26, 0x00000001 # initialize rs2
mul x30, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x1, 0x80000000 # initialize rs1
li x24, 0x00000002 # initialize rs2
mul x16, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x19, 0x80000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
mul x24, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x28, 0x80000000 # initialize rs1
li x21, 0x80000001 # initialize rs2
mul x1, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x16, 0x80000000 # initialize rs1
li x13, 0x7fffffff # initialize rs2
mul x10, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x28, 0x80000000 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
mul x19, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x14, 0x80000000 # initialize rs1
li x28, 0xffffffff # initialize rs2
mul x13, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x12, 0x80000000 # initialize rs1
li x11, 0xfffffffe # initialize rs2
mul x31, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x23, 0x80000000 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
mul x9, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x22, 0x80000000 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
mul x25, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x1, 0x80000000 # initialize rs1
li x14, 0x55555555 # initialize rs2
mul x6, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x10, 0x80000001 # initialize rs1
li x2, 0x00000000 # initialize rs2
mul x24, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x5, 0x80000001 # initialize rs1
li x7, 0x00000001 # initialize rs2
mul x23, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x19, 0x80000001 # initialize rs1
li x1, 0x00000002 # initialize rs2
mul x24, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x8, 0x80000001 # initialize rs1
li x16, 0x80000000 # initialize rs2
mul x3, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x8, 0x80000001 # initialize rs1
li x9, 0x80000001 # initialize rs2
mul x7, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x18, 0x80000001 # initialize rs1
li x9, 0x7fffffff # initialize rs2
mul x16, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x25, 0x80000001 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
mul x10, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x30, 0x80000001 # initialize rs1
li x22, 0xffffffff # initialize rs2
mul x15, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x27, 0x80000001 # initialize rs1
li x31, 0xfffffffe # initialize rs2
mul x7, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x6, 0x80000001 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
mul x26, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x18, 0x80000001 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
mul x11, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x15, 0x80000001 # initialize rs1
li x7, 0x55555555 # initialize rs2
mul x20, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x11, 0x7fffffff # initialize rs1
li x6, 0x00000000 # initialize rs2
mul x8, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x26, 0x7fffffff # initialize rs1
li x17, 0x00000001 # initialize rs2
mul x2, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x9, 0x7fffffff # initialize rs1
li x20, 0x00000002 # initialize rs2
mul x31, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x1, 0x7fffffff # initialize rs1
li x3, 0x80000000 # initialize rs2
mul x26, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x1, 0x7fffffff # initialize rs1
li x17, 0x80000001 # initialize rs2
mul x10, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x30, 0x7fffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
mul x2, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x26, 0x7fffffff # initialize rs1
li x22, 0x7ffffffe # initialize rs2
mul x31, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x2, 0x7fffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
mul x14, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x24, 0x7fffffff # initialize rs1
li x7, 0xfffffffe # initialize rs2
mul x18, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x3, 0x7fffffff # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
mul x22, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x1, 0x7fffffff # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
mul x15, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x19, 0x7fffffff # initialize rs1
li x11, 0x55555555 # initialize rs2
mul x10, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x17, 0x7ffffffe # initialize rs1
li x21, 0x00000000 # initialize rs2
mul x24, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x23, 0x7ffffffe # initialize rs1
li x6, 0x00000001 # initialize rs2
mul x17, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x30, 0x7ffffffe # initialize rs1
li x25, 0x00000002 # initialize rs2
mul x29, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x30, 0x7ffffffe # initialize rs1
li x13, 0x80000000 # initialize rs2
mul x18, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x18, 0x7ffffffe # initialize rs1
li x27, 0x80000001 # initialize rs2
mul x13, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x19, 0x7ffffffe # initialize rs1
li x31, 0x7fffffff # initialize rs2
mul x28, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x29, 0x7ffffffe # initialize rs1
li x5, 0x7ffffffe # initialize rs2
mul x28, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x7, 0x7ffffffe # initialize rs1
li x26, 0xffffffff # initialize rs2
mul x3, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x25, 0x7ffffffe # initialize rs1
li x22, 0xfffffffe # initialize rs2
mul x10, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x2, 0x7ffffffe # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
mul x21, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x19, 0x7ffffffe # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
mul x1, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x25, 0x7ffffffe # initialize rs1
li x1, 0x55555555 # initialize rs2
mul x12, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x13, 0xffffffff # initialize rs1
li x1, 0x00000000 # initialize rs2
mul x29, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x1, 0xffffffff # initialize rs1
li x5, 0x00000001 # initialize rs2
mul x11, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x13, 0xffffffff # initialize rs1
li x30, 0x00000002 # initialize rs2
mul x27, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x8, 0xffffffff # initialize rs1
li x17, 0x80000000 # initialize rs2
mul x7, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x18, 0xffffffff # initialize rs1
li x9, 0x80000001 # initialize rs2
mul x26, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x5, 0xffffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
mul x16, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x28, 0xffffffff # initialize rs1
li x5, 0x7ffffffe # initialize rs2
mul x21, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x3, 0xffffffff # initialize rs1
li x17, 0xffffffff # initialize rs2
mul x18, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x21, 0xffffffff # initialize rs1
li x30, 0xfffffffe # initialize rs2
mul x2, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x27, 0xffffffff # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
mul x26, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x23, 0xffffffff # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
mul x7, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x1, 0xffffffff # initialize rs1
li x16, 0x55555555 # initialize rs2
mul x26, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x18, 0xfffffffe # initialize rs1
li x21, 0x00000000 # initialize rs2
mul x12, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x8, 0xfffffffe # initialize rs1
li x23, 0x00000001 # initialize rs2
mul x29, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x19, 0xfffffffe # initialize rs1
li x11, 0x00000002 # initialize rs2
mul x21, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x26, 0xfffffffe # initialize rs1
li x30, 0x80000000 # initialize rs2
mul x22, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x21, 0xfffffffe # initialize rs1
li x8, 0x80000001 # initialize rs2
mul x13, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x2, 0xfffffffe # initialize rs1
li x17, 0x7fffffff # initialize rs2
mul x9, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x22, 0xfffffffe # initialize rs1
li x17, 0x7ffffffe # initialize rs2
mul x1, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x28, 0xfffffffe # initialize rs1
li x16, 0xffffffff # initialize rs2
mul x31, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x27, 0xfffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
mul x25, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x1, 0xfffffffe # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
mul x27, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x11, 0xfffffffe # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
mul x31, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x26, 0xfffffffe # initialize rs1
li x30, 0x55555555 # initialize rs2
mul x6, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x12, 0x5bbc8872 # initialize rs1
li x29, 0x00000000 # initialize rs2
mul x28, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x13, 0x5bbc8872 # initialize rs1
li x27, 0x00000001 # initialize rs2
mul x10, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x17, 0x5bbc8872 # initialize rs1
li x3, 0x00000002 # initialize rs2
mul x29, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x1, 0x5bbc8872 # initialize rs1
li x30, 0x80000000 # initialize rs2
mul x10, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x23, 0x5bbc8872 # initialize rs1
li x15, 0x80000001 # initialize rs2
mul x12, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x6, 0x5bbc8872 # initialize rs1
li x10, 0x7fffffff # initialize rs2
mul x14, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x22, 0x5bbc8872 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
mul x29, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x14, 0x5bbc8872 # initialize rs1
li x10, 0xffffffff # initialize rs2
mul x19, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x1, 0x5bbc8872 # initialize rs1
li x5, 0xfffffffe # initialize rs2
mul x25, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x11, 0x5bbc8872 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
mul x27, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x19, 0x5bbc8872 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
mul x11, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x18, 0x5bbc8872 # initialize rs1
li x25, 0x55555555 # initialize rs2
mul x12, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x21, 0xaaaaaaaa # initialize rs1
li x6, 0x00000000 # initialize rs2
mul x14, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x23, 0xaaaaaaaa # initialize rs1
li x28, 0x00000001 # initialize rs2
mul x30, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x5, 0xaaaaaaaa # initialize rs1
li x25, 0x00000002 # initialize rs2
mul x24, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x9, 0xaaaaaaaa # initialize rs1
li x28, 0x80000000 # initialize rs2
mul x27, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x25, 0xaaaaaaaa # initialize rs1
li x24, 0x80000001 # initialize rs2
mul x5, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x18, 0xaaaaaaaa # initialize rs1
li x9, 0x7fffffff # initialize rs2
mul x30, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x22, 0xaaaaaaaa # initialize rs1
li x7, 0x7ffffffe # initialize rs2
mul x27, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x27, 0xaaaaaaaa # initialize rs1
li x3, 0xffffffff # initialize rs2
mul x17, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x27, 0xaaaaaaaa # initialize rs1
li x16, 0xfffffffe # initialize rs2
mul x28, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x1, 0xaaaaaaaa # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
mul x12, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x8, 0xaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
mul x9, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x30, 0xaaaaaaaa # initialize rs1
li x6, 0x55555555 # initialize rs2
mul x7, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x9, 0x55555555 # initialize rs1
li x20, 0x00000000 # initialize rs2
mul x28, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x17, 0x55555555 # initialize rs1
li x16, 0x00000001 # initialize rs2
mul x8, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x12, 0x55555555 # initialize rs1
li x5, 0x00000002 # initialize rs2
mul x21, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x29, 0x55555555 # initialize rs1
li x15, 0x80000000 # initialize rs2
mul x28, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x12, 0x55555555 # initialize rs1
li x3, 0x80000001 # initialize rs2
mul x14, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x2, 0x55555555 # initialize rs1
li x27, 0x7fffffff # initialize rs2
mul x11, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x3, 0x55555555 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
mul x13, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x26, 0x55555555 # initialize rs1
li x30, 0xffffffff # initialize rs2
mul x14, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x27, 0x55555555 # initialize rs1
li x20, 0xfffffffe # initialize rs2
mul x26, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x16, 0x55555555 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
mul x7, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x11, 0x55555555 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
mul x12, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x30, 0x55555555 # initialize rs1
li x10, 0x55555555 # initialize rs2
mul x25, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x5f034b25 # initialize rs1
li x0, 0x8e3f5069 # initialize rs2
mul x2, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x9e44a467 # initialize rs1
li x1, 0x77caad7b # initialize rs2
mul x19, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc8f66f52 # initialize rs1
li x2, 0x619169d8 # initialize rs2
mul x19, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2bda2365 # initialize rs1
li x3, 0x1292a0c8 # initialize rs2
mul x20, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x50d73295 # initialize rs1
li x4, 0x767d9554 # initialize rs2
mul x17, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x050caff7 # initialize rs1
li x5, 0xa6abbbff # initialize rs2
mul x31, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4a1799a0 # initialize rs1
li x6, 0xafbd911c # initialize rs2
mul x21, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaf2bafd0 # initialize rs1
li x7, 0x67a2b2ee # initialize rs2
mul x26, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xba75d973 # initialize rs1
li x8, 0x124bca9a # initialize rs2
mul x18, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xc5ea2cfa # initialize rs1
li x9, 0xdf1a059f # initialize rs2
mul x24, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x00b0f1c1 # initialize rs1
li x10, 0x674b2f42 # initialize rs2
mul x7, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x778c9800 # initialize rs1
li x11, 0xbf5012a3 # initialize rs2
mul x24, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xb5800380 # initialize rs1
li x12, 0x3a6875b6 # initialize rs2
mul x30, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xd35330b4 # initialize rs1
li x13, 0x9fde5a96 # initialize rs2
mul x20, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x1b30fc34 # initialize rs1
li x14, 0x59123ffd # initialize rs2
mul x21, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x9ef2d88e # initialize rs1
li x15, 0xa948814e # initialize rs2
mul x8, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xa4d8783f # initialize rs1
li x16, 0x3160f2ea # initialize rs2
mul x1, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x204f6174 # initialize rs1
li x17, 0x2254c45d # initialize rs2
mul x22, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xd1e26d7b # initialize rs1
li x18, 0xd3518bba # initialize rs2
mul x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xf09d0b03 # initialize rs1
li x19, 0x6f453473 # initialize rs2
mul x25, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x59811fbb # initialize rs1
li x20, 0xd1a48b01 # initialize rs2
mul x21, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xcb6f3370 # initialize rs1
li x21, 0x25002589 # initialize rs2
mul x15, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x5036b94a # initialize rs1
li x22, 0xdac04cbc # initialize rs2
mul x20, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x80fdd393 # initialize rs1
li x23, 0x620351a7 # initialize rs2
mul x22, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xd8a92f9e # initialize rs1
li x24, 0x9d1212a1 # initialize rs2
mul x12, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xbb2e7bf7 # initialize rs1
li x25, 0x79ebbe13 # initialize rs2
mul x29, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x3033c229 # initialize rs1
li x26, 0xc282b9ca # initialize rs2
mul x6, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xa3d768ab # initialize rs1
li x27, 0x5d548300 # initialize rs2
mul x10, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xd8147692 # initialize rs1
li x28, 0x82813a21 # initialize rs2
mul x1, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xcb7df2f7 # initialize rs1
li x29, 0xe3d16af6 # initialize rs2
mul x30, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x27059227 # initialize rs1
li x30, 0x7320664e # initialize rs2
mul x10, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x8e1e77ba # initialize rs1
li x31, 0xe4e0b047 # initialize rs2
mul x3, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x4a8bb751 # initialize rs1
li x15, 0xd7c63137 # initialize rs2
mul x0, x0, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x06c53ac6 # initialize rs1
li x2, 0x4143e6b5 # initialize rs2
mul x1, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x3f718953 # initialize rs1
li x29, 0x790a65ab # initialize rs2
mul x2, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd813f4fe # initialize rs1
li x18, 0x78ee59c3 # initialize rs2
mul x3, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1a253947 # initialize rs1
li x6, 0xeba5951f # initialize rs2
mul x4, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5e297094 # initialize rs1
li x28, 0x4ee65220 # initialize rs2
mul x5, x5, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd3357156 # initialize rs1
li x15, 0x24ac2f50 # initialize rs2
mul x6, x6, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaeae30f5 # initialize rs1
li x12, 0xce91cdce # initialize rs2
mul x7, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xfe46bd0e # initialize rs1
li x6, 0xe7497876 # initialize rs2
mul x8, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x76f0a6b5 # initialize rs1
li x27, 0x0bc6babf # initialize rs2
mul x9, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x2b2177ca # initialize rs1
li x27, 0x30bd7d17 # initialize rs2
mul x10, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x78e030f9 # initialize rs1
li x17, 0x8a61b892 # initialize rs2
mul x11, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xffe3360d # initialize rs1
li x23, 0xcdcb95fd # initialize rs2
mul x12, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x09ea9b91 # initialize rs1
li x11, 0x7af49cac # initialize rs2
mul x13, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x789080d5 # initialize rs1
li x25, 0xf409f892 # initialize rs2
mul x14, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x2dc0c0c3 # initialize rs1
li x27, 0xc3efa147 # initialize rs2
mul x15, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x6eb0e785 # initialize rs1
li x15, 0x9dc7983e # initialize rs2
mul x16, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x49a94f87 # initialize rs1
li x6, 0xdbcef929 # initialize rs2
mul x17, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xbe2c9a74 # initialize rs1
li x20, 0x0821d736 # initialize rs2
mul x18, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x454ecd44 # initialize rs1
li x22, 0x9e51d050 # initialize rs2
mul x19, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xfaf826c6 # initialize rs1
li x22, 0x7cc227aa # initialize rs2
mul x20, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xabd9414a # initialize rs1
li x25, 0xa72f9da2 # initialize rs2
mul x21, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xd177ba17 # initialize rs1
li x20, 0x87f3fd05 # initialize rs2
mul x22, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x3edbd0f0 # initialize rs1
li x1, 0x9eda23cc # initialize rs2
mul x23, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x9a293705 # initialize rs1
li x21, 0x6024d0d5 # initialize rs2
mul x24, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x9225c293 # initialize rs1
li x2, 0x15e20707 # initialize rs2
mul x25, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xf1ef15d0 # initialize rs1
li x20, 0xd3118d2b # initialize rs2
mul x26, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xf14a3986 # initialize rs1
li x12, 0xad9e86d5 # initialize rs2
mul x27, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x80d427f1 # initialize rs1
li x27, 0xc5a6f43a # initialize rs2
mul x28, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xfe44a700 # initialize rs1
li x15, 0xafdc76fa # initialize rs2
mul x29, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x472869d6 # initialize rs1
li x13, 0x950601d7 # initialize rs2
mul x30, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xca4044ef # initialize rs1
li x14, 0x77b303af # initialize rs2
mul x31, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x28, 0xefed7cba # initialize rs1
li x0, 0xea95840f # initialize rs2
mul x0, x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x8, 0x971e864e # initialize rs1
li x1, 0x7719db2a # initialize rs2
mul x1, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x21, 0x528a5890 # initialize rs1
li x2, 0x9decd63d # initialize rs2
mul x2, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x18, 0x20915ec1 # initialize rs1
li x3, 0x52bf67ab # initialize rs2
mul x3, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0x1b86b644 # initialize rs1
li x4, 0x8c56d973 # initialize rs2
mul x4, x20, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0x50148ad9 # initialize rs1
li x5, 0x7ab325e5 # initialize rs2
mul x5, x8, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0x9d51fb71 # initialize rs1
li x6, 0xfecd2f96 # initialize rs2
mul x6, x8, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0x38662b80 # initialize rs1
li x7, 0x272615ce # initialize rs2
mul x7, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x17, 0x98fc9e06 # initialize rs1
li x8, 0x1f5b7b49 # initialize rs2
mul x8, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x21, 0x387ef0b1 # initialize rs1
li x9, 0x762f63aa # initialize rs2
mul x9, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x18, 0xd1129137 # initialize rs1
li x10, 0xb7c0a694 # initialize rs2
mul x10, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x20, 0x3f77054b # initialize rs1
li x11, 0x2459f5c1 # initialize rs2
mul x11, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x5, 0x1504ff18 # initialize rs1
li x12, 0xb6058d52 # initialize rs2
mul x12, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x3, 0x9b851329 # initialize rs1
li x13, 0x4b0c1d40 # initialize rs2
mul x13, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x17, 0xfc57738c # initialize rs1
li x14, 0xcf9f09a3 # initialize rs2
mul x14, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x14, 0xc75f69a6 # initialize rs1
li x15, 0x2960da03 # initialize rs2
mul x15, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x21, 0x57da1c05 # initialize rs1
li x16, 0xcdf711de # initialize rs2
mul x16, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x27, 0x90576e12 # initialize rs1
li x17, 0xf0fb51b2 # initialize rs2
mul x17, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x1, 0xeaaad5f7 # initialize rs1
li x18, 0xc77ddd3b # initialize rs2
mul x18, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x29, 0x65b2f7a2 # initialize rs1
li x19, 0xfc56b80a # initialize rs2
mul x19, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x24, 0xd73ad7d1 # initialize rs1
li x20, 0x7884a980 # initialize rs2
mul x20, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x22, 0x3ff6f7bc # initialize rs1
li x21, 0xd30989b5 # initialize rs2
mul x21, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x19, 0x26f9d753 # initialize rs1
li x22, 0x07e33006 # initialize rs2
mul x22, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x29, 0x2ef576c8 # initialize rs1
li x23, 0x1dd23d1f # initialize rs2
mul x23, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x30, 0x463dd24d # initialize rs1
li x24, 0x6deb2c06 # initialize rs2
mul x24, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x13, 0x4e8fe29f # initialize rs1
li x25, 0xf64f32ed # initialize rs2
mul x25, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x17, 0x65b30d61 # initialize rs1
li x26, 0x636a1659 # initialize rs2
mul x26, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x30, 0x8ce138b1 # initialize rs1
li x27, 0x0ccdfaa7 # initialize rs2
mul x27, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x18, 0x3b09cdb0 # initialize rs1
li x28, 0x9728c02d # initialize rs2
mul x28, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x21, 0xee7d5835 # initialize rs1
li x29, 0x5f41a1c2 # initialize rs2
mul x29, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x2, 0x9eb17c3e # initialize rs1
li x30, 0x3d07273d # initialize rs2
mul x30, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x18, 0x5ae02247 # initialize rs1
li x31, 0x9a582bbb # initialize rs2
mul x31, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x340229ae # initialize rs1
li x0, 0xa5b1861e # initialize rs2
mul x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x12b5bc5e # initialize rs1
li x1, 0x5a6c617b # initialize rs2
mul x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x23644f4d # initialize rs1
li x2, 0xebda3a82 # initialize rs2
mul x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xedaf06a4 # initialize rs1
li x3, 0xa1f8c1d6 # initialize rs2
mul x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9895b80f # initialize rs1
li x4, 0xccb187b9 # initialize rs2
mul x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x80445eef # initialize rs1
li x5, 0xe05d5d4c # initialize rs2
mul x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8dd4c8a0 # initialize rs1
li x6, 0x8bda0724 # initialize rs2
mul x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3f652209 # initialize rs1
li x7, 0x88a7205d # initialize rs2
mul x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x8c6397d3 # initialize rs1
li x8, 0xcd6258fa # initialize rs2
mul x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x32e12151 # initialize rs1
li x9, 0xf89a55b1 # initialize rs2
mul x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x73415f07 # initialize rs1
li x10, 0xda20acd1 # initialize rs2
mul x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x0d6ae0aa # initialize rs1
li x11, 0xc4472a0d # initialize rs2
mul x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x0caefd28 # initialize rs1
li x12, 0xd1d702f2 # initialize rs2
mul x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xa5689b47 # initialize rs1
li x13, 0xe9270bf4 # initialize rs2
mul x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x7a4b5578 # initialize rs1
li x14, 0x8e8a6e78 # initialize rs2
mul x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x6c0d1c89 # initialize rs1
li x15, 0x6802fb50 # initialize rs2
mul x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xcd213b76 # initialize rs1
li x16, 0x0ffbabab # initialize rs2
mul x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xf0a1ecf1 # initialize rs1
li x17, 0x2f508cf6 # initialize rs2
mul x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x7be19b6d # initialize rs1
li x18, 0xbd2141d5 # initialize rs2
mul x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x2fabe3ec # initialize rs1
li x19, 0x3bacb2a0 # initialize rs2
mul x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x9e00ac48 # initialize rs1
li x20, 0x0280d86e # initialize rs2
mul x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xad579ff9 # initialize rs1
li x21, 0xef8a6974 # initialize rs2
mul x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x4fe4f815 # initialize rs1
li x22, 0xa0666590 # initialize rs2
mul x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xbf4d088d # initialize rs1
li x23, 0xd8c9104a # initialize rs2
mul x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x36ead279 # initialize rs1
li x24, 0xbe1e9e3d # initialize rs2
mul x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xf3ed634c # initialize rs1
li x25, 0xae2e3727 # initialize rs2
mul x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xa748e85d # initialize rs1
li x26, 0x1304991c # initialize rs2
mul x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xde2a2b4f # initialize rs1
li x27, 0xbc5d9c3f # initialize rs2
mul x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x766efa65 # initialize rs1
li x28, 0x6288cfe5 # initialize rs2
mul x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x86182a39 # initialize rs1
li x29, 0x49b44da3 # initialize rs2
mul x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc4bbb43e # initialize rs1
li x30, 0xf42dae17 # initialize rs2
mul x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x3c787e84 # initialize rs1
li x31, 0xd45e7405 # initialize rs2
mul x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x10, x21 # perform first operation
mul x20, x16, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x10, x19 # perform first operation
mul x22, x12, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x3, x13 # perform first operation
mul x12, x14, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x2, x7 # perform first operation
mul x12, x19, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x25, x2 # perform first operation
mul x22, x3, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x3, x21 # perform first operation
mul x3, x7, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x26, x12 # perform first operation
mul x30, x24, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x21, x16 # perform first operation
mul x23, x19, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x28, x1 # perform first operation
mul x14, x16, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x17, x22 # perform first operation
mul x17, x13, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x20, x18 # perform first operation
mul x18, x5, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x16, x29 # perform first operation
mul x30, x2, x24 # perform second (triggering) operation

#.EQU SIGSIZE,1568
.EQU SIGSIZE,6272 #combined


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
