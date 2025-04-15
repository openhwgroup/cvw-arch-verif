///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-srl.S
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
li x0, 0x08e604d4 # initialize rs1
li x22, 0xa23ae617 # initialize rs2
srl x31, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xd2767c89 # initialize rs1
li x26, 0x7ebf4c6b # initialize rs2
srl x10, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x5abd5d69 # initialize rs1
li x31, 0x0d2c518d # initialize rs2
srl x5, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xcbc6ce69 # initialize rs1
li x19, 0xe6a64b0d # initialize rs2
srl x17, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x14d6b91f # initialize rs1
li x10, 0x807c7cdd # initialize rs2
srl x31, x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x14691635 # initialize rs1
li x20, 0x2920d19b # initialize rs2
srl x19, x5, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe4490a08 # initialize rs1
li x19, 0x24b29a74 # initialize rs2
srl x7, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xb15d0961 # initialize rs1
li x10, 0x7f46d087 # initialize rs2
srl x17, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xe4469428 # initialize rs1
li x25, 0xda207657 # initialize rs2
srl x17, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x4f9adba5 # initialize rs1
li x18, 0xfd12a7eb # initialize rs2
srl x31, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x4e65371c # initialize rs1
li x2, 0x1531dc53 # initialize rs2
srl x11, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xefbccdd6 # initialize rs1
li x9, 0x0c5d078d # initialize rs2
srl x1, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x46763983 # initialize rs1
li x17, 0x0b90de33 # initialize rs2
srl x8, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x14ca954a # initialize rs1
li x18, 0x9fb83a4c # initialize rs2
srl x27, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xd78761f4 # initialize rs1
li x24, 0xd83d3a32 # initialize rs2
srl x11, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x6fbc6930 # initialize rs1
li x25, 0xaad2043b # initialize rs2
srl x27, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xf3c201ab # initialize rs1
li x25, 0x1ace2df2 # initialize rs2
srl x11, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x8472f693 # initialize rs1
li x14, 0x0ed6cb23 # initialize rs2
srl x7, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x612f1431 # initialize rs1
li x15, 0x3bbb893c # initialize rs2
srl x2, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x43506556 # initialize rs1
li x18, 0x5df0996b # initialize rs2
srl x23, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xff45f48b # initialize rs1
li x6, 0xc4b4c409 # initialize rs2
srl x18, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xb15cbb97 # initialize rs1
li x19, 0x25ccedad # initialize rs2
srl x2, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x41831e54 # initialize rs1
li x28, 0x96c8ab2f # initialize rs2
srl x15, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x5621818f # initialize rs1
li x1, 0x4cdfca74 # initialize rs2
srl x13, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xb18e0e36 # initialize rs1
li x31, 0xd338cd0d # initialize rs2
srl x19, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xcce652f5 # initialize rs1
li x27, 0x1b16a7e7 # initialize rs2
srl x21, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x9392abb2 # initialize rs1
li x15, 0xbcfa83c1 # initialize rs2
srl x3, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x961182f4 # initialize rs1
li x23, 0x1b60419b # initialize rs2
srl x22, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x836e8eee # initialize rs1
li x27, 0xae5e8d63 # initialize rs2
srl x6, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x0d5f2152 # initialize rs1
li x31, 0x8b9889e0 # initialize rs2
srl x2, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x43737b0a # initialize rs1
li x17, 0x1d743381 # initialize rs2
srl x6, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xd5ee1f07 # initialize rs1
li x11, 0x8780342c # initialize rs2
srl x10, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x31, 0xf3f474e7 # initialize rs1
li x0, 0xe602974a # initialize rs2
srl x13, x31, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x5, 0x78423a1b # initialize rs1
li x1, 0x06965e68 # initialize rs2
srl x31, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x1, 0x9c05bd1d # initialize rs1
li x2, 0x8c8b0c1a # initialize rs2
srl x7, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x6, 0xfcdfdcb0 # initialize rs1
li x3, 0x323c7ec1 # initialize rs2
srl x24, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0xdfadeda3 # initialize rs1
li x4, 0x1b219bcc # initialize rs2
srl x12, x19, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0xf394b876 # initialize rs1
li x5, 0x9a27d976 # initialize rs2
srl x27, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0xedc0eb8e # initialize rs1
li x6, 0x15601fda # initialize rs2
srl x17, x14, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x17, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0xf7455303 # initialize rs1
li x7, 0xd4afd528 # initialize rs2
srl x8, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x13, 0xf5f74acc # initialize rs1
li x8, 0x47f95443 # initialize rs2
srl x10, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x16, 0x15ffc994 # initialize rs1
li x9, 0xfd06a1f8 # initialize rs2
srl x7, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x30, 0x82d1cedb # initialize rs1
li x10, 0x9edff4ae # initialize rs2
srl x24, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x2, 0xffdde2d3 # initialize rs1
li x11, 0x96bc5657 # initialize rs2
srl x17, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x9, 0x806cdd09 # initialize rs1
li x12, 0xe76c92c1 # initialize rs2
srl x19, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0x06d8980a # initialize rs1
li x13, 0xe19cbf7d # initialize rs2
srl x3, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x30, 0x5729551d # initialize rs1
li x14, 0xcb9ff55f # initialize rs2
srl x15, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x6, 0x2a1dd5ef # initialize rs1
li x15, 0xf2140b85 # initialize rs2
srl x22, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x7, 0x728d9b43 # initialize rs1
li x16, 0x26dd54c2 # initialize rs2
srl x17, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x24, 0x4574e6ac # initialize rs1
li x17, 0xfdeeb826 # initialize rs2
srl x12, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x23, 0x7903ba28 # initialize rs1
li x18, 0x9809cf1e # initialize rs2
srl x31, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x29, 0x65526419 # initialize rs1
li x19, 0x3ce0e874 # initialize rs2
srl x1, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x1, 0xd9e48521 # initialize rs1
li x20, 0xb421e08c # initialize rs2
srl x18, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x2, 0x8e482c9e # initialize rs1
li x21, 0x8fc0b293 # initialize rs2
srl x3, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x27, 0xba7d981c # initialize rs1
li x22, 0x80cf8f2a # initialize rs2
srl x6, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x14, 0x4b558b2e # initialize rs1
li x23, 0x1b8ff2af # initialize rs2
srl x21, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x10, 0x7b52bff6 # initialize rs1
li x24, 0x1d16fbb9 # initialize rs2
srl x30, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x7, 0xa57555dc # initialize rs1
li x25, 0x52deffc4 # initialize rs2
srl x31, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x23, 0x8adc3458 # initialize rs1
li x26, 0xc9523b97 # initialize rs2
srl x5, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x15, 0x8f0bde92 # initialize rs1
li x27, 0xd6b75e40 # initialize rs2
srl x28, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x19, 0x77b96800 # initialize rs1
li x28, 0xe63fc907 # initialize rs2
srl x3, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x10, 0xad61b2e1 # initialize rs1
li x29, 0xc7acffe9 # initialize rs2
srl x27, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x26, 0x52d88a46 # initialize rs1
li x30, 0x157edc7b # initialize rs2
srl x14, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x17, 0x54befb22 # initialize rs1
li x31, 0xe68a52f1 # initialize rs2
srl x6, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 252)

# Testcase cp_rd (Test destination rd = x0)
li x27, 0x545d6dfb # initialize rs1
li x15, 0x405b17fb # initialize rs2
srl x0, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x5, 0x45c78b63 # initialize rs1
li x15, 0xa699da94 # initialize rs2
srl x1, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0x25696279 # initialize rs1
li x16, 0x2c191728 # initialize rs2
srl x2, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x7, 0x33bb2e3d # initialize rs1
li x21, 0x3f497128 # initialize rs2
srl x3, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0xcec3480e # initialize rs1
li x13, 0x83ea8688 # initialize rs2
srl x4, x12, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0x5ae8a101 # initialize rs1
li x17, 0xdd30b6e0 # initialize rs2
srl x5, x8, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0xd7b762b0 # initialize rs1
li x13, 0xa1b90fe4 # initialize rs2
srl x6, x17, x13 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x0b22737d # initialize rs1
li x18, 0x2cb1a57f # initialize rs2
srl x7, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x7, 0x3d3c95fc # initialize rs1
li x3, 0x9a34d1e6 # initialize rs2
srl x8, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x31, 0x98d8bd06 # initialize rs1
li x26, 0x1193812c # initialize rs2
srl x9, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x8, 0x54899f9a # initialize rs1
li x2, 0x7b1639ad # initialize rs2
srl x10, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x24, 0x07e30e9e # initialize rs1
li x28, 0x62242fa9 # initialize rs2
srl x11, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x7, 0x54477d39 # initialize rs1
li x27, 0x6958c11d # initialize rs2
srl x12, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0x53592252 # initialize rs1
li x6, 0x88919095 # initialize rs2
srl x13, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x29, 0x9e8e4187 # initialize rs1
li x3, 0x2cc48e02 # initialize rs2
srl x14, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x29, 0xffc12e0e # initialize rs1
li x24, 0x532e0357 # initialize rs2
srl x15, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x8, 0x170a4983 # initialize rs1
li x5, 0x4f5aeaeb # initialize rs2
srl x16, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x7, 0x774dfcb5 # initialize rs1
li x26, 0x1053c1a8 # initialize rs2
srl x17, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x20, 0x3a98fdbc # initialize rs1
li x30, 0x41b6e080 # initialize rs2
srl x18, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x1, 0xb41bf099 # initialize rs1
li x9, 0x301696a6 # initialize rs2
srl x19, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x13, 0x13f2fca6 # initialize rs1
li x7, 0x88bb6c9d # initialize rs2
srl x20, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x15, 0xae1cf13c # initialize rs1
li x7, 0x11d0cabb # initialize rs2
srl x21, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x20, 0x3b6bf98b # initialize rs1
li x22, 0x0e4f15ee # initialize rs2
srl x22, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x10, 0x6cd08c60 # initialize rs1
li x26, 0x1962bf0f # initialize rs2
srl x23, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x29, 0xdcf7cd1d # initialize rs1
li x3, 0xedf55b50 # initialize rs2
srl x24, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x21, 0xa4d83bd3 # initialize rs1
li x27, 0xd94fdbc9 # initialize rs2
srl x25, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x2a38d3fd # initialize rs1
li x25, 0xec13895f # initialize rs2
srl x26, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x21, 0xf5ab09f5 # initialize rs1
li x5, 0xa12a882a # initialize rs2
srl x27, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x9, 0x13ee5e52 # initialize rs1
li x15, 0x93bb9ba7 # initialize rs2
srl x28, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x20, 0x6240352a # initialize rs1
li x28, 0xaad111d0 # initialize rs2
srl x29, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x11, 0xc83a4232 # initialize rs1
li x25, 0x9fabe6e4 # initialize rs2
srl x30, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x20, 0x2ff8bc2c # initialize rs1
li x7, 0xea6043c2 # initialize rs2
srl x31, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x18, 0x00000000 # initialize rs1
li x19, 0xd72d1fbd # initialize rs2
srl x15, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0x00000001 # initialize rs1
li x9, 0xa59b1df1 # initialize rs2
srl x19, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x28, 0x00000002 # initialize rs1
li x18, 0x9db0d720 # initialize rs2
srl x10, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x1, 0x80000000 # initialize rs1
li x14, 0x5ab3d5b4 # initialize rs2
srl x17, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x30, 0x80000001 # initialize rs1
li x18, 0xed7c84e2 # initialize rs2
srl x6, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x11, 0x7fffffff # initialize rs1
li x8, 0x0edb58d3 # initialize rs2
srl x14, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x5, 0x7ffffffe # initialize rs1
li x27, 0x9a5b5b6d # initialize rs2
srl x26, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x2, 0xffffffff # initialize rs1
li x11, 0x5f65d22e # initialize rs2
srl x15, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x10, 0xfffffffe # initialize rs1
li x3, 0x6a23c62c # initialize rs2
srl x5, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x14, 0x5bbc8872 # initialize rs1
li x11, 0xe17b7422 # initialize rs2
srl x13, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x27, 0xaaaaaaaa # initialize rs1
li x15, 0xc35ede87 # initialize rs2
srl x23, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x29, 0x55555555 # initialize rs1
li x11, 0x264bdc23 # initialize rs2
srl x15, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x21, 0x4487facf # initialize rs1
li x31, 0x00000000 # initialize rs2
srl x12, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x25, 0x6cc933f7 # initialize rs1
li x13, 0x00000001 # initialize rs2
srl x16, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x27, 0xc7d32b69 # initialize rs1
li x7, 0x00000002 # initialize rs2
srl x11, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x29, 0x7eca810b # initialize rs1
li x31, 0x80000000 # initialize rs2
srl x20, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x12, 0x8e82f8ef # initialize rs1
li x13, 0x80000001 # initialize rs2
srl x15, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x17, 0xba4eaaac # initialize rs1
li x29, 0x7fffffff # initialize rs2
srl x30, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x14, 0x838a2b03 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
srl x22, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x19, 0x708f4763 # initialize rs1
li x17, 0xffffffff # initialize rs2
srl x3, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x2, 0x4813caae # initialize rs1
li x29, 0xfffffffe # initialize rs2
srl x18, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x13, 0xf010994f # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
srl x16, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x25, 0x90db4bc9 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
srl x16, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x5, 0xbe6ae6be # initialize rs1
li x9, 0x55555555 # initialize rs2
srl x30, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x16, 0x00000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
srl x2, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x12, 0x00000000 # initialize rs1
li x17, 0x00000001 # initialize rs2
srl x22, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x31, 0x00000000 # initialize rs1
li x29, 0x00000002 # initialize rs2
srl x13, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x22, 0x00000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
srl x5, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x22, 0x00000000 # initialize rs1
li x2, 0x80000001 # initialize rs2
srl x15, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x12, 0x00000000 # initialize rs1
li x24, 0x7fffffff # initialize rs2
srl x26, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x10, 0x00000000 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
srl x2, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x20, 0x00000000 # initialize rs1
li x1, 0xffffffff # initialize rs2
srl x31, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x2, 0x00000000 # initialize rs1
li x19, 0xfffffffe # initialize rs2
srl x9, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x3, 0x00000000 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
srl x6, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x1, 0x00000000 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
srl x17, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x6, 0x00000000 # initialize rs1
li x11, 0x55555555 # initialize rs2
srl x14, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x15, 0x00000001 # initialize rs1
li x28, 0x00000000 # initialize rs2
srl x29, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x6, 0x00000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
srl x27, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x13, 0x00000001 # initialize rs1
li x19, 0x00000002 # initialize rs2
srl x20, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x28, 0x00000001 # initialize rs1
li x3, 0x80000000 # initialize rs2
srl x14, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x30, 0x00000001 # initialize rs1
li x31, 0x80000001 # initialize rs2
srl x10, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x29, 0x00000001 # initialize rs1
li x18, 0x7fffffff # initialize rs2
srl x19, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x17, 0x00000001 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
srl x5, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x31, 0x00000001 # initialize rs1
li x13, 0xffffffff # initialize rs2
srl x25, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x25, 0x00000001 # initialize rs1
li x21, 0xfffffffe # initialize rs2
srl x29, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x2, 0x00000001 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
srl x15, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x22, 0x00000001 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
srl x11, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x11, 0x00000001 # initialize rs1
li x17, 0x55555555 # initialize rs2
srl x27, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x6, 0x00000002 # initialize rs1
li x22, 0x00000000 # initialize rs2
srl x7, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x17, 0x00000002 # initialize rs1
li x25, 0x00000001 # initialize rs2
srl x9, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x23, 0x00000002 # initialize rs1
li x14, 0x00000002 # initialize rs2
srl x30, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x3, 0x00000002 # initialize rs1
li x18, 0x80000000 # initialize rs2
srl x15, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x30, 0x00000002 # initialize rs1
li x9, 0x80000001 # initialize rs2
srl x27, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x13, 0x00000002 # initialize rs1
li x25, 0x7fffffff # initialize rs2
srl x20, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x10, 0x00000002 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
srl x20, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x7, 0x00000002 # initialize rs1
li x26, 0xffffffff # initialize rs2
srl x18, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x27, 0x00000002 # initialize rs1
li x17, 0xfffffffe # initialize rs2
srl x24, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x27, 0x00000002 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
srl x29, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x22, 0x00000002 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
srl x8, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x3, 0x00000002 # initialize rs1
li x29, 0x55555555 # initialize rs2
srl x28, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x22, 0x80000000 # initialize rs1
li x15, 0x00000000 # initialize rs2
srl x19, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x28, 0x80000000 # initialize rs1
li x6, 0x00000001 # initialize rs2
srl x15, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x2, 0x80000000 # initialize rs1
li x31, 0x00000002 # initialize rs2
srl x6, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x5, 0x80000000 # initialize rs1
li x8, 0x80000000 # initialize rs2
srl x22, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x29, 0x80000000 # initialize rs1
li x3, 0x80000001 # initialize rs2
srl x2, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x6, 0x80000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
srl x26, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x30, 0x80000000 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
srl x12, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x17, 0x80000000 # initialize rs1
li x29, 0xffffffff # initialize rs2
srl x27, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x1, 0x80000000 # initialize rs1
li x26, 0xfffffffe # initialize rs2
srl x2, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x6, 0x80000000 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
srl x24, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x11, 0x80000000 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
srl x29, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x14, 0x80000000 # initialize rs1
li x16, 0x55555555 # initialize rs2
srl x3, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x14, 0x80000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
srl x17, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x28, 0x80000001 # initialize rs1
li x5, 0x00000001 # initialize rs2
srl x29, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x19, 0x80000001 # initialize rs1
li x11, 0x00000002 # initialize rs2
srl x7, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x23, 0x80000001 # initialize rs1
li x29, 0x80000000 # initialize rs2
srl x17, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x17, 0x80000001 # initialize rs1
li x1, 0x80000001 # initialize rs2
srl x15, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x7, 0x80000001 # initialize rs1
li x27, 0x7fffffff # initialize rs2
srl x11, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x27, 0x80000001 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
srl x20, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x5, 0x80000001 # initialize rs1
li x18, 0xffffffff # initialize rs2
srl x28, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x13, 0x80000001 # initialize rs1
li x2, 0xfffffffe # initialize rs2
srl x21, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x27, 0x80000001 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
srl x21, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x17, 0x80000001 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
srl x29, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x13, 0x80000001 # initialize rs1
li x16, 0x55555555 # initialize rs2
srl x10, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x19, 0x7fffffff # initialize rs1
li x28, 0x00000000 # initialize rs2
srl x29, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x6, 0x7fffffff # initialize rs1
li x29, 0x00000001 # initialize rs2
srl x21, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x24, 0x7fffffff # initialize rs1
li x7, 0x00000002 # initialize rs2
srl x29, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x3, 0x7fffffff # initialize rs1
li x28, 0x80000000 # initialize rs2
srl x19, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x21, 0x7fffffff # initialize rs1
li x7, 0x80000001 # initialize rs2
srl x3, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x28, 0x7fffffff # initialize rs1
li x13, 0x7fffffff # initialize rs2
srl x11, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x28, 0x7fffffff # initialize rs1
li x9, 0x7ffffffe # initialize rs2
srl x6, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x29, 0x7fffffff # initialize rs1
li x6, 0xffffffff # initialize rs2
srl x9, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x25, 0x7fffffff # initialize rs1
li x6, 0xfffffffe # initialize rs2
srl x31, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x29, 0x7fffffff # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
srl x30, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x21, 0x7fffffff # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
srl x3, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x5, 0x7fffffff # initialize rs1
li x22, 0x55555555 # initialize rs2
srl x27, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x15, 0x7ffffffe # initialize rs1
li x2, 0x00000000 # initialize rs2
srl x13, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x17, 0x7ffffffe # initialize rs1
li x15, 0x00000001 # initialize rs2
srl x12, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x17, 0x7ffffffe # initialize rs1
li x30, 0x00000002 # initialize rs2
srl x3, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x12, 0x7ffffffe # initialize rs1
li x1, 0x80000000 # initialize rs2
srl x5, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x10, 0x7ffffffe # initialize rs1
li x28, 0x80000001 # initialize rs2
srl x17, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x10, 0x7ffffffe # initialize rs1
li x8, 0x7fffffff # initialize rs2
srl x1, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x2, 0x7ffffffe # initialize rs1
li x13, 0x7ffffffe # initialize rs2
srl x17, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x22, 0x7ffffffe # initialize rs1
li x28, 0xffffffff # initialize rs2
srl x19, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x3, 0x7ffffffe # initialize rs1
li x7, 0xfffffffe # initialize rs2
srl x23, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x27, 0x7ffffffe # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
srl x3, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x28, 0x7ffffffe # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
srl x10, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x1, 0x7ffffffe # initialize rs1
li x22, 0x55555555 # initialize rs2
srl x31, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x7, 0xffffffff # initialize rs1
li x3, 0x00000000 # initialize rs2
srl x24, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x18, 0xffffffff # initialize rs1
li x8, 0x00000001 # initialize rs2
srl x13, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x16, 0xffffffff # initialize rs1
li x13, 0x00000002 # initialize rs2
srl x22, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x11, 0xffffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
srl x22, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x22, 0xffffffff # initialize rs1
li x2, 0x80000001 # initialize rs2
srl x18, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x15, 0xffffffff # initialize rs1
li x16, 0x7fffffff # initialize rs2
srl x6, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x30, 0xffffffff # initialize rs1
li x28, 0x7ffffffe # initialize rs2
srl x20, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x21, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
srl x6, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x16, 0xffffffff # initialize rs1
li x15, 0xfffffffe # initialize rs2
srl x25, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x22, 0xffffffff # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
srl x20, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x28, 0xffffffff # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
srl x12, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x13, 0xffffffff # initialize rs1
li x1, 0x55555555 # initialize rs2
srl x23, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x7, 0xfffffffe # initialize rs1
li x12, 0x00000000 # initialize rs2
srl x6, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x12, 0xfffffffe # initialize rs1
li x6, 0x00000001 # initialize rs2
srl x1, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x8, 0xfffffffe # initialize rs1
li x3, 0x00000002 # initialize rs2
srl x14, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x16, 0xfffffffe # initialize rs1
li x17, 0x80000000 # initialize rs2
srl x21, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x20, 0xfffffffe # initialize rs1
li x5, 0x80000001 # initialize rs2
srl x21, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x9, 0xfffffffe # initialize rs1
li x28, 0x7fffffff # initialize rs2
srl x8, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x21, 0xfffffffe # initialize rs1
li x14, 0x7ffffffe # initialize rs2
srl x9, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x26, 0xfffffffe # initialize rs1
li x18, 0xffffffff # initialize rs2
srl x21, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x2, 0xfffffffe # initialize rs1
li x10, 0xfffffffe # initialize rs2
srl x6, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x18, 0xfffffffe # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
srl x19, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x22, 0xfffffffe # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
srl x26, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x24, 0xfffffffe # initialize rs1
li x1, 0x55555555 # initialize rs2
srl x21, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x20, 0x5bbc8872 # initialize rs1
li x5, 0x00000000 # initialize rs2
srl x26, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x20, 0x5bbc8872 # initialize rs1
li x18, 0x00000001 # initialize rs2
srl x2, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x19, 0x5bbc8872 # initialize rs1
li x23, 0x00000002 # initialize rs2
srl x13, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x6, 0x5bbc8872 # initialize rs1
li x21, 0x80000000 # initialize rs2
srl x8, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x5, 0x5bbc8872 # initialize rs1
li x6, 0x80000001 # initialize rs2
srl x7, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x28, 0x5bbc8872 # initialize rs1
li x2, 0x7fffffff # initialize rs2
srl x10, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x8, 0x5bbc8872 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
srl x25, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x14, 0x5bbc8872 # initialize rs1
li x6, 0xffffffff # initialize rs2
srl x5, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x30, 0x5bbc8872 # initialize rs1
li x13, 0xfffffffe # initialize rs2
srl x5, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x26, 0x5bbc8872 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
srl x11, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x18, 0x5bbc8872 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
srl x7, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x19, 0x5bbc8872 # initialize rs1
li x26, 0x55555555 # initialize rs2
srl x25, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x24, 0xaaaaaaaa # initialize rs1
li x20, 0x00000000 # initialize rs2
srl x9, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x28, 0xaaaaaaaa # initialize rs1
li x21, 0x00000001 # initialize rs2
srl x24, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x26, 0xaaaaaaaa # initialize rs1
li x20, 0x00000002 # initialize rs2
srl x19, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x23, 0xaaaaaaaa # initialize rs1
li x25, 0x80000000 # initialize rs2
srl x14, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x6, 0xaaaaaaaa # initialize rs1
li x23, 0x80000001 # initialize rs2
srl x20, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x16, 0xaaaaaaaa # initialize rs1
li x23, 0x7fffffff # initialize rs2
srl x30, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x23, 0xaaaaaaaa # initialize rs1
li x2, 0x7ffffffe # initialize rs2
srl x22, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x22, 0xaaaaaaaa # initialize rs1
li x12, 0xffffffff # initialize rs2
srl x9, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x7, 0xaaaaaaaa # initialize rs1
li x11, 0xfffffffe # initialize rs2
srl x9, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x22, 0xaaaaaaaa # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
srl x16, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x15, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
srl x28, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x24, 0xaaaaaaaa # initialize rs1
li x7, 0x55555555 # initialize rs2
srl x28, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x20, 0x55555555 # initialize rs1
li x22, 0x00000000 # initialize rs2
srl x29, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x15, 0x55555555 # initialize rs1
li x29, 0x00000001 # initialize rs2
srl x23, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x8, 0x55555555 # initialize rs1
li x31, 0x00000002 # initialize rs2
srl x24, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x15, 0x55555555 # initialize rs1
li x11, 0x80000000 # initialize rs2
srl x26, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x27, 0x55555555 # initialize rs1
li x14, 0x80000001 # initialize rs2
srl x28, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x11, 0x55555555 # initialize rs1
li x21, 0x7fffffff # initialize rs2
srl x7, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x5, 0x55555555 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
srl x18, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x11, 0x55555555 # initialize rs1
li x20, 0xffffffff # initialize rs2
srl x28, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x24, 0x55555555 # initialize rs1
li x6, 0xfffffffe # initialize rs2
srl x5, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x23, 0x55555555 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
srl x31, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x1, 0x55555555 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
srl x23, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x29, 0x55555555 # initialize rs1
li x25, 0x55555555 # initialize rs2
srl x13, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x4b0dfdc9 # initialize rs1
li x0, 0x31c57a46 # initialize rs2
srl x20, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x6825c49e # initialize rs1
li x1, 0xc7771e72 # initialize rs2
srl x5, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xf44e4185 # initialize rs1
li x2, 0x8c154da3 # initialize rs2
srl x15, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xed2905d4 # initialize rs1
li x3, 0x20804b68 # initialize rs2
srl x8, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb1c68a52 # initialize rs1
li x4, 0x0a14b5b3 # initialize rs2
srl x20, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x25e45873 # initialize rs1
li x5, 0xbb7ad379 # initialize rs2
srl x28, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2a7c3b0b # initialize rs1
li x6, 0x2c9b7222 # initialize rs2
srl x15, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4914d815 # initialize rs1
li x7, 0xc5362e1d # initialize rs2
srl x3, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x18a426e9 # initialize rs1
li x8, 0x46919b08 # initialize rs2
srl x5, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x2250dc63 # initialize rs1
li x9, 0x5cbc6065 # initialize rs2
srl x26, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x3bdf4b75 # initialize rs1
li x10, 0x9f99b23c # initialize rs2
srl x29, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xf7db3881 # initialize rs1
li x11, 0x976bc965 # initialize rs2
srl x14, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xdeb458bf # initialize rs1
li x12, 0x392ffc17 # initialize rs2
srl x3, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x12f6a358 # initialize rs1
li x13, 0xc37ea6ab # initialize rs2
srl x16, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x9b722409 # initialize rs1
li x14, 0x21eb220d # initialize rs2
srl x17, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x33796b05 # initialize rs1
li x15, 0x08e16b4e # initialize rs2
srl x18, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x41093c3d # initialize rs1
li x16, 0x7f593268 # initialize rs2
srl x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xe596085e # initialize rs1
li x17, 0xf8877c43 # initialize rs2
srl x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xc451e474 # initialize rs1
li x18, 0xf548f0cb # initialize rs2
srl x17, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x1942c53a # initialize rs1
li x19, 0xc7dca2d6 # initialize rs2
srl x8, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x89de9af2 # initialize rs1
li x20, 0xac697413 # initialize rs2
srl x10, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x93c1297e # initialize rs1
li x21, 0xd2cbae24 # initialize rs2
srl x18, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x41b79b73 # initialize rs1
li x22, 0x34688a54 # initialize rs2
srl x11, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x0f131b21 # initialize rs1
li x23, 0x004a87cf # initialize rs2
srl x31, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x4f1fc3f2 # initialize rs1
li x24, 0x46b37105 # initialize rs2
srl x25, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x688b113f # initialize rs1
li x25, 0x2a8b6bda # initialize rs2
srl x14, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xa1d4b156 # initialize rs1
li x26, 0x5fb5113a # initialize rs2
srl x8, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xee6a2fb7 # initialize rs1
li x27, 0xfdb76551 # initialize rs2
srl x30, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xf2437284 # initialize rs1
li x28, 0x8575febb # initialize rs2
srl x27, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x5b11175c # initialize rs1
li x29, 0xd99387d0 # initialize rs2
srl x3, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x71316fa6 # initialize rs1
li x30, 0x02b531df # initialize rs2
srl x24, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xda9a826e # initialize rs1
li x31, 0x18c3b2fd # initialize rs2
srl x5, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xb5caa14d # initialize rs1
li x16, 0x9baf57bd # initialize rs2
srl x0, x0, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x30054307 # initialize rs1
li x1, 0xeb191d17 # initialize rs2
srl x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x05574e07 # initialize rs1
li x27, 0x933bc0d1 # initialize rs2
srl x2, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xb9a18c41 # initialize rs1
li x3, 0x250ea981 # initialize rs2
srl x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9fa2509d # initialize rs1
li x15, 0xcb7dbb8d # initialize rs2
srl x4, x4, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdf7a7773 # initialize rs1
li x7, 0x052b31d4 # initialize rs2
srl x5, x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6683007b # initialize rs1
li x9, 0xd6b32ddf # initialize rs2
srl x6, x6, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x44b5c64f # initialize rs1
li x1, 0x672aa12e # initialize rs2
srl x7, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xeeecd050 # initialize rs1
li x29, 0x2f631de9 # initialize rs2
srl x8, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x8f473db1 # initialize rs1
li x13, 0x4f5040ab # initialize rs2
srl x9, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x065a1561 # initialize rs1
li x10, 0x8206b40e # initialize rs2
srl x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xdee2b216 # initialize rs1
li x2, 0x01583658 # initialize rs2
srl x11, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x5860b60e # initialize rs1
li x31, 0x8ce44039 # initialize rs2
srl x12, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x8c1d8bc7 # initialize rs1
li x12, 0xbf10d0a7 # initialize rs2
srl x13, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x8f4abab4 # initialize rs1
li x10, 0x96807721 # initialize rs2
srl x14, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x689498e7 # initialize rs1
li x12, 0x8a098e23 # initialize rs2
srl x15, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xfbd36010 # initialize rs1
li x13, 0x17f0f8f6 # initialize rs2
srl x16, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc66c6181 # initialize rs1
li x14, 0x74175803 # initialize rs2
srl x17, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x746dd855 # initialize rs1
li x20, 0xf26856c4 # initialize rs2
srl x18, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x422105ad # initialize rs1
li x25, 0x8a6db370 # initialize rs2
srl x19, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x9c022603 # initialize rs1
li x28, 0xe929748c # initialize rs2
srl x20, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x652b0b89 # initialize rs1
li x19, 0xd24d1004 # initialize rs2
srl x21, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xa247bdb4 # initialize rs1
li x9, 0xc5d48056 # initialize rs2
srl x22, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xe54b7433 # initialize rs1
li x3, 0xa96ce72f # initialize rs2
srl x23, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x1f838e12 # initialize rs1
li x12, 0x91e490bf # initialize rs2
srl x24, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xa293e0de # initialize rs1
li x15, 0x642d0eaa # initialize rs2
srl x25, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x3f8e4d90 # initialize rs1
li x9, 0xb587f805 # initialize rs2
srl x26, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x59fec408 # initialize rs1
li x11, 0x51905511 # initialize rs2
srl x27, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x41b18789 # initialize rs1
li x28, 0x3af1e6ba # initialize rs2
srl x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x22cd2173 # initialize rs1
li x15, 0x33d01f52 # initialize rs2
srl x29, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x8fa3b67c # initialize rs1
li x25, 0x407abe1a # initialize rs2
srl x30, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x73d462af # initialize rs1
li x7, 0x97df6dcf # initialize rs2
srl x31, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x7, 0x4626bc72 # initialize rs1
li x0, 0xf53fdd0d # initialize rs2
srl x0, x7, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x9, 0xd3425d8a # initialize rs1
li x1, 0xd3de9e71 # initialize rs2
srl x1, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x8, 0x3056e78c # initialize rs1
li x2, 0xae686581 # initialize rs2
srl x2, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x10, 0xac046f18 # initialize rs1
li x3, 0xa5a1a8b8 # initialize rs2
srl x3, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0x47991683 # initialize rs1
li x4, 0x83c83c3d # initialize rs2
srl x4, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0xeb07eea4 # initialize rs1
li x5, 0x83b3c354 # initialize rs2
srl x5, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0x433176b6 # initialize rs1
li x6, 0x0b88e2ed # initialize rs2
srl x6, x17, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0x74be2e3f # initialize rs1
li x7, 0xeb4d490e # initialize rs2
srl x7, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x25, 0x5b64222b # initialize rs1
li x8, 0x1188b49a # initialize rs2
srl x8, x25, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x7, 0x662c08b0 # initialize rs1
li x9, 0x9de7bd80 # initialize rs2
srl x9, x7, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x11, 0x0c07c15d # initialize rs1
li x10, 0x9aef445f # initialize rs2
srl x10, x11, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x29, 0x7f813315 # initialize rs1
li x11, 0xc518309b # initialize rs2
srl x11, x29, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x15, 0xcf46efaa # initialize rs1
li x12, 0x841e9412 # initialize rs2
srl x12, x15, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x3, 0x751acb28 # initialize rs1
li x13, 0xef275506 # initialize rs2
srl x13, x3, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x9, 0xc75c09c9 # initialize rs1
li x14, 0xa5f707b1 # initialize rs2
srl x14, x9, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x2, 0x0a02fe17 # initialize rs1
li x15, 0x3a0d308e # initialize rs2
srl x15, x2, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x22, 0x39a7eedf # initialize rs1
li x16, 0x4a9d8682 # initialize rs2
srl x16, x22, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x8, 0x92a34742 # initialize rs1
li x17, 0x52e9560d # initialize rs2
srl x17, x8, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x4, 0xa0e8a6b1 # initialize rs1
li x18, 0xd13ae2ec # initialize rs2
srl x18, x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x11, 0xe1dcfb10 # initialize rs1
li x19, 0x49efa9a0 # initialize rs2
srl x19, x11, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x8, 0x19b66545 # initialize rs1
li x20, 0x9d321621 # initialize rs2
srl x20, x8, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x8, 0x09d856c9 # initialize rs1
li x21, 0xfd237d57 # initialize rs2
srl x21, x8, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x28, 0x7f46a6af # initialize rs1
li x22, 0xe8f81913 # initialize rs2
srl x22, x28, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x20, 0x3fbd0362 # initialize rs1
li x23, 0x2df2ea57 # initialize rs2
srl x23, x20, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x20, 0xfdd978eb # initialize rs1
li x24, 0xea2b76ca # initialize rs2
srl x24, x20, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x4, 0xc896ccbd # initialize rs1
li x25, 0xfff2f3f0 # initialize rs2
srl x25, x4, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x31, 0x432e48b1 # initialize rs1
li x26, 0xa1a7a158 # initialize rs2
srl x26, x31, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x18, 0x1b6d3a2e # initialize rs1
li x27, 0x84399336 # initialize rs2
srl x27, x18, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x20, 0x6ebe07c6 # initialize rs1
li x28, 0x5f1be683 # initialize rs2
srl x28, x20, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x10, 0x33684858 # initialize rs1
li x29, 0x476e9a04 # initialize rs2
srl x29, x10, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x15, 0x07131fc8 # initialize rs1
li x30, 0x1bd6853a # initialize rs2
srl x30, x15, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x3, 0xecc385e9 # initialize rs1
li x31, 0x8d8367dc # initialize rs2
srl x31, x3, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x835de515 # initialize rs1
li x0, 0x3685b0c6 # initialize rs2
srl x0, x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xfa847ceb # initialize rs1
li x1, 0x936bbbb9 # initialize rs2
srl x1, x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x4a378f80 # initialize rs1
li x2, 0x0a25f846 # initialize rs2
srl x2, x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x01fb6fb6 # initialize rs1
li x3, 0x7b6bf532 # initialize rs2
srl x3, x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xeee4473b # initialize rs1
li x4, 0xe30a87d1 # initialize rs2
srl x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdb5e1176 # initialize rs1
li x5, 0x6ba31301 # initialize rs2
srl x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc045bee8 # initialize rs1
li x6, 0x2f8476d3 # initialize rs2
srl x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc219e16d # initialize rs1
li x7, 0xf13bc197 # initialize rs2
srl x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xb308c3c9 # initialize rs1
li x8, 0x4a27e74e # initialize rs2
srl x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x69d055b9 # initialize rs1
li x9, 0xbb315748 # initialize rs2
srl x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x4dfb00b5 # initialize rs1
li x10, 0xe21d797b # initialize rs2
srl x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x434f4df6 # initialize rs1
li x11, 0xbd5be0dc # initialize rs2
srl x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x0d49e607 # initialize rs1
li x12, 0xb2154553 # initialize rs2
srl x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x02fcbb39 # initialize rs1
li x13, 0x81241e29 # initialize rs2
srl x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x2c6ef6da # initialize rs1
li x14, 0x43cde75d # initialize rs2
srl x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xfac0aca0 # initialize rs1
li x15, 0x4d85f530 # initialize rs2
srl x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xdd244c1b # initialize rs1
li x16, 0x57c22273 # initialize rs2
srl x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xd719ebeb # initialize rs1
li x17, 0x32c81657 # initialize rs2
srl x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x2dfbfc48 # initialize rs1
li x18, 0x27ae1a09 # initialize rs2
srl x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x0f2725d6 # initialize rs1
li x19, 0x843f6080 # initialize rs2
srl x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x458a3a5b # initialize rs1
li x20, 0xd3a22fef # initialize rs2
srl x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xedc858b6 # initialize rs1
li x21, 0x7fa8ebc5 # initialize rs2
srl x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xa586a9df # initialize rs1
li x22, 0x2ecb2dbe # initialize rs2
srl x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x4859b7b5 # initialize rs1
li x23, 0x986ff502 # initialize rs2
srl x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xdd2910cf # initialize rs1
li x24, 0xf8f0ed03 # initialize rs2
srl x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x08085db4 # initialize rs1
li x25, 0xaf83927e # initialize rs2
srl x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x21ad6c62 # initialize rs1
li x26, 0xf4a691f8 # initialize rs2
srl x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x5a74c015 # initialize rs1
li x27, 0xfdb408a5 # initialize rs2
srl x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x326fd373 # initialize rs1
li x28, 0xdd2328de # initialize rs2
srl x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xad4aa3dc # initialize rs1
li x29, 0x2b315a7a # initialize rs2
srl x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x968e2051 # initialize rs1
li x30, 0xb136bd61 # initialize rs2
srl x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xf7420d99 # initialize rs1
li x31, 0x5df087b7 # initialize rs2
srl x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x30, x28 # perform first operation
srl x15, x12, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x1, x29 # perform first operation
srl x2, x23, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x22, x24 # perform first operation
srl x10, x27, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x25, x2 # perform first operation
srl x25, x26, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x7, x14 # perform first operation
srl x14, x20, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x27, x14 # perform first operation
srl x14, x23, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x11, x26 # perform first operation
srl x14, x3, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x26, x8 # perform first operation
srl x2, x13, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x15, x18 # perform first operation
srl x25, x13, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x9, x31 # perform first operation
srl x9, x19, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x18, x5 # perform first operation
srl x5, x28, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x14, x18 # perform first operation
srl x21, x23, x2 # perform second (triggering) operation

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
