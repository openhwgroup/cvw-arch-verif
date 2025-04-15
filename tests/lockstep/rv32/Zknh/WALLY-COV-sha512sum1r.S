///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zknh/WALLY-COV-sha512sum1r.S
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
li x0, 0xbee84c0d # initialize rs1
li x2, 0x6f50f91c # initialize rs2
sha512sum1r x18, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xd82d3557 # initialize rs1
li x5, 0xd4e212a8 # initialize rs2
sha512sum1r x9, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x642d5d7f # initialize rs1
li x30, 0xb6a94437 # initialize rs2
sha512sum1r x7, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xc21eeb51 # initialize rs1
li x1, 0x0a899a7a # initialize rs2
sha512sum1r x8, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9d4d6908 # initialize rs1
li x10, 0x837785ab # initialize rs2
sha512sum1r x18, x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4193b907 # initialize rs1
li x29, 0x774127da # initialize rs2
sha512sum1r x2, x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe3552b25 # initialize rs1
li x29, 0x408bba6d # initialize rs2
sha512sum1r x16, x6, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x16, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4c24cd2c # initialize rs1
li x23, 0xba733f74 # initialize rs2
sha512sum1r x4, x7, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x614d4314 # initialize rs1
li x27, 0x5b02ad0a # initialize rs2
sha512sum1r x3, x8, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xda4dc0ad # initialize rs1
li x31, 0x47f5148f # initialize rs2
sha512sum1r x7, x9, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xee85f6b4 # initialize rs1
li x9, 0x0b32a029 # initialize rs2
sha512sum1r x24, x10, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa2e335d6 # initialize rs1
li x20, 0xa7fcbdb9 # initialize rs2
sha512sum1r x26, x11, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x8bb1a2a8 # initialize rs1
li x20, 0xd89630df # initialize rs2
sha512sum1r x31, x12, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x54f1e508 # initialize rs1
li x2, 0x7e673cd1 # initialize rs2
sha512sum1r x1, x13, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x2514fc78 # initialize rs1
li x17, 0xcdee5f48 # initialize rs2
sha512sum1r x2, x14, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x67324231 # initialize rs1
li x8, 0xc7d28585 # initialize rs2
sha512sum1r x2, x15, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x3709cde3 # initialize rs1
li x15, 0x5fb33e9c # initialize rs2
sha512sum1r x11, x16, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xac7a5151 # initialize rs1
li x27, 0x85873008 # initialize rs2
sha512sum1r x23, x17, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xeafbe51e # initialize rs1
li x30, 0x450f170f # initialize rs2
sha512sum1r x14, x18, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xd2c05acc # initialize rs1
li x1, 0x102c1ee4 # initialize rs2
sha512sum1r x9, x19, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x1de1e9d3 # initialize rs1
li x13, 0x0b5fe7da # initialize rs2
sha512sum1r x24, x20, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xb49bb328 # initialize rs1
li x31, 0x137a2200 # initialize rs2
sha512sum1r x27, x21, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x3a5eec73 # initialize rs1
li x4, 0xc3d1cce6 # initialize rs2
sha512sum1r x19, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x0784c396 # initialize rs1
li x12, 0x3679407b # initialize rs2
sha512sum1r x6, x23, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xfda62872 # initialize rs1
li x9, 0x91435440 # initialize rs2
sha512sum1r x15, x24, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x3eeb8cf0 # initialize rs1
li x9, 0xf226cddf # initialize rs2
sha512sum1r x30, x25, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x934fa18a # initialize rs1
li x29, 0x23cfea7a # initialize rs2
sha512sum1r x27, x26, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x91779acb # initialize rs1
li x6, 0xe3dc399e # initialize rs2
sha512sum1r x11, x27, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x4500d3b0 # initialize rs1
li x30, 0xe71d6695 # initialize rs2
sha512sum1r x11, x28, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x83035f91 # initialize rs1
li x14, 0x74feafd3 # initialize rs2
sha512sum1r x6, x29, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xbbed2ea7 # initialize rs1
li x19, 0x4292452d # initialize rs2
sha512sum1r x4, x30, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x0b9070c2 # initialize rs1
li x26, 0x1fe1c0ca # initialize rs2
sha512sum1r x15, x31, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x4, 0x57e63944 # initialize rs1
li x0, 0x7c6195f2 # initialize rs2
sha512sum1r x8, x4, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x14, 0xdab2315e # initialize rs1
li x1, 0x67827b55 # initialize rs2
sha512sum1r x23, x14, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0x34f8cb4e # initialize rs1
li x2, 0x8ce318ff # initialize rs2
sha512sum1r x6, x3, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x10, 0x0ccc5151 # initialize rs1
li x3, 0x95bba5c3 # initialize rs2
sha512sum1r x4, x10, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
li x20, 0x6c99b7e5 # initialize rs1
li x4, 0x24c6cc9c # initialize rs2
sha512sum1r x2, x20, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0xf7b2396c # initialize rs1
li x5, 0xc09a1187 # initialize rs2
sha512sum1r x30, x17, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x16, 0x81e094e9 # initialize rs1
li x6, 0xbf435ee8 # initialize rs2
sha512sum1r x1, x16, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x1, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x00a4f01d # initialize rs1
li x7, 0x6f92925c # initialize rs2
sha512sum1r x18, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0xc20c6729 # initialize rs1
li x8, 0x4be12706 # initialize rs2
sha512sum1r x29, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x19, 0x3d30a86f # initialize rs1
li x9, 0x9181c2b5 # initialize rs2
sha512sum1r x15, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x6, 0x1fc84d59 # initialize rs1
li x10, 0xfdaf9270 # initialize rs2
sha512sum1r x1, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x28, 0x1820a2fe # initialize rs1
li x11, 0x502bc985 # initialize rs2
sha512sum1r x2, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x13, 0xffeb0108 # initialize rs1
li x12, 0xbcd9f076 # initialize rs2
sha512sum1r x5, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x26, 0xbedae2cc # initialize rs1
li x13, 0xf2edcb82 # initialize rs2
sha512sum1r x5, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x28, 0xd1db79f3 # initialize rs1
li x14, 0x7dbb1b58 # initialize rs2
sha512sum1r x10, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x20, 0xc21abbf1 # initialize rs1
li x15, 0xa66a34ef # initialize rs2
sha512sum1r x26, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x22, 0x1310ed9d # initialize rs1
li x16, 0x166a1baa # initialize rs2
sha512sum1r x21, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x8, 0x13cb3f2b # initialize rs1
li x17, 0x4fc3376e # initialize rs2
sha512sum1r x27, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0x4d903003 # initialize rs1
li x18, 0x6ca7c986 # initialize rs2
sha512sum1r x12, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x25, 0x028a5e2c # initialize rs1
li x19, 0x3391bfd8 # initialize rs2
sha512sum1r x8, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x22, 0x7bed868e # initialize rs1
li x20, 0x5a93bb4d # initialize rs2
sha512sum1r x13, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x23, 0xdef5b0b4 # initialize rs1
li x21, 0x0749cbb5 # initialize rs2
sha512sum1r x6, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x8, 0x1ccc1410 # initialize rs1
li x22, 0xa90ad70f # initialize rs2
sha512sum1r x2, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x3, 0x5bf10121 # initialize rs1
li x23, 0x8eb01ba2 # initialize rs2
sha512sum1r x9, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x5, 0xb765cb8d # initialize rs1
li x24, 0x396258dc # initialize rs2
sha512sum1r x26, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x20, 0xe0e3bf9c # initialize rs1
li x25, 0xa2895d85 # initialize rs2
sha512sum1r x9, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x9, 0x1df6adc8 # initialize rs1
li x26, 0x4734102f # initialize rs2
sha512sum1r x20, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x22, 0x51722f17 # initialize rs1
li x27, 0x609a70df # initialize rs2
sha512sum1r x9, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x15, 0xdd208c25 # initialize rs1
li x28, 0x29874074 # initialize rs2
sha512sum1r x25, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x31, 0x0376d616 # initialize rs1
li x29, 0x680e392f # initialize rs2
sha512sum1r x23, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x24, 0x730c4706 # initialize rs1
li x30, 0x6253f7e3 # initialize rs2
sha512sum1r x6, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x7, 0x4e437365 # initialize rs1
li x31, 0x52ef00a5 # initialize rs2
sha512sum1r x27, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 252)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0x0012e5af # initialize rs1
li x14, 0xb3ef0615 # initialize rs2
sha512sum1r x0, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x7, 0x35011c14 # initialize rs1
li x17, 0x14d24b91 # initialize rs2
sha512sum1r x1, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0xb55eacd6 # initialize rs1
li x3, 0xb549ee0b # initialize rs2
sha512sum1r x2, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x7, 0xd6fe33bc # initialize rs1
li x31, 0xfaea3372 # initialize rs2
sha512sum1r x3, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x574b7b16 # initialize rs1
li x21, 0x47a40a83 # initialize rs2
sha512sum1r x4, x6, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x980ccc73 # initialize rs1
li x7, 0xb6902cbb # initialize rs2
sha512sum1r x5, x23, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0x4c98c7d8 # initialize rs1
li x27, 0x1e529eae # initialize rs2
sha512sum1r x6, x31, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x1d5f7ef8 # initialize rs1
li x22, 0xe62531e7 # initialize rs2
sha512sum1r x7, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x13, 0xcac02837 # initialize rs1
li x27, 0x982a0a40 # initialize rs2
sha512sum1r x8, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x11, 0x790dd003 # initialize rs1
li x9, 0x09143b2d # initialize rs2
sha512sum1r x9, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0xb54643a5 # initialize rs1
li x23, 0xef00bf93 # initialize rs2
sha512sum1r x10, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x20, 0x202e7801 # initialize rs1
li x3, 0xec7197d3 # initialize rs2
sha512sum1r x11, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x20, 0xd9b8b642 # initialize rs1
li x15, 0xa0ea079f # initialize rs2
sha512sum1r x12, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x5, 0x52eece1e # initialize rs1
li x16, 0xcbf8a505 # initialize rs2
sha512sum1r x13, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x11, 0xbab5e5ba # initialize rs1
li x21, 0xacfc01fa # initialize rs2
sha512sum1r x14, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x1, 0xb24dc4f1 # initialize rs1
li x10, 0x7cc2e09f # initialize rs2
sha512sum1r x15, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x27, 0xb193a9ee # initialize rs1
li x23, 0xa86ea654 # initialize rs2
sha512sum1r x16, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x19, 0x45fd0500 # initialize rs1
li x14, 0x3ad5c4c4 # initialize rs2
sha512sum1r x17, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x2, 0xd4255cb7 # initialize rs1
li x11, 0x29fcade2 # initialize rs2
sha512sum1r x18, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x3, 0xa7d35db6 # initialize rs1
li x15, 0xe3a92dda # initialize rs2
sha512sum1r x19, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x12, 0x29a20bda # initialize rs1
li x30, 0x22c3d207 # initialize rs2
sha512sum1r x20, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x22, 0x7b94ad51 # initialize rs1
li x16, 0xbe751d35 # initialize rs2
sha512sum1r x21, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x14, 0x50315e42 # initialize rs1
li x13, 0xebe2e0b8 # initialize rs2
sha512sum1r x22, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x17, 0x77f73f7e # initialize rs1
li x23, 0xb44e8a2f # initialize rs2
sha512sum1r x23, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x19, 0x9f7c9a48 # initialize rs1
li x3, 0xc3413996 # initialize rs2
sha512sum1r x24, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0x717cdcfa # initialize rs1
li x1, 0x5376a883 # initialize rs2
sha512sum1r x25, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x29, 0xe5795b72 # initialize rs1
li x12, 0x2da7c7fa # initialize rs2
sha512sum1r x26, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0x3d80cd31 # initialize rs1
li x17, 0x76e9f6d4 # initialize rs2
sha512sum1r x27, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x22, 0xd817cc8c # initialize rs1
li x27, 0x2f4d2379 # initialize rs2
sha512sum1r x28, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x27, 0xde084dd0 # initialize rs1
li x1, 0xc6ff089b # initialize rs2
sha512sum1r x29, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x13, 0xa8db93cb # initialize rs1
li x20, 0x8fd56150 # initialize rs2
sha512sum1r x30, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x5, 0xd3dff813 # initialize rs1
li x29, 0x3c1c1e42 # initialize rs2
sha512sum1r x31, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x00000000 # initialize rs1
li x23, 0x4bc627a1 # initialize rs2
sha512sum1r x17, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x3, 0x00000001 # initialize rs1
li x30, 0x9e4905b2 # initialize rs2
sha512sum1r x21, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x6, 0x00000002 # initialize rs1
li x29, 0x62b0aec1 # initialize rs2
sha512sum1r x22, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x7, 0x80000000 # initialize rs1
li x14, 0x43773ba6 # initialize rs2
sha512sum1r x27, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x20, 0x80000001 # initialize rs1
li x13, 0x0d0f8272 # initialize rs2
sha512sum1r x10, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x31, 0x7fffffff # initialize rs1
li x20, 0x8ef5b03b # initialize rs2
sha512sum1r x21, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs1
li x23, 0x9faa715a # initialize rs2
sha512sum1r x21, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x22, 0xffffffff # initialize rs1
li x24, 0xde6a3bfe # initialize rs2
sha512sum1r x10, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0xfffffffe # initialize rs1
li x28, 0x3f885d82 # initialize rs2
sha512sum1r x9, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x15, 0x5bbc8872 # initialize rs1
li x3, 0xd5a1cf3a # initialize rs2
sha512sum1r x18, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x27, 0xaaaaaaaa # initialize rs1
li x6, 0xf6762cfd # initialize rs2
sha512sum1r x24, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x27, 0x55555555 # initialize rs1
li x6, 0x490fa327 # initialize rs2
sha512sum1r x12, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x23, 0x4147178d # initialize rs1
li x29, 0x00000000 # initialize rs2
sha512sum1r x1, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x31, 0xe49ff05b # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sum1r x1, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x21, 0x175ecb1b # initialize rs1
li x28, 0x00000002 # initialize rs2
sha512sum1r x9, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x15, 0x0ce15817 # initialize rs1
li x17, 0x80000000 # initialize rs2
sha512sum1r x31, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x6, 0x075fd96e # initialize rs1
li x29, 0x80000001 # initialize rs2
sha512sum1r x21, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x25, 0xc18ab712 # initialize rs1
li x28, 0x7fffffff # initialize rs2
sha512sum1r x7, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x5, 0x6b489197 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
sha512sum1r x3, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x22, 0x39b00ace # initialize rs1
li x30, 0xffffffff # initialize rs2
sha512sum1r x25, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x10, 0x3f4d9f6d # initialize rs1
li x22, 0xfffffffe # initialize rs2
sha512sum1r x11, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x18, 0xb3a597fb # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
sha512sum1r x1, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x26, 0xa658fb53 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
sha512sum1r x2, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x11, 0x7e7d50d8 # initialize rs1
li x8, 0x55555555 # initialize rs2
sha512sum1r x9, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x19, 0x00000000 # initialize rs1
li x12, 0x00000000 # initialize rs2
sha512sum1r x3, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x5, 0x00000000 # initialize rs1
li x25, 0x00000001 # initialize rs2
sha512sum1r x2, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x20, 0x00000000 # initialize rs1
li x30, 0x00000002 # initialize rs2
sha512sum1r x28, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x24, 0x00000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
sha512sum1r x14, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x7, 0x00000000 # initialize rs1
li x26, 0x80000001 # initialize rs2
sha512sum1r x11, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x22, 0x00000000 # initialize rs1
li x24, 0x7fffffff # initialize rs2
sha512sum1r x12, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x22, 0x00000000 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
sha512sum1r x16, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x10, 0x00000000 # initialize rs1
li x8, 0xffffffff # initialize rs2
sha512sum1r x3, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x16, 0x00000000 # initialize rs1
li x31, 0xfffffffe # initialize rs2
sha512sum1r x11, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x19, 0x00000000 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
sha512sum1r x17, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x8, 0x00000000 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
sha512sum1r x23, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x27, 0x00000000 # initialize rs1
li x7, 0x55555555 # initialize rs2
sha512sum1r x21, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x21, 0x00000001 # initialize rs1
li x14, 0x00000000 # initialize rs2
sha512sum1r x30, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0x00000001 # initialize rs1
li x6, 0x00000001 # initialize rs2
sha512sum1r x31, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x5, 0x00000001 # initialize rs1
li x14, 0x00000002 # initialize rs2
sha512sum1r x9, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x24, 0x00000001 # initialize rs1
li x14, 0x80000000 # initialize rs2
sha512sum1r x15, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x13, 0x00000001 # initialize rs1
li x23, 0x80000001 # initialize rs2
sha512sum1r x28, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x17, 0x00000001 # initialize rs1
li x20, 0x7fffffff # initialize rs2
sha512sum1r x18, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x2, 0x00000001 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
sha512sum1r x15, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x7, 0x00000001 # initialize rs1
li x25, 0xffffffff # initialize rs2
sha512sum1r x19, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x22, 0x00000001 # initialize rs1
li x21, 0xfffffffe # initialize rs2
sha512sum1r x30, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x28, 0x00000001 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
sha512sum1r x6, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x1, 0x00000001 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
sha512sum1r x13, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x9, 0x00000001 # initialize rs1
li x6, 0x55555555 # initialize rs2
sha512sum1r x19, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x31, 0x00000002 # initialize rs1
li x16, 0x00000000 # initialize rs2
sha512sum1r x10, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x1, 0x00000002 # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sum1r x16, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x17, 0x00000002 # initialize rs1
li x21, 0x00000002 # initialize rs2
sha512sum1r x26, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x29, 0x00000002 # initialize rs1
li x2, 0x80000000 # initialize rs2
sha512sum1r x21, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x9, 0x00000002 # initialize rs1
li x27, 0x80000001 # initialize rs2
sha512sum1r x21, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x5, 0x00000002 # initialize rs1
li x9, 0x7fffffff # initialize rs2
sha512sum1r x23, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x17, 0x00000002 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
sha512sum1r x1, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x17, 0x00000002 # initialize rs1
li x29, 0xffffffff # initialize rs2
sha512sum1r x3, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x29, 0x00000002 # initialize rs1
li x28, 0xfffffffe # initialize rs2
sha512sum1r x24, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x28, 0x00000002 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
sha512sum1r x10, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x14, 0x00000002 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
sha512sum1r x11, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x20, 0x00000002 # initialize rs1
li x5, 0x55555555 # initialize rs2
sha512sum1r x30, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x20, 0x80000000 # initialize rs1
li x9, 0x00000000 # initialize rs2
sha512sum1r x14, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x28, 0x80000000 # initialize rs1
li x2, 0x00000001 # initialize rs2
sha512sum1r x26, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x1, 0x80000000 # initialize rs1
li x18, 0x00000002 # initialize rs2
sha512sum1r x26, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x13, 0x80000000 # initialize rs1
li x21, 0x80000000 # initialize rs2
sha512sum1r x10, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x8, 0x80000000 # initialize rs1
li x31, 0x80000001 # initialize rs2
sha512sum1r x16, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x27, 0x80000000 # initialize rs1
li x17, 0x7fffffff # initialize rs2
sha512sum1r x13, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x9, 0x80000000 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
sha512sum1r x11, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x22, 0x80000000 # initialize rs1
li x30, 0xffffffff # initialize rs2
sha512sum1r x12, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x21, 0x80000000 # initialize rs1
li x3, 0xfffffffe # initialize rs2
sha512sum1r x7, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x26, 0x80000000 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
sha512sum1r x3, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x5, 0x80000000 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sha512sum1r x11, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x7, 0x80000000 # initialize rs1
li x5, 0x55555555 # initialize rs2
sha512sum1r x6, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x27, 0x80000001 # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sum1r x20, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x24, 0x80000001 # initialize rs1
li x19, 0x00000001 # initialize rs2
sha512sum1r x30, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x11, 0x80000001 # initialize rs1
li x27, 0x00000002 # initialize rs2
sha512sum1r x31, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x24, 0x80000001 # initialize rs1
li x2, 0x80000000 # initialize rs2
sha512sum1r x25, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x13, 0x80000001 # initialize rs1
li x17, 0x80000001 # initialize rs2
sha512sum1r x11, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x16, 0x80000001 # initialize rs1
li x7, 0x7fffffff # initialize rs2
sha512sum1r x9, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x18, 0x80000001 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
sha512sum1r x17, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x11, 0x80000001 # initialize rs1
li x8, 0xffffffff # initialize rs2
sha512sum1r x22, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x6, 0x80000001 # initialize rs1
li x19, 0xfffffffe # initialize rs2
sha512sum1r x26, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x10, 0x80000001 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
sha512sum1r x6, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x20, 0x80000001 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
sha512sum1r x7, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x13, 0x80000001 # initialize rs1
li x19, 0x55555555 # initialize rs2
sha512sum1r x5, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x29, 0x7fffffff # initialize rs1
li x3, 0x00000000 # initialize rs2
sha512sum1r x6, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x12, 0x7fffffff # initialize rs1
li x18, 0x00000001 # initialize rs2
sha512sum1r x28, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x23, 0x7fffffff # initialize rs1
li x17, 0x00000002 # initialize rs2
sha512sum1r x20, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x13, 0x7fffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
sha512sum1r x8, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x6, 0x7fffffff # initialize rs1
li x10, 0x80000001 # initialize rs2
sha512sum1r x1, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x18, 0x7fffffff # initialize rs1
li x13, 0x7fffffff # initialize rs2
sha512sum1r x11, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x16, 0x7fffffff # initialize rs1
li x23, 0x7ffffffe # initialize rs2
sha512sum1r x14, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x26, 0x7fffffff # initialize rs1
li x19, 0xffffffff # initialize rs2
sha512sum1r x28, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x1, 0x7fffffff # initialize rs1
li x23, 0xfffffffe # initialize rs2
sha512sum1r x8, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x15, 0x7fffffff # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
sha512sum1r x23, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x27, 0x7fffffff # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
sha512sum1r x3, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x9, 0x7fffffff # initialize rs1
li x13, 0x55555555 # initialize rs2
sha512sum1r x20, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x8, 0x7ffffffe # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sum1r x17, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x27, 0x7ffffffe # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sum1r x25, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x22, 0x7ffffffe # initialize rs1
li x10, 0x00000002 # initialize rs2
sha512sum1r x13, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x14, 0x7ffffffe # initialize rs1
li x30, 0x80000000 # initialize rs2
sha512sum1r x9, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x14, 0x7ffffffe # initialize rs1
li x6, 0x80000001 # initialize rs2
sha512sum1r x7, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x16, 0x7ffffffe # initialize rs1
li x30, 0x7fffffff # initialize rs2
sha512sum1r x20, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x10, 0x7ffffffe # initialize rs1
li x30, 0x7ffffffe # initialize rs2
sha512sum1r x23, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x29, 0x7ffffffe # initialize rs1
li x14, 0xffffffff # initialize rs2
sha512sum1r x7, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x31, 0x7ffffffe # initialize rs1
li x16, 0xfffffffe # initialize rs2
sha512sum1r x15, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x30, 0x7ffffffe # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
sha512sum1r x15, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x6, 0x7ffffffe # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sha512sum1r x26, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x20, 0x7ffffffe # initialize rs1
li x25, 0x55555555 # initialize rs2
sha512sum1r x30, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x22, 0xffffffff # initialize rs1
li x7, 0x00000000 # initialize rs2
sha512sum1r x25, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x25, 0xffffffff # initialize rs1
li x5, 0x00000001 # initialize rs2
sha512sum1r x9, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x1, 0xffffffff # initialize rs1
li x16, 0x00000002 # initialize rs2
sha512sum1r x9, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x29, 0xffffffff # initialize rs1
li x19, 0x80000000 # initialize rs2
sha512sum1r x21, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x2, 0xffffffff # initialize rs1
li x23, 0x80000001 # initialize rs2
sha512sum1r x20, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x28, 0xffffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
sha512sum1r x24, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x28, 0xffffffff # initialize rs1
li x26, 0x7ffffffe # initialize rs2
sha512sum1r x14, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x9, 0xffffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
sha512sum1r x30, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x16, 0xffffffff # initialize rs1
li x21, 0xfffffffe # initialize rs2
sha512sum1r x2, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x23, 0xffffffff # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
sha512sum1r x16, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x22, 0xffffffff # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
sha512sum1r x6, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x19, 0xffffffff # initialize rs1
li x15, 0x55555555 # initialize rs2
sha512sum1r x1, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x10, 0xfffffffe # initialize rs1
li x22, 0x00000000 # initialize rs2
sha512sum1r x13, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x8, 0xfffffffe # initialize rs1
li x5, 0x00000001 # initialize rs2
sha512sum1r x10, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x15, 0xfffffffe # initialize rs1
li x10, 0x00000002 # initialize rs2
sha512sum1r x12, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x6, 0xfffffffe # initialize rs1
li x16, 0x80000000 # initialize rs2
sha512sum1r x11, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x3, 0xfffffffe # initialize rs1
li x17, 0x80000001 # initialize rs2
sha512sum1r x23, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x24, 0xfffffffe # initialize rs1
li x12, 0x7fffffff # initialize rs2
sha512sum1r x15, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x18, 0xfffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
sha512sum1r x10, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x16, 0xfffffffe # initialize rs1
li x20, 0xffffffff # initialize rs2
sha512sum1r x5, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x26, 0xfffffffe # initialize rs1
li x10, 0xfffffffe # initialize rs2
sha512sum1r x8, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x26, 0xfffffffe # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
sha512sum1r x29, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x17, 0xfffffffe # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
sha512sum1r x6, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x11, 0xfffffffe # initialize rs1
li x26, 0x55555555 # initialize rs2
sha512sum1r x21, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x8, 0x5bbc8872 # initialize rs1
li x6, 0x00000000 # initialize rs2
sha512sum1r x10, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x11, 0x5bbc8872 # initialize rs1
li x8, 0x00000001 # initialize rs2
sha512sum1r x5, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x17, 0x5bbc8872 # initialize rs1
li x10, 0x00000002 # initialize rs2
sha512sum1r x2, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x11, 0x5bbc8872 # initialize rs1
li x1, 0x80000000 # initialize rs2
sha512sum1r x17, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x20, 0x5bbc8872 # initialize rs1
li x13, 0x80000001 # initialize rs2
sha512sum1r x1, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x6, 0x5bbc8872 # initialize rs1
li x19, 0x7fffffff # initialize rs2
sha512sum1r x13, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x10, 0x5bbc8872 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
sha512sum1r x11, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x10, 0x5bbc8872 # initialize rs1
li x3, 0xffffffff # initialize rs2
sha512sum1r x18, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x5, 0x5bbc8872 # initialize rs1
li x25, 0xfffffffe # initialize rs2
sha512sum1r x27, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x16, 0x5bbc8872 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
sha512sum1r x3, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x22, 0x5bbc8872 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
sha512sum1r x15, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x7, 0x5bbc8872 # initialize rs1
li x14, 0x55555555 # initialize rs2
sha512sum1r x31, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x16, 0xaaaaaaaa # initialize rs1
li x11, 0x00000000 # initialize rs2
sha512sum1r x21, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x21, 0xaaaaaaaa # initialize rs1
li x5, 0x00000001 # initialize rs2
sha512sum1r x19, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x2, 0xaaaaaaaa # initialize rs1
li x20, 0x00000002 # initialize rs2
sha512sum1r x30, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x27, 0xaaaaaaaa # initialize rs1
li x8, 0x80000000 # initialize rs2
sha512sum1r x16, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x12, 0xaaaaaaaa # initialize rs1
li x26, 0x80000001 # initialize rs2
sha512sum1r x15, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x31, 0xaaaaaaaa # initialize rs1
li x8, 0x7fffffff # initialize rs2
sha512sum1r x18, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x10, 0xaaaaaaaa # initialize rs1
li x25, 0x7ffffffe # initialize rs2
sha512sum1r x19, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x19, 0xaaaaaaaa # initialize rs1
li x27, 0xffffffff # initialize rs2
sha512sum1r x10, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x15, 0xaaaaaaaa # initialize rs1
li x10, 0xfffffffe # initialize rs2
sha512sum1r x1, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x15, 0xaaaaaaaa # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
sha512sum1r x6, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x27, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
sha512sum1r x13, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x6, 0xaaaaaaaa # initialize rs1
li x17, 0x55555555 # initialize rs2
sha512sum1r x28, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x20, 0x55555555 # initialize rs1
li x25, 0x00000000 # initialize rs2
sha512sum1r x5, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x12, 0x55555555 # initialize rs1
li x14, 0x00000001 # initialize rs2
sha512sum1r x13, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x2, 0x55555555 # initialize rs1
li x10, 0x00000002 # initialize rs2
sha512sum1r x1, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x19, 0x55555555 # initialize rs1
li x2, 0x80000000 # initialize rs2
sha512sum1r x23, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x7, 0x55555555 # initialize rs1
li x3, 0x80000001 # initialize rs2
sha512sum1r x28, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x28, 0x55555555 # initialize rs1
li x11, 0x7fffffff # initialize rs2
sha512sum1r x5, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x30, 0x55555555 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
sha512sum1r x15, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x13, 0x55555555 # initialize rs1
li x30, 0xffffffff # initialize rs2
sha512sum1r x28, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x14, 0x55555555 # initialize rs1
li x27, 0xfffffffe # initialize rs2
sha512sum1r x30, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x29, 0x55555555 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
sha512sum1r x9, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x11, 0x55555555 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
sha512sum1r x16, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x21, 0x55555555 # initialize rs1
li x18, 0x55555555 # initialize rs2
sha512sum1r x8, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x9ec79e9d # initialize rs1
li x0, 0x2fd85004 # initialize rs2
sha512sum1r x18, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xa5f49451 # initialize rs1
li x1, 0xba69b236 # initialize rs2
sha512sum1r x3, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xa914ea0f # initialize rs1
li x2, 0x6e2f5159 # initialize rs2
sha512sum1r x8, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x45cd1741 # initialize rs1
li x3, 0x24a216eb # initialize rs2
sha512sum1r x20, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x09eaf3fd # initialize rs1
li x4, 0x7fec1e7e # initialize rs2
sha512sum1r x30, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x10ff7bbf # initialize rs1
li x5, 0x3a21b748 # initialize rs2
sha512sum1r x16, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdf486ba6 # initialize rs1
li x6, 0x4c566c7a # initialize rs2
sha512sum1r x28, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x28, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6e2af8fc # initialize rs1
li x7, 0xda977a62 # initialize rs2
sha512sum1r x31, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xed6fb11a # initialize rs1
li x8, 0x2ac61b9d # initialize rs2
sha512sum1r x23, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x5fde95ed # initialize rs1
li x9, 0x7f0618d1 # initialize rs2
sha512sum1r x22, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x66d2a83e # initialize rs1
li x10, 0xc84de00d # initialize rs2
sha512sum1r x20, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x83e1cab2 # initialize rs1
li x11, 0x0087e92d # initialize rs2
sha512sum1r x12, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x0a63ca01 # initialize rs1
li x12, 0x0e8f4164 # initialize rs2
sha512sum1r x15, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x2201f492 # initialize rs1
li x13, 0x9230a369 # initialize rs2
sha512sum1r x6, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x010b3e54 # initialize rs1
li x14, 0xed54ac44 # initialize rs2
sha512sum1r x25, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x395369e8 # initialize rs1
li x15, 0xf79a9239 # initialize rs2
sha512sum1r x18, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x4f6fbe24 # initialize rs1
li x16, 0x7a509df0 # initialize rs2
sha512sum1r x31, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x6cfa6ca8 # initialize rs1
li x17, 0xd141ec11 # initialize rs2
sha512sum1r x1, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x9f0b5cab # initialize rs1
li x18, 0x984b4325 # initialize rs2
sha512sum1r x31, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x44d088ed # initialize rs1
li x19, 0x103fb11f # initialize rs2
sha512sum1r x28, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xb8a787f3 # initialize rs1
li x20, 0x5d3bfd58 # initialize rs2
sha512sum1r x11, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xfc0f9f2f # initialize rs1
li x21, 0xab2e8e1d # initialize rs2
sha512sum1r x23, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xfd7c3601 # initialize rs1
li x22, 0xf5a6a209 # initialize rs2
sha512sum1r x5, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xdf00b7d3 # initialize rs1
li x23, 0xdcf1ab23 # initialize rs2
sha512sum1r x21, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x8a40cf3c # initialize rs1
li x24, 0x72f82bf1 # initialize rs2
sha512sum1r x28, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xf13d1c2b # initialize rs1
li x25, 0xdb4b9f56 # initialize rs2
sha512sum1r x15, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xed3890d4 # initialize rs1
li x26, 0x50ccfc4d # initialize rs2
sha512sum1r x12, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xb9c8cf5c # initialize rs1
li x27, 0xf015048d # initialize rs2
sha512sum1r x24, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xcff5319a # initialize rs1
li x28, 0x67929f76 # initialize rs2
sha512sum1r x2, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x391833ea # initialize rs1
li x29, 0xe16715e1 # initialize rs2
sha512sum1r x8, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x697408d2 # initialize rs1
li x30, 0xade58982 # initialize rs2
sha512sum1r x14, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x06924f68 # initialize rs1
li x31, 0x8aecfce2 # initialize rs2
sha512sum1r x19, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd43efdd5 # initialize rs1
li x2, 0xe6ed5006 # initialize rs2
sha512sum1r x0, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x146f33be # initialize rs1
li x24, 0x9e473971 # initialize rs2
sha512sum1r x1, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x2aa314f9 # initialize rs1
li x28, 0x5f5515f2 # initialize rs2
sha512sum1r x2, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x39549f95 # initialize rs1
li x1, 0x0bb581a2 # initialize rs2
sha512sum1r x3, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xdff8e360 # initialize rs1
li x19, 0x14d6dc9c # initialize rs2
sha512sum1r x4, x4, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4ad013bf # initialize rs1
li x18, 0x1e824582 # initialize rs2
sha512sum1r x5, x5, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3a9e1067 # initialize rs1
li x26, 0x00ff6251 # initialize rs2
sha512sum1r x6, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6df83a13 # initialize rs1
li x11, 0xe21bd6d6 # initialize rs2
sha512sum1r x7, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x4beec249 # initialize rs1
li x29, 0x70290c60 # initialize rs2
sha512sum1r x8, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x09fe22f0 # initialize rs1
li x12, 0xb726cd7e # initialize rs2
sha512sum1r x9, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x718a3537 # initialize rs1
li x8, 0x908107aa # initialize rs2
sha512sum1r x10, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x148c7280 # initialize rs1
li x13, 0x978af36a # initialize rs2
sha512sum1r x11, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x3c518902 # initialize rs1
li x12, 0xbc8f9854 # initialize rs2
sha512sum1r x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x6257f641 # initialize rs1
li x25, 0x1a3a1068 # initialize rs2
sha512sum1r x13, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xd8c41dea # initialize rs1
li x15, 0xbce5105c # initialize rs2
sha512sum1r x14, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x44386c1d # initialize rs1
li x10, 0xc6f4086c # initialize rs2
sha512sum1r x15, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x67be38ca # initialize rs1
li x16, 0xf5527cde # initialize rs2
sha512sum1r x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x29579b17 # initialize rs1
li x20, 0x6459a28d # initialize rs2
sha512sum1r x17, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x8ccd2af4 # initialize rs1
li x5, 0x497bc2ac # initialize rs2
sha512sum1r x18, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x42b2a9b4 # initialize rs1
li x11, 0x7bcc3ac6 # initialize rs2
sha512sum1r x19, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x2651c8fa # initialize rs1
li x10, 0x52cb24ca # initialize rs2
sha512sum1r x20, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xc9716c33 # initialize rs1
li x3, 0xc0349089 # initialize rs2
sha512sum1r x21, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x09e6a404 # initialize rs1
li x16, 0xc727e713 # initialize rs2
sha512sum1r x22, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x31e65b98 # initialize rs1
li x27, 0x9b1e527b # initialize rs2
sha512sum1r x23, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7bbde7b8 # initialize rs1
li x27, 0x59dbebf8 # initialize rs2
sha512sum1r x24, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xe6f98469 # initialize rs1
li x9, 0xeab7f56c # initialize rs2
sha512sum1r x25, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x9bf13fca # initialize rs1
li x23, 0xb9acde41 # initialize rs2
sha512sum1r x26, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xeb613386 # initialize rs1
li x6, 0xe19ce535 # initialize rs2
sha512sum1r x27, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x8f418474 # initialize rs1
li x29, 0x2a7a2094 # initialize rs2
sha512sum1r x28, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x15909e2a # initialize rs1
li x18, 0xad0fb530 # initialize rs2
sha512sum1r x29, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xa530b77a # initialize rs1
li x2, 0xaeffeb4a # initialize rs2
sha512sum1r x30, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xbbd0d9bb # initialize rs1
li x2, 0x28f443fa # initialize rs2
sha512sum1r x31, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x8, 0x7f23c9a9 # initialize rs1
li x0, 0xe207b90c # initialize rs2
sha512sum1r x0, x8, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x23, 0x36096152 # initialize rs1
li x1, 0x4378a1c0 # initialize rs2
sha512sum1r x1, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x10, 0x46bd0f42 # initialize rs1
li x2, 0x295c8917 # initialize rs2
sha512sum1r x2, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x21, 0x0ede7b6e # initialize rs1
li x3, 0xb92f3bcb # initialize rs2
sha512sum1r x3, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0xddb59d6d # initialize rs1
li x4, 0x2118e225 # initialize rs2
sha512sum1r x4, x13, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x3c9a2553 # initialize rs1
li x5, 0x8212af25 # initialize rs2
sha512sum1r x5, x3, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0xa8c92f79 # initialize rs1
li x6, 0xf996be1e # initialize rs2
sha512sum1r x6, x26, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x96c50c37 # initialize rs1
li x7, 0xebce7ba3 # initialize rs2
sha512sum1r x7, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x13, 0x6c659b93 # initialize rs1
li x8, 0xecd9e8a2 # initialize rs2
sha512sum1r x8, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x22, 0x6edeaa3e # initialize rs1
li x9, 0x6d296fdc # initialize rs2
sha512sum1r x9, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x26, 0x1ab3080b # initialize rs1
li x10, 0xe64bcc9d # initialize rs2
sha512sum1r x10, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x25, 0x0a67754d # initialize rs1
li x11, 0x8a221e79 # initialize rs2
sha512sum1r x11, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x3, 0xe2c2255b # initialize rs1
li x12, 0x4be4ab65 # initialize rs2
sha512sum1r x12, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x9, 0x1968ca1b # initialize rs1
li x13, 0x7307540a # initialize rs2
sha512sum1r x13, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x6, 0xc60833a4 # initialize rs1
li x14, 0x1c939cab # initialize rs2
sha512sum1r x14, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x21, 0x0f6b4d7b # initialize rs1
li x15, 0x6d4783d1 # initialize rs2
sha512sum1r x15, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x2, 0x04ddc1fa # initialize rs1
li x16, 0x45e84249 # initialize rs2
sha512sum1r x16, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x8f617a01 # initialize rs1
li x17, 0x5debe70a # initialize rs2
sha512sum1r x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x15, 0xfe039b7a # initialize rs1
li x18, 0x419c2fd1 # initialize rs2
sha512sum1r x18, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x9, 0x03611c99 # initialize rs1
li x19, 0x8e52ee95 # initialize rs2
sha512sum1r x19, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x10, 0xc47bb8ac # initialize rs1
li x20, 0x4c2bf69a # initialize rs2
sha512sum1r x20, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0x5a54867d # initialize rs1
li x21, 0xe972a21b # initialize rs2
sha512sum1r x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x20, 0xf9f68bb2 # initialize rs1
li x22, 0xe7f5c142 # initialize rs2
sha512sum1r x22, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x9, 0x58a12d18 # initialize rs1
li x23, 0xd8c98f2c # initialize rs2
sha512sum1r x23, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x18, 0xde0988cf # initialize rs1
li x24, 0x0e33a6cd # initialize rs2
sha512sum1r x24, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x30, 0x8a21be47 # initialize rs1
li x25, 0xaf775ad4 # initialize rs2
sha512sum1r x25, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x28, 0xf6daed02 # initialize rs1
li x26, 0x9ea187c1 # initialize rs2
sha512sum1r x26, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x16, 0xcbcedf7e # initialize rs1
li x27, 0x5270965d # initialize rs2
sha512sum1r x27, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x13, 0xfda3e72b # initialize rs1
li x28, 0x0a295350 # initialize rs2
sha512sum1r x28, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x16, 0xf401709d # initialize rs1
li x29, 0x48addc51 # initialize rs2
sha512sum1r x29, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x12, 0x7fa6d045 # initialize rs1
li x30, 0x797ffd86 # initialize rs2
sha512sum1r x30, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x1, 0x8b5eb1cf # initialize rs1
li x31, 0x87d95c85 # initialize rs2
sha512sum1r x31, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xd581ff23 # initialize rs1
li x0, 0xa7df062c # initialize rs2
sha512sum1r x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xd5a24497 # initialize rs1
li x1, 0xb4243682 # initialize rs2
sha512sum1r x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x7c96b44b # initialize rs1
li x2, 0x874063ce # initialize rs2
sha512sum1r x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x4713fd0d # initialize rs1
li x3, 0x173e5ad7 # initialize rs2
sha512sum1r x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x040ddd14 # initialize rs1
li x4, 0x85496f21 # initialize rs2
sha512sum1r x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x46c651cf # initialize rs1
li x5, 0x0782aea9 # initialize rs2
sha512sum1r x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x617586e0 # initialize rs1
li x6, 0x5ef46b58 # initialize rs2
sha512sum1r x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb043dcb5 # initialize rs1
li x7, 0x21a44395 # initialize rs2
sha512sum1r x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xaad222dd # initialize rs1
li x8, 0x3976aec5 # initialize rs2
sha512sum1r x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x5fb1c8ad # initialize rs1
li x9, 0x5688c9de # initialize rs2
sha512sum1r x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x1df6e1c9 # initialize rs1
li x10, 0xe8af08d3 # initialize rs2
sha512sum1r x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xce298c7e # initialize rs1
li x11, 0xbdfc21e1 # initialize rs2
sha512sum1r x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x7975e4aa # initialize rs1
li x12, 0x43a6b5d3 # initialize rs2
sha512sum1r x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xdd0dca50 # initialize rs1
li x13, 0xb0a2ce6f # initialize rs2
sha512sum1r x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x71ad56cc # initialize rs1
li x14, 0x69b2e147 # initialize rs2
sha512sum1r x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x9cd25866 # initialize rs1
li x15, 0x0bdd08fb # initialize rs2
sha512sum1r x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x791fc515 # initialize rs1
li x16, 0x60c8de02 # initialize rs2
sha512sum1r x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x0329239a # initialize rs1
li x17, 0x6e532899 # initialize rs2
sha512sum1r x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x282065b3 # initialize rs1
li x18, 0xe8452061 # initialize rs2
sha512sum1r x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x98c316b8 # initialize rs1
li x19, 0xdbfc3aff # initialize rs2
sha512sum1r x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x633eed4f # initialize rs1
li x20, 0x577be4bb # initialize rs2
sha512sum1r x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xf24628ed # initialize rs1
li x21, 0x3ee4cb9d # initialize rs2
sha512sum1r x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xc02a4cf9 # initialize rs1
li x22, 0x5855bb88 # initialize rs2
sha512sum1r x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x0e9625ba # initialize rs1
li x23, 0xf126fc93 # initialize rs2
sha512sum1r x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x55f30172 # initialize rs1
li x24, 0x12b49ba2 # initialize rs2
sha512sum1r x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x26154669 # initialize rs1
li x25, 0x69c369ba # initialize rs2
sha512sum1r x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x70645c0e # initialize rs1
li x26, 0x6abbdabf # initialize rs2
sha512sum1r x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xba005f2c # initialize rs1
li x27, 0xc7b9723b # initialize rs2
sha512sum1r x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x0f83d804 # initialize rs1
li x28, 0xa37fa793 # initialize rs2
sha512sum1r x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x75f70ede # initialize rs1
li x29, 0xbf01a431 # initialize rs2
sha512sum1r x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xa4772b94 # initialize rs1
li x30, 0x2f326dab # initialize rs2
sha512sum1r x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x1b21daea # initialize rs1
li x31, 0x5b2d58f8 # initialize rs2
sha512sum1r x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x2, x7 # perform first operation
sha512sum1r x29, x31, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x9, x7 # perform first operation
sha512sum1r x5, x1, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x15, x24 # perform first operation
sha512sum1r x17, x9, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x21, x2 # perform first operation
sha512sum1r x17, x6, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x18, x7 # perform first operation
sha512sum1r x19, x30, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x13, x23 # perform first operation
sha512sum1r x2, x18, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x3, x13 # perform first operation
sha512sum1r x22, x24, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x6, x3 # perform first operation
sha512sum1r x10, x14, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x14, x26 # perform first operation
sha512sum1r x11, x13, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x28, x21 # perform first operation
sha512sum1r x28, x3, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x28, x1 # perform first operation
sha512sum1r x1, x20, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x8, x24 # perform first operation
sha512sum1r x6, x31, x25 # perform second (triggering) operation

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
