///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zknh/WALLY-COV-sha512sum0r.S
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
li x0, 0xee0be100 # initialize rs1
li x12, 0xaf4dc9f3 # initialize rs2
sha512sum0r x24, x0, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xafb99d58 # initialize rs1
li x11, 0xdfe58a90 # initialize rs2
sha512sum0r x18, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x1df1d0c3 # initialize rs1
li x10, 0x9af46548 # initialize rs2
sha512sum0r x30, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x3827aab0 # initialize rs1
li x14, 0x62f5adb3 # initialize rs2
sha512sum0r x2, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9e9f11ab # initialize rs1
li x2, 0x444667d5 # initialize rs2
sha512sum0r x15, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x503d448a # initialize rs1
li x27, 0x5dfc15a9 # initialize rs2
sha512sum0r x8, x5, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe3de44e5 # initialize rs1
li x7, 0xff19be22 # initialize rs2
sha512sum0r x17, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xbd213861 # initialize rs1
li x2, 0x00e950f6 # initialize rs2
sha512sum0r x3, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x8c303219 # initialize rs1
li x28, 0xdbef61bf # initialize rs2
sha512sum0r x5, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x3ca20d18 # initialize rs1
li x7, 0x224f68e4 # initialize rs2
sha512sum0r x18, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x4f586103 # initialize rs1
li x28, 0x805db448 # initialize rs2
sha512sum0r x20, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x1a6e46c0 # initialize rs1
li x27, 0x6599c3ee # initialize rs2
sha512sum0r x12, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x69ac6acb # initialize rs1
li x18, 0x7c865b66 # initialize rs2
sha512sum0r x10, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x7e8d9eff # initialize rs1
li x2, 0x617a68a8 # initialize rs2
sha512sum0r x18, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x57f659d1 # initialize rs1
li x16, 0xe00eac1a # initialize rs2
sha512sum0r x5, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x956da2d5 # initialize rs1
li x17, 0xe7bedbb4 # initialize rs2
sha512sum0r x21, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x5085f854 # initialize rs1
li x3, 0x68e64249 # initialize rs2
sha512sum0r x25, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x052cd8f4 # initialize rs1
li x24, 0x953c18d3 # initialize rs2
sha512sum0r x28, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xcbf9b357 # initialize rs1
li x12, 0xe4750f00 # initialize rs2
sha512sum0r x14, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x102f0e22 # initialize rs1
li x10, 0xd817c15a # initialize rs2
sha512sum0r x15, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x3caa0526 # initialize rs1
li x12, 0xa65dc1e5 # initialize rs2
sha512sum0r x1, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x493c8d43 # initialize rs1
li x16, 0x57dfc8e2 # initialize rs2
sha512sum0r x9, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x4df9bee3 # initialize rs1
li x9, 0xc1b0f81a # initialize rs2
sha512sum0r x17, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x5ffa8ed0 # initialize rs1
li x11, 0xfd67db20 # initialize rs2
sha512sum0r x31, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x1f938f51 # initialize rs1
li x29, 0x16e7702a # initialize rs2
sha512sum0r x14, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x55bb6690 # initialize rs1
li x12, 0x52835cd2 # initialize rs2
sha512sum0r x30, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xfad161a9 # initialize rs1
li x20, 0xb4fff8fa # initialize rs2
sha512sum0r x23, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x665d8565 # initialize rs1
li x22, 0xda9b27ad # initialize rs2
sha512sum0r x10, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x9d393675 # initialize rs1
li x22, 0x7e90fef4 # initialize rs2
sha512sum0r x18, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x51215c69 # initialize rs1
li x24, 0x9049a4ca # initialize rs2
sha512sum0r x7, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xa463649d # initialize rs1
li x25, 0xcf568414 # initialize rs2
sha512sum0r x5, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x61234989 # initialize rs1
li x9, 0x9f63e601 # initialize rs2
sha512sum0r x10, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0x788256ae # initialize rs1
li x0, 0x6885d2b6 # initialize rs2
sha512sum0r x17, x20, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x10, 0x8aa75dc5 # initialize rs1
li x1, 0x555880a9 # initialize rs2
sha512sum0r x16, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x9, 0xe3c4efe0 # initialize rs1
li x2, 0xa4fba3fc # initialize rs2
sha512sum0r x15, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x6, 0xa5b13871 # initialize rs1
li x3, 0x4d63b2c0 # initialize rs2
sha512sum0r x30, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0xd7d44916 # initialize rs1
li x4, 0x3649cad7 # initialize rs2
sha512sum0r x30, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0x2fe3cb35 # initialize rs1
li x5, 0x5a3a349d # initialize rs2
sha512sum0r x1, x30, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0xdc3f0723 # initialize rs1
li x6, 0x9a982472 # initialize rs2
sha512sum0r x22, x31, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x22, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xcf5a9ebc # initialize rs1
li x7, 0xf539782e # initialize rs2
sha512sum0r x1, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x24, 0xcad4ec3d # initialize rs1
li x8, 0x8d491c11 # initialize rs2
sha512sum0r x29, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x10, 0x6da3f549 # initialize rs1
li x9, 0xf34018da # initialize rs2
sha512sum0r x23, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x19, 0x1bd25794 # initialize rs1
li x10, 0xb8cc58f5 # initialize rs2
sha512sum0r x30, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x22, 0xe1ec24ef # initialize rs1
li x11, 0xba597af9 # initialize rs2
sha512sum0r x15, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x7, 0x1185b13d # initialize rs1
li x12, 0x16f39c55 # initialize rs2
sha512sum0r x27, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0xbf4208a2 # initialize rs1
li x13, 0x3e5cfbc8 # initialize rs2
sha512sum0r x27, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x22, 0xe309957f # initialize rs1
li x14, 0xf0707287 # initialize rs2
sha512sum0r x23, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x13, 0x3947599a # initialize rs1
li x15, 0x56a8eb0e # initialize rs2
sha512sum0r x12, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x7, 0xacceb679 # initialize rs1
li x16, 0x696d1532 # initialize rs2
sha512sum0r x19, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x29, 0x38faf448 # initialize rs1
li x17, 0xfd8ebe0a # initialize rs2
sha512sum0r x24, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x1, 0xc7c22262 # initialize rs1
li x18, 0x43499f12 # initialize rs2
sha512sum0r x17, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x14, 0xb72aca9a # initialize rs1
li x19, 0x82ed154b # initialize rs2
sha512sum0r x27, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x27, 0x73b35672 # initialize rs1
li x20, 0x62f27241 # initialize rs2
sha512sum0r x29, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x14, 0x6d0f8543 # initialize rs1
li x21, 0x4f692843 # initialize rs2
sha512sum0r x31, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x8, 0xeb182d01 # initialize rs1
li x22, 0x1b138bb6 # initialize rs2
sha512sum0r x26, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x31, 0x1cdd82db # initialize rs1
li x23, 0x13b70602 # initialize rs2
sha512sum0r x24, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x5, 0x8666dbd2 # initialize rs1
li x24, 0x806de10d # initialize rs2
sha512sum0r x31, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x11, 0x3e1421f9 # initialize rs1
li x25, 0x03efd484 # initialize rs2
sha512sum0r x1, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x21, 0x1c12a890 # initialize rs1
li x26, 0xbd54fa33 # initialize rs2
sha512sum0r x2, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x3, 0x4f82891d # initialize rs1
li x27, 0x058fe57e # initialize rs2
sha512sum0r x26, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x11, 0xc4534dc8 # initialize rs1
li x28, 0xd2de1191 # initialize rs2
sha512sum0r x27, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x15, 0x35b08805 # initialize rs1
li x29, 0x140245cd # initialize rs2
sha512sum0r x5, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x23, 0x902e4ac7 # initialize rs1
li x30, 0x8e40bc59 # initialize rs2
sha512sum0r x13, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x23, 0x43f9caa7 # initialize rs1
li x31, 0xa7ecefa5 # initialize rs2
sha512sum0r x25, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 252)

# Testcase cp_rd (Test destination rd = x0)
li x26, 0x8ee83de2 # initialize rs1
li x27, 0xf2b07559 # initialize rs2
sha512sum0r x0, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x29, 0x85d1c300 # initialize rs1
li x2, 0xf064d948 # initialize rs2
sha512sum0r x1, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x7, 0xceb29208 # initialize rs1
li x14, 0x897770bf # initialize rs2
sha512sum0r x2, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x21, 0x30e0ae8a # initialize rs1
li x27, 0xe0bb894e # initialize rs2
sha512sum0r x3, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0x8ab269a4 # initialize rs1
li x3, 0x5505661c # initialize rs2
sha512sum0r x4, x18, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0xfed8be0b # initialize rs1
li x2, 0xcc30fd12 # initialize rs2
sha512sum0r x5, x21, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x479b9c22 # initialize rs1
li x11, 0x05ed2b7a # initialize rs2
sha512sum0r x6, x29, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0x59e367c1 # initialize rs1
li x24, 0x94a02635 # initialize rs2
sha512sum0r x7, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x0458caf8 # initialize rs1
li x30, 0x645b8133 # initialize rs2
sha512sum0r x8, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0x323f2460 # initialize rs1
li x6, 0x69e614c2 # initialize rs2
sha512sum0r x9, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x14, 0x243dc8f3 # initialize rs1
li x20, 0xf9df2bd0 # initialize rs2
sha512sum0r x10, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x24, 0xd5d189e5 # initialize rs1
li x6, 0x6cb3fee5 # initialize rs2
sha512sum0r x11, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x26, 0x314b32e6 # initialize rs1
li x17, 0xb0cab767 # initialize rs2
sha512sum0r x12, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x16, 0xc0e36276 # initialize rs1
li x15, 0x3489c83d # initialize rs2
sha512sum0r x13, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x1, 0xcf32625f # initialize rs1
li x10, 0xb6993d03 # initialize rs2
sha512sum0r x14, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0x40ca426f # initialize rs1
li x27, 0x695ae5fd # initialize rs2
sha512sum0r x15, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x11, 0xe9b68a3d # initialize rs1
li x3, 0xe856755d # initialize rs2
sha512sum0r x16, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x26, 0x4aadb0da # initialize rs1
li x21, 0xf65a9ab8 # initialize rs2
sha512sum0r x17, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x5, 0xf0bd85e2 # initialize rs1
li x1, 0x962683a2 # initialize rs2
sha512sum0r x18, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x10, 0xd5f571e1 # initialize rs1
li x17, 0x5084c504 # initialize rs2
sha512sum0r x19, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x12, 0x7f4de307 # initialize rs1
li x13, 0x8a14fa0a # initialize rs2
sha512sum0r x20, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x22, 0x96cb931c # initialize rs1
li x27, 0xacd1e032 # initialize rs2
sha512sum0r x21, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x18, 0x4f999030 # initialize rs1
li x1, 0x759a678c # initialize rs2
sha512sum0r x22, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x18, 0xe0d67343 # initialize rs1
li x29, 0x0c4f2116 # initialize rs2
sha512sum0r x23, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x17, 0x6ee20e51 # initialize rs1
li x18, 0xdf775f95 # initialize rs2
sha512sum0r x24, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x71495c61 # initialize rs1
li x3, 0xc8e37bb3 # initialize rs2
sha512sum0r x25, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x2, 0xf7520d6c # initialize rs1
li x6, 0xa2e33647 # initialize rs2
sha512sum0r x26, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x17, 0xecfec58e # initialize rs1
li x16, 0x4320a870 # initialize rs2
sha512sum0r x27, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x20, 0x16acae10 # initialize rs1
li x7, 0xaab3a229 # initialize rs2
sha512sum0r x28, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x15, 0x12eda9d8 # initialize rs1
li x22, 0xe51a670a # initialize rs2
sha512sum0r x29, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x21, 0xa4b9ba27 # initialize rs1
li x29, 0x2caeeb57 # initialize rs2
sha512sum0r x30, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x3, 0x9c87181e # initialize rs1
li x15, 0x6cc8b276 # initialize rs2
sha512sum0r x31, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x13, 0x00000000 # initialize rs1
li x8, 0x1c67df12 # initialize rs2
sha512sum0r x12, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x30, 0x00000001 # initialize rs1
li x5, 0xf1de9b10 # initialize rs2
sha512sum0r x25, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0x00000002 # initialize rs1
li x26, 0x92c8de27 # initialize rs2
sha512sum0r x2, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x3, 0x80000000 # initialize rs1
li x7, 0x2f960952 # initialize rs2
sha512sum0r x11, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x24, 0x80000001 # initialize rs1
li x25, 0xf6d851ca # initialize rs2
sha512sum0r x13, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x26, 0x7fffffff # initialize rs1
li x14, 0x02e4f12b # initialize rs2
sha512sum0r x18, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x25, 0x7ffffffe # initialize rs1
li x28, 0x38e9ee02 # initialize rs2
sha512sum0r x15, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x16, 0xffffffff # initialize rs1
li x31, 0x082b19e4 # initialize rs2
sha512sum0r x1, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0xfffffffe # initialize rs1
li x29, 0x067f47fd # initialize rs2
sha512sum0r x31, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x5, 0x5bbc8872 # initialize rs1
li x1, 0x8a7ce5eb # initialize rs2
sha512sum0r x28, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x28, 0xaaaaaaaa # initialize rs1
li x15, 0x950b3c70 # initialize rs2
sha512sum0r x8, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x7, 0x55555555 # initialize rs1
li x24, 0x39644617 # initialize rs2
sha512sum0r x8, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x30, 0xfdbe49d5 # initialize rs1
li x21, 0x00000000 # initialize rs2
sha512sum0r x6, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x1, 0xd722e3dc # initialize rs1
li x17, 0x00000001 # initialize rs2
sha512sum0r x26, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x30, 0x7d1a8f5e # initialize rs1
li x28, 0x00000002 # initialize rs2
sha512sum0r x17, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x30, 0x8489aadc # initialize rs1
li x27, 0x80000000 # initialize rs2
sha512sum0r x20, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x8, 0xa0c1fab5 # initialize rs1
li x18, 0x80000001 # initialize rs2
sha512sum0r x26, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x12, 0xd263e688 # initialize rs1
li x9, 0x7fffffff # initialize rs2
sha512sum0r x11, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x28, 0x747ee521 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
sha512sum0r x10, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x18, 0xc8fff37f # initialize rs1
li x13, 0xffffffff # initialize rs2
sha512sum0r x8, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x29, 0xf952460c # initialize rs1
li x13, 0xfffffffe # initialize rs2
sha512sum0r x6, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x6, 0xef56060d # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
sha512sum0r x9, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x21, 0x57dca625 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
sha512sum0r x6, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x5, 0xfb91c5a9 # initialize rs1
li x8, 0x55555555 # initialize rs2
sha512sum0r x21, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x1, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
sha512sum0r x9, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x16, 0x00000000 # initialize rs1
li x27, 0x00000001 # initialize rs2
sha512sum0r x30, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x10, 0x00000000 # initialize rs1
li x28, 0x00000002 # initialize rs2
sha512sum0r x23, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x15, 0x00000000 # initialize rs1
li x24, 0x80000000 # initialize rs2
sha512sum0r x23, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x29, 0x00000000 # initialize rs1
li x17, 0x80000001 # initialize rs2
sha512sum0r x14, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x30, 0x00000000 # initialize rs1
li x17, 0x7fffffff # initialize rs2
sha512sum0r x7, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x16, 0x00000000 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
sha512sum0r x19, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x28, 0x00000000 # initialize rs1
li x19, 0xffffffff # initialize rs2
sha512sum0r x30, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x7, 0x00000000 # initialize rs1
li x18, 0xfffffffe # initialize rs2
sha512sum0r x27, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x18, 0x00000000 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
sha512sum0r x27, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x14, 0x00000000 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
sha512sum0r x29, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x2, 0x00000000 # initialize rs1
li x6, 0x55555555 # initialize rs2
sha512sum0r x22, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x17, 0x00000001 # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sum0r x6, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x20, 0x00000001 # initialize rs1
li x27, 0x00000001 # initialize rs2
sha512sum0r x22, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x3, 0x00000001 # initialize rs1
li x23, 0x00000002 # initialize rs2
sha512sum0r x7, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x2, 0x00000001 # initialize rs1
li x11, 0x80000000 # initialize rs2
sha512sum0r x13, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x22, 0x00000001 # initialize rs1
li x1, 0x80000001 # initialize rs2
sha512sum0r x15, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x16, 0x00000001 # initialize rs1
li x7, 0x7fffffff # initialize rs2
sha512sum0r x15, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x7, 0x00000001 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
sha512sum0r x17, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x29, 0x00000001 # initialize rs1
li x31, 0xffffffff # initialize rs2
sha512sum0r x16, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x2, 0x00000001 # initialize rs1
li x5, 0xfffffffe # initialize rs2
sha512sum0r x11, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x10, 0x00000001 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
sha512sum0r x17, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x1, 0x00000001 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
sha512sum0r x31, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x16, 0x00000001 # initialize rs1
li x2, 0x55555555 # initialize rs2
sha512sum0r x18, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x30, 0x00000002 # initialize rs1
li x26, 0x00000000 # initialize rs2
sha512sum0r x18, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x17, 0x00000002 # initialize rs1
li x18, 0x00000001 # initialize rs2
sha512sum0r x9, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x6, 0x00000002 # initialize rs1
li x2, 0x00000002 # initialize rs2
sha512sum0r x15, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x8, 0x00000002 # initialize rs1
li x13, 0x80000000 # initialize rs2
sha512sum0r x19, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x19, 0x00000002 # initialize rs1
li x12, 0x80000001 # initialize rs2
sha512sum0r x18, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x6, 0x00000002 # initialize rs1
li x13, 0x7fffffff # initialize rs2
sha512sum0r x8, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x31, 0x00000002 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
sha512sum0r x30, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x8, 0x00000002 # initialize rs1
li x16, 0xffffffff # initialize rs2
sha512sum0r x5, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x6, 0x00000002 # initialize rs1
li x16, 0xfffffffe # initialize rs2
sha512sum0r x25, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x16, 0x00000002 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
sha512sum0r x15, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x14, 0x00000002 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
sha512sum0r x23, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x23, 0x00000002 # initialize rs1
li x24, 0x55555555 # initialize rs2
sha512sum0r x17, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x20, 0x80000000 # initialize rs1
li x29, 0x00000000 # initialize rs2
sha512sum0r x30, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x18, 0x80000000 # initialize rs1
li x2, 0x00000001 # initialize rs2
sha512sum0r x12, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x29, 0x80000000 # initialize rs1
li x31, 0x00000002 # initialize rs2
sha512sum0r x11, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x18, 0x80000000 # initialize rs1
li x7, 0x80000000 # initialize rs2
sha512sum0r x1, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x10, 0x80000000 # initialize rs1
li x14, 0x80000001 # initialize rs2
sha512sum0r x8, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x3, 0x80000000 # initialize rs1
li x29, 0x7fffffff # initialize rs2
sha512sum0r x6, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x2, 0x80000000 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
sha512sum0r x29, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x30, 0x80000000 # initialize rs1
li x5, 0xffffffff # initialize rs2
sha512sum0r x16, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x11, 0x80000000 # initialize rs1
li x5, 0xfffffffe # initialize rs2
sha512sum0r x1, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x14, 0x80000000 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
sha512sum0r x22, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x20, 0x80000000 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
sha512sum0r x11, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x27, 0x80000000 # initialize rs1
li x14, 0x55555555 # initialize rs2
sha512sum0r x19, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x17, 0x80000001 # initialize rs1
li x5, 0x00000000 # initialize rs2
sha512sum0r x27, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x11, 0x80000001 # initialize rs1
li x9, 0x00000001 # initialize rs2
sha512sum0r x28, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x1, 0x80000001 # initialize rs1
li x21, 0x00000002 # initialize rs2
sha512sum0r x9, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x7, 0x80000001 # initialize rs1
li x28, 0x80000000 # initialize rs2
sha512sum0r x15, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x20, 0x80000001 # initialize rs1
li x11, 0x80000001 # initialize rs2
sha512sum0r x24, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x28, 0x80000001 # initialize rs1
li x9, 0x7fffffff # initialize rs2
sha512sum0r x18, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x25, 0x80000001 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
sha512sum0r x11, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x1, 0x80000001 # initialize rs1
li x18, 0xffffffff # initialize rs2
sha512sum0r x16, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x7, 0x80000001 # initialize rs1
li x15, 0xfffffffe # initialize rs2
sha512sum0r x19, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x22, 0x80000001 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
sha512sum0r x28, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x23, 0x80000001 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sha512sum0r x26, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x10, 0x80000001 # initialize rs1
li x12, 0x55555555 # initialize rs2
sha512sum0r x21, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x8, 0x7fffffff # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sum0r x18, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x9, 0x7fffffff # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sum0r x27, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x26, 0x7fffffff # initialize rs1
li x28, 0x00000002 # initialize rs2
sha512sum0r x27, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x5, 0x7fffffff # initialize rs1
li x10, 0x80000000 # initialize rs2
sha512sum0r x27, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x10, 0x7fffffff # initialize rs1
li x19, 0x80000001 # initialize rs2
sha512sum0r x6, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x28, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
sha512sum0r x24, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x10, 0x7fffffff # initialize rs1
li x17, 0x7ffffffe # initialize rs2
sha512sum0r x30, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x9, 0x7fffffff # initialize rs1
li x13, 0xffffffff # initialize rs2
sha512sum0r x30, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x18, 0x7fffffff # initialize rs1
li x12, 0xfffffffe # initialize rs2
sha512sum0r x8, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x17, 0x7fffffff # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
sha512sum0r x10, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x19, 0x7fffffff # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
sha512sum0r x21, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x19, 0x7fffffff # initialize rs1
li x15, 0x55555555 # initialize rs2
sha512sum0r x18, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x28, 0x7ffffffe # initialize rs1
li x13, 0x00000000 # initialize rs2
sha512sum0r x8, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x30, 0x7ffffffe # initialize rs1
li x12, 0x00000001 # initialize rs2
sha512sum0r x21, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x19, 0x7ffffffe # initialize rs1
li x8, 0x00000002 # initialize rs2
sha512sum0r x21, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x26, 0x7ffffffe # initialize rs1
li x16, 0x80000000 # initialize rs2
sha512sum0r x22, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x31, 0x7ffffffe # initialize rs1
li x12, 0x80000001 # initialize rs2
sha512sum0r x26, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x9, 0x7ffffffe # initialize rs1
li x5, 0x7fffffff # initialize rs2
sha512sum0r x12, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x31, 0x7ffffffe # initialize rs1
li x22, 0x7ffffffe # initialize rs2
sha512sum0r x2, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x11, 0x7ffffffe # initialize rs1
li x13, 0xffffffff # initialize rs2
sha512sum0r x20, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x12, 0x7ffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
sha512sum0r x17, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x30, 0x7ffffffe # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
sha512sum0r x5, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x21, 0x7ffffffe # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
sha512sum0r x2, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x30, 0x7ffffffe # initialize rs1
li x6, 0x55555555 # initialize rs2
sha512sum0r x19, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x29, 0xffffffff # initialize rs1
li x27, 0x00000000 # initialize rs2
sha512sum0r x30, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x29, 0xffffffff # initialize rs1
li x26, 0x00000001 # initialize rs2
sha512sum0r x15, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x2, 0xffffffff # initialize rs1
li x26, 0x00000002 # initialize rs2
sha512sum0r x16, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x26, 0xffffffff # initialize rs1
li x29, 0x80000000 # initialize rs2
sha512sum0r x6, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x6, 0xffffffff # initialize rs1
li x14, 0x80000001 # initialize rs2
sha512sum0r x26, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x8, 0xffffffff # initialize rs1
li x18, 0x7fffffff # initialize rs2
sha512sum0r x6, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x31, 0xffffffff # initialize rs1
li x6, 0x7ffffffe # initialize rs2
sha512sum0r x25, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x12, 0xffffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
sha512sum0r x20, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x5, 0xffffffff # initialize rs1
li x3, 0xfffffffe # initialize rs2
sha512sum0r x19, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x10, 0xffffffff # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
sha512sum0r x17, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x5, 0xffffffff # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
sha512sum0r x13, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x28, 0xffffffff # initialize rs1
li x29, 0x55555555 # initialize rs2
sha512sum0r x12, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x15, 0xfffffffe # initialize rs1
li x20, 0x00000000 # initialize rs2
sha512sum0r x24, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x11, 0xfffffffe # initialize rs1
li x27, 0x00000001 # initialize rs2
sha512sum0r x2, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x11, 0xfffffffe # initialize rs1
li x26, 0x00000002 # initialize rs2
sha512sum0r x18, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x14, 0xfffffffe # initialize rs1
li x22, 0x80000000 # initialize rs2
sha512sum0r x19, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x23, 0xfffffffe # initialize rs1
li x26, 0x80000001 # initialize rs2
sha512sum0r x19, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x15, 0xfffffffe # initialize rs1
li x22, 0x7fffffff # initialize rs2
sha512sum0r x1, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x24, 0xfffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
sha512sum0r x1, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x29, 0xfffffffe # initialize rs1
li x1, 0xffffffff # initialize rs2
sha512sum0r x7, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x28, 0xfffffffe # initialize rs1
li x15, 0xfffffffe # initialize rs2
sha512sum0r x7, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x17, 0xfffffffe # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
sha512sum0r x28, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x26, 0xfffffffe # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sha512sum0r x19, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x11, 0xfffffffe # initialize rs1
li x10, 0x55555555 # initialize rs2
sha512sum0r x20, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x19, 0x5bbc8872 # initialize rs1
li x25, 0x00000000 # initialize rs2
sha512sum0r x16, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x9, 0x5bbc8872 # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sum0r x5, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x30, 0x5bbc8872 # initialize rs1
li x5, 0x00000002 # initialize rs2
sha512sum0r x21, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x2, 0x5bbc8872 # initialize rs1
li x25, 0x80000000 # initialize rs2
sha512sum0r x9, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x10, 0x5bbc8872 # initialize rs1
li x19, 0x80000001 # initialize rs2
sha512sum0r x21, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x15, 0x5bbc8872 # initialize rs1
li x26, 0x7fffffff # initialize rs2
sha512sum0r x22, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x3, 0x5bbc8872 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
sha512sum0r x19, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x1, 0x5bbc8872 # initialize rs1
li x14, 0xffffffff # initialize rs2
sha512sum0r x12, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x8, 0x5bbc8872 # initialize rs1
li x20, 0xfffffffe # initialize rs2
sha512sum0r x22, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x27, 0x5bbc8872 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
sha512sum0r x8, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x9, 0x5bbc8872 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
sha512sum0r x13, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x14, 0x5bbc8872 # initialize rs1
li x29, 0x55555555 # initialize rs2
sha512sum0r x26, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x2, 0xaaaaaaaa # initialize rs1
li x13, 0x00000000 # initialize rs2
sha512sum0r x23, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x31, 0xaaaaaaaa # initialize rs1
li x10, 0x00000001 # initialize rs2
sha512sum0r x1, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x24, 0xaaaaaaaa # initialize rs1
li x3, 0x00000002 # initialize rs2
sha512sum0r x11, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x31, 0xaaaaaaaa # initialize rs1
li x6, 0x80000000 # initialize rs2
sha512sum0r x19, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x23, 0xaaaaaaaa # initialize rs1
li x24, 0x80000001 # initialize rs2
sha512sum0r x27, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x14, 0xaaaaaaaa # initialize rs1
li x22, 0x7fffffff # initialize rs2
sha512sum0r x31, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x24, 0xaaaaaaaa # initialize rs1
li x16, 0x7ffffffe # initialize rs2
sha512sum0r x7, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x9, 0xaaaaaaaa # initialize rs1
li x18, 0xffffffff # initialize rs2
sha512sum0r x20, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x29, 0xaaaaaaaa # initialize rs1
li x19, 0xfffffffe # initialize rs2
sha512sum0r x24, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x12, 0xaaaaaaaa # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
sha512sum0r x18, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
sha512sum0r x3, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x14, 0xaaaaaaaa # initialize rs1
li x29, 0x55555555 # initialize rs2
sha512sum0r x8, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x1, 0x55555555 # initialize rs1
li x7, 0x00000000 # initialize rs2
sha512sum0r x2, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x3, 0x55555555 # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sum0r x19, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x29, 0x55555555 # initialize rs1
li x14, 0x00000002 # initialize rs2
sha512sum0r x22, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x13, 0x55555555 # initialize rs1
li x2, 0x80000000 # initialize rs2
sha512sum0r x24, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x12, 0x55555555 # initialize rs1
li x15, 0x80000001 # initialize rs2
sha512sum0r x20, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x14, 0x55555555 # initialize rs1
li x8, 0x7fffffff # initialize rs2
sha512sum0r x30, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x29, 0x55555555 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sha512sum0r x13, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x10, 0x55555555 # initialize rs1
li x26, 0xffffffff # initialize rs2
sha512sum0r x7, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x26, 0x55555555 # initialize rs1
li x19, 0xfffffffe # initialize rs2
sha512sum0r x3, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x19, 0x55555555 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
sha512sum0r x14, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x12, 0x55555555 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
sha512sum0r x11, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x18, 0x55555555 # initialize rs1
li x23, 0x55555555 # initialize rs2
sha512sum0r x11, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x14a5ea32 # initialize rs1
li x0, 0xcde21601 # initialize rs2
sha512sum0r x10, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x179762e8 # initialize rs1
li x1, 0xd712bfd3 # initialize rs2
sha512sum0r x16, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x98fe174b # initialize rs1
li x2, 0xf791b0ed # initialize rs2
sha512sum0r x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2493b3cf # initialize rs1
li x3, 0x2d0272f0 # initialize rs2
sha512sum0r x29, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5a757566 # initialize rs1
li x4, 0x10cd8a6a # initialize rs2
sha512sum0r x15, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1a9cca4e # initialize rs1
li x5, 0xa66da0f5 # initialize rs2
sha512sum0r x3, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x582a5747 # initialize rs1
li x6, 0x353e7823 # initialize rs2
sha512sum0r x4, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x85856d08 # initialize rs1
li x7, 0x5faea210 # initialize rs2
sha512sum0r x20, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x8acf0733 # initialize rs1
li x8, 0x8a8f8a21 # initialize rs2
sha512sum0r x25, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xfb70bc7c # initialize rs1
li x9, 0x07a9b512 # initialize rs2
sha512sum0r x14, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x93326a3c # initialize rs1
li x10, 0xa002e3f0 # initialize rs2
sha512sum0r x16, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x0b355017 # initialize rs1
li x11, 0x36baf22a # initialize rs2
sha512sum0r x6, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x0e162ed1 # initialize rs1
li x12, 0x3f5a6114 # initialize rs2
sha512sum0r x24, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x6a32a331 # initialize rs1
li x13, 0x62db741b # initialize rs2
sha512sum0r x2, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x9f255d54 # initialize rs1
li x14, 0xb4611824 # initialize rs2
sha512sum0r x10, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xa8b7076f # initialize rs1
li x15, 0x91e60d18 # initialize rs2
sha512sum0r x14, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xec524cd9 # initialize rs1
li x16, 0x8c3c4ab7 # initialize rs2
sha512sum0r x17, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xbbb0ae0d # initialize rs1
li x17, 0xb95c75a0 # initialize rs2
sha512sum0r x15, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x92b3af24 # initialize rs1
li x18, 0x380724ac # initialize rs2
sha512sum0r x24, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xdae40a3c # initialize rs1
li x19, 0xa3cc5a61 # initialize rs2
sha512sum0r x30, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x4b92a33b # initialize rs1
li x20, 0x6bc831ae # initialize rs2
sha512sum0r x11, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xb7a0fa5a # initialize rs1
li x21, 0xd63a40eb # initialize rs2
sha512sum0r x18, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x9a3b47b8 # initialize rs1
li x22, 0x20698c9d # initialize rs2
sha512sum0r x24, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x3546eef8 # initialize rs1
li x23, 0xb7c8e400 # initialize rs2
sha512sum0r x30, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xfc90511b # initialize rs1
li x24, 0xd391916c # initialize rs2
sha512sum0r x6, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xd7b9deeb # initialize rs1
li x25, 0x4f461f1b # initialize rs2
sha512sum0r x17, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x8e6f1014 # initialize rs1
li x26, 0x58f126c6 # initialize rs2
sha512sum0r x19, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xd2cf3c22 # initialize rs1
li x27, 0xe25b4db3 # initialize rs2
sha512sum0r x22, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x8e9119e4 # initialize rs1
li x28, 0x841d66b9 # initialize rs2
sha512sum0r x25, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x79cc38b4 # initialize rs1
li x29, 0x302db349 # initialize rs2
sha512sum0r x25, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x4e8a8dda # initialize rs1
li x30, 0x3269cc2c # initialize rs2
sha512sum0r x17, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x88fbf767 # initialize rs1
li x31, 0x11475fa5 # initialize rs2
sha512sum0r x11, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x71f59874 # initialize rs1
li x3, 0x13e5caa8 # initialize rs2
sha512sum0r x0, x0, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x23471f0a # initialize rs1
li x19, 0x147eef97 # initialize rs2
sha512sum0r x1, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x8266051d # initialize rs1
li x21, 0xd5caf2f5 # initialize rs2
sha512sum0r x2, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x2fc87c66 # initialize rs1
li x17, 0x64be583a # initialize rs2
sha512sum0r x3, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa2d7e3b4 # initialize rs1
li x26, 0x62649920 # initialize rs2
sha512sum0r x4, x4, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x93bf331d # initialize rs1
li x1, 0x750a2499 # initialize rs2
sha512sum0r x5, x5, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x475c6de7 # initialize rs1
li x26, 0x233544ec # initialize rs2
sha512sum0r x6, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8a4e3398 # initialize rs1
li x10, 0x9842b165 # initialize rs2
sha512sum0r x7, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x68ae44dc # initialize rs1
li x3, 0x8ee6c796 # initialize rs2
sha512sum0r x8, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x65d6d421 # initialize rs1
li x28, 0xbfab390f # initialize rs2
sha512sum0r x9, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x3ab9ab17 # initialize rs1
li x18, 0x5696231d # initialize rs2
sha512sum0r x10, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x004f911c # initialize rs1
li x18, 0xa2e28eb1 # initialize rs2
sha512sum0r x11, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xb1e9ecf5 # initialize rs1
li x21, 0x20f1264a # initialize rs2
sha512sum0r x12, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x3a1b4fa1 # initialize rs1
li x20, 0x9fd42549 # initialize rs2
sha512sum0r x13, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x0121c9cc # initialize rs1
li x13, 0x40eef0e6 # initialize rs2
sha512sum0r x14, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xa318c568 # initialize rs1
li x2, 0xb3095fe3 # initialize rs2
sha512sum0r x15, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x98bc4f1e # initialize rs1
li x30, 0x21534238 # initialize rs2
sha512sum0r x16, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x1b351651 # initialize rs1
li x27, 0x41cd7dd4 # initialize rs2
sha512sum0r x17, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x7446b0a0 # initialize rs1
li x20, 0x23ecbf73 # initialize rs2
sha512sum0r x18, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x36aae693 # initialize rs1
li x22, 0x0d3e8df7 # initialize rs2
sha512sum0r x19, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xfb3a99b2 # initialize rs1
li x30, 0xf21fed71 # initialize rs2
sha512sum0r x20, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x6d89d1be # initialize rs1
li x5, 0xcb6897f5 # initialize rs2
sha512sum0r x21, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x26251f0b # initialize rs1
li x26, 0xf53b3352 # initialize rs2
sha512sum0r x22, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x67776752 # initialize rs1
li x3, 0x4a735887 # initialize rs2
sha512sum0r x23, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xc6eee90d # initialize rs1
li x24, 0x7de8422c # initialize rs2
sha512sum0r x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x906715af # initialize rs1
li x31, 0xa4e57710 # initialize rs2
sha512sum0r x25, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x667d87f9 # initialize rs1
li x5, 0x74cc149a # initialize rs2
sha512sum0r x26, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb8c71f44 # initialize rs1
li x8, 0xb6bf4d3c # initialize rs2
sha512sum0r x27, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x81c945f8 # initialize rs1
li x29, 0xcf658d33 # initialize rs2
sha512sum0r x28, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x45538328 # initialize rs1
li x18, 0x385eb1b4 # initialize rs2
sha512sum0r x29, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xcabcf3e1 # initialize rs1
li x22, 0x97747915 # initialize rs2
sha512sum0r x30, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xc712cfba # initialize rs1
li x17, 0x02f64824 # initialize rs2
sha512sum0r x31, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x26, 0xfae7e28b # initialize rs1
li x0, 0x90313ea5 # initialize rs2
sha512sum0r x0, x26, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x21, 0x9d5bc8ad # initialize rs1
li x1, 0xc8368397 # initialize rs2
sha512sum0r x1, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x8, 0x8f55b56d # initialize rs1
li x2, 0x563be264 # initialize rs2
sha512sum0r x2, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x10, 0xc1868d6c # initialize rs1
li x3, 0xc3dc38ef # initialize rs2
sha512sum0r x3, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0xcce1a6fb # initialize rs1
li x4, 0x640dec2b # initialize rs2
sha512sum0r x4, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0xbb02ac1f # initialize rs1
li x5, 0x2b5902b4 # initialize rs2
sha512sum0r x5, x15, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x157f4057 # initialize rs1
li x6, 0x249d2978 # initialize rs2
sha512sum0r x6, x10, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0xb7adadaf # initialize rs1
li x7, 0x98b1631a # initialize rs2
sha512sum0r x7, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x15, 0xb7923a88 # initialize rs1
li x8, 0x218f8f86 # initialize rs2
sha512sum0r x8, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x25, 0x3afbb13f # initialize rs1
li x9, 0x27f79e40 # initialize rs2
sha512sum0r x9, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x8, 0x67c39af2 # initialize rs1
li x10, 0x067f1068 # initialize rs2
sha512sum0r x10, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x18, 0x6c03748d # initialize rs1
li x11, 0x9712cb7d # initialize rs2
sha512sum0r x11, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x1, 0xb7c55bb0 # initialize rs1
li x12, 0xe2a61c8d # initialize rs2
sha512sum0r x12, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x17, 0xf073d8b5 # initialize rs1
li x13, 0x2825f7db # initialize rs2
sha512sum0r x13, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x16, 0xdaa83ae4 # initialize rs1
li x14, 0x40a18979 # initialize rs2
sha512sum0r x14, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x27, 0x6859ab58 # initialize rs1
li x15, 0x707e78f7 # initialize rs2
sha512sum0r x15, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x23, 0x6ebaea76 # initialize rs1
li x16, 0x8750da76 # initialize rs2
sha512sum0r x16, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x8, 0xfd2bb9a4 # initialize rs1
li x17, 0x9212d6ed # initialize rs2
sha512sum0r x17, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x31, 0x71e87e17 # initialize rs1
li x18, 0x39bed3b2 # initialize rs2
sha512sum0r x18, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x15, 0x7c5b482c # initialize rs1
li x19, 0x445f337c # initialize rs2
sha512sum0r x19, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x3, 0xc544b1f2 # initialize rs1
li x20, 0x33f0c128 # initialize rs2
sha512sum0r x20, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x31, 0x90e49ad0 # initialize rs1
li x21, 0xf37cd257 # initialize rs2
sha512sum0r x21, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x17, 0x10bee99d # initialize rs1
li x22, 0x09cf64ff # initialize rs2
sha512sum0r x22, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x25, 0xd613f7de # initialize rs1
li x23, 0x41a4779b # initialize rs2
sha512sum0r x23, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x20, 0xf8a675a5 # initialize rs1
li x24, 0xb1c6dba8 # initialize rs2
sha512sum0r x24, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x17, 0x0a5801c7 # initialize rs1
li x25, 0x8c662e90 # initialize rs2
sha512sum0r x25, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x28, 0xb50a737e # initialize rs1
li x26, 0xfb2f4ffc # initialize rs2
sha512sum0r x26, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x2, 0x5b2e060e # initialize rs1
li x27, 0x4a23feda # initialize rs2
sha512sum0r x27, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x20, 0xe2587894 # initialize rs1
li x28, 0x910cbf58 # initialize rs2
sha512sum0r x28, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x6, 0x6c29a42d # initialize rs1
li x29, 0x9d1389f7 # initialize rs2
sha512sum0r x29, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x19, 0xe78acdd6 # initialize rs1
li x30, 0x20c67c32 # initialize rs2
sha512sum0r x30, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x5, 0xc6e8382a # initialize rs1
li x31, 0xbcd68107 # initialize rs2
sha512sum0r x31, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x696e0705 # initialize rs1
li x0, 0x72cf5068 # initialize rs2
sha512sum0r x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x3b993a34 # initialize rs1
li x1, 0xb995d212 # initialize rs2
sha512sum0r x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x07e8b151 # initialize rs1
li x2, 0x856be73e # initialize rs2
sha512sum0r x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x79077b8c # initialize rs1
li x3, 0x61d37f67 # initialize rs2
sha512sum0r x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xffd32606 # initialize rs1
li x4, 0x615e65be # initialize rs2
sha512sum0r x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1eda6313 # initialize rs1
li x5, 0xf8cde784 # initialize rs2
sha512sum0r x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2cc4934a # initialize rs1
li x6, 0xef894c0b # initialize rs2
sha512sum0r x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfafee9e8 # initialize rs1
li x7, 0x0f192f94 # initialize rs2
sha512sum0r x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xc1257e27 # initialize rs1
li x8, 0x0bde628f # initialize rs2
sha512sum0r x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x64435fe2 # initialize rs1
li x9, 0xa4d3e06a # initialize rs2
sha512sum0r x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x9c610164 # initialize rs1
li x10, 0x9854df24 # initialize rs2
sha512sum0r x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x16f7d999 # initialize rs1
li x11, 0xc7db9f1a # initialize rs2
sha512sum0r x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xf3fbe407 # initialize rs1
li x12, 0xfc3391c2 # initialize rs2
sha512sum0r x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xe378a6b7 # initialize rs1
li x13, 0x60a7ab11 # initialize rs2
sha512sum0r x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x26512a6f # initialize rs1
li x14, 0xf625bbd4 # initialize rs2
sha512sum0r x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xd6a13a5a # initialize rs1
li x15, 0x32abbecb # initialize rs2
sha512sum0r x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x808b5ad6 # initialize rs1
li x16, 0xa8957e68 # initialize rs2
sha512sum0r x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x3178480c # initialize rs1
li x17, 0xc314ec63 # initialize rs2
sha512sum0r x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xaf511788 # initialize rs1
li x18, 0x86fe6cb3 # initialize rs2
sha512sum0r x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xcc39447d # initialize rs1
li x19, 0x573148db # initialize rs2
sha512sum0r x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xfd3bb0bd # initialize rs1
li x20, 0xcca87b79 # initialize rs2
sha512sum0r x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x710198ef # initialize rs1
li x21, 0x5b989e0a # initialize rs2
sha512sum0r x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x398b1e8c # initialize rs1
li x22, 0x3265f906 # initialize rs2
sha512sum0r x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x1b52c238 # initialize rs1
li x23, 0x3fd6b69e # initialize rs2
sha512sum0r x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xf41f072a # initialize rs1
li x24, 0x567d2b34 # initialize rs2
sha512sum0r x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xe6260bd3 # initialize rs1
li x25, 0x3b25de21 # initialize rs2
sha512sum0r x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x6e4b850c # initialize rs1
li x26, 0xd7693394 # initialize rs2
sha512sum0r x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x21e73928 # initialize rs1
li x27, 0x09e3196d # initialize rs2
sha512sum0r x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x53bd4dc9 # initialize rs1
li x28, 0x8b3c69e3 # initialize rs2
sha512sum0r x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x4ba075ff # initialize rs1
li x29, 0xe94fb964 # initialize rs2
sha512sum0r x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x504ebbb1 # initialize rs1
li x30, 0x143e578b # initialize rs2
sha512sum0r x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x46ea4faf # initialize rs1
li x31, 0x0f07edc2 # initialize rs2
sha512sum0r x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x19, x15 # perform first operation
sha512sum0r x29, x23, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x25, x29 # perform first operation
sha512sum0r x6, x21, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x3, x14 # perform first operation
sha512sum0r x21, x27, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x7, x30 # perform first operation
sha512sum0r x30, x17, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x28, x27 # perform first operation
sha512sum0r x11, x21, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x2, x9 # perform first operation
sha512sum0r x16, x9, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x9, x12 # perform first operation
sha512sum0r x30, x1, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x16, x2 # perform first operation
sha512sum0r x10, x22, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x14, x7 # perform first operation
sha512sum0r x16, x10, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x13, x21 # perform first operation
sha512sum0r x13, x18, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x20, x31 # perform first operation
sha512sum0r x31, x2, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x25, x27 # perform first operation
sha512sum0r x17, x13, x24 # perform second (triggering) operation

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
