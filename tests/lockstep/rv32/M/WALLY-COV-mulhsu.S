///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/M/WALLY-COV-mulhsu.S
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
