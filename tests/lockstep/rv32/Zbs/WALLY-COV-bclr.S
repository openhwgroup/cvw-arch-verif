///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbs/WALLY-COV-bclr.S
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
li x0, 0xed7dcd7b # initialize rs1
li x9, 0x409dcb6a # initialize rs2
bclr x18, x0, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xbafb3b6e # initialize rs1
li x11, 0xdbb6fe8a # initialize rs2
bclr x12, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x19275ae1 # initialize rs1
li x5, 0x7f6cb9e1 # initialize rs2
bclr x24, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x342f99be # initialize rs1
li x22, 0x7e8a3743 # initialize rs2
bclr x9, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x932f37ac # initialize rs1
li x8, 0x6750a7ce # initialize rs2
bclr x26, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xee039337 # initialize rs1
li x2, 0xfc4ac1c0 # initialize rs2
bclr x28, x5, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x46a38c4a # initialize rs1
li x29, 0x39773994 # initialize rs2
bclr x27, x6, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x27, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x515fa2e7 # initialize rs1
li x28, 0xd2eeff76 # initialize rs2
bclr x21, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x148fe8af # initialize rs1
li x19, 0x1300a608 # initialize rs2
bclr x14, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xe3da7986 # initialize rs1
li x21, 0xa27ed08e # initialize rs2
bclr x25, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x83259fda # initialize rs1
li x6, 0x9f4a0fc6 # initialize rs2
bclr x5, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x9dcb30be # initialize rs1
li x29, 0x77eb06f4 # initialize rs2
bclr x19, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xad93b9e5 # initialize rs1
li x7, 0xd9f8ef34 # initialize rs2
bclr x24, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x22498be8 # initialize rs1
li x21, 0x6f1b99ec # initialize rs2
bclr x28, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x1bfa9052 # initialize rs1
li x5, 0x774b37e5 # initialize rs2
bclr x9, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x83201859 # initialize rs1
li x17, 0x42c9d388 # initialize rs2
bclr x14, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x4dfb6aa5 # initialize rs1
li x15, 0x7cf5db42 # initialize rs2
bclr x21, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x1805b046 # initialize rs1
li x31, 0xb89b2bcd # initialize rs2
bclr x11, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xfa8e2cd1 # initialize rs1
li x27, 0x17763bf4 # initialize rs2
bclr x9, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x2e239037 # initialize rs1
li x7, 0x547874e2 # initialize rs2
bclr x18, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x059401e9 # initialize rs1
li x9, 0x5aaea41f # initialize rs2
bclr x5, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xd0ff33ae # initialize rs1
li x20, 0xaff7e225 # initialize rs2
bclr x23, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x4a23e313 # initialize rs1
li x19, 0x5f60d4d6 # initialize rs2
bclr x28, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x588208e6 # initialize rs1
li x15, 0xabb068ad # initialize rs2
bclr x14, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xcc655131 # initialize rs1
li x8, 0x92b9bb5b # initialize rs2
bclr x13, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xe8822af1 # initialize rs1
li x27, 0xe2dea5d9 # initialize rs2
bclr x15, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x445174fb # initialize rs1
li x3, 0x957c79ab # initialize rs2
bclr x22, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xc7d96234 # initialize rs1
li x1, 0xb3d6ef00 # initialize rs2
bclr x16, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xff71ac61 # initialize rs1
li x2, 0x3f6de720 # initialize rs2
bclr x23, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x55bed2a8 # initialize rs1
li x18, 0xc0b262eb # initialize rs2
bclr x1, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x797562dd # initialize rs1
li x29, 0x163c38d9 # initialize rs2
bclr x19, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xa81b12e1 # initialize rs1
li x14, 0x295b04f3 # initialize rs2
bclr x9, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0x60b1ca1f # initialize rs1
li x0, 0x5ea736b9 # initialize rs2
bclr x22, x20, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x18, 0x5036cb9d # initialize rs1
li x1, 0x8b45ee05 # initialize rs2
bclr x16, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x23, 0x21c81621 # initialize rs1
li x2, 0x7ed79f4f # initialize rs2
bclr x13, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x2, 0x12705178 # initialize rs1
li x3, 0xb6eae33a # initialize rs2
bclr x1, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0x281f4b40 # initialize rs1
li x4, 0x01123da0 # initialize rs2
bclr x21, x24, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x37eb9240 # initialize rs1
li x5, 0xc1f80a88 # initialize rs2
bclr x27, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x04129bdf # initialize rs1
li x6, 0xcc8de99b # initialize rs2
bclr x21, x9, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x14, 0x3f7b4ff2 # initialize rs1
li x7, 0x48d0c134 # initialize rs2
bclr x4, x14, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x25, 0x585faa08 # initialize rs1
li x8, 0xe62dd681 # initialize rs2
bclr x19, x25, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x2, 0x51bf30af # initialize rs1
li x9, 0xa3a22ab5 # initialize rs2
bclr x3, x2, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x12, 0x9c57a2a9 # initialize rs1
li x10, 0x0b18b7a3 # initialize rs2
bclr x29, x12, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x23, 0xcf39e03c # initialize rs1
li x11, 0xac7a9549 # initialize rs2
bclr x10, x23, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x19, 0x68f77f69 # initialize rs1
li x12, 0x1ef5242c # initialize rs2
bclr x1, x19, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0xb0a75540 # initialize rs1
li x13, 0x0abd4ad5 # initialize rs2
bclr x17, x11, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x29, 0xa5e75c86 # initialize rs1
li x14, 0x8fca5278 # initialize rs2
bclr x7, x29, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x21, 0x7b15d486 # initialize rs1
li x15, 0xf3f0b65a # initialize rs2
bclr x31, x21, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x28, 0x9c01cbd7 # initialize rs1
li x16, 0x3a452124 # initialize rs2
bclr x8, x28, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x25, 0xdc2087de # initialize rs1
li x17, 0x6ea6c33b # initialize rs2
bclr x11, x25, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x21, 0xd44f3163 # initialize rs1
li x18, 0xb3f59cd0 # initialize rs2
bclr x27, x21, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x10, 0xd12c3a28 # initialize rs1
li x19, 0xde2937ca # initialize rs2
bclr x22, x10, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x16, 0x263b9311 # initialize rs1
li x20, 0x674487f5 # initialize rs2
bclr x30, x16, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x9, 0xabc960d8 # initialize rs1
li x21, 0xbcaae488 # initialize rs2
bclr x15, x9, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x17, 0x2e3c8541 # initialize rs1
li x22, 0xfc6e8ff3 # initialize rs2
bclr x16, x17, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x9, 0x8bc54b33 # initialize rs1
li x23, 0xd4e087d6 # initialize rs2
bclr x16, x9, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x13, 0x372f1615 # initialize rs1
li x24, 0x66cb2fa2 # initialize rs2
bclr x7, x13, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x9, 0xa7027e2e # initialize rs1
li x25, 0xf4865cbf # initialize rs2
bclr x17, x9, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0x5f3bbe03 # initialize rs1
li x26, 0x15ecbf72 # initialize rs2
bclr x29, x28, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x25, 0x27262731 # initialize rs1
li x27, 0x6cadcd26 # initialize rs2
bclr x10, x25, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x16, 0xb51a238d # initialize rs1
li x28, 0xb456c957 # initialize rs2
bclr x3, x16, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x4, 0x6be1670a # initialize rs1
li x29, 0x1c720254 # initialize rs2
bclr x2, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x18, 0xb06c5b33 # initialize rs1
li x30, 0xdc4d994a # initialize rs2
bclr x4, x18, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x26, 0x5ade6f80 # initialize rs1
li x31, 0x0df14b0d # initialize rs2
bclr x6, x26, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 252)

# Testcase cp_rd (Test destination rd = x0)
li x31, 0x3f8ccc2f # initialize rs1
li x1, 0x5d5b0515 # initialize rs2
bclr x0, x31, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x25, 0xe7ac9488 # initialize rs1
li x18, 0x96d71afa # initialize rs2
bclr x1, x25, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x19, 0x55c933e3 # initialize rs1
li x18, 0x360cf0d1 # initialize rs2
bclr x2, x19, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x19, 0x13fd6dcf # initialize rs1
li x24, 0x7a2f1fc9 # initialize rs2
bclr x3, x19, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
li x19, 0x4414bc3b # initialize rs1
li x14, 0x359dc0a7 # initialize rs2
bclr x4, x19, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0x3d0a07aa # initialize rs1
li x15, 0xf8427cda # initialize rs2
bclr x5, x8, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0x5d46f4e7 # initialize rs1
li x30, 0x4c259663 # initialize rs2
bclr x6, x26, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xf67568d1 # initialize rs1
li x17, 0xa76d8fe7 # initialize rs2
bclr x7, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x23, 0x5a673440 # initialize rs1
li x26, 0x834b1b40 # initialize rs2
bclr x8, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0xf22b8f06 # initialize rs1
li x19, 0xb3af7dfd # initialize rs2
bclr x9, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x12, 0x60ccb428 # initialize rs1
li x28, 0x8f82b10c # initialize rs2
bclr x10, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x28, 0x08f61fb2 # initialize rs1
li x26, 0xbf451be5 # initialize rs2
bclr x11, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x26, 0xa72a50fd # initialize rs1
li x3, 0x21f37d67 # initialize rs2
bclr x12, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x17, 0x33489f3f # initialize rs1
li x22, 0xac47153b # initialize rs2
bclr x13, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x7, 0x9d0bf8b6 # initialize rs1
li x19, 0x051f8d09 # initialize rs2
bclr x14, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x13, 0xeb4014b3 # initialize rs1
li x27, 0x0590f407 # initialize rs2
bclr x15, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x29, 0x30ecb9c6 # initialize rs1
li x1, 0x3f6f1dea # initialize rs2
bclr x16, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x21, 0x134d7fac # initialize rs1
li x6, 0x86018c0c # initialize rs2
bclr x17, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x20, 0x92f439d7 # initialize rs1
li x6, 0x0aa5bf8d # initialize rs2
bclr x18, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x7, 0x87465cbd # initialize rs1
li x2, 0xa9ef020e # initialize rs2
bclr x19, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x25, 0x968019c8 # initialize rs1
li x18, 0x4c1f977b # initialize rs2
bclr x20, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x23, 0xa33a73ad # initialize rs1
li x13, 0xcd8ab83d # initialize rs2
bclr x21, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x26, 0x69ceae0b # initialize rs1
li x3, 0x50212fbd # initialize rs2
bclr x22, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0xbac4fd7b # initialize rs1
li x31, 0x4711b4fa # initialize rs2
bclr x23, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x28, 0xb5648b06 # initialize rs1
li x18, 0x071ae5e8 # initialize rs2
bclr x24, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x28, 0xf4036dcb # initialize rs1
li x3, 0x50de40b4 # initialize rs2
bclr x25, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x12, 0x59bf68c9 # initialize rs1
li x18, 0x233ee621 # initialize rs2
bclr x26, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0xe675ce45 # initialize rs1
li x17, 0x580d0ffd # initialize rs2
bclr x27, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x2, 0xe3eae949 # initialize rs1
li x18, 0x5c375a4f # initialize rs2
bclr x28, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x28, 0x713626fc # initialize rs1
li x12, 0x5bf375e6 # initialize rs2
bclr x29, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x17, 0x52bdd06e # initialize rs1
li x29, 0x9a49be3c # initialize rs2
bclr x30, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x10, 0x5586eeb3 # initialize rs1
li x31, 0xc0353732 # initialize rs2
bclr x31, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x21, 0x00000000 # initialize rs1
li x31, 0x53a232ae # initialize rs2
bclr x29, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0x00000001 # initialize rs1
li x29, 0x3d4cd7a2 # initialize rs2
bclr x26, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x19, 0x00000002 # initialize rs1
li x21, 0xe30db726 # initialize rs2
bclr x11, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x12, 0x80000000 # initialize rs1
li x20, 0x6a06243c # initialize rs2
bclr x25, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x17, 0x80000001 # initialize rs1
li x9, 0x837fdca4 # initialize rs2
bclr x23, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x28, 0x7fffffff # initialize rs1
li x5, 0x0f86e00d # initialize rs2
bclr x14, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x3, 0x7ffffffe # initialize rs1
li x9, 0x7f681a75 # initialize rs2
bclr x29, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x10, 0xffffffff # initialize rs1
li x9, 0x36a7f4f4 # initialize rs2
bclr x7, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x20, 0xfffffffe # initialize rs1
li x11, 0xa3f86633 # initialize rs2
bclr x15, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x15, 0x5bbc8872 # initialize rs1
li x28, 0xf627019b # initialize rs2
bclr x18, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x31, 0xaaaaaaaa # initialize rs1
li x27, 0xd222f5f4 # initialize rs2
bclr x1, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x9, 0x55555555 # initialize rs1
li x22, 0x0590e651 # initialize rs2
bclr x28, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x23, 0x3387110b # initialize rs1
li x24, 0x00000000 # initialize rs2
bclr x27, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0xe0e99795 # initialize rs1
li x15, 0x00000001 # initialize rs2
bclr x11, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x26, 0x9f8546ad # initialize rs1
li x1, 0x00000002 # initialize rs2
bclr x14, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x19, 0x5e140f17 # initialize rs1
li x13, 0x80000000 # initialize rs2
bclr x22, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x25, 0xc87e5088 # initialize rs1
li x1, 0x80000001 # initialize rs2
bclr x19, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x17, 0xa11a0cd9 # initialize rs1
li x28, 0x7fffffff # initialize rs2
bclr x31, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x20, 0xfde8ea6d # initialize rs1
li x1, 0x7ffffffe # initialize rs2
bclr x5, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0xf48b143d # initialize rs1
li x18, 0xffffffff # initialize rs2
bclr x5, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x13, 0x08f00948 # initialize rs1
li x27, 0xfffffffe # initialize rs2
bclr x30, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x15, 0xeb9241e5 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
bclr x19, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x10, 0x4dd17c6f # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
bclr x6, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x12, 0x6e9ed2be # initialize rs1
li x15, 0x55555555 # initialize rs2
bclr x11, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x1, 0x00000000 # initialize rs1
li x12, 0x00000000 # initialize rs2
bclr x28, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x30, 0x00000000 # initialize rs1
li x14, 0x00000001 # initialize rs2
bclr x21, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x7, 0x00000000 # initialize rs1
li x2, 0x00000002 # initialize rs2
bclr x20, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x1, 0x00000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
bclr x17, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x29, 0x00000000 # initialize rs1
li x26, 0x80000001 # initialize rs2
bclr x24, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x7, 0x00000000 # initialize rs1
li x17, 0x7fffffff # initialize rs2
bclr x24, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x21, 0x00000000 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
bclr x22, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x18, 0x00000000 # initialize rs1
li x9, 0xffffffff # initialize rs2
bclr x24, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x1, 0x00000000 # initialize rs1
li x20, 0xfffffffe # initialize rs2
bclr x18, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x30, 0x00000000 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
bclr x17, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x31, 0x00000000 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
bclr x21, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x14, 0x00000000 # initialize rs1
li x2, 0x55555555 # initialize rs2
bclr x9, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x12, 0x00000001 # initialize rs1
li x31, 0x00000000 # initialize rs2
bclr x15, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x6, 0x00000001 # initialize rs1
li x27, 0x00000001 # initialize rs2
bclr x31, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x12, 0x00000001 # initialize rs1
li x30, 0x00000002 # initialize rs2
bclr x28, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x24, 0x00000001 # initialize rs1
li x22, 0x80000000 # initialize rs2
bclr x5, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x17, 0x00000001 # initialize rs1
li x31, 0x80000001 # initialize rs2
bclr x13, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x5, 0x00000001 # initialize rs1
li x25, 0x7fffffff # initialize rs2
bclr x31, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x14, 0x00000001 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
bclr x23, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x5, 0x00000001 # initialize rs1
li x10, 0xffffffff # initialize rs2
bclr x6, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x7, 0x00000001 # initialize rs1
li x3, 0xfffffffe # initialize rs2
bclr x20, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x24, 0x00000001 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
bclr x13, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x23, 0x00000001 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
bclr x8, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x27, 0x00000001 # initialize rs1
li x31, 0x55555555 # initialize rs2
bclr x8, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x1, 0x00000002 # initialize rs1
li x31, 0x00000000 # initialize rs2
bclr x26, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x27, 0x00000002 # initialize rs1
li x23, 0x00000001 # initialize rs2
bclr x2, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x7, 0x00000002 # initialize rs1
li x28, 0x00000002 # initialize rs2
bclr x26, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x22, 0x00000002 # initialize rs1
li x26, 0x80000000 # initialize rs2
bclr x17, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x23, 0x00000002 # initialize rs1
li x18, 0x80000001 # initialize rs2
bclr x9, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x17, 0x00000002 # initialize rs1
li x23, 0x7fffffff # initialize rs2
bclr x24, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x1, 0x00000002 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
bclr x29, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x27, 0x00000002 # initialize rs1
li x15, 0xffffffff # initialize rs2
bclr x3, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x28, 0x00000002 # initialize rs1
li x1, 0xfffffffe # initialize rs2
bclr x10, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x14, 0x00000002 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
bclr x30, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x6, 0x00000002 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
bclr x20, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x7, 0x00000002 # initialize rs1
li x17, 0x55555555 # initialize rs2
bclr x9, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x2, 0x80000000 # initialize rs1
li x16, 0x00000000 # initialize rs2
bclr x30, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x22, 0x80000000 # initialize rs1
li x14, 0x00000001 # initialize rs2
bclr x10, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x12, 0x80000000 # initialize rs1
li x6, 0x00000002 # initialize rs2
bclr x19, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x5, 0x80000000 # initialize rs1
li x11, 0x80000000 # initialize rs2
bclr x12, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x30, 0x80000000 # initialize rs1
li x11, 0x80000001 # initialize rs2
bclr x21, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x30, 0x80000000 # initialize rs1
li x26, 0x7fffffff # initialize rs2
bclr x2, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x3, 0x80000000 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
bclr x25, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x27, 0x80000000 # initialize rs1
li x14, 0xffffffff # initialize rs2
bclr x12, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x3, 0x80000000 # initialize rs1
li x18, 0xfffffffe # initialize rs2
bclr x30, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x10, 0x80000000 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
bclr x23, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x13, 0x80000000 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
bclr x21, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x10, 0x80000000 # initialize rs1
li x24, 0x55555555 # initialize rs2
bclr x26, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x19, 0x80000001 # initialize rs1
li x12, 0x00000000 # initialize rs2
bclr x8, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x2, 0x80000001 # initialize rs1
li x17, 0x00000001 # initialize rs2
bclr x15, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x22, 0x80000001 # initialize rs1
li x5, 0x00000002 # initialize rs2
bclr x25, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x8, 0x80000001 # initialize rs1
li x26, 0x80000000 # initialize rs2
bclr x1, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x18, 0x80000001 # initialize rs1
li x10, 0x80000001 # initialize rs2
bclr x6, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x12, 0x80000001 # initialize rs1
li x23, 0x7fffffff # initialize rs2
bclr x25, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x8, 0x80000001 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
bclr x18, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x22, 0x80000001 # initialize rs1
li x5, 0xffffffff # initialize rs2
bclr x21, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x21, 0x80000001 # initialize rs1
li x10, 0xfffffffe # initialize rs2
bclr x25, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x29, 0x80000001 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
bclr x12, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x1, 0x80000001 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
bclr x24, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x25, 0x80000001 # initialize rs1
li x29, 0x55555555 # initialize rs2
bclr x13, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x22, 0x7fffffff # initialize rs1
li x29, 0x00000000 # initialize rs2
bclr x30, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x21, 0x7fffffff # initialize rs1
li x24, 0x00000001 # initialize rs2
bclr x15, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x27, 0x7fffffff # initialize rs1
li x23, 0x00000002 # initialize rs2
bclr x20, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x21, 0x7fffffff # initialize rs1
li x30, 0x80000000 # initialize rs2
bclr x18, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x22, 0x7fffffff # initialize rs1
li x30, 0x80000001 # initialize rs2
bclr x3, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x18, 0x7fffffff # initialize rs1
li x26, 0x7fffffff # initialize rs2
bclr x8, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x25, 0x7fffffff # initialize rs1
li x20, 0x7ffffffe # initialize rs2
bclr x23, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x24, 0x7fffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
bclr x28, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x23, 0x7fffffff # initialize rs1
li x16, 0xfffffffe # initialize rs2
bclr x15, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x7, 0x7fffffff # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
bclr x6, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x21, 0x7fffffff # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
bclr x9, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x3, 0x7fffffff # initialize rs1
li x9, 0x55555555 # initialize rs2
bclr x28, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x7, 0x7ffffffe # initialize rs1
li x15, 0x00000000 # initialize rs2
bclr x28, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x29, 0x7ffffffe # initialize rs1
li x8, 0x00000001 # initialize rs2
bclr x25, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x10, 0x7ffffffe # initialize rs1
li x23, 0x00000002 # initialize rs2
bclr x19, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x24, 0x7ffffffe # initialize rs1
li x7, 0x80000000 # initialize rs2
bclr x22, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x7, 0x7ffffffe # initialize rs1
li x28, 0x80000001 # initialize rs2
bclr x20, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x28, 0x7ffffffe # initialize rs1
li x5, 0x7fffffff # initialize rs2
bclr x21, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x23, 0x7ffffffe # initialize rs1
li x30, 0x7ffffffe # initialize rs2
bclr x12, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x11, 0x7ffffffe # initialize rs1
li x30, 0xffffffff # initialize rs2
bclr x14, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x24, 0x7ffffffe # initialize rs1
li x29, 0xfffffffe # initialize rs2
bclr x27, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x11, 0x7ffffffe # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
bclr x6, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x24, 0x7ffffffe # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
bclr x2, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x13, 0x7ffffffe # initialize rs1
li x6, 0x55555555 # initialize rs2
bclr x7, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x19, 0xffffffff # initialize rs1
li x15, 0x00000000 # initialize rs2
bclr x24, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x26, 0xffffffff # initialize rs1
li x24, 0x00000001 # initialize rs2
bclr x31, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x9, 0xffffffff # initialize rs1
li x21, 0x00000002 # initialize rs2
bclr x11, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x31, 0xffffffff # initialize rs1
li x27, 0x80000000 # initialize rs2
bclr x12, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x5, 0xffffffff # initialize rs1
li x17, 0x80000001 # initialize rs2
bclr x14, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x18, 0xffffffff # initialize rs1
li x23, 0x7fffffff # initialize rs2
bclr x14, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x6, 0xffffffff # initialize rs1
li x7, 0x7ffffffe # initialize rs2
bclr x5, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x12, 0xffffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
bclr x11, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x31, 0xffffffff # initialize rs1
li x29, 0xfffffffe # initialize rs2
bclr x18, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x12, 0xffffffff # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
bclr x10, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x3, 0xffffffff # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
bclr x2, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x16, 0xffffffff # initialize rs1
li x13, 0x55555555 # initialize rs2
bclr x15, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x8, 0xfffffffe # initialize rs1
li x9, 0x00000000 # initialize rs2
bclr x5, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x9, 0xfffffffe # initialize rs1
li x22, 0x00000001 # initialize rs2
bclr x2, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x9, 0xfffffffe # initialize rs1
li x6, 0x00000002 # initialize rs2
bclr x16, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x28, 0xfffffffe # initialize rs1
li x17, 0x80000000 # initialize rs2
bclr x25, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x7, 0xfffffffe # initialize rs1
li x11, 0x80000001 # initialize rs2
bclr x13, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x30, 0xfffffffe # initialize rs1
li x22, 0x7fffffff # initialize rs2
bclr x3, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x8, 0xfffffffe # initialize rs1
li x15, 0x7ffffffe # initialize rs2
bclr x16, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x30, 0xfffffffe # initialize rs1
li x29, 0xffffffff # initialize rs2
bclr x28, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x3, 0xfffffffe # initialize rs1
li x18, 0xfffffffe # initialize rs2
bclr x14, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x26, 0xfffffffe # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
bclr x13, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x16, 0xfffffffe # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
bclr x28, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x21, 0xfffffffe # initialize rs1
li x28, 0x55555555 # initialize rs2
bclr x12, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x21, 0x5bbc8872 # initialize rs1
li x24, 0x00000000 # initialize rs2
bclr x20, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x8, 0x5bbc8872 # initialize rs1
li x24, 0x00000001 # initialize rs2
bclr x15, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x9, 0x5bbc8872 # initialize rs1
li x21, 0x00000002 # initialize rs2
bclr x8, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x21, 0x5bbc8872 # initialize rs1
li x22, 0x80000000 # initialize rs2
bclr x29, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x1, 0x5bbc8872 # initialize rs1
li x8, 0x80000001 # initialize rs2
bclr x19, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x2, 0x5bbc8872 # initialize rs1
li x21, 0x7fffffff # initialize rs2
bclr x23, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x1, 0x5bbc8872 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
bclr x16, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x9, 0x5bbc8872 # initialize rs1
li x31, 0xffffffff # initialize rs2
bclr x19, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x21, 0x5bbc8872 # initialize rs1
li x3, 0xfffffffe # initialize rs2
bclr x5, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x24, 0x5bbc8872 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
bclr x28, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x26, 0x5bbc8872 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
bclr x27, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x18, 0x5bbc8872 # initialize rs1
li x31, 0x55555555 # initialize rs2
bclr x21, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x14, 0xaaaaaaaa # initialize rs1
li x22, 0x00000000 # initialize rs2
bclr x7, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x2, 0xaaaaaaaa # initialize rs1
li x22, 0x00000001 # initialize rs2
bclr x31, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x9, 0xaaaaaaaa # initialize rs1
li x17, 0x00000002 # initialize rs2
bclr x25, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x13, 0xaaaaaaaa # initialize rs1
li x7, 0x80000000 # initialize rs2
bclr x25, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x22, 0xaaaaaaaa # initialize rs1
li x25, 0x80000001 # initialize rs2
bclr x20, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x16, 0xaaaaaaaa # initialize rs1
li x21, 0x7fffffff # initialize rs2
bclr x14, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x9, 0xaaaaaaaa # initialize rs1
li x6, 0x7ffffffe # initialize rs2
bclr x16, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x27, 0xaaaaaaaa # initialize rs1
li x5, 0xffffffff # initialize rs2
bclr x26, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x15, 0xaaaaaaaa # initialize rs1
li x21, 0xfffffffe # initialize rs2
bclr x16, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x16, 0xaaaaaaaa # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
bclr x15, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
bclr x27, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x12, 0xaaaaaaaa # initialize rs1
li x22, 0x55555555 # initialize rs2
bclr x9, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x28, 0x55555555 # initialize rs1
li x30, 0x00000000 # initialize rs2
bclr x29, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x24, 0x55555555 # initialize rs1
li x8, 0x00000001 # initialize rs2
bclr x1, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x6, 0x55555555 # initialize rs1
li x5, 0x00000002 # initialize rs2
bclr x13, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x14, 0x55555555 # initialize rs1
li x2, 0x80000000 # initialize rs2
bclr x21, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x14, 0x55555555 # initialize rs1
li x19, 0x80000001 # initialize rs2
bclr x25, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x14, 0x55555555 # initialize rs1
li x16, 0x7fffffff # initialize rs2
bclr x19, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x25, 0x55555555 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
bclr x28, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x19, 0x55555555 # initialize rs1
li x1, 0xffffffff # initialize rs2
bclr x22, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x3, 0x55555555 # initialize rs1
li x13, 0xfffffffe # initialize rs2
bclr x17, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x16, 0x55555555 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
bclr x28, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x31, 0x55555555 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
bclr x26, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x15, 0x55555555 # initialize rs1
li x28, 0x55555555 # initialize rs2
bclr x17, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xd9a2faf9 # initialize rs1
li x0, 0x7e648f64 # initialize rs2
bclr x13, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xd29ff21c # initialize rs1
li x1, 0xd94e7047 # initialize rs2
bclr x16, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x0b96ceed # initialize rs1
li x2, 0x5c5d50ca # initialize rs2
bclr x1, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x37eefae0 # initialize rs1
li x3, 0x50d54530 # initialize rs2
bclr x30, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9eaf08f6 # initialize rs1
li x4, 0x0bdcecb5 # initialize rs2
bclr x3, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x81163c31 # initialize rs1
li x5, 0xb659403f # initialize rs2
bclr x20, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x48f42efb # initialize rs1
li x6, 0x4ee3da64 # initialize rs2
bclr x26, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8037c70e # initialize rs1
li x7, 0x5620b009 # initialize rs2
bclr x28, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x73cc72eb # initialize rs1
li x8, 0xa14a5825 # initialize rs2
bclr x14, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x8f3758ec # initialize rs1
li x9, 0x7a0efd0c # initialize rs2
bclr x25, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x6af4d99c # initialize rs1
li x10, 0xc3f1cfa0 # initialize rs2
bclr x6, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x679558ce # initialize rs1
li x11, 0xd375b89d # initialize rs2
bclr x12, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xcd093cac # initialize rs1
li x12, 0x08fa0bc9 # initialize rs2
bclr x24, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x3291991d # initialize rs1
li x13, 0xa27688b7 # initialize rs2
bclr x16, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x9d087964 # initialize rs1
li x14, 0xc43254be # initialize rs2
bclr x17, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x46775ab4 # initialize rs1
li x15, 0xe9d95294 # initialize rs2
bclr x27, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x362316cb # initialize rs1
li x16, 0x9f83b380 # initialize rs2
bclr x1, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x5fce521f # initialize rs1
li x17, 0xc3eb6381 # initialize rs2
bclr x7, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x961e29a8 # initialize rs1
li x18, 0xb9794c21 # initialize rs2
bclr x19, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x54f76b04 # initialize rs1
li x19, 0x7487ab28 # initialize rs2
bclr x30, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x23506a24 # initialize rs1
li x20, 0xb9ca5a91 # initialize rs2
bclr x22, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x6c6e786f # initialize rs1
li x21, 0xa7c78b9b # initialize rs2
bclr x19, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x4f1253c4 # initialize rs1
li x22, 0x7424cd1f # initialize rs2
bclr x1, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x5ebc3664 # initialize rs1
li x23, 0xdcb6b091 # initialize rs2
bclr x8, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x90d90d8e # initialize rs1
li x24, 0x25672ff3 # initialize rs2
bclr x26, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x70e7cd6c # initialize rs1
li x25, 0x4623392f # initialize rs2
bclr x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x6d1cfa89 # initialize rs1
li x26, 0xc1258bcd # initialize rs2
bclr x3, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xf93067d8 # initialize rs1
li x27, 0x9422190b # initialize rs2
bclr x30, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x3b8da5a0 # initialize rs1
li x28, 0xe51dfa11 # initialize rs2
bclr x19, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xb25203e9 # initialize rs1
li x29, 0x8a440593 # initialize rs2
bclr x13, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xa2045f6f # initialize rs1
li x30, 0xeac0d742 # initialize rs2
bclr x27, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xc6a02d0e # initialize rs1
li x31, 0x90f338d8 # initialize rs2
bclr x22, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x8b8670b6 # initialize rs1
li x18, 0x5bac5456 # initialize rs2
bclr x0, x0, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb915dcbf # initialize rs1
li x10, 0x8bf52a4c # initialize rs2
bclr x1, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xdcdc3732 # initialize rs1
li x26, 0x24b1b582 # initialize rs2
bclr x2, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x0690d7ff # initialize rs1
li x11, 0x0717a63b # initialize rs2
bclr x3, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x085b5ab9 # initialize rs1
li x20, 0x9a97e0f4 # initialize rs2
bclr x4, x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x84510304 # initialize rs1
li x24, 0x4c9df18a # initialize rs2
bclr x5, x5, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa88ead75 # initialize rs1
li x1, 0x9309c35f # initialize rs2
bclr x6, x6, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdc222418 # initialize rs1
li x31, 0xa17aedfc # initialize rs2
bclr x7, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x0c5fa941 # initialize rs1
li x28, 0x763a1cd8 # initialize rs2
bclr x8, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc8f04d4e # initialize rs1
li x19, 0x0546e339 # initialize rs2
bclr x9, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x0466327a # initialize rs1
li x3, 0xeaaffc0d # initialize rs2
bclr x10, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x38617360 # initialize rs1
li x28, 0x4a18c549 # initialize rs2
bclr x11, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x642befdd # initialize rs1
li x31, 0x9c934de2 # initialize rs2
bclr x12, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x7fd0cc2a # initialize rs1
li x29, 0x0e1dbe28 # initialize rs2
bclr x13, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xd9621687 # initialize rs1
li x8, 0xe63e4647 # initialize rs2
bclr x14, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xf3b55a8e # initialize rs1
li x6, 0xb476727d # initialize rs2
bclr x15, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x2269afb9 # initialize rs1
li x14, 0x77d5a423 # initialize rs2
bclr x16, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x13997caf # initialize rs1
li x7, 0xfd008f1c # initialize rs2
bclr x17, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xb3779c9e # initialize rs1
li x26, 0x5edaa880 # initialize rs2
bclr x18, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x7491b382 # initialize rs1
li x28, 0x8227aab0 # initialize rs2
bclr x19, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xe5757240 # initialize rs1
li x26, 0x0b39e09f # initialize rs2
bclr x20, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xa12c00ee # initialize rs1
li x14, 0x2d1dc113 # initialize rs2
bclr x21, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xa42adcf0 # initialize rs1
li x22, 0xd72aff10 # initialize rs2
bclr x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x074bf951 # initialize rs1
li x10, 0xe5c32f7e # initialize rs2
bclr x23, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xd41f4dc3 # initialize rs1
li x24, 0x8f2ed4c2 # initialize rs2
bclr x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xa903c231 # initialize rs1
li x22, 0x2a1fadae # initialize rs2
bclr x25, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x31f74392 # initialize rs1
li x25, 0x47b58221 # initialize rs2
bclr x26, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x717ce594 # initialize rs1
li x1, 0xacc01082 # initialize rs2
bclr x27, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x337fde8c # initialize rs1
li x27, 0xfd20a594 # initialize rs2
bclr x28, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x56f7ca23 # initialize rs1
li x8, 0xd2700809 # initialize rs2
bclr x29, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x0d296b59 # initialize rs1
li x12, 0x89616db1 # initialize rs2
bclr x30, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x0ea44610 # initialize rs1
li x11, 0x9e3f92d8 # initialize rs2
bclr x31, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x24, 0x0a08d925 # initialize rs1
li x0, 0x3e30a2e9 # initialize rs2
bclr x0, x24, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x21, 0x0141028b # initialize rs1
li x1, 0xcb1e56e2 # initialize rs2
bclr x1, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x10, 0x9b1c92bc # initialize rs1
li x2, 0xaf98e171 # initialize rs2
bclr x2, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x18, 0xfb4d1267 # initialize rs1
li x3, 0xbab8446b # initialize rs2
bclr x3, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0x9ead430e # initialize rs1
li x4, 0xfde653c5 # initialize rs2
bclr x4, x1, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0x474d42eb # initialize rs1
li x5, 0x971b6961 # initialize rs2
bclr x5, x17, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x8a1bbe65 # initialize rs1
li x6, 0x6d7ed175 # initialize rs2
bclr x6, x24, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0xb63912a4 # initialize rs1
li x7, 0x46a3bfd7 # initialize rs2
bclr x7, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x14, 0x8cb33b9f # initialize rs1
li x8, 0xdda82c51 # initialize rs2
bclr x8, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x30, 0x6d2c91d4 # initialize rs1
li x9, 0xc8a8e4c1 # initialize rs2
bclr x9, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x19, 0x001b6735 # initialize rs1
li x10, 0x491e89dd # initialize rs2
bclr x10, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x14, 0x166014fb # initialize rs1
li x11, 0xb56672fd # initialize rs2
bclr x11, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x10, 0x7b0217a8 # initialize rs1
li x12, 0xe141119f # initialize rs2
bclr x12, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x29, 0x44094a07 # initialize rs1
li x13, 0xf95604ee # initialize rs2
bclr x13, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x22, 0x49bf42bd # initialize rs1
li x14, 0x1a5d0f50 # initialize rs2
bclr x14, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x3, 0x134ec75b # initialize rs1
li x15, 0xcf8e3ad3 # initialize rs2
bclr x15, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x18, 0xad438597 # initialize rs1
li x16, 0x1b054fad # initialize rs2
bclr x16, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x15, 0x6212c61e # initialize rs1
li x17, 0x7d8345ea # initialize rs2
bclr x17, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x16, 0x9e193046 # initialize rs1
li x18, 0x76bf0c46 # initialize rs2
bclr x18, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x22, 0x96aebae1 # initialize rs1
li x19, 0x41909d3c # initialize rs2
bclr x19, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x2, 0x29661ac0 # initialize rs1
li x20, 0x6bd6ca0b # initialize rs2
bclr x20, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0x376e487b # initialize rs1
li x21, 0xd3c3d5c8 # initialize rs2
bclr x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x6, 0xd797a0e7 # initialize rs1
li x22, 0xb898f001 # initialize rs2
bclr x22, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x1, 0x159bd7b5 # initialize rs1
li x23, 0xa9b32aa6 # initialize rs2
bclr x23, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x23, 0x6039da32 # initialize rs1
li x24, 0x7fb76d0c # initialize rs2
bclr x24, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x8, 0xf98c8c14 # initialize rs1
li x25, 0xc428cac9 # initialize rs2
bclr x25, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x9, 0x8779f363 # initialize rs1
li x26, 0x063b4ae9 # initialize rs2
bclr x26, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x17, 0x078eb8b3 # initialize rs1
li x27, 0x7f6b016f # initialize rs2
bclr x27, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x17, 0xf60971bd # initialize rs1
li x28, 0xb5c5367f # initialize rs2
bclr x28, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x6, 0x52718616 # initialize rs1
li x29, 0xc08c76dc # initialize rs2
bclr x29, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x12, 0xb8343aab # initialize rs1
li x30, 0xfc08fe75 # initialize rs2
bclr x30, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x14, 0x23a4227f # initialize rs1
li x31, 0xd69fda81 # initialize rs2
bclr x31, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xd71e214f # initialize rs1
li x0, 0xb2b2e06b # initialize rs2
bclr x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x8c78eb60 # initialize rs1
li x1, 0xbc5c62c0 # initialize rs2
bclr x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xfaa5cf7b # initialize rs1
li x2, 0xfd9aa944 # initialize rs2
bclr x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xf0927ebc # initialize rs1
li x3, 0xddb1c915 # initialize rs2
bclr x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x56435443 # initialize rs1
li x4, 0xeef5fccc # initialize rs2
bclr x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa77651fa # initialize rs1
li x5, 0x75a28ad8 # initialize rs2
bclr x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x19bb9731 # initialize rs1
li x6, 0x9a4e2780 # initialize rs2
bclr x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x998613c3 # initialize rs1
li x7, 0x7811e39a # initialize rs2
bclr x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x28c19830 # initialize rs1
li x8, 0xd636e536 # initialize rs2
bclr x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xc47bff1c # initialize rs1
li x9, 0x3a5080ca # initialize rs2
bclr x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x427506f0 # initialize rs1
li x10, 0xf3dbca25 # initialize rs2
bclr x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xf77071c5 # initialize rs1
li x11, 0xd7d38e26 # initialize rs2
bclr x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x06ea4cc4 # initialize rs1
li x12, 0x1a8842bf # initialize rs2
bclr x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x0bd8aa39 # initialize rs1
li x13, 0xee7b9779 # initialize rs2
bclr x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x9a8479cb # initialize rs1
li x14, 0x55cc0666 # initialize rs2
bclr x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xd0aa91d3 # initialize rs1
li x15, 0x0d2ceb3a # initialize rs2
bclr x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xd12d84bf # initialize rs1
li x16, 0x150c02f7 # initialize rs2
bclr x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x5b1abea9 # initialize rs1
li x17, 0x5fda537d # initialize rs2
bclr x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x84cdfea4 # initialize rs1
li x18, 0x5ad046f8 # initialize rs2
bclr x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x0ae05864 # initialize rs1
li x19, 0xdd49491a # initialize rs2
bclr x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x99453ee1 # initialize rs1
li x20, 0xd23fffd3 # initialize rs2
bclr x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x3576685e # initialize rs1
li x21, 0x54d9a7aa # initialize rs2
bclr x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x66b0c348 # initialize rs1
li x22, 0xe72de1e1 # initialize rs2
bclr x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x504a64e8 # initialize rs1
li x23, 0x394304ce # initialize rs2
bclr x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x9d534376 # initialize rs1
li x24, 0x45e521d1 # initialize rs2
bclr x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xd09dd165 # initialize rs1
li x25, 0xb5d665a8 # initialize rs2
bclr x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xd2aab991 # initialize rs1
li x26, 0x6ebda13b # initialize rs2
bclr x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x71016c4b # initialize rs1
li x27, 0xff8a1df7 # initialize rs2
bclr x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xbf6c5926 # initialize rs1
li x28, 0x28b61f91 # initialize rs2
bclr x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x0233b6be # initialize rs1
li x29, 0x414cc17c # initialize rs2
bclr x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xb435d532 # initialize rs1
li x30, 0x86ec55eb # initialize rs2
bclr x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x14d231e7 # initialize rs1
li x31, 0x7d21aa87 # initialize rs2
bclr x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x13, x11 # perform first operation
bclr x20, x28, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x1, x30 # perform first operation
bclr x27, x13, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x6, x7 # perform first operation
bclr x12, x10, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x19, x25 # perform first operation
bclr x14, x14, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x12, x14 # perform first operation
bclr x12, x23, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x17, x7 # perform first operation
bclr x7, x19, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x2, x28 # perform first operation
bclr x17, x16, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x21, x15 # perform first operation
bclr x8, x10, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x20, x25 # perform first operation
bclr x28, x9, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x20, x24 # perform first operation
bclr x20, x22, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x17, x16 # perform first operation
bclr x16, x18, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x2, x26 # perform first operation
bclr x31, x10, x15 # perform second (triggering) operation

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
