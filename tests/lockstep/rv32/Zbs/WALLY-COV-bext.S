///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbs/WALLY-COV-bext.S
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
li x0, 0xeb5f4445 # initialize rs1
li x2, 0xad1d1c94 # initialize rs2
bext x10, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xdf6805a8 # initialize rs1
li x29, 0xb4464d1a # initialize rs2
bext x30, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x99769580 # initialize rs1
li x28, 0xd26ceccd # initialize rs2
bext x21, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x5aa95ff9 # initialize rs1
li x24, 0xdf3b2f4b # initialize rs2
bext x1, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xeed0548c # initialize rs1
li x6, 0x8c23d0b8 # initialize rs2
bext x1, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3fefcd21 # initialize rs1
li x23, 0x09d71921 # initialize rs2
bext x31, x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd82fdd13 # initialize rs1
li x12, 0x1925ddeb # initialize rs2
bext x31, x6, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x37de4a1c # initialize rs1
li x11, 0x9bd38ad9 # initialize rs2
bext x14, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x386d69e1 # initialize rs1
li x17, 0x192b7090 # initialize rs2
bext x27, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x2c2d2864 # initialize rs1
li x17, 0x24fe29fb # initialize rs2
bext x5, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x809e6a8a # initialize rs1
li x15, 0x4f0f4b4d # initialize rs2
bext x16, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xfd3fb140 # initialize rs1
li x1, 0x48801d38 # initialize rs2
bext x20, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x802b5561 # initialize rs1
li x13, 0x5c887bdd # initialize rs2
bext x24, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa1b2674f # initialize rs1
li x10, 0xfe90959a # initialize rs2
bext x5, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc5942389 # initialize rs1
li x29, 0xb6a51011 # initialize rs2
bext x20, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1b2c7686 # initialize rs1
li x11, 0x3201ca7b # initialize rs2
bext x18, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xc6c964d9 # initialize rs1
li x30, 0x30a3e431 # initialize rs2
bext x29, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x7a08a1e4 # initialize rs1
li x11, 0xe393ece7 # initialize rs2
bext x22, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x37e2675c # initialize rs1
li x10, 0x4271ecc3 # initialize rs2
bext x21, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xc2de7704 # initialize rs1
li x3, 0x4bfc9850 # initialize rs2
bext x17, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xcc799005 # initialize rs1
li x25, 0x5acc60b0 # initialize rs2
bext x10, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xbeeabb68 # initialize rs1
li x31, 0x4fdde7e7 # initialize rs2
bext x23, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x10c41c33 # initialize rs1
li x14, 0xaf31ad85 # initialize rs2
bext x21, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x58d45587 # initialize rs1
li x6, 0x9b0ffeee # initialize rs2
bext x5, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x44aa0064 # initialize rs1
li x23, 0x71e7da3b # initialize rs2
bext x7, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xf28dc83c # initialize rs1
li x26, 0x32d17719 # initialize rs2
bext x21, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xec04e324 # initialize rs1
li x27, 0x5460deb6 # initialize rs2
bext x29, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xc3e2f57b # initialize rs1
li x29, 0x384b3c02 # initialize rs2
bext x28, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x27cb9209 # initialize rs1
li x2, 0x43153b77 # initialize rs2
bext x22, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xe8658ea2 # initialize rs1
li x31, 0xeaf25d26 # initialize rs2
bext x20, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x28c16b0e # initialize rs1
li x12, 0x61f33302 # initialize rs2
bext x9, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x6a6c198e # initialize rs1
li x17, 0xb218c391 # initialize rs2
bext x10, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x24, 0xc134c663 # initialize rs1
li x0, 0xb74b32ce # initialize rs2
bext x6, x24, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x17, 0x4ba041f3 # initialize rs1
li x1, 0xb45f9f6b # initialize rs2
bext x8, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x1, 0xc88d08f4 # initialize rs1
li x2, 0xaf9225f4 # initialize rs2
bext x27, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x28, 0x73e73e53 # initialize rs1
li x3, 0xa1fdbef1 # initialize rs2
bext x31, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x16, 0xe826dca3 # initialize rs1
li x4, 0xfb321429 # initialize rs2
bext x18, x16, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0x3fb4ea72 # initialize rs1
li x5, 0x5490f9f7 # initialize rs2
bext x1, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x1, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
li x14, 0xec1910c5 # initialize rs1
li x6, 0x56909ae2 # initialize rs2
bext x2, x14, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x20, 0xba9dc4da # initialize rs1
li x7, 0x900cd6dd # initialize rs2
bext x10, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x19, 0xe6ccf738 # initialize rs1
li x8, 0x5d6b2af4 # initialize rs2
bext x24, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x31, 0xdbb6c533 # initialize rs1
li x9, 0xfac26fe7 # initialize rs2
bext x26, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x11, 0x70e15ecd # initialize rs1
li x10, 0xfbf16cd7 # initialize rs2
bext x17, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x21, 0xc0418016 # initialize rs1
li x11, 0x8d2db7f7 # initialize rs2
bext x22, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x17, 0xd08c9743 # initialize rs1
li x12, 0x34b89ad7 # initialize rs2
bext x27, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x9, 0x01a50380 # initialize rs1
li x13, 0x21c21b78 # initialize rs2
bext x20, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x24, 0xfaa1fe89 # initialize rs1
li x14, 0x280cb467 # initialize rs2
bext x11, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x25, 0xaed3f6dc # initialize rs1
li x15, 0x4dd4228e # initialize rs2
bext x12, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x15, 0xf3b362bb # initialize rs1
li x16, 0x65550c16 # initialize rs2
bext x10, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x6, 0x4d4e5b15 # initialize rs1
li x17, 0x3ae682ff # initialize rs2
bext x2, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x26, 0x0e5f11db # initialize rs1
li x18, 0x51f5cdb3 # initialize rs2
bext x17, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x11, 0xa0203ef6 # initialize rs1
li x19, 0x89605d57 # initialize rs2
bext x28, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x22, 0x1bac6ed9 # initialize rs1
li x20, 0xa1f324a1 # initialize rs2
bext x1, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x6, 0xe38478f0 # initialize rs1
li x21, 0x56dde7ba # initialize rs2
bext x17, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x7, 0xca538c36 # initialize rs1
li x22, 0x906ba1f0 # initialize rs2
bext x2, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x8, 0x86a41d70 # initialize rs1
li x23, 0xd0e1e499 # initialize rs2
bext x20, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x14, 0x5349f266 # initialize rs1
li x24, 0xff49bc2b # initialize rs2
bext x15, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x13, 0x5d9c1d6b # initialize rs1
li x25, 0xaa33357f # initialize rs2
bext x28, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x23, 0x6898403b # initialize rs1
li x26, 0xb9ab02c4 # initialize rs2
bext x13, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x3, 0x2b8707f8 # initialize rs1
li x27, 0x4938b812 # initialize rs2
bext x6, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x1, 0x11f2cae2 # initialize rs1
li x28, 0x86491003 # initialize rs2
bext x11, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x1, 0x348725a4 # initialize rs1
li x29, 0x3469680b # initialize rs2
bext x11, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x17, 0xb5e187fc # initialize rs1
li x30, 0x374ac3f8 # initialize rs2
bext x29, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x5, 0x17a87a50 # initialize rs1
li x31, 0x3fd475db # initialize rs2
bext x19, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 252)

# Testcase cp_rd (Test destination rd = x0)
li x8, 0xf7d0e16a # initialize rs1
li x30, 0x6621fb20 # initialize rs2
bext x0, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x13, 0x8173368c # initialize rs1
li x31, 0xa1d0df06 # initialize rs2
bext x1, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x10, 0x18a5a4f4 # initialize rs1
li x15, 0xd27e44e6 # initialize rs2
bext x2, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x11, 0x99015fa0 # initialize rs1
li x23, 0x7a4dbf0e # initialize rs2
bext x3, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0x935ff2df # initialize rs1
li x26, 0x0184c41b # initialize rs2
bext x4, x30, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0x48a7d7fd # initialize rs1
li x29, 0xce480978 # initialize rs2
bext x5, x2, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x16, 0x68d1eadd # initialize rs1
li x28, 0x0f44ad6b # initialize rs2
bext x6, x16, x28 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x1d6b30f8 # initialize rs1
li x15, 0x3fad88ad # initialize rs2
bext x7, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x13, 0x348adc94 # initialize rs1
li x19, 0xabc69fbe # initialize rs2
bext x8, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x5, 0xaa327b67 # initialize rs1
li x29, 0x6d3c6509 # initialize rs2
bext x9, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x22, 0xba2d1c19 # initialize rs1
li x12, 0x095a3294 # initialize rs2
bext x10, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0x10a47465 # initialize rs1
li x24, 0xd9353619 # initialize rs2
bext x11, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x16, 0x1a5b432c # initialize rs1
li x31, 0x580fac57 # initialize rs2
bext x12, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x20, 0x4e082b28 # initialize rs1
li x8, 0x7d21567c # initialize rs2
bext x13, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x31, 0x3ae71e67 # initialize rs1
li x17, 0x17376355 # initialize rs2
bext x14, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0xabf546ca # initialize rs1
li x2, 0xa8f28aa1 # initialize rs2
bext x15, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x31, 0xd9ec454e # initialize rs1
li x13, 0xb5516e8d # initialize rs2
bext x16, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x5, 0xdfbcabbf # initialize rs1
li x11, 0x5159392b # initialize rs2
bext x17, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x23, 0xfdd8a518 # initialize rs1
li x14, 0xe37e1777 # initialize rs2
bext x18, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x14, 0xfd6a3b2d # initialize rs1
li x31, 0x87a487e8 # initialize rs2
bext x19, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x12, 0xf67a1c9f # initialize rs1
li x2, 0x65af0588 # initialize rs2
bext x20, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x15, 0xa31aaa38 # initialize rs1
li x6, 0xfb3de55f # initialize rs2
bext x21, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x1, 0x750b1286 # initialize rs1
li x19, 0x3a1a8ded # initialize rs2
bext x22, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x10, 0x71b6fdaf # initialize rs1
li x30, 0xb5fa1a00 # initialize rs2
bext x23, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x27, 0x8f671175 # initialize rs1
li x16, 0xb1935f27 # initialize rs2
bext x24, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x28, 0x9e4d18fa # initialize rs1
li x26, 0x4cf72393 # initialize rs2
bext x25, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x13, 0x215ca0f7 # initialize rs1
li x5, 0x3521907e # initialize rs2
bext x26, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0xb30c7c1e # initialize rs1
li x10, 0x5b2beeb6 # initialize rs2
bext x27, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x12, 0x814d4af5 # initialize rs1
li x27, 0xb88baac1 # initialize rs2
bext x28, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0x144fa02b # initialize rs1
li x21, 0x2f1596cc # initialize rs2
bext x29, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x17, 0x178e3ebe # initialize rs1
li x10, 0xba138a9b # initialize rs2
bext x30, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0x37e05b86 # initialize rs1
li x21, 0x8dcf3e1a # initialize rs2
bext x31, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x1, 0x00000000 # initialize rs1
li x29, 0xaf6a9bca # initialize rs2
bext x12, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x3, 0x00000001 # initialize rs1
li x16, 0x7749e90c # initialize rs2
bext x31, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x5, 0x00000002 # initialize rs1
li x21, 0x3acfa638 # initialize rs2
bext x13, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x18, 0x80000000 # initialize rs1
li x28, 0x5cc5eefa # initialize rs2
bext x16, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x5, 0x80000001 # initialize rs1
li x14, 0xe4faaf21 # initialize rs2
bext x23, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x17, 0x7fffffff # initialize rs1
li x30, 0x3063f368 # initialize rs2
bext x31, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x23, 0x7ffffffe # initialize rs1
li x19, 0xf48f716b # initialize rs2
bext x21, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x10, 0xffffffff # initialize rs1
li x6, 0x47ea612a # initialize rs2
bext x31, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x24, 0xfffffffe # initialize rs1
li x11, 0xe09ae011 # initialize rs2
bext x20, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x2, 0x5bbc8872 # initialize rs1
li x5, 0x172a9bfb # initialize rs2
bext x1, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x12, 0xaaaaaaaa # initialize rs1
li x22, 0x50faf4a7 # initialize rs2
bext x11, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x19, 0x55555555 # initialize rs1
li x11, 0xde8084e7 # initialize rs2
bext x12, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x6, 0xfbc92e22 # initialize rs1
li x3, 0x00000000 # initialize rs2
bext x17, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x15, 0x060913b8 # initialize rs1
li x27, 0x00000001 # initialize rs2
bext x13, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x12, 0x16cceba6 # initialize rs1
li x21, 0x00000002 # initialize rs2
bext x17, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x27, 0xad70c7ad # initialize rs1
li x7, 0x80000000 # initialize rs2
bext x28, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x28, 0x89ed3038 # initialize rs1
li x6, 0x80000001 # initialize rs2
bext x16, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x21, 0xb4658a68 # initialize rs1
li x23, 0x7fffffff # initialize rs2
bext x30, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x10, 0xfbe44c24 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
bext x20, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x5, 0x1960cc94 # initialize rs1
li x23, 0xffffffff # initialize rs2
bext x10, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x17, 0xd39aaf19 # initialize rs1
li x20, 0xfffffffe # initialize rs2
bext x10, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x19, 0xb3368df9 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
bext x12, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x22, 0x3b766658 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
bext x9, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x30, 0x6d2d79f0 # initialize rs1
li x6, 0x55555555 # initialize rs2
bext x8, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x30, 0x00000000 # initialize rs1
li x7, 0x00000000 # initialize rs2
bext x13, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x5, 0x00000000 # initialize rs1
li x20, 0x00000001 # initialize rs2
bext x26, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x21, 0x00000000 # initialize rs1
li x26, 0x00000002 # initialize rs2
bext x14, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x12, 0x00000000 # initialize rs1
li x23, 0x80000000 # initialize rs2
bext x26, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x5, 0x00000000 # initialize rs1
li x17, 0x80000001 # initialize rs2
bext x28, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x29, 0x00000000 # initialize rs1
li x25, 0x7fffffff # initialize rs2
bext x24, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x19, 0x00000000 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
bext x25, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x24, 0x00000000 # initialize rs1
li x18, 0xffffffff # initialize rs2
bext x11, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x19, 0x00000000 # initialize rs1
li x12, 0xfffffffe # initialize rs2
bext x30, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x16, 0x00000000 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
bext x13, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x2, 0x00000000 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
bext x6, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x1, 0x00000000 # initialize rs1
li x11, 0x55555555 # initialize rs2
bext x22, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x5, 0x00000001 # initialize rs1
li x31, 0x00000000 # initialize rs2
bext x20, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0x00000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
bext x6, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x27, 0x00000001 # initialize rs1
li x8, 0x00000002 # initialize rs2
bext x20, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x24, 0x00000001 # initialize rs1
li x12, 0x80000000 # initialize rs2
bext x27, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x19, 0x00000001 # initialize rs1
li x11, 0x80000001 # initialize rs2
bext x28, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x25, 0x00000001 # initialize rs1
li x1, 0x7fffffff # initialize rs2
bext x31, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x27, 0x00000001 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
bext x23, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x18, 0x00000001 # initialize rs1
li x12, 0xffffffff # initialize rs2
bext x5, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x19, 0x00000001 # initialize rs1
li x1, 0xfffffffe # initialize rs2
bext x8, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x11, 0x00000001 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
bext x22, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x7, 0x00000001 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
bext x23, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x9, 0x00000001 # initialize rs1
li x8, 0x55555555 # initialize rs2
bext x13, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x15, 0x00000002 # initialize rs1
li x12, 0x00000000 # initialize rs2
bext x25, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x1, 0x00000002 # initialize rs1
li x27, 0x00000001 # initialize rs2
bext x22, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x29, 0x00000002 # initialize rs1
li x24, 0x00000002 # initialize rs2
bext x15, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x3, 0x00000002 # initialize rs1
li x23, 0x80000000 # initialize rs2
bext x14, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x25, 0x00000002 # initialize rs1
li x5, 0x80000001 # initialize rs2
bext x26, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x30, 0x00000002 # initialize rs1
li x28, 0x7fffffff # initialize rs2
bext x27, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x7, 0x00000002 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
bext x17, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x1, 0x00000002 # initialize rs1
li x29, 0xffffffff # initialize rs2
bext x16, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x22, 0x00000002 # initialize rs1
li x10, 0xfffffffe # initialize rs2
bext x31, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x28, 0x00000002 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
bext x29, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x14, 0x00000002 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
bext x15, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x13, 0x00000002 # initialize rs1
li x7, 0x55555555 # initialize rs2
bext x16, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x24, 0x80000000 # initialize rs1
li x2, 0x00000000 # initialize rs2
bext x30, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x21, 0x80000000 # initialize rs1
li x3, 0x00000001 # initialize rs2
bext x2, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x9, 0x80000000 # initialize rs1
li x19, 0x00000002 # initialize rs2
bext x12, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x8, 0x80000000 # initialize rs1
li x23, 0x80000000 # initialize rs2
bext x5, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x20, 0x80000000 # initialize rs1
li x9, 0x80000001 # initialize rs2
bext x15, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x28, 0x80000000 # initialize rs1
li x10, 0x7fffffff # initialize rs2
bext x18, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x26, 0x80000000 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
bext x19, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x16, 0x80000000 # initialize rs1
li x23, 0xffffffff # initialize rs2
bext x14, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x2, 0x80000000 # initialize rs1
li x13, 0xfffffffe # initialize rs2
bext x18, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x17, 0x80000000 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
bext x10, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x31, 0x80000000 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
bext x6, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x25, 0x80000000 # initialize rs1
li x1, 0x55555555 # initialize rs2
bext x7, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x17, 0x80000001 # initialize rs1
li x15, 0x00000000 # initialize rs2
bext x10, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x6, 0x80000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
bext x31, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x7, 0x80000001 # initialize rs1
li x29, 0x00000002 # initialize rs2
bext x2, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x27, 0x80000001 # initialize rs1
li x18, 0x80000000 # initialize rs2
bext x24, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x10, 0x80000001 # initialize rs1
li x19, 0x80000001 # initialize rs2
bext x6, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x6, 0x80000001 # initialize rs1
li x10, 0x7fffffff # initialize rs2
bext x12, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x29, 0x80000001 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
bext x26, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x16, 0x80000001 # initialize rs1
li x20, 0xffffffff # initialize rs2
bext x19, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x20, 0x80000001 # initialize rs1
li x8, 0xfffffffe # initialize rs2
bext x1, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x21, 0x80000001 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
bext x19, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x17, 0x80000001 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
bext x14, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x21, 0x80000001 # initialize rs1
li x18, 0x55555555 # initialize rs2
bext x31, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x15, 0x7fffffff # initialize rs1
li x21, 0x00000000 # initialize rs2
bext x10, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x7, 0x7fffffff # initialize rs1
li x10, 0x00000001 # initialize rs2
bext x16, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x2, 0x7fffffff # initialize rs1
li x19, 0x00000002 # initialize rs2
bext x6, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x16, 0x7fffffff # initialize rs1
li x1, 0x80000000 # initialize rs2
bext x3, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x14, 0x7fffffff # initialize rs1
li x6, 0x80000001 # initialize rs2
bext x3, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x29, 0x7fffffff # initialize rs1
li x23, 0x7fffffff # initialize rs2
bext x10, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x31, 0x7fffffff # initialize rs1
li x17, 0x7ffffffe # initialize rs2
bext x18, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x1, 0x7fffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
bext x30, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x28, 0x7fffffff # initialize rs1
li x3, 0xfffffffe # initialize rs2
bext x29, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x25, 0x7fffffff # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
bext x11, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x16, 0x7fffffff # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
bext x12, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x16, 0x7fffffff # initialize rs1
li x25, 0x55555555 # initialize rs2
bext x21, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x3, 0x7ffffffe # initialize rs1
li x31, 0x00000000 # initialize rs2
bext x25, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x19, 0x7ffffffe # initialize rs1
li x7, 0x00000001 # initialize rs2
bext x28, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x1, 0x7ffffffe # initialize rs1
li x25, 0x00000002 # initialize rs2
bext x14, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x27, 0x7ffffffe # initialize rs1
li x21, 0x80000000 # initialize rs2
bext x29, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x3, 0x7ffffffe # initialize rs1
li x16, 0x80000001 # initialize rs2
bext x21, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x30, 0x7ffffffe # initialize rs1
li x26, 0x7fffffff # initialize rs2
bext x19, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x2, 0x7ffffffe # initialize rs1
li x7, 0x7ffffffe # initialize rs2
bext x18, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x26, 0x7ffffffe # initialize rs1
li x9, 0xffffffff # initialize rs2
bext x21, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x18, 0x7ffffffe # initialize rs1
li x15, 0xfffffffe # initialize rs2
bext x24, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x7, 0x7ffffffe # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
bext x12, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x31, 0x7ffffffe # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
bext x23, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x30, 0x7ffffffe # initialize rs1
li x28, 0x55555555 # initialize rs2
bext x3, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x26, 0xffffffff # initialize rs1
li x25, 0x00000000 # initialize rs2
bext x18, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x25, 0xffffffff # initialize rs1
li x10, 0x00000001 # initialize rs2
bext x2, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x2, 0xffffffff # initialize rs1
li x20, 0x00000002 # initialize rs2
bext x24, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x7, 0xffffffff # initialize rs1
li x6, 0x80000000 # initialize rs2
bext x12, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x27, 0xffffffff # initialize rs1
li x24, 0x80000001 # initialize rs2
bext x14, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x25, 0xffffffff # initialize rs1
li x8, 0x7fffffff # initialize rs2
bext x9, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x1, 0xffffffff # initialize rs1
li x20, 0x7ffffffe # initialize rs2
bext x11, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x24, 0xffffffff # initialize rs1
li x2, 0xffffffff # initialize rs2
bext x5, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x14, 0xffffffff # initialize rs1
li x28, 0xfffffffe # initialize rs2
bext x8, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x6, 0xffffffff # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
bext x30, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x29, 0xffffffff # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
bext x10, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x16, 0xffffffff # initialize rs1
li x8, 0x55555555 # initialize rs2
bext x2, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x16, 0xfffffffe # initialize rs1
li x26, 0x00000000 # initialize rs2
bext x8, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x10, 0xfffffffe # initialize rs1
li x18, 0x00000001 # initialize rs2
bext x20, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x11, 0xfffffffe # initialize rs1
li x27, 0x00000002 # initialize rs2
bext x15, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x22, 0xfffffffe # initialize rs1
li x13, 0x80000000 # initialize rs2
bext x27, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x10, 0xfffffffe # initialize rs1
li x18, 0x80000001 # initialize rs2
bext x3, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x11, 0xfffffffe # initialize rs1
li x15, 0x7fffffff # initialize rs2
bext x19, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x14, 0xfffffffe # initialize rs1
li x9, 0x7ffffffe # initialize rs2
bext x7, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x10, 0xfffffffe # initialize rs1
li x29, 0xffffffff # initialize rs2
bext x31, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x26, 0xfffffffe # initialize rs1
li x18, 0xfffffffe # initialize rs2
bext x28, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x1, 0xfffffffe # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
bext x16, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x25, 0xfffffffe # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
bext x10, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x22, 0xfffffffe # initialize rs1
li x16, 0x55555555 # initialize rs2
bext x27, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x7, 0x5bbc8872 # initialize rs1
li x14, 0x00000000 # initialize rs2
bext x10, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x12, 0x5bbc8872 # initialize rs1
li x11, 0x00000001 # initialize rs2
bext x2, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x24, 0x5bbc8872 # initialize rs1
li x28, 0x00000002 # initialize rs2
bext x16, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x7, 0x5bbc8872 # initialize rs1
li x19, 0x80000000 # initialize rs2
bext x6, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x9, 0x5bbc8872 # initialize rs1
li x13, 0x80000001 # initialize rs2
bext x26, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x1, 0x5bbc8872 # initialize rs1
li x27, 0x7fffffff # initialize rs2
bext x26, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x29, 0x5bbc8872 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
bext x24, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x24, 0x5bbc8872 # initialize rs1
li x12, 0xffffffff # initialize rs2
bext x16, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x26, 0x5bbc8872 # initialize rs1
li x22, 0xfffffffe # initialize rs2
bext x6, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x12, 0x5bbc8872 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
bext x31, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x22, 0x5bbc8872 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
bext x16, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x6, 0x5bbc8872 # initialize rs1
li x21, 0x55555555 # initialize rs2
bext x22, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x22, 0xaaaaaaaa # initialize rs1
li x29, 0x00000000 # initialize rs2
bext x18, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x6, 0xaaaaaaaa # initialize rs1
li x12, 0x00000001 # initialize rs2
bext x9, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x25, 0xaaaaaaaa # initialize rs1
li x27, 0x00000002 # initialize rs2
bext x16, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x2, 0xaaaaaaaa # initialize rs1
li x14, 0x80000000 # initialize rs2
bext x16, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x2, 0xaaaaaaaa # initialize rs1
li x26, 0x80000001 # initialize rs2
bext x9, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x17, 0xaaaaaaaa # initialize rs1
li x31, 0x7fffffff # initialize rs2
bext x9, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x1, 0xaaaaaaaa # initialize rs1
li x19, 0x7ffffffe # initialize rs2
bext x3, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x18, 0xaaaaaaaa # initialize rs1
li x5, 0xffffffff # initialize rs2
bext x3, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x15, 0xaaaaaaaa # initialize rs1
li x19, 0xfffffffe # initialize rs2
bext x9, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x27, 0xaaaaaaaa # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
bext x5, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x3, 0xaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
bext x9, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x11, 0xaaaaaaaa # initialize rs1
li x16, 0x55555555 # initialize rs2
bext x28, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x16, 0x55555555 # initialize rs1
li x7, 0x00000000 # initialize rs2
bext x10, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x19, 0x55555555 # initialize rs1
li x29, 0x00000001 # initialize rs2
bext x8, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x15, 0x55555555 # initialize rs1
li x14, 0x00000002 # initialize rs2
bext x8, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x2, 0x55555555 # initialize rs1
li x12, 0x80000000 # initialize rs2
bext x14, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x3, 0x55555555 # initialize rs1
li x24, 0x80000001 # initialize rs2
bext x22, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x11, 0x55555555 # initialize rs1
li x15, 0x7fffffff # initialize rs2
bext x27, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x18, 0x55555555 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
bext x15, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x29, 0x55555555 # initialize rs1
li x2, 0xffffffff # initialize rs2
bext x18, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x10, 0x55555555 # initialize rs1
li x5, 0xfffffffe # initialize rs2
bext x16, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x26, 0x55555555 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
bext x18, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x29, 0x55555555 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
bext x7, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x14, 0x55555555 # initialize rs1
li x11, 0x55555555 # initialize rs2
bext x31, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x63919555 # initialize rs1
li x0, 0x7933d205 # initialize rs2
bext x12, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xfe939e7e # initialize rs1
li x1, 0xe7b981ad # initialize rs2
bext x22, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x1a9eb39f # initialize rs1
li x2, 0x0c646717 # initialize rs2
bext x30, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xfbc8be1a # initialize rs1
li x3, 0x90e04996 # initialize rs2
bext x10, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0d2c3312 # initialize rs1
li x4, 0xc20453ec # initialize rs2
bext x19, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8f3f96d0 # initialize rs1
li x5, 0x763e289b # initialize rs2
bext x29, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x05380564 # initialize rs1
li x6, 0xab2585b9 # initialize rs2
bext x18, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8e4d5dbb # initialize rs1
li x7, 0xe74bd6cc # initialize rs2
bext x4, x7, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xb81e8ee0 # initialize rs1
li x8, 0xdda131e9 # initialize rs2
bext x21, x8, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x93b425fd # initialize rs1
li x9, 0x8749d890 # initialize rs2
bext x7, x9, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xc152fdb7 # initialize rs1
li x10, 0xa73fe83d # initialize rs2
bext x28, x10, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x3cfb0779 # initialize rs1
li x11, 0x11a22ebf # initialize rs2
bext x13, x11, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x8a8a0f23 # initialize rs1
li x12, 0x09361687 # initialize rs2
bext x12, x12, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xa161d01c # initialize rs1
li x13, 0xba9cc0bd # initialize rs2
bext x7, x13, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x39a1515f # initialize rs1
li x14, 0xee534e78 # initialize rs2
bext x12, x14, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x7c72d79f # initialize rs1
li x15, 0x892c147f # initialize rs2
bext x31, x15, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x728b4a1c # initialize rs1
li x16, 0x54474f5b # initialize rs2
bext x31, x16, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xd57e2b66 # initialize rs1
li x17, 0xb0dd68e7 # initialize rs2
bext x16, x17, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x0be1e66d # initialize rs1
li x18, 0x74b7257a # initialize rs2
bext x3, x18, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xfe1e7f10 # initialize rs1
li x19, 0x70d96652 # initialize rs2
bext x23, x19, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xf57987ec # initialize rs1
li x20, 0xb63267c3 # initialize rs2
bext x10, x20, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xccc9142b # initialize rs1
li x21, 0xf5cb4376 # initialize rs2
bext x6, x21, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x46525df7 # initialize rs1
li x22, 0xac7b6b1f # initialize rs2
bext x19, x22, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xfa8688e6 # initialize rs1
li x23, 0x5f6ea785 # initialize rs2
bext x20, x23, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x0c3081d3 # initialize rs1
li x24, 0x3a0cc58c # initialize rs2
bext x1, x24, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xc5ae25ef # initialize rs1
li x25, 0xc44fbac3 # initialize rs2
bext x16, x25, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x53e09d71 # initialize rs1
li x26, 0x00f6c5db # initialize rs2
bext x10, x26, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x828d8d8d # initialize rs1
li x27, 0x26869737 # initialize rs2
bext x1, x27, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xd3742891 # initialize rs1
li x28, 0xa64f3871 # initialize rs2
bext x22, x28, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xd6e5c57a # initialize rs1
li x29, 0xc5aea8d2 # initialize rs2
bext x23, x29, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x12995745 # initialize rs1
li x30, 0xaa8d7cfc # initialize rs2
bext x19, x30, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xf534b46f # initialize rs1
li x31, 0x078f25b6 # initialize rs2
bext x26, x31, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x17395489 # initialize rs1
li x24, 0xf7f810a0 # initialize rs2
bext x0, x0, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x81242b59 # initialize rs1
li x6, 0x6ec25100 # initialize rs2
bext x1, x1, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x108629af # initialize rs1
li x2, 0xe47f177e # initialize rs2
bext x2, x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xb63a1f73 # initialize rs1
li x17, 0x0018489b # initialize rs2
bext x3, x3, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xec79920c # initialize rs1
li x1, 0xc1fe233d # initialize rs2
bext x4, x4, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x67d81293 # initialize rs1
li x24, 0x9845fa80 # initialize rs2
bext x5, x5, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe9d2d75b # initialize rs1
li x21, 0x523f76ad # initialize rs2
bext x6, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5e21567d # initialize rs1
li x5, 0xb1da0270 # initialize rs2
bext x7, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x1e58a76e # initialize rs1
li x18, 0xbde67602 # initialize rs2
bext x8, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x0aa38202 # initialize rs1
li x5, 0x183fc6e6 # initialize rs2
bext x9, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x7214d4da # initialize rs1
li x15, 0x57faa4dc # initialize rs2
bext x10, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xbca2b545 # initialize rs1
li x26, 0xb7326538 # initialize rs2
bext x11, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x57d0e83a # initialize rs1
li x6, 0x43ee3a60 # initialize rs2
bext x12, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x35175d39 # initialize rs1
li x11, 0x5f9324fa # initialize rs2
bext x13, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x719cdd5e # initialize rs1
li x2, 0xa099a8b9 # initialize rs2
bext x14, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x2eb7f814 # initialize rs1
li x15, 0x2e7df30d # initialize rs2
bext x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xc839d994 # initialize rs1
li x1, 0xc6f45f8b # initialize rs2
bext x16, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x7aa57705 # initialize rs1
li x12, 0x227f5fdf # initialize rs2
bext x17, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x5e273439 # initialize rs1
li x7, 0x832350a9 # initialize rs2
bext x18, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x37822369 # initialize rs1
li x5, 0x81a98a51 # initialize rs2
bext x19, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x2673e3a3 # initialize rs1
li x23, 0x1b11911e # initialize rs2
bext x20, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x0088fc9d # initialize rs1
li x10, 0x46544834 # initialize rs2
bext x21, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x7c00aa34 # initialize rs1
li x20, 0x2fe4e46c # initialize rs2
bext x22, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x472227f1 # initialize rs1
li x5, 0xd3e5cbdd # initialize rs2
bext x23, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x68d8dcfd # initialize rs1
li x24, 0xf40ff411 # initialize rs2
bext x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xd6f5c542 # initialize rs1
li x28, 0x4ba4ea68 # initialize rs2
bext x25, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x86fe09ca # initialize rs1
li x10, 0x29c5e7ef # initialize rs2
bext x26, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x6c271dd8 # initialize rs1
li x18, 0x94a898e9 # initialize rs2
bext x27, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x1fb74a26 # initialize rs1
li x20, 0xdc2235af # initialize rs2
bext x28, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x751df03f # initialize rs1
li x5, 0x9f41d8d6 # initialize rs2
bext x29, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xd3583798 # initialize rs1
li x5, 0xf0831900 # initialize rs2
bext x30, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x6868aef9 # initialize rs1
li x6, 0x5a5ca85a # initialize rs2
bext x31, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x11, 0x81406e17 # initialize rs1
li x0, 0x054bb6a7 # initialize rs2
bext x0, x11, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x13, 0xd5483db4 # initialize rs1
li x1, 0x53ccdf8e # initialize rs2
bext x1, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x14, 0x40405531 # initialize rs1
li x2, 0x5eee3ae8 # initialize rs2
bext x2, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x13, 0xb5eb5b7f # initialize rs1
li x3, 0xbfd7a7d9 # initialize rs2
bext x3, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0x7126a511 # initialize rs1
li x4, 0x3976b9a6 # initialize rs2
bext x4, x23, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0x93302f87 # initialize rs1
li x5, 0x9d3b910d # initialize rs2
bext x5, x17, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0x9c800e38 # initialize rs1
li x6, 0x8426c0a4 # initialize rs2
bext x6, x13, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x2ffbd393 # initialize rs1
li x7, 0x4171c71a # initialize rs2
bext x7, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x5, 0xbcc14c87 # initialize rs1
li x8, 0x1bda2fff # initialize rs2
bext x8, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x10, 0xb526cd41 # initialize rs1
li x9, 0x72fbf8b5 # initialize rs2
bext x9, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x9, 0x323abadd # initialize rs1
li x10, 0x665d767f # initialize rs2
bext x10, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x24, 0xbecf4b9a # initialize rs1
li x11, 0x9530a41f # initialize rs2
bext x11, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x5, 0x74524913 # initialize rs1
li x12, 0x8a3fa90d # initialize rs2
bext x12, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x16, 0xcfae2312 # initialize rs1
li x13, 0x69c78732 # initialize rs2
bext x13, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x3, 0x900d1c4b # initialize rs1
li x14, 0x90d016f3 # initialize rs2
bext x14, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x12, 0xa3e53a62 # initialize rs1
li x15, 0x535c8fac # initialize rs2
bext x15, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x7, 0x62f87c8e # initialize rs1
li x16, 0xdd317851 # initialize rs2
bext x16, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x21, 0x0b63f5c3 # initialize rs1
li x17, 0xd332793f # initialize rs2
bext x17, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x7, 0x72787ca8 # initialize rs1
li x18, 0xba050ec0 # initialize rs2
bext x18, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x30, 0x3b36d7a7 # initialize rs1
li x19, 0xab60ea84 # initialize rs2
bext x19, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x8, 0x1a79f025 # initialize rs1
li x20, 0x3b1b08e9 # initialize rs2
bext x20, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x12, 0x7ba5a22c # initialize rs1
li x21, 0xc395df73 # initialize rs2
bext x21, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x11, 0xc59c6f12 # initialize rs1
li x22, 0x4a67485b # initialize rs2
bext x22, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x25, 0xc159b269 # initialize rs1
li x23, 0x3f442e13 # initialize rs2
bext x23, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x25, 0xbd140ec0 # initialize rs1
li x24, 0xd067df44 # initialize rs2
bext x24, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x3, 0x37548fe4 # initialize rs1
li x25, 0xbb36c3e7 # initialize rs2
bext x25, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x16, 0x17ae7a35 # initialize rs1
li x26, 0xf23520c4 # initialize rs2
bext x26, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x29, 0x7da2ae98 # initialize rs1
li x27, 0x9cac5d2b # initialize rs2
bext x27, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x17, 0xf2581bc3 # initialize rs1
li x28, 0x41cf2561 # initialize rs2
bext x28, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x31, 0x02fa2847 # initialize rs1
li x29, 0xca9b7c6c # initialize rs2
bext x29, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x28, 0xc563be04 # initialize rs1
li x30, 0x130e57be # initialize rs2
bext x30, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x20, 0x3564c3d0 # initialize rs1
li x31, 0x258d7948 # initialize rs2
bext x31, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xc6e6175b # initialize rs1
li x0, 0xcb4c0b1a # initialize rs2
bext x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xeb7b90d8 # initialize rs1
li x1, 0xd4f1111c # initialize rs2
bext x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x1264aae2 # initialize rs1
li x2, 0xd92aca43 # initialize rs2
bext x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xd9dbf7ac # initialize rs1
li x3, 0x8d340211 # initialize rs2
bext x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8a18fa89 # initialize rs1
li x4, 0x99b9a795 # initialize rs2
bext x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x61fcfac2 # initialize rs1
li x5, 0x6951002a # initialize rs2
bext x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa6373618 # initialize rs1
li x6, 0x4da4a503 # initialize rs2
bext x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcdb126b4 # initialize rs1
li x7, 0xf018063e # initialize rs2
bext x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xab7dba0c # initialize rs1
li x8, 0x84c950cf # initialize rs2
bext x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x6350bc19 # initialize rs1
li x9, 0x7a40547c # initialize rs2
bext x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x574819c6 # initialize rs1
li x10, 0xe951d9d2 # initialize rs2
bext x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xfe66029f # initialize rs1
li x11, 0x2a6ae448 # initialize rs2
bext x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xd59722c7 # initialize rs1
li x12, 0x138299f3 # initialize rs2
bext x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xc1e392ff # initialize rs1
li x13, 0xd5551a1c # initialize rs2
bext x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x74daaafe # initialize rs1
li x14, 0xefc6e386 # initialize rs2
bext x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x95f21067 # initialize rs1
li x15, 0x3b2942b3 # initialize rs2
bext x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x0a88f8e4 # initialize rs1
li x16, 0xe932bfb8 # initialize rs2
bext x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x98ec7a59 # initialize rs1
li x17, 0xc7c093e9 # initialize rs2
bext x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xf57e4450 # initialize rs1
li x18, 0x07ce3c07 # initialize rs2
bext x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x0972e95d # initialize rs1
li x19, 0x8f15f6e4 # initialize rs2
bext x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xfdf9a02c # initialize rs1
li x20, 0x83fc0890 # initialize rs2
bext x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x76e26da0 # initialize rs1
li x21, 0x1919a793 # initialize rs2
bext x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x36460f72 # initialize rs1
li x22, 0x57ebca24 # initialize rs2
bext x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xa2c952a4 # initialize rs1
li x23, 0x8dc94d08 # initialize rs2
bext x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xfad15759 # initialize rs1
li x24, 0xea8bd51a # initialize rs2
bext x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xc828f425 # initialize rs1
li x25, 0xaaab232d # initialize rs2
bext x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x60b97c89 # initialize rs1
li x26, 0x735a934f # initialize rs2
bext x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x32077506 # initialize rs1
li x27, 0x112608e7 # initialize rs2
bext x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x886b719e # initialize rs1
li x28, 0xd996daea # initialize rs2
bext x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xdc27a712 # initialize rs1
li x29, 0xa11b4120 # initialize rs2
bext x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xdb193a13 # initialize rs1
li x30, 0x2ab4a339 # initialize rs2
bext x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x2a774f6f # initialize rs1
li x31, 0xd86a6f81 # initialize rs2
bext x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x19, x18 # perform first operation
bext x8, x25, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x20, x6 # perform first operation
bext x17, x25, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x7, x31 # perform first operation
bext x16, x6, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x8, x29 # perform first operation
bext x31, x31, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x14, x26 # perform first operation
bext x26, x3, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x7, x20 # perform first operation
bext x20, x2, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x28, x21 # perform first operation
bext x13, x15, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x19, x5 # perform first operation
bext x15, x27, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x25, x3 # perform first operation
bext x9, x27, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x1, x22 # perform first operation
bext x1, x24, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x10, x13 # perform first operation
bext x13, x29, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x10, x31 # perform first operation
bext x26, x2, x20 # perform second (triggering) operation

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
