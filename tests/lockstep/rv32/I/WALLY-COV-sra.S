///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-sra.S
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
li x0, 0x768d6c0c # initialize rs1
li x24, 0xae7b31a3 # initialize rs2
sra x19, x0, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xdfc3364c # initialize rs1
li x8, 0x2ab0890c # initialize rs2
sra x18, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x70f77233 # initialize rs1
li x15, 0xe408147a # initialize rs2
sra x30, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x2cb67f1b # initialize rs1
li x2, 0x3def610c # initialize rs2
sra x7, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x731b43f5 # initialize rs1
li x17, 0x0cc4ee38 # initialize rs2
sra x6, x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5a3aaad5 # initialize rs1
li x30, 0x26e5aa25 # initialize rs2
sra x28, x5, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x30e6035d # initialize rs1
li x11, 0x179d5990 # initialize rs2
sra x16, x6, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x16, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x13aba15f # initialize rs1
li x2, 0x4fa19ba8 # initialize rs2
sra x22, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x2b0bad06 # initialize rs1
li x6, 0x1488dfd5 # initialize rs2
sra x21, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x973fec16 # initialize rs1
li x2, 0x86cf6c8e # initialize rs2
sra x29, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x0da307be # initialize rs1
li x24, 0xcae05caf # initialize rs2
sra x9, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x89a74887 # initialize rs1
li x27, 0xd3b31057 # initialize rs2
sra x20, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x150d76e2 # initialize rs1
li x21, 0x2501bbdb # initialize rs2
sra x8, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xe3baa011 # initialize rs1
li x21, 0x8d8bfac7 # initialize rs2
sra x28, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc202b2fb # initialize rs1
li x23, 0x92cf894a # initialize rs2
sra x1, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x9e77a6bf # initialize rs1
li x23, 0xe94b9888 # initialize rs2
sra x28, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x4d4b538c # initialize rs1
li x23, 0x43867766 # initialize rs2
sra x6, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x663d0eb8 # initialize rs1
li x21, 0x8c1600f2 # initialize rs2
sra x31, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xe333809d # initialize rs1
li x17, 0xb163c3e9 # initialize rs2
sra x5, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xebd5dcea # initialize rs1
li x3, 0x9335c9d9 # initialize rs2
sra x23, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x9971e67d # initialize rs1
li x31, 0x86bb6209 # initialize rs2
sra x26, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x5e08c0a6 # initialize rs1
li x15, 0x2e622d8a # initialize rs2
sra x17, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x077cbaac # initialize rs1
li x12, 0x7c2da70e # initialize rs2
sra x1, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x9f4a7462 # initialize rs1
li x11, 0x444ba035 # initialize rs2
sra x18, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x481a11d6 # initialize rs1
li x2, 0x4bfac4a1 # initialize rs2
sra x21, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x1707059a # initialize rs1
li x21, 0x2c4c733c # initialize rs2
sra x11, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xbf20b062 # initialize rs1
li x25, 0x30afc085 # initialize rs2
sra x13, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd66f9072 # initialize rs1
li x15, 0xd6ba7a56 # initialize rs2
sra x26, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xa9ab98f6 # initialize rs1
li x3, 0x2a8f306e # initialize rs2
sra x17, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x553883dc # initialize rs1
li x16, 0x5e5f7659 # initialize rs2
sra x3, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x3ae79a91 # initialize rs1
li x5, 0x686ae9c2 # initialize rs2
sra x14, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xd060985c # initialize rs1
li x20, 0xa0e263a0 # initialize rs2
sra x24, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0x4e21d93b # initialize rs1
li x0, 0x9a3fa9d6 # initialize rs2
sra x22, x20, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x7, 0xb4dff5ba # initialize rs1
li x1, 0xcc485092 # initialize rs2
sra x23, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x26, 0xec00fd16 # initialize rs1
li x2, 0x65df5afe # initialize rs2
sra x29, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x5, 0x6922a4fd # initialize rs1
li x3, 0xd78835f5 # initialize rs2
sra x22, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x26, 0x04e3be0b # initialize rs1
li x4, 0xfc5db039 # initialize rs2
sra x15, x26, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x26, 0x7fa7d455 # initialize rs1
li x5, 0xb850d09d # initialize rs2
sra x28, x26, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x36fdc582 # initialize rs1
li x6, 0x05487e35 # initialize rs2
sra x10, x22, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0x2189c900 # initialize rs1
li x7, 0x9ed0cb68 # initialize rs2
sra x25, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x30, 0x4ae2b351 # initialize rs1
li x8, 0xed747fca # initialize rs2
sra x24, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x12, 0x14becafa # initialize rs1
li x9, 0x13433c6c # initialize rs2
sra x14, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0xce0dbd40 # initialize rs1
li x10, 0xdfb8f03f # initialize rs2
sra x24, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x23, 0xae7fbc85 # initialize rs1
li x11, 0xfa1c37b5 # initialize rs2
sra x15, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x22, 0xdf82327a # initialize rs1
li x12, 0xad911aef # initialize rs2
sra x23, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x25, 0x967316e0 # initialize rs1
li x13, 0x6db511d7 # initialize rs2
sra x7, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x1, 0xddbbf7c1 # initialize rs1
li x14, 0x80894741 # initialize rs2
sra x31, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x20, 0x1d743a14 # initialize rs1
li x15, 0x4484a37f # initialize rs2
sra x5, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x19, 0xf58069b3 # initialize rs1
li x16, 0x923b51f9 # initialize rs2
sra x13, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x3, 0x4bf7c2e1 # initialize rs1
li x17, 0x712dcbc5 # initialize rs2
sra x11, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x31, 0xf9afd508 # initialize rs1
li x18, 0x1d7994a3 # initialize rs2
sra x8, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x24, 0xe93fb52c # initialize rs1
li x19, 0x803565ef # initialize rs2
sra x29, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0xff478f10 # initialize rs1
li x20, 0xe0dae1c5 # initialize rs2
sra x6, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x7, 0x890e1af2 # initialize rs1
li x21, 0x98ffe4dd # initialize rs2
sra x23, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x31, 0x29c58596 # initialize rs1
li x22, 0x2a6fd313 # initialize rs2
sra x1, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x29, 0xdab27a61 # initialize rs1
li x23, 0x6b255f84 # initialize rs2
sra x12, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x6, 0xa3f3a8de # initialize rs1
li x24, 0xb42326d5 # initialize rs2
sra x9, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x6, 0x757c8ca0 # initialize rs1
li x25, 0xc4de386b # initialize rs2
sra x9, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x19, 0x72203f85 # initialize rs1
li x26, 0x71cdadc2 # initialize rs2
sra x14, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x13, 0xe240491b # initialize rs1
li x27, 0x9e08b000 # initialize rs2
sra x24, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x3, 0xbc92d2ad # initialize rs1
li x28, 0xea28ed76 # initialize rs2
sra x12, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x19, 0x4a892786 # initialize rs1
li x29, 0x301fe2db # initialize rs2
sra x26, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x27, 0xc742be49 # initialize rs1
li x30, 0x2a260b4d # initialize rs2
sra x9, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x5, 0x141e0474 # initialize rs1
li x31, 0xad1c3124 # initialize rs2
sra x22, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 252)

# Testcase cp_rd (Test destination rd = x0)
li x7, 0x977a0c04 # initialize rs1
li x11, 0x59815d7e # initialize rs2
sra x0, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x10, 0x0fde4ec4 # initialize rs1
li x25, 0xa5c3bf5a # initialize rs2
sra x1, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x19, 0xe7c4d711 # initialize rs1
li x28, 0xc42b989e # initialize rs2
sra x2, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x9, 0x045fab80 # initialize rs1
li x20, 0x7c27eecd # initialize rs2
sra x3, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0xe5456386 # initialize rs1
li x31, 0x4b818744 # initialize rs2
sra x4, x24, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0xd99a0001 # initialize rs1
li x24, 0x5542ce5e # initialize rs2
sra x5, x28, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0xe72dd4fe # initialize rs1
li x19, 0x99765f8a # initialize rs2
sra x6, x23, x19 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0x2879478c # initialize rs1
li x16, 0x528267c9 # initialize rs2
sra x7, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x4, 0x124a74dc # initialize rs1
li x3, 0xda69a857 # initialize rs2
sra x8, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x31, 0xf1ffcf6b # initialize rs1
li x7, 0x80f9bdf4 # initialize rs2
sra x9, x31, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x27, 0x4365082f # initialize rs1
li x17, 0xf30e9b30 # initialize rs2
sra x10, x27, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0x70c8b480 # initialize rs1
li x17, 0x28741812 # initialize rs2
sra x11, x14, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x25, 0x04d82964 # initialize rs1
li x1, 0x88f0c3a7 # initialize rs2
sra x12, x25, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x24, 0x8e7f9b87 # initialize rs1
li x22, 0x68ad6f02 # initialize rs2
sra x13, x24, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x2, 0xd341de81 # initialize rs1
li x11, 0x39f1bc95 # initialize rs2
sra x14, x2, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x29, 0x1c3f5cfa # initialize rs1
li x23, 0x71a9c327 # initialize rs2
sra x15, x29, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x3, 0x7e23117a # initialize rs1
li x17, 0x4b198bb7 # initialize rs2
sra x16, x3, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x18, 0x8355fb0b # initialize rs1
li x6, 0x596f9e88 # initialize rs2
sra x17, x18, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x7, 0xb890d536 # initialize rs1
li x28, 0x6552601b # initialize rs2
sra x18, x7, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x16, 0xbf8e9ca0 # initialize rs1
li x29, 0x77e207c6 # initialize rs2
sra x19, x16, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x16, 0x8b019521 # initialize rs1
li x21, 0xe9d0270b # initialize rs2
sra x20, x16, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x12, 0x306332cf # initialize rs1
li x11, 0x38853290 # initialize rs2
sra x21, x12, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x10, 0x31a22f5e # initialize rs1
li x2, 0x850a7baa # initialize rs2
sra x22, x10, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x22, 0xa15bc4af # initialize rs1
li x12, 0xd95b3e7f # initialize rs2
sra x23, x22, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x2, 0xe35164a0 # initialize rs1
li x8, 0xba0460b6 # initialize rs2
sra x24, x2, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0x663b3c59 # initialize rs1
li x7, 0x10d6b34b # initialize rs2
sra x25, x29, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x3, 0x7a554229 # initialize rs1
li x16, 0x80b5f357 # initialize rs2
sra x26, x3, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x9, 0x3cc55788 # initialize rs1
li x30, 0x28658da0 # initialize rs2
sra x27, x9, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x11, 0xe672dc15 # initialize rs1
li x28, 0x64935bfb # initialize rs2
sra x28, x11, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x17, 0xf4cd6b14 # initialize rs1
li x28, 0xcd045703 # initialize rs2
sra x29, x17, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x17, 0x53ed83ef # initialize rs1
li x8, 0xb4af7313 # initialize rs2
sra x30, x17, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x3, 0x333d812b # initialize rs1
li x18, 0x55870c84 # initialize rs2
sra x31, x3, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x00000000 # initialize rs1
li x10, 0x66153826 # initialize rs2
sra x12, x20, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x00000001 # initialize rs1
li x27, 0xae731dc4 # initialize rs2
sra x24, x13, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x4, 0x00000002 # initialize rs1
li x27, 0x5926f28d # initialize rs2
sra x18, x4, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x11, 0x80000000 # initialize rs1
li x26, 0xcef89036 # initialize rs2
sra x10, x11, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x2, 0x80000001 # initialize rs1
li x31, 0x4840ae7b # initialize rs2
sra x3, x2, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x13, 0x7fffffff # initialize rs1
li x6, 0x40dcd47f # initialize rs2
sra x21, x13, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x28, 0x7ffffffe # initialize rs1
li x18, 0x4ac183dd # initialize rs2
sra x9, x28, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x26, 0xffffffff # initialize rs1
li x24, 0xa77c9aa3 # initialize rs2
sra x27, x26, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0xfffffffe # initialize rs1
li x6, 0x7371dcc0 # initialize rs2
sra x8, x12, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x11, 0x5bbc8872 # initialize rs1
li x7, 0xe522ade2 # initialize rs2
sra x31, x11, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x9, 0xaaaaaaaa # initialize rs1
li x6, 0x6c54ed4e # initialize rs2
sra x18, x9, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x1, 0x55555555 # initialize rs1
li x10, 0x32801895 # initialize rs2
sra x30, x1, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x25, 0x7dd4f376 # initialize rs1
li x9, 0x00000000 # initialize rs2
sra x11, x25, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x19, 0x618d6558 # initialize rs1
li x12, 0x00000001 # initialize rs2
sra x21, x19, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x2, 0x9b2c1006 # initialize rs1
li x6, 0x00000002 # initialize rs2
sra x29, x2, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x1, 0xb232d2b9 # initialize rs1
li x24, 0x80000000 # initialize rs2
sra x15, x1, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x16, 0x364b7e5b # initialize rs1
li x14, 0x80000001 # initialize rs2
sra x4, x16, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x14, 0x68cee31c # initialize rs1
li x27, 0x7fffffff # initialize rs2
sra x1, x14, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x2, 0xe392336c # initialize rs1
li x23, 0x7ffffffe # initialize rs2
sra x10, x2, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0xe3847dc7 # initialize rs1
li x20, 0xffffffff # initialize rs2
sra x7, x11, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x25, 0x4e382848 # initialize rs1
li x31, 0xfffffffe # initialize rs2
sra x11, x25, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x31, 0xbc1322c1 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
sra x26, x31, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x11, 0xaf972272 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
sra x18, x11, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x29, 0x32d07e24 # initialize rs1
li x17, 0x55555555 # initialize rs2
sra x27, x29, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x8, 0x00000000 # initialize rs1
li x9, 0x00000000 # initialize rs2
sra x18, x8, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x3, 0x00000000 # initialize rs1
li x7, 0x00000001 # initialize rs2
sra x4, x3, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x19, 0x00000000 # initialize rs1
li x21, 0x00000002 # initialize rs2
sra x25, x19, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x1, 0x00000000 # initialize rs1
li x22, 0x80000000 # initialize rs2
sra x7, x1, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x15, 0x00000000 # initialize rs1
li x19, 0x80000001 # initialize rs2
sra x23, x15, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x20, 0x00000000 # initialize rs1
li x8, 0x7fffffff # initialize rs2
sra x17, x20, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x19, 0x00000000 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
sra x1, x19, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x3, 0x00000000 # initialize rs1
li x15, 0xffffffff # initialize rs2
sra x14, x3, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x14, 0x00000000 # initialize rs1
li x19, 0xfffffffe # initialize rs2
sra x23, x14, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x10, 0x00000000 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
sra x2, x10, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x29, 0x00000000 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
sra x8, x29, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x13, 0x00000000 # initialize rs1
li x18, 0x55555555 # initialize rs2
sra x20, x13, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x8, 0x00000001 # initialize rs1
li x30, 0x00000000 # initialize rs2
sra x10, x8, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x26, 0x00000001 # initialize rs1
li x6, 0x00000001 # initialize rs2
sra x29, x26, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x12, 0x00000001 # initialize rs1
li x30, 0x00000002 # initialize rs2
sra x20, x12, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x18, 0x00000001 # initialize rs1
li x29, 0x80000000 # initialize rs2
sra x8, x18, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x23, 0x00000001 # initialize rs1
li x10, 0x80000001 # initialize rs2
sra x11, x23, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x6, 0x00000001 # initialize rs1
li x15, 0x7fffffff # initialize rs2
sra x16, x6, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x20, 0x00000001 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
sra x16, x20, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x12, 0x00000001 # initialize rs1
li x9, 0xffffffff # initialize rs2
sra x4, x12, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x12, 0x00000001 # initialize rs1
li x20, 0xfffffffe # initialize rs2
sra x8, x12, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x24, 0x00000001 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
sra x10, x24, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x12, 0x00000001 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
sra x28, x12, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x14, 0x00000001 # initialize rs1
li x18, 0x55555555 # initialize rs2
sra x9, x14, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x2, 0x00000002 # initialize rs1
li x15, 0x00000000 # initialize rs2
sra x7, x2, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x24, 0x00000002 # initialize rs1
li x20, 0x00000001 # initialize rs2
sra x9, x24, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x16, 0x00000002 # initialize rs1
li x12, 0x00000002 # initialize rs2
sra x26, x16, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x9, 0x00000002 # initialize rs1
li x24, 0x80000000 # initialize rs2
sra x20, x9, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x24, 0x00000002 # initialize rs1
li x13, 0x80000001 # initialize rs2
sra x31, x24, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x21, 0x00000002 # initialize rs1
li x6, 0x7fffffff # initialize rs2
sra x28, x21, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x20, 0x00000002 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
sra x28, x20, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x21, 0x00000002 # initialize rs1
li x6, 0xffffffff # initialize rs2
sra x30, x21, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x30, 0x00000002 # initialize rs1
li x31, 0xfffffffe # initialize rs2
sra x2, x30, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x10, 0x00000002 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
sra x20, x10, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x20, 0x00000002 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
sra x3, x20, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x21, 0x00000002 # initialize rs1
li x30, 0x55555555 # initialize rs2
sra x2, x21, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x20, 0x80000000 # initialize rs1
li x21, 0x00000000 # initialize rs2
sra x24, x20, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x1, 0x80000000 # initialize rs1
li x24, 0x00000001 # initialize rs2
sra x28, x1, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x16, 0x80000000 # initialize rs1
li x9, 0x00000002 # initialize rs2
sra x28, x16, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x30, 0x80000000 # initialize rs1
li x18, 0x80000000 # initialize rs2
sra x1, x30, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x13, 0x80000000 # initialize rs1
li x11, 0x80000001 # initialize rs2
sra x25, x13, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x28, 0x80000000 # initialize rs1
li x15, 0x7fffffff # initialize rs2
sra x19, x28, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x2, 0x80000000 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
sra x10, x2, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x24, 0x80000000 # initialize rs1
li x8, 0xffffffff # initialize rs2
sra x27, x24, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x3, 0x80000000 # initialize rs1
li x14, 0xfffffffe # initialize rs2
sra x21, x3, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x8, 0x80000000 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
sra x2, x8, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x7, 0x80000000 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
sra x3, x7, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x22, 0x80000000 # initialize rs1
li x14, 0x55555555 # initialize rs2
sra x17, x22, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x10, 0x80000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
sra x21, x10, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x26, 0x80000001 # initialize rs1
li x14, 0x00000001 # initialize rs2
sra x4, x26, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x31, 0x80000001 # initialize rs1
li x21, 0x00000002 # initialize rs2
sra x22, x31, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x17, 0x80000001 # initialize rs1
li x31, 0x80000000 # initialize rs2
sra x7, x17, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x19, 0x80000001 # initialize rs1
li x28, 0x80000001 # initialize rs2
sra x16, x19, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x6, 0x80000001 # initialize rs1
li x25, 0x7fffffff # initialize rs2
sra x28, x6, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x24, 0x80000001 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
sra x2, x24, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x14, 0x80000001 # initialize rs1
li x22, 0xffffffff # initialize rs2
sra x11, x14, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x30, 0x80000001 # initialize rs1
li x23, 0xfffffffe # initialize rs2
sra x26, x30, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x7, 0x80000001 # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
sra x19, x7, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x23, 0x80000001 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
sra x4, x23, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x6, 0x80000001 # initialize rs1
li x14, 0x55555555 # initialize rs2
sra x9, x6, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x2, 0x7fffffff # initialize rs1
li x29, 0x00000000 # initialize rs2
sra x8, x2, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x2, 0x7fffffff # initialize rs1
li x1, 0x00000001 # initialize rs2
sra x17, x2, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x26, 0x7fffffff # initialize rs1
li x22, 0x00000002 # initialize rs2
sra x27, x26, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x20, 0x7fffffff # initialize rs1
li x30, 0x80000000 # initialize rs2
sra x28, x20, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x23, 0x7fffffff # initialize rs1
li x28, 0x80000001 # initialize rs2
sra x27, x23, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x27, 0x7fffffff # initialize rs1
li x7, 0x7fffffff # initialize rs2
sra x29, x27, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x28, 0x7fffffff # initialize rs1
li x7, 0x7ffffffe # initialize rs2
sra x30, x28, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x23, 0x7fffffff # initialize rs1
li x13, 0xffffffff # initialize rs2
sra x4, x23, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x22, 0x7fffffff # initialize rs1
li x27, 0xfffffffe # initialize rs2
sra x9, x22, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x4, 0x7fffffff # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
sra x30, x4, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x19, 0x7fffffff # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
sra x8, x19, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x23, 0x7fffffff # initialize rs1
li x9, 0x55555555 # initialize rs2
sra x27, x23, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x19, 0x7ffffffe # initialize rs1
li x18, 0x00000000 # initialize rs2
sra x25, x19, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x22, 0x7ffffffe # initialize rs1
li x12, 0x00000001 # initialize rs2
sra x19, x22, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x29, 0x7ffffffe # initialize rs1
li x8, 0x00000002 # initialize rs2
sra x30, x29, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x1, 0x7ffffffe # initialize rs1
li x8, 0x80000000 # initialize rs2
sra x6, x1, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x11, 0x7ffffffe # initialize rs1
li x17, 0x80000001 # initialize rs2
sra x6, x11, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x24, 0x7ffffffe # initialize rs1
li x25, 0x7fffffff # initialize rs2
sra x28, x24, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x12, 0x7ffffffe # initialize rs1
li x25, 0x7ffffffe # initialize rs2
sra x28, x12, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x15, 0x7ffffffe # initialize rs1
li x18, 0xffffffff # initialize rs2
sra x9, x15, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x12, 0x7ffffffe # initialize rs1
li x13, 0xfffffffe # initialize rs2
sra x18, x12, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x3, 0x7ffffffe # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
sra x15, x3, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x8, 0x7ffffffe # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sra x31, x8, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x7, 0x7ffffffe # initialize rs1
li x17, 0x55555555 # initialize rs2
sra x18, x7, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x9, 0xffffffff # initialize rs1
li x23, 0x00000000 # initialize rs2
sra x20, x9, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x27, 0xffffffff # initialize rs1
li x9, 0x00000001 # initialize rs2
sra x7, x27, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x19, 0xffffffff # initialize rs1
li x30, 0x00000002 # initialize rs2
sra x16, x19, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x28, 0xffffffff # initialize rs1
li x23, 0x80000000 # initialize rs2
sra x27, x28, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x8, 0xffffffff # initialize rs1
li x18, 0x80000001 # initialize rs2
sra x11, x8, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x26, 0xffffffff # initialize rs1
li x29, 0x7fffffff # initialize rs2
sra x19, x26, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x12, 0xffffffff # initialize rs1
li x2, 0x7ffffffe # initialize rs2
sra x22, x12, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x11, 0xffffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
sra x2, x11, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x11, 0xffffffff # initialize rs1
li x12, 0xfffffffe # initialize rs2
sra x4, x11, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x9, 0xffffffff # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
sra x13, x9, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x16, 0xffffffff # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
sra x23, x16, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x16, 0xffffffff # initialize rs1
li x1, 0x55555555 # initialize rs2
sra x24, x16, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x1, 0xfffffffe # initialize rs1
li x19, 0x00000000 # initialize rs2
sra x31, x1, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x18, 0xfffffffe # initialize rs1
li x12, 0x00000001 # initialize rs2
sra x24, x18, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x22, 0xfffffffe # initialize rs1
li x23, 0x00000002 # initialize rs2
sra x11, x22, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x3, 0xfffffffe # initialize rs1
li x17, 0x80000000 # initialize rs2
sra x23, x3, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x27, 0xfffffffe # initialize rs1
li x14, 0x80000001 # initialize rs2
sra x4, x27, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x6, 0xfffffffe # initialize rs1
li x19, 0x7fffffff # initialize rs2
sra x13, x6, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x3, 0xfffffffe # initialize rs1
li x7, 0x7ffffffe # initialize rs2
sra x17, x3, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x24, 0xfffffffe # initialize rs1
li x20, 0xffffffff # initialize rs2
sra x19, x24, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x16, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
sra x3, x16, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x20, 0xfffffffe # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
sra x29, x20, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x19, 0xfffffffe # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
sra x2, x19, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x27, 0xfffffffe # initialize rs1
li x21, 0x55555555 # initialize rs2
sra x8, x27, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x14, 0x5bbc8872 # initialize rs1
li x7, 0x00000000 # initialize rs2
sra x26, x14, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x30, 0x5bbc8872 # initialize rs1
li x26, 0x00000001 # initialize rs2
sra x28, x30, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x13, 0x5bbc8872 # initialize rs1
li x26, 0x00000002 # initialize rs2
sra x23, x13, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x24, 0x5bbc8872 # initialize rs1
li x12, 0x80000000 # initialize rs2
sra x31, x24, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x24, 0x5bbc8872 # initialize rs1
li x1, 0x80000001 # initialize rs2
sra x13, x24, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x6, 0x5bbc8872 # initialize rs1
li x22, 0x7fffffff # initialize rs2
sra x2, x6, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x7, 0x5bbc8872 # initialize rs1
li x4, 0x7ffffffe # initialize rs2
sra x23, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x26, 0x5bbc8872 # initialize rs1
li x15, 0xffffffff # initialize rs2
sra x23, x26, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x30, 0x5bbc8872 # initialize rs1
li x31, 0xfffffffe # initialize rs2
sra x24, x30, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x28, 0x5bbc8872 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
sra x13, x28, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x13, 0x5bbc8872 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
sra x18, x13, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x13, 0x5bbc8872 # initialize rs1
li x26, 0x55555555 # initialize rs2
sra x31, x13, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x19, 0xaaaaaaaa # initialize rs1
li x17, 0x00000000 # initialize rs2
sra x22, x19, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x22, 0xaaaaaaaa # initialize rs1
li x24, 0x00000001 # initialize rs2
sra x26, x22, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x27, 0xaaaaaaaa # initialize rs1
li x25, 0x00000002 # initialize rs2
sra x11, x27, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x31, 0xaaaaaaaa # initialize rs1
li x19, 0x80000000 # initialize rs2
sra x11, x31, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x17, 0xaaaaaaaa # initialize rs1
li x23, 0x80000001 # initialize rs2
sra x31, x17, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x25, 0xaaaaaaaa # initialize rs1
li x4, 0x7fffffff # initialize rs2
sra x9, x25, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x6, 0xaaaaaaaa # initialize rs1
li x18, 0x7ffffffe # initialize rs2
sra x19, x6, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x10, 0xaaaaaaaa # initialize rs1
li x30, 0xffffffff # initialize rs2
sra x8, x10, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x11, 0xaaaaaaaa # initialize rs1
li x7, 0xfffffffe # initialize rs2
sra x2, x11, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x10, 0xaaaaaaaa # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
sra x4, x10, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x19, 0xaaaaaaaa # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
sra x1, x19, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x17, 0xaaaaaaaa # initialize rs1
li x8, 0x55555555 # initialize rs2
sra x11, x17, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x9, 0x55555555 # initialize rs1
li x28, 0x00000000 # initialize rs2
sra x18, x9, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x6, 0x55555555 # initialize rs1
li x3, 0x00000001 # initialize rs2
sra x22, x6, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x2, 0x55555555 # initialize rs1
li x15, 0x00000002 # initialize rs2
sra x7, x2, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x3, 0x55555555 # initialize rs1
li x24, 0x80000000 # initialize rs2
sra x11, x3, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x4, 0x55555555 # initialize rs1
li x2, 0x80000001 # initialize rs2
sra x16, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x7, 0x55555555 # initialize rs1
li x12, 0x7fffffff # initialize rs2
sra x25, x7, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x10, 0x55555555 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
sra x13, x10, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x18, 0x55555555 # initialize rs1
li x29, 0xffffffff # initialize rs2
sra x8, x18, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x31, 0x55555555 # initialize rs1
li x8, 0xfffffffe # initialize rs2
sra x27, x31, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x17, 0x55555555 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
sra x14, x17, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x10, 0x55555555 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
sra x2, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x15, 0x55555555 # initialize rs1
li x8, 0x55555555 # initialize rs2
sra x1, x15, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x02fb1fb3 # initialize rs1
li x0, 0x6e0fc4be # initialize rs2
sra x10, x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xa7f5565e # initialize rs1
li x1, 0x4d575977 # initialize rs2
sra x16, x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x30ec9d83 # initialize rs1
li x2, 0x34971e6a # initialize rs2
sra x12, x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xd666df31 # initialize rs1
li x3, 0x7215d32b # initialize rs2
sra x12, x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x4, 0x2fa35269 # initialize rs1
li x4, 0x10231f71 # initialize rs2
sra x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd2b68668 # initialize rs1
li x5, 0xfbc4fbe4 # initialize rs2
sra x3, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa3754e0d # initialize rs1
li x6, 0xb106f193 # initialize rs2
sra x24, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x478fdcd9 # initialize rs1
li x7, 0x2c181182 # initialize rs2
sra x21, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xed2cef26 # initialize rs1
li x8, 0xaa93f561 # initialize rs2
sra x30, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x4dc3d60e # initialize rs1
li x9, 0xc0a20ccc # initialize rs2
sra x30, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xd2930abb # initialize rs1
li x10, 0x44589e07 # initialize rs2
sra x3, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x15dae151 # initialize rs1
li x11, 0x0c132bf9 # initialize rs2
sra x22, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xc9b80a84 # initialize rs1
li x12, 0x462d173e # initialize rs2
sra x9, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x1a14d528 # initialize rs1
li x13, 0x52091d76 # initialize rs2
sra x31, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x9edb42cc # initialize rs1
li x14, 0x6da361ff # initialize rs2
sra x26, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x08076c63 # initialize rs1
li x15, 0x032154aa # initialize rs2
sra x14, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x00a2e5b1 # initialize rs1
li x16, 0x22760d91 # initialize rs2
sra x31, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x265ab30c # initialize rs1
li x17, 0x320e628f # initialize rs2
sra x23, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xfec5e942 # initialize rs1
li x18, 0x194974e0 # initialize rs2
sra x16, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x109a4dee # initialize rs1
li x19, 0x5e95e895 # initialize rs2
sra x5, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x94b110a4 # initialize rs1
li x20, 0x2d596e00 # initialize rs2
sra x23, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x651a49ab # initialize rs1
li x21, 0x9cae6715 # initialize rs2
sra x18, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x31a223fc # initialize rs1
li x22, 0x9a8d168e # initialize rs2
sra x18, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xaf191932 # initialize rs1
li x23, 0x16ce0964 # initialize rs2
sra x9, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x155e341d # initialize rs1
li x24, 0xb427163d # initialize rs2
sra x19, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xee3698f7 # initialize rs1
li x25, 0x0eef4425 # initialize rs2
sra x1, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x27fb9dec # initialize rs1
li x26, 0x2b515947 # initialize rs2
sra x20, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x33d1fccb # initialize rs1
li x27, 0x90e78fca # initialize rs2
sra x11, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x8c452038 # initialize rs1
li x28, 0x678991d7 # initialize rs2
sra x14, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x7e94dc09 # initialize rs1
li x29, 0x437328bc # initialize rs2
sra x24, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xc8c298e5 # initialize rs1
li x30, 0x92a7c9d0 # initialize rs2
sra x27, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xc169be67 # initialize rs1
li x31, 0xc443d2b8 # initialize rs2
sra x3, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x7750da4e # initialize rs1
li x17, 0x38928194 # initialize rs2
sra x0, x0, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x999486ca # initialize rs1
li x21, 0xdbabcdb9 # initialize rs2
sra x1, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x2afc0f3e # initialize rs1
li x3, 0xa7747152 # initialize rs2
sra x2, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x431f0e00 # initialize rs1
li x5, 0xc98a72a7 # initialize rs2
sra x3, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa841ad97 # initialize rs1
li x17, 0x0e1713d6 # initialize rs2
sra x4, x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x88879038 # initialize rs1
li x31, 0xb6f957cc # initialize rs2
sra x5, x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2528d306 # initialize rs1
li x22, 0x123cb091 # initialize rs2
sra x6, x6, x22 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x738eeedb # initialize rs1
li x24, 0x27db7f4a # initialize rs2
sra x7, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf23e5f60 # initialize rs1
li x21, 0xf5ed659a # initialize rs2
sra x8, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x09fc3fa9 # initialize rs1
li x7, 0x20307d38 # initialize rs2
sra x9, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x07372e0e # initialize rs1
li x7, 0x67a5d9f0 # initialize rs2
sra x10, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x696a4788 # initialize rs1
li x19, 0x939e2dcd # initialize rs2
sra x11, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x2001cde9 # initialize rs1
li x23, 0x6339573e # initialize rs2
sra x12, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe45630b2 # initialize rs1
li x18, 0xdaac462d # initialize rs2
sra x13, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xd1c580f1 # initialize rs1
li x27, 0x877f604b # initialize rs2
sra x14, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8a38c39e # initialize rs1
li x30, 0x8654f91d # initialize rs2
sra x15, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xfc8f7e99 # initialize rs1
li x17, 0xa0cb3279 # initialize rs2
sra x16, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x8a0e5e8e # initialize rs1
li x25, 0xf91c39a0 # initialize rs2
sra x17, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x4a6505de # initialize rs1
li x25, 0x696ea2f7 # initialize rs2
sra x18, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xe8e519de # initialize rs1
li x24, 0xa7d79ffe # initialize rs2
sra x19, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xd0a6695d # initialize rs1
li x16, 0x71c8285d # initialize rs2
sra x20, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x74af708c # initialize rs1
li x14, 0x0600b311 # initialize rs2
sra x21, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x870fc189 # initialize rs1
li x26, 0xa1396acf # initialize rs2
sra x22, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x69db90f5 # initialize rs1
li x21, 0xd1273b0e # initialize rs2
sra x23, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x6948be62 # initialize rs1
li x11, 0x77012bd5 # initialize rs2
sra x24, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xd299f18d # initialize rs1
li x2, 0x438b454b # initialize rs2
sra x25, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x26fea931 # initialize rs1
li x31, 0x11a7c26b # initialize rs2
sra x26, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x60e39fa5 # initialize rs1
li x28, 0x17062dda # initialize rs2
sra x27, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xfb613ce2 # initialize rs1
li x16, 0x4b017426 # initialize rs2
sra x28, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x8b68c63d # initialize rs1
li x19, 0x724e9f14 # initialize rs2
sra x29, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x663e5a39 # initialize rs1
li x5, 0x3434d522 # initialize rs2
sra x30, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x2e8ccf9b # initialize rs1
li x9, 0xb674f9a1 # initialize rs2
sra x31, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x19, 0x326756a0 # initialize rs1
li x0, 0xdc07d03d # initialize rs2
sra x0, x19, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x27, 0x1d232e64 # initialize rs1
li x1, 0x9e923f7d # initialize rs2
sra x1, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x15, 0xabcfc0f3 # initialize rs1
li x2, 0x2405888b # initialize rs2
sra x2, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x11, 0x4fcae020 # initialize rs1
li x3, 0x8837b671 # initialize rs2
sra x3, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0xedc815a0 # initialize rs1
li x4, 0x93323d52 # initialize rs2
sra x4, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0x377d37d6 # initialize rs1
li x5, 0x2eb566d4 # initialize rs2
sra x5, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x956727eb # initialize rs1
li x6, 0xc38782aa # initialize rs2
sra x6, x4, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x9827c74f # initialize rs1
li x7, 0xf9fb7fad # initialize rs2
sra x7, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x15, 0xc487d2bd # initialize rs1
li x8, 0x5d15addc # initialize rs2
sra x8, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x22, 0xa6e79f3d # initialize rs1
li x9, 0xc92efb3e # initialize rs2
sra x9, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x14, 0xe92948ef # initialize rs1
li x10, 0x30b94ca7 # initialize rs2
sra x10, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x30, 0xdfbfecf5 # initialize rs1
li x11, 0x9edd12d7 # initialize rs2
sra x11, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x30, 0xdbcc0b03 # initialize rs1
li x12, 0x43c3a511 # initialize rs2
sra x12, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x28, 0x7ab1f3d3 # initialize rs1
li x13, 0xfc8583ef # initialize rs2
sra x13, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x9, 0x32329d30 # initialize rs1
li x14, 0x3ca58149 # initialize rs2
sra x14, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x23, 0x1775f7a0 # initialize rs1
li x15, 0xb668e1a9 # initialize rs2
sra x15, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x14, 0x4c271409 # initialize rs1
li x16, 0xba785ff4 # initialize rs2
sra x16, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x23, 0x408c97f3 # initialize rs1
li x17, 0xb6c9f667 # initialize rs2
sra x17, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x16, 0xabe99497 # initialize rs1
li x18, 0x3e8b6086 # initialize rs2
sra x18, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x30, 0x0f91bc88 # initialize rs1
li x19, 0x90d5ac07 # initialize rs2
sra x19, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x12, 0x1db0cc59 # initialize rs1
li x20, 0xcd5d3d75 # initialize rs2
sra x20, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x20, 0x5f71fd2c # initialize rs1
li x21, 0xf7ace6b5 # initialize rs2
sra x21, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x23, 0x6b7cb72d # initialize rs1
li x22, 0x4cff2d21 # initialize rs2
sra x22, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x31, 0x0f8359c8 # initialize rs1
li x23, 0xcfb140a4 # initialize rs2
sra x23, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x29, 0x31e46670 # initialize rs1
li x24, 0xee042e17 # initialize rs2
sra x24, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x12, 0x687dc9a5 # initialize rs1
li x25, 0x09c84724 # initialize rs2
sra x25, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x7, 0xd98bf1d2 # initialize rs1
li x26, 0x5dfd1ed9 # initialize rs2
sra x26, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x29, 0x8632827e # initialize rs1
li x27, 0x9e0be8d2 # initialize rs2
sra x27, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x12, 0xf0b4250e # initialize rs1
li x28, 0xb222bb32 # initialize rs2
sra x28, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x2, 0x39401bf0 # initialize rs1
li x29, 0xc6287696 # initialize rs2
sra x29, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x23, 0xf1215159 # initialize rs1
li x30, 0x0aee814f # initialize rs2
sra x30, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x12, 0x840ba72d # initialize rs1
li x31, 0x15868027 # initialize rs2
sra x31, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x1c9e5fc4 # initialize rs1
li x0, 0x6d844f24 # initialize rs2
sra x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xff13824a # initialize rs1
li x1, 0xe925eb27 # initialize rs2
sra x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x9801d59b # initialize rs1
li x2, 0xc8854e11 # initialize rs2
sra x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xeabfc026 # initialize rs1
li x3, 0xdcfacd5a # initialize rs2
sra x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf8c9d057 # initialize rs1
li x4, 0x53a170db # initialize rs2
sra x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x937ccae3 # initialize rs1
li x5, 0x4a6979fb # initialize rs2
sra x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3698a9b9 # initialize rs1
li x6, 0xcef1e931 # initialize rs2
sra x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x65711ff0 # initialize rs1
li x7, 0xf30b062a # initialize rs2
sra x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xc06c143b # initialize rs1
li x8, 0x428ebec2 # initialize rs2
sra x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xf20fb495 # initialize rs1
li x9, 0x435a0753 # initialize rs2
sra x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x31ba62d3 # initialize rs1
li x10, 0xdb04387e # initialize rs2
sra x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xcc57bdc8 # initialize rs1
li x11, 0x6f8db32d # initialize rs2
sra x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x0934bb86 # initialize rs1
li x12, 0x0b388f34 # initialize rs2
sra x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x1dbcfc44 # initialize rs1
li x13, 0xb733ceb1 # initialize rs2
sra x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x3a344f74 # initialize rs1
li x14, 0x0dce50f0 # initialize rs2
sra x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x5f72190e # initialize rs1
li x15, 0xfdcd3b51 # initialize rs2
sra x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xf8b5b50e # initialize rs1
li x16, 0x28fe4bc7 # initialize rs2
sra x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x8cee22e4 # initialize rs1
li x17, 0xead9a30e # initialize rs2
sra x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xce37b9c4 # initialize rs1
li x18, 0x6ef69768 # initialize rs2
sra x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x83f64a84 # initialize rs1
li x19, 0x919e215c # initialize rs2
sra x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xe53f176c # initialize rs1
li x20, 0x57b7756c # initialize rs2
sra x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x2955641c # initialize rs1
li x21, 0xc219d57a # initialize rs2
sra x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x81f4052e # initialize rs1
li x22, 0xb1d5d33d # initialize rs2
sra x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xde8ce90f # initialize rs1
li x23, 0x64f3594b # initialize rs2
sra x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x07bce09b # initialize rs1
li x24, 0xc503eaac # initialize rs2
sra x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x1512104f # initialize rs1
li x25, 0x3b57eb3a # initialize rs2
sra x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x471b944f # initialize rs1
li x26, 0x3491ed04 # initialize rs2
sra x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xf0cbabe5 # initialize rs1
li x27, 0xc79fe54f # initialize rs2
sra x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x75bff48f # initialize rs1
li x28, 0xd841b2fc # initialize rs2
sra x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x5a855275 # initialize rs1
li x29, 0x6452cece # initialize rs2
sra x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x44f80c57 # initialize rs1
li x30, 0xd8513d1e # initialize rs2
sra x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xd1bf1a30 # initialize rs1
li x31, 0x09f0bd04 # initialize rs2
sra x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x21, x11 # perform first operation
sra x24, x26, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x7, x23 # perform first operation
sra x31, x10, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x2, x20 # perform first operation
sra x11, x19, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x27, x3 # perform first operation
sra x27, x2, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x2, x9 # perform first operation
sra x31, x25, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x5, x2 # perform first operation
sra x2, x28, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x27, x12 # perform first operation
sra x2, x19, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x16, x11 # perform first operation
sra x29, x9, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x2, x28 # perform first operation
sra x11, x14, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x20, x25 # perform first operation
sra x20, x9, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x17, x1 # perform first operation
sra x1, x12, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x28, x19 # perform first operation
sra x10, x9, x29 # perform second (triggering) operation

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
