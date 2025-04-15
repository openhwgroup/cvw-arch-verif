///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbb/WALLY-COV-min.S
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
li x0, 0x20ac6909 # initialize rs1
li x29, 0xe137f346 # initialize rs2
min x8, x0, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xc2f2f1c1 # initialize rs1
li x22, 0x4a8b5315 # initialize rs2
min x16, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x04264b73 # initialize rs1
li x3, 0xa6db8122 # initialize rs2
min x1, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xd07da235 # initialize rs1
li x24, 0xcbbfc365 # initialize rs2
min x10, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe1fa31da # initialize rs1
li x24, 0x87931d23 # initialize rs2
min x18, x4, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc7de24de # initialize rs1
li x27, 0x65d1a753 # initialize rs2
min x29, x5, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc7d996ca # initialize rs1
li x26, 0x11a35d6f # initialize rs2
min x31, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbc5d712c # initialize rs1
li x20, 0x821563ac # initialize rs2
min x31, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x08b94336 # initialize rs1
li x18, 0x15be1421 # initialize rs2
min x24, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xaf4438db # initialize rs1
li x25, 0xa96c8b49 # initialize rs2
min x31, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x6497ea2a # initialize rs1
li x8, 0x90bda890 # initialize rs2
min x12, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xc780168a # initialize rs1
li x17, 0xed8bfa26 # initialize rs2
min x22, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x6c90ea8a # initialize rs1
li x28, 0x5d6225f0 # initialize rs2
min x22, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xb8f8dd44 # initialize rs1
li x29, 0xafb7f412 # initialize rs2
min x19, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe961d247 # initialize rs1
li x18, 0x97021533 # initialize rs2
min x29, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1e98724e # initialize rs1
li x26, 0x577e4198 # initialize rs2
min x22, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xdfdc61f2 # initialize rs1
li x27, 0x54129001 # initialize rs2
min x19, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x3638a064 # initialize rs1
li x20, 0x4478b69d # initialize rs2
min x26, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x03265a3d # initialize rs1
li x27, 0x88348964 # initialize rs2
min x13, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x4a6e6454 # initialize rs1
li x28, 0x76360035 # initialize rs2
min x3, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x6a1942be # initialize rs1
li x22, 0x57abe053 # initialize rs2
min x11, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x2e786703 # initialize rs1
li x3, 0xea84d00e # initialize rs2
min x29, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x278653e1 # initialize rs1
li x30, 0x380bd08f # initialize rs2
min x14, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x71605c25 # initialize rs1
li x22, 0x6bde0dd8 # initialize rs2
min x11, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xaabae2dc # initialize rs1
li x9, 0x3c9d0a64 # initialize rs2
min x28, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xc84713ba # initialize rs1
li x13, 0x641b9eab # initialize rs2
min x31, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xa2f2be00 # initialize rs1
li x11, 0x4732bb47 # initialize rs2
min x15, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd302d97c # initialize rs1
li x19, 0x549ca34b # initialize rs2
min x29, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x3c8a2982 # initialize rs1
li x15, 0x03293d74 # initialize rs2
min x13, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x20cfdb3a # initialize rs1
li x8, 0x9fd373fe # initialize rs2
min x27, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x458c2ac3 # initialize rs1
li x7, 0xbc57accd # initialize rs2
min x14, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x06698bb8 # initialize rs1
li x23, 0x7bfeba73 # initialize rs2
min x1, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x5, 0x5cf0c1f9 # initialize rs1
li x0, 0x70f3ac4a # initialize rs2
min x2, x5, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x31, 0xbeafa608 # initialize rs1
li x1, 0x79797d17 # initialize rs2
min x12, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x13, 0xf4117ae7 # initialize rs1
li x2, 0xbe4a942b # initialize rs2
min x29, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x10, 0xbb29b2c9 # initialize rs1
li x3, 0x34c184e3 # initialize rs2
min x11, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x2da1b417 # initialize rs1
li x4, 0xde9aa8b2 # initialize rs2
min x21, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
li x1, 0x6049125b # initialize rs1
li x5, 0xce2476ad # initialize rs2
min x10, x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x11, 0x88c7cdb5 # initialize rs1
li x6, 0xeab05a9c # initialize rs2
min x10, x11, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0x683e8560 # initialize rs1
li x7, 0x7ce6a021 # initialize rs2
min x8, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x14, 0x715a13e2 # initialize rs1
li x8, 0x665c18eb # initialize rs2
min x13, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x13, 0x91ad005d # initialize rs1
li x9, 0xa0a3606b # initialize rs2
min x17, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x19, 0x6a63c895 # initialize rs1
li x10, 0xab5d08f7 # initialize rs2
min x29, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x20, 0x47d82555 # initialize rs1
li x11, 0x4eeefca7 # initialize rs2
min x23, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x10, 0x2cbd7490 # initialize rs1
li x12, 0x56a6d365 # initialize rs2
min x6, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x17, 0x5d8fb848 # initialize rs1
li x13, 0x4681894e # initialize rs2
min x27, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x21, 0xceb4f719 # initialize rs1
li x14, 0x1a83ba22 # initialize rs2
min x20, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x13, 0x2de9cded # initialize rs1
li x15, 0xf066c4bc # initialize rs2
min x1, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x30, 0x5d679169 # initialize rs1
li x16, 0x54632763 # initialize rs2
min x9, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0x3a3f4b75 # initialize rs1
li x17, 0xb3864284 # initialize rs2
min x2, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0x5b32cf03 # initialize rs1
li x18, 0xa68e252f # initialize rs2
min x12, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x23, 0x83240b87 # initialize rs1
li x19, 0xa6b1965e # initialize rs2
min x11, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0x990f9b06 # initialize rs1
li x20, 0xa1a56e97 # initialize rs2
min x3, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x12, 0x247bb9d4 # initialize rs1
li x21, 0x5e8ae9af # initialize rs2
min x16, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x10, 0x20f10231 # initialize rs1
li x22, 0x043b7abd # initialize rs2
min x11, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x20, 0x6623aa60 # initialize rs1
li x23, 0x92c4f993 # initialize rs2
min x12, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x18, 0x185fa368 # initialize rs1
li x24, 0x69b9921c # initialize rs2
min x23, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x15, 0x1d1e76c0 # initialize rs1
li x25, 0x71bbd309 # initialize rs2
min x16, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x22, 0xde9f3e8e # initialize rs1
li x26, 0x99d362b8 # initialize rs2
min x28, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x11, 0x007f6314 # initialize rs1
li x27, 0x3e87e1f7 # initialize rs2
min x21, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x1, 0x84b4ca41 # initialize rs1
li x28, 0x42ef39b4 # initialize rs2
min x30, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x12, 0x08928f95 # initialize rs1
li x29, 0x4e70d3a2 # initialize rs2
min x5, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x31, 0x869d8ef2 # initialize rs1
li x30, 0x0a299e27 # initialize rs2
min x14, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x22, 0xfca8e678 # initialize rs1
li x31, 0xaa520705 # initialize rs2
min x12, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 252)

# Testcase cp_rd (Test destination rd = x0)
li x2, 0x8325dae0 # initialize rs1
li x11, 0xc3e2842d # initialize rs2
min x0, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x5, 0x5a85b1a9 # initialize rs1
li x11, 0x6cd99c8d # initialize rs2
min x1, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x15, 0x909f3c2f # initialize rs1
li x25, 0x9dd2be43 # initialize rs2
min x2, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0x119d4120 # initialize rs1
li x21, 0x2b9994fd # initialize rs2
min x3, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0x0c37f14a # initialize rs1
li x18, 0xc6740532 # initialize rs2
min x4, x30, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x22, 0x04ff760b # initialize rs1
li x18, 0x28f2c407 # initialize rs2
min x5, x22, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0xc47b83bc # initialize rs1
li x8, 0xb92ba0f2 # initialize rs2
min x6, x13, x8 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x075fb3ed # initialize rs1
li x10, 0x7fb0689c # initialize rs2
min x7, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x27, 0xb10e5434 # initialize rs1
li x3, 0x21d00b14 # initialize rs2
min x8, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x11, 0x6876af35 # initialize rs1
li x12, 0x2a6881e1 # initialize rs2
min x9, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x15, 0x56618f55 # initialize rs1
li x13, 0x74aaa7b4 # initialize rs2
min x10, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x17, 0xf9dff1b1 # initialize rs1
li x27, 0xb1f229ca # initialize rs2
min x11, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x15, 0xb299270a # initialize rs1
li x29, 0x766d3942 # initialize rs2
min x12, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x21, 0xb19b4a52 # initialize rs1
li x12, 0x5ca62f1f # initialize rs2
min x13, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0xcb6dfa1e # initialize rs1
li x25, 0xbf447308 # initialize rs2
min x14, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x16, 0x4bd3263b # initialize rs1
li x12, 0x1520cd84 # initialize rs2
min x15, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x21, 0x03757999 # initialize rs1
li x27, 0xd36671b2 # initialize rs2
min x16, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x20, 0x54b5b1a6 # initialize rs1
li x17, 0x6816da13 # initialize rs2
min x17, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x24, 0x620d212d # initialize rs1
li x10, 0xa4f24ac0 # initialize rs2
min x18, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x9, 0xee66ddd4 # initialize rs1
li x22, 0xfb13c11b # initialize rs2
min x19, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x17, 0x25c43161 # initialize rs1
li x7, 0x6bbb1b19 # initialize rs2
min x20, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0x1ecca8ad # initialize rs1
li x18, 0x4eac73a1 # initialize rs2
min x21, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x27, 0xce4279b9 # initialize rs1
li x15, 0x1e547d75 # initialize rs2
min x22, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x29, 0x2178596d # initialize rs1
li x28, 0x0806ee4e # initialize rs2
min x23, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x31, 0x52c5cbfb # initialize rs1
li x13, 0x19e8a1ba # initialize rs2
min x24, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x6, 0x988a4fe4 # initialize rs1
li x20, 0xe6c263df # initialize rs2
min x25, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x6, 0x5045cff7 # initialize rs1
li x8, 0x3839e155 # initialize rs2
min x26, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x23, 0x302f478d # initialize rs1
li x14, 0x3505f9c3 # initialize rs2
min x27, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x3, 0x200388a8 # initialize rs1
li x29, 0x778b4672 # initialize rs2
min x28, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x15, 0x85787714 # initialize rs1
li x22, 0xb67492c1 # initialize rs2
min x29, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x28, 0x1a96b865 # initialize rs1
li x26, 0xb5cbbc56 # initialize rs2
min x30, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x1, 0x2b839680 # initialize rs1
li x27, 0x20895b39 # initialize rs2
min x31, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x12, 0x00000000 # initialize rs1
li x8, 0x7e940ee5 # initialize rs2
min x2, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x2, 0x00000001 # initialize rs1
li x27, 0x5bc3c41d # initialize rs2
min x24, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x22, 0x00000002 # initialize rs1
li x19, 0x6c82729f # initialize rs2
min x12, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x25, 0x80000000 # initialize rs1
li x23, 0x530553c6 # initialize rs2
min x11, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x10, 0x80000001 # initialize rs1
li x3, 0x843b8016 # initialize rs2
min x16, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x30, 0x7fffffff # initialize rs1
li x1, 0x275c7f80 # initialize rs2
min x21, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x28, 0x7ffffffe # initialize rs1
li x5, 0xcbf11977 # initialize rs2
min x15, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x26, 0xffffffff # initialize rs1
li x29, 0x9acb1833 # initialize rs2
min x28, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x7, 0xfffffffe # initialize rs1
li x17, 0x86adca06 # initialize rs2
min x11, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x10, 0x5bbc8872 # initialize rs1
li x22, 0x3b93acdb # initialize rs2
min x30, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x20, 0xaaaaaaaa # initialize rs1
li x5, 0x37f90299 # initialize rs2
min x12, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x8, 0x55555555 # initialize rs1
li x1, 0x5ab0b19f # initialize rs2
min x15, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x26, 0x8a1ca662 # initialize rs1
li x2, 0x00000000 # initialize rs2
min x30, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x30, 0x93a69b9c # initialize rs1
li x5, 0x00000001 # initialize rs2
min x12, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x11, 0x8f9600f1 # initialize rs1
li x26, 0x00000002 # initialize rs2
min x14, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x12, 0x1f054e2e # initialize rs1
li x28, 0x80000000 # initialize rs2
min x6, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x15, 0x578f3d9e # initialize rs1
li x22, 0x80000001 # initialize rs2
min x18, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x22, 0x2dbee42f # initialize rs1
li x15, 0x7fffffff # initialize rs2
min x13, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x13, 0xe420ee75 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
min x14, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x15, 0x82ac5d49 # initialize rs1
li x12, 0xffffffff # initialize rs2
min x18, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x16, 0x2ff3a075 # initialize rs1
li x11, 0xfffffffe # initialize rs2
min x3, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x29, 0x681288cc # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
min x22, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x31, 0x51f5d85e # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
min x17, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x3, 0xf5467540 # initialize rs1
li x22, 0x55555555 # initialize rs2
min x23, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
min x17, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x21, 0x00000000 # initialize rs1
li x3, 0x00000001 # initialize rs2
min x14, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x28, 0x00000000 # initialize rs1
li x20, 0x00000002 # initialize rs2
min x11, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x2, 0x00000000 # initialize rs1
li x22, 0x80000000 # initialize rs2
min x12, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x8, 0x00000000 # initialize rs1
li x15, 0x80000001 # initialize rs2
min x22, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x21, 0x00000000 # initialize rs1
li x31, 0x7fffffff # initialize rs2
min x12, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x19, 0x00000000 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
min x16, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x22, 0x00000000 # initialize rs1
li x20, 0xffffffff # initialize rs2
min x16, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x2, 0x00000000 # initialize rs1
li x20, 0xfffffffe # initialize rs2
min x27, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x24, 0x00000000 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
min x30, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x13, 0x00000000 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
min x2, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x11, 0x00000000 # initialize rs1
li x7, 0x55555555 # initialize rs2
min x23, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x26, 0x00000001 # initialize rs1
li x22, 0x00000000 # initialize rs2
min x24, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x26, 0x00000001 # initialize rs1
li x21, 0x00000001 # initialize rs2
min x1, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x14, 0x00000001 # initialize rs1
li x13, 0x00000002 # initialize rs2
min x22, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x17, 0x00000001 # initialize rs1
li x20, 0x80000000 # initialize rs2
min x1, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x30, 0x00000001 # initialize rs1
li x7, 0x80000001 # initialize rs2
min x9, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x27, 0x00000001 # initialize rs1
li x7, 0x7fffffff # initialize rs2
min x12, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x2, 0x00000001 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
min x27, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x1, 0x00000001 # initialize rs1
li x3, 0xffffffff # initialize rs2
min x11, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x20, 0x00000001 # initialize rs1
li x26, 0xfffffffe # initialize rs2
min x13, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x8, 0x00000001 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
min x6, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x13, 0x00000001 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
min x15, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x31, 0x00000001 # initialize rs1
li x12, 0x55555555 # initialize rs2
min x27, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x3, 0x00000002 # initialize rs1
li x23, 0x00000000 # initialize rs2
min x13, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x25, 0x00000002 # initialize rs1
li x17, 0x00000001 # initialize rs2
min x22, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x24, 0x00000002 # initialize rs1
li x18, 0x00000002 # initialize rs2
min x6, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x18, 0x00000002 # initialize rs1
li x31, 0x80000000 # initialize rs2
min x19, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x27, 0x00000002 # initialize rs1
li x28, 0x80000001 # initialize rs2
min x13, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x19, 0x00000002 # initialize rs1
li x22, 0x7fffffff # initialize rs2
min x10, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x16, 0x00000002 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
min x25, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x14, 0x00000002 # initialize rs1
li x16, 0xffffffff # initialize rs2
min x22, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x12, 0x00000002 # initialize rs1
li x8, 0xfffffffe # initialize rs2
min x3, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x27, 0x00000002 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
min x9, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x1, 0x00000002 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
min x11, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x31, 0x00000002 # initialize rs1
li x24, 0x55555555 # initialize rs2
min x10, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x11, 0x80000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
min x5, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x24, 0x80000000 # initialize rs1
li x10, 0x00000001 # initialize rs2
min x21, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x23, 0x80000000 # initialize rs1
li x25, 0x00000002 # initialize rs2
min x16, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x31, 0x80000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
min x14, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x8, 0x80000000 # initialize rs1
li x9, 0x80000001 # initialize rs2
min x10, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x5, 0x80000000 # initialize rs1
li x23, 0x7fffffff # initialize rs2
min x13, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x22, 0x80000000 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
min x9, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x8, 0x80000000 # initialize rs1
li x24, 0xffffffff # initialize rs2
min x30, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x21, 0x80000000 # initialize rs1
li x6, 0xfffffffe # initialize rs2
min x10, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x30, 0x80000000 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
min x14, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x19, 0x80000000 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
min x20, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x22, 0x80000000 # initialize rs1
li x3, 0x55555555 # initialize rs2
min x1, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x15, 0x80000001 # initialize rs1
li x5, 0x00000000 # initialize rs2
min x28, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x23, 0x80000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
min x11, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x5, 0x80000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
min x24, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x23, 0x80000001 # initialize rs1
li x31, 0x80000000 # initialize rs2
min x8, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x18, 0x80000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
min x21, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x13, 0x80000001 # initialize rs1
li x19, 0x7fffffff # initialize rs2
min x29, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x28, 0x80000001 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
min x19, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x9, 0x80000001 # initialize rs1
li x3, 0xffffffff # initialize rs2
min x1, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x14, 0x80000001 # initialize rs1
li x23, 0xfffffffe # initialize rs2
min x17, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x6, 0x80000001 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
min x13, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x25, 0x80000001 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
min x3, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x14, 0x80000001 # initialize rs1
li x17, 0x55555555 # initialize rs2
min x21, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x5, 0x7fffffff # initialize rs1
li x14, 0x00000000 # initialize rs2
min x18, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x25, 0x7fffffff # initialize rs1
li x6, 0x00000001 # initialize rs2
min x7, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x30, 0x7fffffff # initialize rs1
li x1, 0x00000002 # initialize rs2
min x18, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x30, 0x7fffffff # initialize rs1
li x3, 0x80000000 # initialize rs2
min x13, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x21, 0x7fffffff # initialize rs1
li x27, 0x80000001 # initialize rs2
min x20, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x2, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
min x29, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x29, 0x7fffffff # initialize rs1
li x20, 0x7ffffffe # initialize rs2
min x18, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x17, 0x7fffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
min x19, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x16, 0x7fffffff # initialize rs1
li x26, 0xfffffffe # initialize rs2
min x20, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x28, 0x7fffffff # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
min x16, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x27, 0x7fffffff # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
min x17, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x7, 0x7fffffff # initialize rs1
li x2, 0x55555555 # initialize rs2
min x1, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x13, 0x7ffffffe # initialize rs1
li x10, 0x00000000 # initialize rs2
min x2, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x31, 0x7ffffffe # initialize rs1
li x23, 0x00000001 # initialize rs2
min x14, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x20, 0x7ffffffe # initialize rs1
li x18, 0x00000002 # initialize rs2
min x2, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x2, 0x7ffffffe # initialize rs1
li x1, 0x80000000 # initialize rs2
min x17, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x3, 0x7ffffffe # initialize rs1
li x27, 0x80000001 # initialize rs2
min x13, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x13, 0x7ffffffe # initialize rs1
li x8, 0x7fffffff # initialize rs2
min x6, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x7, 0x7ffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
min x31, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x12, 0x7ffffffe # initialize rs1
li x7, 0xffffffff # initialize rs2
min x15, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x15, 0x7ffffffe # initialize rs1
li x26, 0xfffffffe # initialize rs2
min x16, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x24, 0x7ffffffe # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
min x21, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x14, 0x7ffffffe # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
min x11, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x10, 0x7ffffffe # initialize rs1
li x29, 0x55555555 # initialize rs2
min x22, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x11, 0xffffffff # initialize rs1
li x16, 0x00000000 # initialize rs2
min x20, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x8, 0xffffffff # initialize rs1
li x22, 0x00000001 # initialize rs2
min x15, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x18, 0xffffffff # initialize rs1
li x30, 0x00000002 # initialize rs2
min x6, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x27, 0xffffffff # initialize rs1
li x5, 0x80000000 # initialize rs2
min x15, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x31, 0xffffffff # initialize rs1
li x30, 0x80000001 # initialize rs2
min x8, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x13, 0xffffffff # initialize rs1
li x31, 0x7fffffff # initialize rs2
min x28, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x1, 0xffffffff # initialize rs1
li x6, 0x7ffffffe # initialize rs2
min x25, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x28, 0xffffffff # initialize rs1
li x30, 0xffffffff # initialize rs2
min x31, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x15, 0xffffffff # initialize rs1
li x28, 0xfffffffe # initialize rs2
min x5, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x30, 0xffffffff # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
min x10, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x17, 0xffffffff # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
min x16, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x2, 0xffffffff # initialize rs1
li x24, 0x55555555 # initialize rs2
min x28, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x25, 0xfffffffe # initialize rs1
li x30, 0x00000000 # initialize rs2
min x22, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x1, 0xfffffffe # initialize rs1
li x21, 0x00000001 # initialize rs2
min x16, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x27, 0xfffffffe # initialize rs1
li x25, 0x00000002 # initialize rs2
min x13, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x5, 0xfffffffe # initialize rs1
li x30, 0x80000000 # initialize rs2
min x18, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x17, 0xfffffffe # initialize rs1
li x12, 0x80000001 # initialize rs2
min x27, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x15, 0xfffffffe # initialize rs1
li x2, 0x7fffffff # initialize rs2
min x6, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x21, 0xfffffffe # initialize rs1
li x19, 0x7ffffffe # initialize rs2
min x8, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x23, 0xfffffffe # initialize rs1
li x31, 0xffffffff # initialize rs2
min x1, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x30, 0xfffffffe # initialize rs1
li x2, 0xfffffffe # initialize rs2
min x13, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x19, 0xfffffffe # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
min x31, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x14, 0xfffffffe # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
min x15, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x16, 0xfffffffe # initialize rs1
li x24, 0x55555555 # initialize rs2
min x22, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x25, 0x5bbc8872 # initialize rs1
li x28, 0x00000000 # initialize rs2
min x10, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x20, 0x5bbc8872 # initialize rs1
li x31, 0x00000001 # initialize rs2
min x3, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x1, 0x5bbc8872 # initialize rs1
li x17, 0x00000002 # initialize rs2
min x13, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x7, 0x5bbc8872 # initialize rs1
li x31, 0x80000000 # initialize rs2
min x25, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x5, 0x5bbc8872 # initialize rs1
li x17, 0x80000001 # initialize rs2
min x2, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x19, 0x5bbc8872 # initialize rs1
li x25, 0x7fffffff # initialize rs2
min x26, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x26, 0x5bbc8872 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
min x28, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x16, 0x5bbc8872 # initialize rs1
li x6, 0xffffffff # initialize rs2
min x1, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x31, 0x5bbc8872 # initialize rs1
li x24, 0xfffffffe # initialize rs2
min x16, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x5, 0x5bbc8872 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
min x20, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x8, 0x5bbc8872 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
min x9, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x28, 0x5bbc8872 # initialize rs1
li x19, 0x55555555 # initialize rs2
min x13, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x30, 0xaaaaaaaa # initialize rs1
li x9, 0x00000000 # initialize rs2
min x22, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x16, 0xaaaaaaaa # initialize rs1
li x31, 0x00000001 # initialize rs2
min x23, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x31, 0xaaaaaaaa # initialize rs1
li x5, 0x00000002 # initialize rs2
min x8, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x26, 0xaaaaaaaa # initialize rs1
li x14, 0x80000000 # initialize rs2
min x19, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x9, 0xaaaaaaaa # initialize rs1
li x27, 0x80000001 # initialize rs2
min x20, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x26, 0xaaaaaaaa # initialize rs1
li x5, 0x7fffffff # initialize rs2
min x19, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x8, 0xaaaaaaaa # initialize rs1
li x21, 0x7ffffffe # initialize rs2
min x9, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x18, 0xaaaaaaaa # initialize rs1
li x31, 0xffffffff # initialize rs2
min x5, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x9, 0xaaaaaaaa # initialize rs1
li x10, 0xfffffffe # initialize rs2
min x23, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x22, 0xaaaaaaaa # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
min x9, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
min x11, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x25, 0xaaaaaaaa # initialize rs1
li x5, 0x55555555 # initialize rs2
min x3, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x31, 0x55555555 # initialize rs1
li x13, 0x00000000 # initialize rs2
min x3, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x23, 0x55555555 # initialize rs1
li x16, 0x00000001 # initialize rs2
min x28, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x6, 0x55555555 # initialize rs1
li x14, 0x00000002 # initialize rs2
min x9, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x30, 0x55555555 # initialize rs1
li x11, 0x80000000 # initialize rs2
min x28, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x23, 0x55555555 # initialize rs1
li x14, 0x80000001 # initialize rs2
min x29, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x1, 0x55555555 # initialize rs1
li x25, 0x7fffffff # initialize rs2
min x14, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x16, 0x55555555 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
min x1, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x14, 0x55555555 # initialize rs1
li x16, 0xffffffff # initialize rs2
min x21, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x7, 0x55555555 # initialize rs1
li x19, 0xfffffffe # initialize rs2
min x18, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x14, 0x55555555 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
min x5, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x24, 0x55555555 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
min x22, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x15, 0x55555555 # initialize rs1
li x9, 0x55555555 # initialize rs2
min x11, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x899b680c # initialize rs1
li x0, 0x37deb585 # initialize rs2
min x11, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xfddd7236 # initialize rs1
li x1, 0x9b0fdae1 # initialize rs2
min x22, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x94c648bb # initialize rs1
li x2, 0x3a3a8ae5 # initialize rs2
min x26, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x754dcfc7 # initialize rs1
li x3, 0x6724bad5 # initialize rs2
min x27, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xfe26d1bb # initialize rs1
li x4, 0xb3915a1d # initialize rs2
min x19, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x07ef3857 # initialize rs1
li x5, 0x23c841e4 # initialize rs2
min x15, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x71e90f3c # initialize rs1
li x6, 0xfec5023d # initialize rs2
min x1, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x1, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x69bb8b00 # initialize rs1
li x7, 0x30d77ba8 # initialize rs2
min x11, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x2be50212 # initialize rs1
li x8, 0xccba03f7 # initialize rs2
min x27, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xc0b963cb # initialize rs1
li x9, 0xe05dde3b # initialize rs2
min x5, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xa914acd0 # initialize rs1
li x10, 0x7942fd06 # initialize rs2
min x29, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xe7e23e67 # initialize rs1
li x11, 0x7125bc41 # initialize rs2
min x8, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xbf4eac62 # initialize rs1
li x12, 0xd85fef10 # initialize rs2
min x29, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x34c32eab # initialize rs1
li x13, 0x0d75518a # initialize rs2
min x14, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x1145a04a # initialize rs1
li x14, 0x3334eea9 # initialize rs2
min x23, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x82b38909 # initialize rs1
li x15, 0xd03d7738 # initialize rs2
min x31, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x6bef9a8a # initialize rs1
li x16, 0x7297c523 # initialize rs2
min x12, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x420dd92d # initialize rs1
li x17, 0xa231f794 # initialize rs2
min x14, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x6e4b4f97 # initialize rs1
li x18, 0x1a07bbe6 # initialize rs2
min x9, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xcb780a2b # initialize rs1
li x19, 0xcbda3ef4 # initialize rs2
min x3, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x12a05587 # initialize rs1
li x20, 0xcaede6c7 # initialize rs2
min x21, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x01c468b2 # initialize rs1
li x21, 0xe59be2a4 # initialize rs2
min x12, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xdd7a2ead # initialize rs1
li x22, 0xf9eb9814 # initialize rs2
min x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x8a705727 # initialize rs1
li x23, 0x72041000 # initialize rs2
min x10, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x73b1ec80 # initialize rs1
li x24, 0x4483d517 # initialize rs2
min x9, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xc58b53cc # initialize rs1
li x25, 0x06a699a1 # initialize rs2
min x9, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x9982f546 # initialize rs1
li x26, 0x87186273 # initialize rs2
min x10, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x0c49d309 # initialize rs1
li x27, 0x9ac237cd # initialize rs2
min x2, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x79913fa7 # initialize rs1
li x28, 0x444234a7 # initialize rs2
min x5, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xb9ea144f # initialize rs1
li x29, 0xc5fd81d8 # initialize rs2
min x27, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xce577888 # initialize rs1
li x30, 0xd2c62229 # initialize rs2
min x31, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xaa1475b0 # initialize rs1
li x31, 0xa6410ca4 # initialize rs2
min x25, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x21b989c9 # initialize rs1
li x12, 0x8e27abf9 # initialize rs2
min x0, x0, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x7e39c1dd # initialize rs1
li x1, 0xe4bc44d3 # initialize rs2
min x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x452e8d5b # initialize rs1
li x22, 0xc1e0de78 # initialize rs2
min x2, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xba345c8c # initialize rs1
li x23, 0x4d177128 # initialize rs2
min x3, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8afd0a7f # initialize rs1
li x19, 0x140de685 # initialize rs2
min x4, x4, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbe72593b # initialize rs1
li x11, 0x1c627e74 # initialize rs2
min x5, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x715c29b0 # initialize rs1
li x3, 0xb5683cb4 # initialize rs2
min x6, x6, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3c72b279 # initialize rs1
li x25, 0xaf42fb41 # initialize rs2
min x7, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x70be8123 # initialize rs1
li x5, 0x7fc0d84d # initialize rs2
min x8, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x9998fe5a # initialize rs1
li x21, 0xba60177e # initialize rs2
min x9, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xbf804e53 # initialize rs1
li x10, 0x84b25f32 # initialize rs2
min x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x8e336c0d # initialize rs1
li x12, 0x71b96852 # initialize rs2
min x11, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x42568af3 # initialize rs1
li x1, 0x5de9019f # initialize rs2
min x12, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x59ae00b1 # initialize rs1
li x20, 0xfcb80029 # initialize rs2
min x13, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xb56dc089 # initialize rs1
li x18, 0xc359756c # initialize rs2
min x14, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x2544569e # initialize rs1
li x15, 0x35dd8dba # initialize rs2
min x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x60c1c3ee # initialize rs1
li x24, 0xa4af51f4 # initialize rs2
min x16, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x6696a3fa # initialize rs1
li x29, 0x2da62017 # initialize rs2
min x17, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xdc2e0405 # initialize rs1
li x30, 0x241d2924 # initialize rs2
min x18, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x614a8e40 # initialize rs1
li x8, 0xdac990ab # initialize rs2
min x19, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa4c5a0ea # initialize rs1
li x8, 0xc95b9057 # initialize rs2
min x20, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x90f49af5 # initialize rs1
li x7, 0xe2ebd5af # initialize rs2
min x21, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x5b81ef80 # initialize rs1
li x27, 0x29e33143 # initialize rs2
min x22, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x401cf747 # initialize rs1
li x1, 0x18a366e2 # initialize rs2
min x23, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xff2d8155 # initialize rs1
li x1, 0x3c9d0ece # initialize rs2
min x24, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x9f2d136e # initialize rs1
li x14, 0x0827eccb # initialize rs2
min x25, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x9aaa7402 # initialize rs1
li x9, 0x11af36a6 # initialize rs2
min x26, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xd25e3838 # initialize rs1
li x29, 0x1ed18ea4 # initialize rs2
min x27, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x303c701e # initialize rs1
li x25, 0x769e5bfb # initialize rs2
min x28, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x0db9f851 # initialize rs1
li x20, 0xc95be988 # initialize rs2
min x29, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x136a749f # initialize rs1
li x7, 0x02d17be8 # initialize rs2
min x30, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x527b3af6 # initialize rs1
li x14, 0xa1f10767 # initialize rs2
min x31, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x1, 0x5714c60b # initialize rs1
li x0, 0x648a9f4c # initialize rs2
min x0, x1, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x8, 0xef4fc7cb # initialize rs1
li x1, 0x4ea84eaa # initialize rs2
min x1, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x8, 0xd4fa9bfc # initialize rs1
li x2, 0x54ca80bd # initialize rs2
min x2, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x9, 0xdb41f675 # initialize rs1
li x3, 0xf303fe88 # initialize rs2
min x3, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0xaf7644e5 # initialize rs1
li x4, 0xcbe40ef0 # initialize rs2
min x4, x24, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x983547d7 # initialize rs1
li x5, 0x4dec3a00 # initialize rs2
min x5, x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x3563b844 # initialize rs1
li x6, 0x8293df10 # initialize rs2
min x6, x1, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0x0cb86237 # initialize rs1
li x7, 0xa98ef7cc # initialize rs2
min x7, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x16, 0xbc7530a0 # initialize rs1
li x8, 0x86feba40 # initialize rs2
min x8, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x15, 0x15338358 # initialize rs1
li x9, 0x4277c572 # initialize rs2
min x9, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x16, 0x97f446f7 # initialize rs1
li x10, 0xeb313025 # initialize rs2
min x10, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x1, 0xdda15c9f # initialize rs1
li x11, 0x7ddb62bc # initialize rs2
min x11, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x13, 0x2c1684a8 # initialize rs1
li x12, 0xf3645a1d # initialize rs2
min x12, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x9, 0xa489882f # initialize rs1
li x13, 0x4f59536a # initialize rs2
min x13, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x9, 0x04a2ce3d # initialize rs1
li x14, 0xe1d2b5ac # initialize rs2
min x14, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x1, 0x0f4b2350 # initialize rs1
li x15, 0x29f7bb51 # initialize rs2
min x15, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x31, 0xf6bdeab7 # initialize rs1
li x16, 0x7df4c786 # initialize rs2
min x16, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x14, 0xcfb472b3 # initialize rs1
li x17, 0xe52e4eaa # initialize rs2
min x17, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x30, 0xcfe204b8 # initialize rs1
li x18, 0xb2932e3e # initialize rs2
min x18, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x3, 0xc2ab37ba # initialize rs1
li x19, 0x19b85816 # initialize rs2
min x19, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x3, 0xa5980d18 # initialize rs1
li x20, 0x35156466 # initialize rs2
min x20, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x14, 0x5bb1a63b # initialize rs1
li x21, 0x69bfebdd # initialize rs2
min x21, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x25, 0xbb5e38c0 # initialize rs1
li x22, 0x0f393eec # initialize rs2
min x22, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xd9aad065 # initialize rs1
li x23, 0xe0d79219 # initialize rs2
min x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x27, 0xb1d800af # initialize rs1
li x24, 0xea8d93ae # initialize rs2
min x24, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x337554f6 # initialize rs1
li x25, 0x31851b92 # initialize rs2
min x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x27, 0x41701b79 # initialize rs1
li x26, 0xb56e6998 # initialize rs2
min x26, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x13, 0x90e53dbd # initialize rs1
li x27, 0x7fe7935e # initialize rs2
min x27, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x24, 0x26206dce # initialize rs1
li x28, 0xcc0c8ee9 # initialize rs2
min x28, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x13, 0xea9f66b8 # initialize rs1
li x29, 0x875eb669 # initialize rs2
min x29, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x2a7496ea # initialize rs1
li x30, 0x085549bb # initialize rs2
min x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x10, 0x160e37cd # initialize rs1
li x31, 0xf761fd37 # initialize rs2
min x31, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe7c00985 # initialize rs1
li x0, 0x2e2f9573 # initialize rs2
min x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xcae18239 # initialize rs1
li x1, 0x05d4ad4b # initialize rs2
min x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xe68029f2 # initialize rs1
li x2, 0x77687ac8 # initialize rs2
min x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xb26472b3 # initialize rs1
li x3, 0x9cbd27c0 # initialize rs2
min x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9a3093d0 # initialize rs1
li x4, 0xefc78032 # initialize rs2
min x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbd000a16 # initialize rs1
li x5, 0x3c550dd8 # initialize rs2
min x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe30a855c # initialize rs1
li x6, 0x5769c758 # initialize rs2
min x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x30c8e544 # initialize rs1
li x7, 0xd321615a # initialize rs2
min x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xe0b5903b # initialize rs1
li x8, 0x431a86fc # initialize rs2
min x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x9c863bf3 # initialize rs1
li x9, 0x7227bf1a # initialize rs2
min x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x6db7f7cc # initialize rs1
li x10, 0x1cf8eb49 # initialize rs2
min x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x87d336ee # initialize rs1
li x11, 0xa202846f # initialize rs2
min x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x4a7417c5 # initialize rs1
li x12, 0xc21c61dd # initialize rs2
min x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xd93a7502 # initialize rs1
li x13, 0x121dbbef # initialize rs2
min x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x497114ac # initialize rs1
li x14, 0x51e51f3b # initialize rs2
min x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x7abf731d # initialize rs1
li x15, 0x2c3fa8cb # initialize rs2
min x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x94f29a5b # initialize rs1
li x16, 0x4851367d # initialize rs2
min x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xc8325a74 # initialize rs1
li x17, 0x7cd138d1 # initialize rs2
min x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x5fea628f # initialize rs1
li x18, 0x24525880 # initialize rs2
min x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x59ff2f75 # initialize rs1
li x19, 0x88cfd33e # initialize rs2
min x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xd58b5654 # initialize rs1
li x20, 0x3633b8d3 # initialize rs2
min x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x51060ea5 # initialize rs1
li x21, 0xee03efb2 # initialize rs2
min x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x5bb7336e # initialize rs1
li x22, 0x47a6e501 # initialize rs2
min x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xcc3f8d83 # initialize rs1
li x23, 0xf57efd5d # initialize rs2
min x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xa54f2ba9 # initialize rs1
li x24, 0x30d1a022 # initialize rs2
min x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x5143fb06 # initialize rs1
li x25, 0xe397e0be # initialize rs2
min x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xcb6d8790 # initialize rs1
li x26, 0x95018b69 # initialize rs2
min x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x81749d6b # initialize rs1
li x27, 0x32152dcb # initialize rs2
min x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xc57e36df # initialize rs1
li x28, 0x300e7294 # initialize rs2
min x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xd38711ea # initialize rs1
li x29, 0xe8d86324 # initialize rs2
min x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x53bd4d88 # initialize rs1
li x30, 0x8a5c0bfd # initialize rs2
min x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x1b2a0209 # initialize rs1
li x31, 0x7e02c20b # initialize rs2
min x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x2, x17 # perform first operation
min x15, x8, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x6, x8 # perform first operation
min x19, x13, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x11, x15 # perform first operation
min x8, x16, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x3, x16 # perform first operation
min x16, x24, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x15, x5 # perform first operation
min x30, x15, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x9, x2 # perform first operation
min x15, x21, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x25, x19 # perform first operation
min x10, x1, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x28, x2 # perform first operation
min x21, x15, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x10, x9 # perform first operation
min x18, x12, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x8, x19 # perform first operation
min x8, x12, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x24, x15 # perform first operation
min x15, x2, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x8, x6 # perform first operation
min x27, x7, x16 # perform second (triggering) operation

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
