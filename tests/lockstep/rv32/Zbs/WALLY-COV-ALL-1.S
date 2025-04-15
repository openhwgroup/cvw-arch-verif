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
// Tests from: WALLY-COV-bseti.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xa9dfe4c6 # initialize rs1
bseti x29, x0, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x405437cb # initialize rs1
bseti x2, x1, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xe0602c2b # initialize rs1
bseti x26, x2, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x0756c4a9 # initialize rs1
bseti x1, x3, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5ce82e81 # initialize rs1
bseti x9, x4, 19 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5dadd760 # initialize rs1
bseti x3, x5, 5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xca536143 # initialize rs1
bseti x21, x6, 17 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x56e7fcf4 # initialize rs1
bseti x2, x7, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x173e87a6 # initialize rs1
bseti x24, x8, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x40b9aa36 # initialize rs1
bseti x25, x9, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xe144ad81 # initialize rs1
bseti x1, x10, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x56c87a36 # initialize rs1
bseti x2, x11, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xfb42360a # initialize rs1
bseti x11, x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x71140a3d # initialize rs1
bseti x6, x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xf27b1eb4 # initialize rs1
bseti x11, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x2445559f # initialize rs1
bseti x2, x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x5641e3cc # initialize rs1
bseti x17, x16, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe046a72e # initialize rs1
bseti x13, x17, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x39f6099f # initialize rs1
bseti x14, x18, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x85150148 # initialize rs1
bseti x21, x19, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xeb2a22c1 # initialize rs1
bseti x1, x20, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x36813955 # initialize rs1
bseti x13, x21, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xd2bd3b06 # initialize rs1
bseti x19, x22, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x10d1f104 # initialize rs1
bseti x15, x23, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x56978a44 # initialize rs1
bseti x25, x24, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x8ab538ab # initialize rs1
bseti x26, x25, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x867f86b2 # initialize rs1
bseti x27, x26, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xe31c1c7b # initialize rs1
bseti x13, x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xb820bd96 # initialize rs1
bseti x29, x28, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x14b97fc7 # initialize rs1
bseti x12, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x3c1dd0ae # initialize rs1
bseti x12, x30, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x61f524a0 # initialize rs1
bseti x12, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 124)

# Testcase cp_rd (Test destination rd = x0)
li x8, 0xf9aa48f7 # initialize rs1
bseti x0, x8, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xe489ad79 # initialize rs1
bseti x1, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x6, 0x7c39dd95 # initialize rs1
bseti x2, x6, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x18, 0x147185f8 # initialize rs1
bseti x3, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0xbc6b8e0f # initialize rs1
bseti x4, x30, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x87c9748e # initialize rs1
bseti x5, x18, 5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0xf6f1d5b3 # initialize rs1
bseti x6, x15, 2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x14, 0xc9970866 # initialize rs1
bseti x7, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x20, 0xf030294b # initialize rs1
bseti x8, x20, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x25, 0xad7b5a8f # initialize rs1
bseti x9, x25, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x19, 0x89396c6b # initialize rs1
bseti x10, x19, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x20, 0x3cc4c601 # initialize rs1
bseti x11, x20, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x6, 0xf3b575fc # initialize rs1
bseti x12, x6, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x19, 0x020483b9 # initialize rs1
bseti x13, x19, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x19, 0x9018fedd # initialize rs1
bseti x14, x19, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x19, 0xc5823722 # initialize rs1
bseti x15, x19, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x3, 0xb0c62bc8 # initialize rs1
bseti x16, x3, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x11, 0x51dfe5a2 # initialize rs1
bseti x17, x11, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x14, 0x86d052ee # initialize rs1
bseti x18, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x22, 0x5a683fd5 # initialize rs1
bseti x19, x22, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x15, 0xb43a0e3b # initialize rs1
bseti x20, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x11, 0x88c0fc12 # initialize rs1
bseti x21, x11, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x3, 0x37c2373f # initialize rs1
bseti x22, x3, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x1, 0x857010da # initialize rs1
bseti x23, x1, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x29, 0x47ca2983 # initialize rs1
bseti x24, x29, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x27, 0xbfaf11cb # initialize rs1
bseti x25, x27, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x21, 0xeffc51af # initialize rs1
bseti x26, x21, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xf25eeefa # initialize rs1
bseti x27, x27, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x29, 0xdc6b3947 # initialize rs1
bseti x28, x29, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x17, 0xf8fd192d # initialize rs1
bseti x29, x17, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x11, 0x41a84e58 # initialize rs1
bseti x30, x11, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x11, 0x15a5df0e # initialize rs1
bseti x31, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x1, 0x00000000 # initialize rs1
bseti x15, x1, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x00000001 # initialize rs1
bseti x11, x10, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0x00000002 # initialize rs1
bseti x8, x31, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x28, 0x80000000 # initialize rs1
bseti x1, x28, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x6, 0x80000001 # initialize rs1
bseti x14, x6, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x21, 0x7fffffff # initialize rs1
bseti x2, x21, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x19, 0x7ffffffe # initialize rs1
bseti x27, x19, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x16, 0xffffffff # initialize rs1
bseti x10, x16, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x20, 0xfffffffe # initialize rs1
bseti x22, x20, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x20, 0x5bbc8872 # initialize rs1
bseti x5, x20, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x19, 0xaaaaaaaa # initialize rs1
bseti x26, x19, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x14, 0x55555555 # initialize rs1
bseti x25, x14, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd97be02f # initialize rs1
bseti x0, x0, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa37dc857 # initialize rs1
bseti x1, x1, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xe4963ed0 # initialize rs1
bseti x2, x2, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xff926e26 # initialize rs1
bseti x3, x3, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x04d961a5 # initialize rs1
bseti x4, x4, 6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x30a02eee # initialize rs1
bseti x5, x5, 9 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc27190f3 # initialize rs1
bseti x6, x6, 29 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x47d5bbe3 # initialize rs1
bseti x7, x7, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf1c55bd5 # initialize rs1
bseti x8, x8, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x507f523a # initialize rs1
bseti x9, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x30cac2a1 # initialize rs1
bseti x10, x10, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x5a70ca70 # initialize rs1
bseti x11, x11, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x5f21a286 # initialize rs1
bseti x12, x12, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x0fc49806 # initialize rs1
bseti x13, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x12d6d70e # initialize rs1
bseti x14, x14, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xb5557740 # initialize rs1
bseti x15, x15, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x81ea51f4 # initialize rs1
bseti x16, x16, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x152b2e43 # initialize rs1
bseti x17, x17, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x5b62409c # initialize rs1
bseti x18, x18, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x109ae483 # initialize rs1
bseti x19, x19, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xade967ae # initialize rs1
bseti x20, x20, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x267daf3c # initialize rs1
bseti x21, x21, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x54ae7dae # initialize rs1
bseti x22, x22, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x98f10f3a # initialize rs1
bseti x23, x23, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x1be645bf # initialize rs1
bseti x24, x24, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xeec1236c # initialize rs1
bseti x25, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x05c17632 # initialize rs1
bseti x26, x26, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x27a1d2d8 # initialize rs1
bseti x27, x27, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xeef4aebd # initialize rs1
bseti x28, x28, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xdbae281c # initialize rs1
bseti x29, x29, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xca3295de # initialize rs1
bseti x30, x30, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x550a8b48 # initialize rs1
bseti x31, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_uimm (Test bit = 0)
li x21, 0x19d73273 # initialize rs1
bseti x30, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 432)

# Testcase cp_uimm (Test bit = 1)
li x22, 0x318e0a8f # initialize rs1
bseti x14, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 436)

# Testcase cp_uimm (Test bit = 2)
li x25, 0x39600cb3 # initialize rs1
bseti x20, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 440)

# Testcase cp_uimm (Test bit = 3)
li x17, 0x2de1b289 # initialize rs1
bseti x12, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 444)

# Testcase cp_uimm (Test bit = 4)
li x19, 0xdaa435c9 # initialize rs1
bseti x20, x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 448)

# Testcase cp_uimm (Test bit = 5)
li x5, 0xc81366b4 # initialize rs1
bseti x26, x5, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 452)

# Testcase cp_uimm (Test bit = 6)
li x29, 0x6db2cf08 # initialize rs1
bseti x18, x29, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 456)

# Testcase cp_uimm (Test bit = 7)
li x15, 0xb87f6ee4 # initialize rs1
bseti x2, x15, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 460)

# Testcase cp_uimm (Test bit = 8)
li x14, 0xcca38f8c # initialize rs1
bseti x25, x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 464)

# Testcase cp_uimm (Test bit = 9)
li x28, 0x1f34ceda # initialize rs1
bseti x14, x28, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 468)

# Testcase cp_uimm (Test bit = 10)
li x6, 0x0956a69c # initialize rs1
bseti x15, x6, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 472)

# Testcase cp_uimm (Test bit = 11)
li x17, 0xb58c63ed # initialize rs1
bseti x9, x17, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 476)

# Testcase cp_uimm (Test bit = 12)
li x26, 0xdd23f5cb # initialize rs1
bseti x1, x26, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 480)

# Testcase cp_uimm (Test bit = 13)
li x19, 0x2cf07d47 # initialize rs1
bseti x29, x19, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 484)

# Testcase cp_uimm (Test bit = 14)
li x24, 0xec890fa0 # initialize rs1
bseti x16, x24, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 488)

# Testcase cp_uimm (Test bit = 15)
li x23, 0x2bdc8b47 # initialize rs1
bseti x1, x23, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 492)

# Testcase cp_uimm (Test bit = 16)
li x22, 0x6112a3b0 # initialize rs1
bseti x20, x22, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 496)

# Testcase cp_uimm (Test bit = 17)
li x25, 0xe7ffbca1 # initialize rs1
bseti x30, x25, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 500)

# Testcase cp_uimm (Test bit = 18)
li x19, 0x34b3d897 # initialize rs1
bseti x1, x19, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 504)

# Testcase cp_uimm (Test bit = 19)
li x14, 0xfc3caa43 # initialize rs1
bseti x27, x14, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 508)

# Testcase cp_uimm (Test bit = 20)
li x19, 0xd2d6791e # initialize rs1
bseti x27, x19, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 512)

# Testcase cp_uimm (Test bit = 21)
li x24, 0x3fe087bb # initialize rs1
bseti x13, x24, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 516)

# Testcase cp_uimm (Test bit = 22)
li x28, 0x80e3ba9b # initialize rs1
bseti x2, x28, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 520)

# Testcase cp_uimm (Test bit = 23)
li x15, 0x56ad44e1 # initialize rs1
bseti x19, x15, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 524)

# Testcase cp_uimm (Test bit = 24)
li x1, 0xf461507f # initialize rs1
bseti x10, x1, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_uimm (Test bit = 25)
li x20, 0x716260ed # initialize rs1
bseti x14, x20, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 532)

# Testcase cp_uimm (Test bit = 26)
li x1, 0xe4c4e42c # initialize rs1
bseti x8, x1, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 536)

# Testcase cp_uimm (Test bit = 27)
li x25, 0xd42e3f03 # initialize rs1
bseti x14, x25, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 540)

# Testcase cp_uimm (Test bit = 28)
li x24, 0x9bf29f3f # initialize rs1
bseti x10, x24, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cp_uimm (Test bit = 29)
li x26, 0x99640f5e # initialize rs1
bseti x12, x26, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 548)

# Testcase cp_uimm (Test bit = 30)
li x1, 0xd60a5a43 # initialize rs1
bseti x14, x1, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 552)

# Testcase cp_uimm (Test bit = 31)
li x10, 0x3a4e74c0 # initialize rs1
bseti x6, x10, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 556)

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x21, x30 # perform first operation
bseti x2, x31, 25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x17, x14 # perform first operation
bseti x13, x26, 24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x19, x1 # perform first operation
bseti x13, x11, 10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x29, x14 # perform first operation
bseti x14, x5, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x30, x29 # perform first operation
bseti x29, x18, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x8, x22 # perform first operation
bseti x22, x14, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x5, x30 # perform first operation
bseti x22, x26, 10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x18, x7 # perform first operation
bseti x24, x1, 20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x21, x5 # perform first operation
bseti x16, x28, 7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x29, x5 # perform first operation
bseti x29, x21, 28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x27, x21 # perform first operation
bseti x21, x5, 30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x8, x23 # perform first operation
bseti x29, x27, 0 # perform second (triggering) operation

#.EQU SIGSIZE,560


// ******************
// Tests from: WALLY-COV-binv.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x79b4fd5a # initialize rs1
li x26, 0xd6777356 # initialize rs2
binv x5, x0, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x0ea8487b # initialize rs1
li x10, 0x6fdaac0c # initialize rs2
binv x23, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb5ad7076 # initialize rs1
li x19, 0x71948b8e # initialize rs2
binv x1, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x8bd6824b # initialize rs1
li x27, 0xb7598598 # initialize rs2
binv x28, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf0179ce1 # initialize rs1
li x12, 0x1194bd34 # initialize rs2
binv x28, x4, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfee3fc18 # initialize rs1
li x20, 0xe728893d # initialize rs2
binv x15, x5, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xaa04d749 # initialize rs1
li x17, 0x6aafd356 # initialize rs2
binv x15, x6, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xddf15292 # initialize rs1
li x9, 0x5de21255 # initialize rs2
binv x20, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xfbf68e0b # initialize rs1
li x3, 0x3f53632f # initialize rs2
binv x25, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xbb36474d # initialize rs1
li x23, 0xdc3b4139 # initialize rs2
binv x12, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x57c9f109 # initialize rs1
li x31, 0xeaad0836 # initialize rs2
binv x30, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xe8018f16 # initialize rs1
li x19, 0xc9db6d7d # initialize rs2
binv x14, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xcb9ad5c9 # initialize rs1
li x2, 0x259602a4 # initialize rs2
binv x27, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x8eb94500 # initialize rs1
li x19, 0x17891cbe # initialize rs2
binv x24, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x65632084 # initialize rs1
li x19, 0x7d0259a9 # initialize rs2
binv x8, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x33ecff50 # initialize rs1
li x9, 0xaa0180e8 # initialize rs2
binv x11, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xec944120 # initialize rs1
li x1, 0x11bc29b8 # initialize rs2
binv x8, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xa39e284c # initialize rs1
li x28, 0xc39870d4 # initialize rs2
binv x24, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xaf66920f # initialize rs1
li x27, 0xff5f7434 # initialize rs2
binv x7, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xd81632e1 # initialize rs1
li x25, 0x543b14da # initialize rs2
binv x10, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xcaacfac2 # initialize rs1
li x6, 0xab0d2040 # initialize rs2
binv x24, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xdab21c7f # initialize rs1
li x14, 0x76efe923 # initialize rs2
binv x18, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x3ffa6a91 # initialize rs1
li x19, 0x66f92593 # initialize rs2
binv x9, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xa5568ac2 # initialize rs1
li x10, 0x868685c2 # initialize rs2
binv x8, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x8c51d72c # initialize rs1
li x5, 0xbd24ec8d # initialize rs2
binv x13, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x188109c5 # initialize rs1
li x31, 0x45ee7a81 # initialize rs2
binv x7, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x72253086 # initialize rs1
li x15, 0x4b3d91c2 # initialize rs2
binv x16, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xf0a4859f # initialize rs1
li x14, 0x4326b11c # initialize rs2
binv x8, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x052d4b43 # initialize rs1
li x29, 0xbdd1cfa5 # initialize rs2
binv x22, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xfe59a4dc # initialize rs1
li x14, 0x711c8641 # initialize rs2
binv x6, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xccdc225c # initialize rs1
li x28, 0xbec26953 # initialize rs2
binv x16, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xc6338484 # initialize rs1
li x14, 0xa11c1522 # initialize rs2
binv x29, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x13, 0x00527f07 # initialize rs1
li x0, 0x9132e208 # initialize rs2
binv x5, x13, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x21, 0xc5798f04 # initialize rs1
li x1, 0x8ec677a9 # initialize rs2
binv x19, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x20, 0x1cf79cd4 # initialize rs1
li x2, 0x48be8294 # initialize rs2
binv x13, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x5, 0xae8b1f03 # initialize rs1
li x3, 0x9c14c4a2 # initialize rs2
binv x17, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0x03bdbaa9 # initialize rs1
li x4, 0xf4ed7b6d # initialize rs2
binv x9, x20, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x79226594 # initialize rs1
li x5, 0x053960f0 # initialize rs2
binv x22, x23, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0xfb9442ff # initialize rs1
li x6, 0xf8413aeb # initialize rs2
binv x29, x9, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x12, 0x40071f97 # initialize rs1
li x7, 0x69b06ddb # initialize rs2
binv x4, x12, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x10, 0x78d9d053 # initialize rs1
li x8, 0x5ad1e07e # initialize rs2
binv x15, x10, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x16, 0x21364627 # initialize rs1
li x9, 0xd41abb6d # initialize rs2
binv x28, x16, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x29, 0x0cd52875 # initialize rs1
li x10, 0xd1fdd1f6 # initialize rs2
binv x8, x29, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x31, 0x6f3f2a91 # initialize rs1
li x11, 0xb05df4bb # initialize rs2
binv x9, x31, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x28, 0x7a009d33 # initialize rs1
li x12, 0xba53bf69 # initialize rs2
binv x27, x28, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x6, 0x3b23a698 # initialize rs1
li x13, 0xbb49d86f # initialize rs2
binv x4, x6, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x11, 0xa88b0b74 # initialize rs1
li x14, 0x2a358232 # initialize rs2
binv x23, x11, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x13, 0xc294c5e6 # initialize rs1
li x15, 0xb00f1eda # initialize rs2
binv x16, x13, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x18, 0x5037b219 # initialize rs1
li x16, 0x47419ee0 # initialize rs2
binv x28, x18, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x7, 0x1465e363 # initialize rs1
li x17, 0xd1d69779 # initialize rs2
binv x19, x7, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x3, 0x1dd15627 # initialize rs1
li x18, 0x178abefa # initialize rs2
binv x10, x3, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x17, 0x914c97da # initialize rs1
li x19, 0x85d13daa # initialize rs2
binv x3, x17, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x13, 0xde5a0d04 # initialize rs1
li x20, 0x4635104f # initialize rs2
binv x3, x13, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x18, 0xb1a9e399 # initialize rs1
li x21, 0xe2bea7ce # initialize rs2
binv x13, x18, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x4, 0x75ff2f66 # initialize rs1
li x22, 0x0284cf8d # initialize rs2
binv x31, x4, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x4, 0x91cd2c51 # initialize rs1
li x23, 0xd25c5c60 # initialize rs2
binv x12, x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x29, 0x43d2c8cb # initialize rs1
li x24, 0xee39dd49 # initialize rs2
binv x6, x29, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x31, 0xc5f87a7e # initialize rs1
li x25, 0xb594ed6c # initialize rs2
binv x6, x31, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0x80a30ec1 # initialize rs1
li x26, 0x5825306b # initialize rs2
binv x3, x28, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x26, 0x01e9853c # initialize rs1
li x27, 0xe3429a25 # initialize rs2
binv x3, x26, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x4, 0x73fb0e22 # initialize rs1
li x28, 0x9b527fb4 # initialize rs2
binv x6, x4, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x8, 0xfd8ee7f8 # initialize rs1
li x29, 0x282c61b3 # initialize rs2
binv x6, x8, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x15, 0x2768a462 # initialize rs1
li x30, 0xefe9174d # initialize rs2
binv x9, x15, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x7, 0x1843572d # initialize rs1
li x31, 0x36db3a9e # initialize rs2
binv x15, x7, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 252)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0xe5df1d9d # initialize rs1
li x15, 0xea93f989 # initialize rs2
binv x0, x3, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x2, 0xe0f89380 # initialize rs1
li x24, 0xea56c787 # initialize rs2
binv x1, x2, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x19, 0xf9199321 # initialize rs1
li x1, 0x774fb601 # initialize rs2
binv x2, x19, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x8, 0x9841d133 # initialize rs1
li x23, 0xc801045c # initialize rs2
binv x3, x8, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
li x7, 0x882d166f # initialize rs1
li x26, 0x4a8e3a3b # initialize rs2
binv x4, x7, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x6940aec9 # initialize rs1
li x16, 0x0e6c3137 # initialize rs2
binv x5, x31, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0xd68d445f # initialize rs1
li x19, 0xfa69818a # initialize rs2
binv x6, x28, x19 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0x4b7f39e0 # initialize rs1
li x12, 0xa1bc1d2c # initialize rs2
binv x7, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x15, 0x4475bfce # initialize rs1
li x22, 0x87a8f40b # initialize rs2
binv x8, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x22, 0x990d02a1 # initialize rs1
li x3, 0x5e43d269 # initialize rs2
binv x9, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x23, 0xcce930aa # initialize rs1
li x26, 0x79a4ff68 # initialize rs2
binv x10, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0xe7fe0b62 # initialize rs1
li x16, 0xbc1c274e # initialize rs2
binv x11, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x21, 0x3fbbb1f2 # initialize rs1
li x19, 0x435f645c # initialize rs2
binv x12, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x1, 0xeadc3ca7 # initialize rs1
li x11, 0x1a799174 # initialize rs2
binv x13, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x29, 0x7f4693fd # initialize rs1
li x17, 0x3c5542c0 # initialize rs2
binv x14, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x6, 0xb9986bf8 # initialize rs1
li x12, 0xb02c5d81 # initialize rs2
binv x15, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x14, 0xa857730c # initialize rs1
li x6, 0xc7b45c95 # initialize rs2
binv x16, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x28, 0x46e77a1b # initialize rs1
li x3, 0x4f66f978 # initialize rs2
binv x17, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x1, 0x7f23e9bd # initialize rs1
li x31, 0xfacbda89 # initialize rs2
binv x18, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x5, 0x4a127357 # initialize rs1
li x23, 0xe67d1c90 # initialize rs2
binv x19, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x26, 0x367a923f # initialize rs1
li x2, 0x756af742 # initialize rs2
binv x20, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x26, 0x44c64c3d # initialize rs1
li x23, 0xbee02077 # initialize rs2
binv x21, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x18, 0x5bbbf7ad # initialize rs1
li x8, 0xe155723b # initialize rs2
binv x22, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0x7c3295ea # initialize rs1
li x13, 0x0f8073e7 # initialize rs2
binv x23, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x27, 0xd5d3bc0b # initialize rs1
li x22, 0x11b37186 # initialize rs2
binv x24, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0x91236a45 # initialize rs1
li x30, 0xb96cb8eb # initialize rs2
binv x25, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x30, 0xda02984b # initialize rs1
li x6, 0xeb782d2f # initialize rs2
binv x26, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0xb1248df6 # initialize rs1
li x14, 0xd99e8e7f # initialize rs2
binv x27, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x18, 0x9cd1db2e # initialize rs1
li x29, 0x772e0a83 # initialize rs2
binv x28, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x24, 0x28a3c910 # initialize rs1
li x15, 0x76ba665a # initialize rs2
binv x29, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x17, 0xb3f132c7 # initialize rs1
li x25, 0x5c2eded2 # initialize rs2
binv x30, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x3, 0x5858409e # initialize rs1
li x9, 0x43bc0a0e # initialize rs2
binv x31, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x19, 0x00000000 # initialize rs1
li x13, 0x93e70278 # initialize rs2
binv x14, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x2, 0x00000001 # initialize rs1
li x28, 0x45d01fe3 # initialize rs2
binv x26, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x28, 0x00000002 # initialize rs1
li x17, 0x194ceae8 # initialize rs2
binv x12, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x22, 0x80000000 # initialize rs1
li x12, 0x4b04a9eb # initialize rs2
binv x6, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x26, 0x80000001 # initialize rs1
li x10, 0x6758494f # initialize rs2
binv x16, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x14, 0x7fffffff # initialize rs1
li x1, 0x6330400b # initialize rs2
binv x7, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x6, 0x7ffffffe # initialize rs1
li x21, 0x8d238e80 # initialize rs2
binv x3, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x17, 0xffffffff # initialize rs1
li x10, 0x0fe9631d # initialize rs2
binv x18, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0xfffffffe # initialize rs1
li x25, 0xcec29530 # initialize rs2
binv x7, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x3, 0x5bbc8872 # initialize rs1
li x14, 0x354de9a4 # initialize rs2
binv x9, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
li x12, 0x80568859 # initialize rs2
binv x30, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x30, 0x55555555 # initialize rs1
li x12, 0xd4a286a1 # initialize rs2
binv x26, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0x7746f6eb # initialize rs1
li x19, 0x00000000 # initialize rs2
binv x25, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x29, 0xff713264 # initialize rs1
li x21, 0x00000001 # initialize rs2
binv x28, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x17, 0x1927e25d # initialize rs1
li x31, 0x00000002 # initialize rs2
binv x23, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x7, 0x54c84fbb # initialize rs1
li x27, 0x80000000 # initialize rs2
binv x23, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x24, 0x7b7438d6 # initialize rs1
li x15, 0x80000001 # initialize rs2
binv x5, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x5, 0x2de25eee # initialize rs1
li x31, 0x7fffffff # initialize rs2
binv x11, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x19, 0x827b0e33 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
binv x20, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x25, 0x5378452d # initialize rs1
li x27, 0xffffffff # initialize rs2
binv x10, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x7, 0x9debf523 # initialize rs1
li x25, 0xfffffffe # initialize rs2
binv x22, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x3, 0xe15f8b3b # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
binv x8, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x31, 0x5dbc3111 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
binv x6, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x26, 0x1f3539b5 # initialize rs1
li x12, 0x55555555 # initialize rs2
binv x20, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0x00000000 # initialize rs1
li x9, 0x00000000 # initialize rs2
binv x5, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x3, 0x00000000 # initialize rs1
li x22, 0x00000001 # initialize rs2
binv x9, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x30, 0x00000000 # initialize rs1
li x20, 0x00000002 # initialize rs2
binv x19, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x18, 0x00000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
binv x1, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x18, 0x00000000 # initialize rs1
li x12, 0x80000001 # initialize rs2
binv x19, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x16, 0x00000000 # initialize rs1
li x3, 0x7fffffff # initialize rs2
binv x21, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x1, 0x00000000 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
binv x8, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x21, 0x00000000 # initialize rs1
li x8, 0xffffffff # initialize rs2
binv x9, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x6, 0x00000000 # initialize rs1
li x19, 0xfffffffe # initialize rs2
binv x12, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x20, 0x00000000 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
binv x23, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x10, 0x00000000 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
binv x21, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x18, 0x00000000 # initialize rs1
li x10, 0x55555555 # initialize rs2
binv x31, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x5, 0x00000001 # initialize rs1
li x25, 0x00000000 # initialize rs2
binv x11, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x24, 0x00000001 # initialize rs1
li x6, 0x00000001 # initialize rs2
binv x15, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x29, 0x00000001 # initialize rs1
li x16, 0x00000002 # initialize rs2
binv x31, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x18, 0x00000001 # initialize rs1
li x10, 0x80000000 # initialize rs2
binv x28, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x18, 0x00000001 # initialize rs1
li x8, 0x80000001 # initialize rs2
binv x11, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x10, 0x00000001 # initialize rs1
li x20, 0x7fffffff # initialize rs2
binv x16, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x10, 0x00000001 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
binv x17, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x7, 0x00000001 # initialize rs1
li x6, 0xffffffff # initialize rs2
binv x23, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x30, 0x00000001 # initialize rs1
li x15, 0xfffffffe # initialize rs2
binv x5, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x2, 0x00000001 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
binv x16, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x31, 0x00000001 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
binv x16, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x2, 0x00000001 # initialize rs1
li x31, 0x55555555 # initialize rs2
binv x11, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x16, 0x00000002 # initialize rs1
li x27, 0x00000000 # initialize rs2
binv x9, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x3, 0x00000002 # initialize rs1
li x12, 0x00000001 # initialize rs2
binv x9, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x16, 0x00000002 # initialize rs1
li x22, 0x00000002 # initialize rs2
binv x2, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x14, 0x00000002 # initialize rs1
li x1, 0x80000000 # initialize rs2
binv x20, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x19, 0x00000002 # initialize rs1
li x16, 0x80000001 # initialize rs2
binv x6, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x5, 0x00000002 # initialize rs1
li x26, 0x7fffffff # initialize rs2
binv x25, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x17, 0x00000002 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
binv x5, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x24, 0x00000002 # initialize rs1
li x21, 0xffffffff # initialize rs2
binv x29, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x7, 0x00000002 # initialize rs1
li x22, 0xfffffffe # initialize rs2
binv x5, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x7, 0x00000002 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
binv x6, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x5, 0x00000002 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
binv x2, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x13, 0x00000002 # initialize rs1
li x21, 0x55555555 # initialize rs2
binv x28, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x25, 0x80000000 # initialize rs1
li x23, 0x00000000 # initialize rs2
binv x16, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x7, 0x80000000 # initialize rs1
li x2, 0x00000001 # initialize rs2
binv x5, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x25, 0x80000000 # initialize rs1
li x31, 0x00000002 # initialize rs2
binv x26, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x5, 0x80000000 # initialize rs1
li x18, 0x80000000 # initialize rs2
binv x8, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x9, 0x80000000 # initialize rs1
li x8, 0x80000001 # initialize rs2
binv x27, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x7, 0x80000000 # initialize rs1
li x3, 0x7fffffff # initialize rs2
binv x22, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x25, 0x80000000 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
binv x17, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x22, 0x80000000 # initialize rs1
li x31, 0xffffffff # initialize rs2
binv x3, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x1, 0x80000000 # initialize rs1
li x8, 0xfffffffe # initialize rs2
binv x17, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x30, 0x80000000 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
binv x27, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x24, 0x80000000 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
binv x17, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x3, 0x80000000 # initialize rs1
li x26, 0x55555555 # initialize rs2
binv x1, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x16, 0x80000001 # initialize rs1
li x9, 0x00000000 # initialize rs2
binv x8, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x6, 0x80000001 # initialize rs1
li x2, 0x00000001 # initialize rs2
binv x21, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x25, 0x80000001 # initialize rs1
li x29, 0x00000002 # initialize rs2
binv x27, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x22, 0x80000001 # initialize rs1
li x6, 0x80000000 # initialize rs2
binv x12, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x7, 0x80000001 # initialize rs1
li x28, 0x80000001 # initialize rs2
binv x31, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x21, 0x80000001 # initialize rs1
li x19, 0x7fffffff # initialize rs2
binv x20, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x28, 0x80000001 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
binv x16, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x13, 0x80000001 # initialize rs1
li x30, 0xffffffff # initialize rs2
binv x27, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x29, 0x80000001 # initialize rs1
li x18, 0xfffffffe # initialize rs2
binv x15, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x12, 0x80000001 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
binv x19, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x16, 0x80000001 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
binv x15, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x28, 0x80000001 # initialize rs1
li x21, 0x55555555 # initialize rs2
binv x6, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x30, 0x7fffffff # initialize rs1
li x6, 0x00000000 # initialize rs2
binv x22, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x24, 0x7fffffff # initialize rs1
li x11, 0x00000001 # initialize rs2
binv x16, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x6, 0x7fffffff # initialize rs1
li x1, 0x00000002 # initialize rs2
binv x29, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x24, 0x7fffffff # initialize rs1
li x30, 0x80000000 # initialize rs2
binv x13, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x11, 0x7fffffff # initialize rs1
li x24, 0x80000001 # initialize rs2
binv x8, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x6, 0x7fffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
binv x20, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x14, 0x7fffffff # initialize rs1
li x22, 0x7ffffffe # initialize rs2
binv x29, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x13, 0x7fffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
binv x17, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x6, 0x7fffffff # initialize rs1
li x1, 0xfffffffe # initialize rs2
binv x30, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x5, 0x7fffffff # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
binv x9, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x6, 0x7fffffff # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
binv x12, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x31, 0x7fffffff # initialize rs1
li x18, 0x55555555 # initialize rs2
binv x8, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x7, 0x7ffffffe # initialize rs1
li x3, 0x00000000 # initialize rs2
binv x21, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x13, 0x7ffffffe # initialize rs1
li x8, 0x00000001 # initialize rs2
binv x26, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x27, 0x7ffffffe # initialize rs1
li x26, 0x00000002 # initialize rs2
binv x30, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x15, 0x7ffffffe # initialize rs1
li x11, 0x80000000 # initialize rs2
binv x16, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x26, 0x7ffffffe # initialize rs1
li x27, 0x80000001 # initialize rs2
binv x24, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x30, 0x7ffffffe # initialize rs1
li x26, 0x7fffffff # initialize rs2
binv x23, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x7, 0x7ffffffe # initialize rs1
li x29, 0x7ffffffe # initialize rs2
binv x30, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x13, 0x7ffffffe # initialize rs1
li x21, 0xffffffff # initialize rs2
binv x17, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x31, 0x7ffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
binv x6, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x17, 0x7ffffffe # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
binv x12, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x30, 0x7ffffffe # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
binv x8, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x23, 0x7ffffffe # initialize rs1
li x26, 0x55555555 # initialize rs2
binv x21, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x31, 0xffffffff # initialize rs1
li x24, 0x00000000 # initialize rs2
binv x21, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x11, 0xffffffff # initialize rs1
li x20, 0x00000001 # initialize rs2
binv x31, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x26, 0xffffffff # initialize rs1
li x3, 0x00000002 # initialize rs2
binv x23, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x28, 0xffffffff # initialize rs1
li x22, 0x80000000 # initialize rs2
binv x26, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x24, 0xffffffff # initialize rs1
li x8, 0x80000001 # initialize rs2
binv x10, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x28, 0xffffffff # initialize rs1
li x14, 0x7fffffff # initialize rs2
binv x30, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x27, 0xffffffff # initialize rs1
li x26, 0x7ffffffe # initialize rs2
binv x28, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x23, 0xffffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
binv x30, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0xffffffff # initialize rs1
li x10, 0xfffffffe # initialize rs2
binv x7, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x23, 0xffffffff # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
binv x1, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x9, 0xffffffff # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
binv x13, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x3, 0xffffffff # initialize rs1
li x21, 0x55555555 # initialize rs2
binv x28, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x17, 0xfffffffe # initialize rs1
li x9, 0x00000000 # initialize rs2
binv x20, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x16, 0xfffffffe # initialize rs1
li x11, 0x00000001 # initialize rs2
binv x31, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x28, 0xfffffffe # initialize rs1
li x12, 0x00000002 # initialize rs2
binv x21, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x22, 0xfffffffe # initialize rs1
li x18, 0x80000000 # initialize rs2
binv x12, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x1, 0xfffffffe # initialize rs1
li x13, 0x80000001 # initialize rs2
binv x3, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x31, 0xfffffffe # initialize rs1
li x6, 0x7fffffff # initialize rs2
binv x1, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x15, 0xfffffffe # initialize rs1
li x31, 0x7ffffffe # initialize rs2
binv x25, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x20, 0xfffffffe # initialize rs1
li x9, 0xffffffff # initialize rs2
binv x18, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x15, 0xfffffffe # initialize rs1
li x18, 0xfffffffe # initialize rs2
binv x11, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x9, 0xfffffffe # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
binv x29, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x12, 0xfffffffe # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
binv x8, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x7, 0xfffffffe # initialize rs1
li x29, 0x55555555 # initialize rs2
binv x1, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x7, 0x5bbc8872 # initialize rs1
li x28, 0x00000000 # initialize rs2
binv x15, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x22, 0x5bbc8872 # initialize rs1
li x12, 0x00000001 # initialize rs2
binv x21, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x19, 0x5bbc8872 # initialize rs1
li x26, 0x00000002 # initialize rs2
binv x10, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x1, 0x5bbc8872 # initialize rs1
li x3, 0x80000000 # initialize rs2
binv x21, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x23, 0x5bbc8872 # initialize rs1
li x29, 0x80000001 # initialize rs2
binv x9, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x1, 0x5bbc8872 # initialize rs1
li x30, 0x7fffffff # initialize rs2
binv x2, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x3, 0x5bbc8872 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
binv x28, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x23, 0x5bbc8872 # initialize rs1
li x16, 0xffffffff # initialize rs2
binv x6, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x6, 0x5bbc8872 # initialize rs1
li x26, 0xfffffffe # initialize rs2
binv x21, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x7, 0x5bbc8872 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
binv x26, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x25, 0x5bbc8872 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
binv x17, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x12, 0x5bbc8872 # initialize rs1
li x18, 0x55555555 # initialize rs2
binv x29, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x18, 0xaaaaaaaa # initialize rs1
li x23, 0x00000000 # initialize rs2
binv x1, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x25, 0xaaaaaaaa # initialize rs1
li x22, 0x00000001 # initialize rs2
binv x5, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x25, 0xaaaaaaaa # initialize rs1
li x11, 0x00000002 # initialize rs2
binv x12, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x19, 0xaaaaaaaa # initialize rs1
li x22, 0x80000000 # initialize rs2
binv x18, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x12, 0xaaaaaaaa # initialize rs1
li x18, 0x80000001 # initialize rs2
binv x11, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x21, 0xaaaaaaaa # initialize rs1
li x12, 0x7fffffff # initialize rs2
binv x1, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x25, 0xaaaaaaaa # initialize rs1
li x23, 0x7ffffffe # initialize rs2
binv x19, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x14, 0xaaaaaaaa # initialize rs1
li x23, 0xffffffff # initialize rs2
binv x16, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x13, 0xaaaaaaaa # initialize rs1
li x20, 0xfffffffe # initialize rs2
binv x11, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x12, 0xaaaaaaaa # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
binv x27, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x13, 0xaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
binv x9, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x18, 0xaaaaaaaa # initialize rs1
li x10, 0x55555555 # initialize rs2
binv x16, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x23, 0x55555555 # initialize rs1
li x10, 0x00000000 # initialize rs2
binv x21, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x7, 0x55555555 # initialize rs1
li x30, 0x00000001 # initialize rs2
binv x6, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x3, 0x55555555 # initialize rs1
li x13, 0x00000002 # initialize rs2
binv x18, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x3, 0x55555555 # initialize rs1
li x18, 0x80000000 # initialize rs2
binv x11, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x16, 0x55555555 # initialize rs1
li x13, 0x80000001 # initialize rs2
binv x18, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x3, 0x55555555 # initialize rs1
li x23, 0x7fffffff # initialize rs2
binv x24, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x24, 0x55555555 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
binv x21, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x21, 0x55555555 # initialize rs1
li x17, 0xffffffff # initialize rs2
binv x30, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x30, 0x55555555 # initialize rs1
li x28, 0xfffffffe # initialize rs2
binv x25, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x29, 0x55555555 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
binv x5, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x7, 0x55555555 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
binv x19, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x31, 0x55555555 # initialize rs1
li x28, 0x55555555 # initialize rs2
binv x12, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xbe3c4b4b # initialize rs1
li x0, 0xba4caad5 # initialize rs2
binv x7, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xb2217402 # initialize rs1
li x1, 0x1aeada89 # initialize rs2
binv x22, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xe4d4c1e3 # initialize rs1
li x2, 0x00987084 # initialize rs2
binv x22, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xbdc65a80 # initialize rs1
li x3, 0x69f1a42a # initialize rs2
binv x9, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xba03f3ca # initialize rs1
li x4, 0x516a437e # initialize rs2
binv x13, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4197ad4f # initialize rs1
li x5, 0xdb4e7b1e # initialize rs2
binv x6, x5, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x6, 0x5ee25407 # initialize rs1
li x6, 0x6e200b3d # initialize rs2
binv x25, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x2697f085 # initialize rs1
li x7, 0x48a7c1c4 # initialize rs2
binv x12, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x9b5225a8 # initialize rs1
li x8, 0xb92cb712 # initialize rs2
binv x17, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xf62ba324 # initialize rs1
li x9, 0x0953f3bb # initialize rs2
binv x18, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x794b6cd2 # initialize rs1
li x10, 0x5ce11d19 # initialize rs2
binv x12, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x5a19daa5 # initialize rs1
li x11, 0x1d9f528b # initialize rs2
binv x7, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x25963a16 # initialize rs1
li x12, 0xa30695e8 # initialize rs2
binv x8, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x8b0143a4 # initialize rs1
li x13, 0x1f694cab # initialize rs2
binv x5, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x6fcbda1e # initialize rs1
li x14, 0xe7d3eb95 # initialize rs2
binv x24, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x174bc0fe # initialize rs1
li x15, 0x65b9efb2 # initialize rs2
binv x3, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x889e6a40 # initialize rs1
li x16, 0x63cacd1f # initialize rs2
binv x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xece84b67 # initialize rs1
li x17, 0x7442895f # initialize rs2
binv x8, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xa7a3c0e8 # initialize rs1
li x18, 0x117e758c # initialize rs2
binv x14, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xea58b761 # initialize rs1
li x19, 0x6616868d # initialize rs2
binv x1, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x55f37591 # initialize rs1
li x20, 0x805aac0c # initialize rs2
binv x18, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xb1f52fcd # initialize rs1
li x21, 0x350aae87 # initialize rs2
binv x13, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x8e0523d4 # initialize rs1
li x22, 0x55500622 # initialize rs2
binv x19, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x8f9b5670 # initialize rs1
li x23, 0x5220e6ca # initialize rs2
binv x5, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xa91a9ad4 # initialize rs1
li x24, 0xf211f799 # initialize rs2
binv x9, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xf2a968af # initialize rs1
li x25, 0x1b7e5789 # initialize rs2
binv x17, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x0d83bec3 # initialize rs1
li x26, 0xbce25e73 # initialize rs2
binv x2, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xe0863b7d # initialize rs1
li x27, 0x521345ad # initialize rs2
binv x21, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xc3816652 # initialize rs1
li x28, 0x5caedb9f # initialize rs2
binv x10, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xf0119450 # initialize rs1
li x29, 0x69ee10d6 # initialize rs2
binv x12, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x691e1867 # initialize rs1
li x30, 0x0b16af66 # initialize rs2
binv x9, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xd26402b9 # initialize rs1
li x31, 0xc02591cb # initialize rs2
binv x14, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x1d44a729 # initialize rs1
li x2, 0xe0eb7828 # initialize rs2
binv x0, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x99ab7afe # initialize rs1
li x27, 0xa5e5d503 # initialize rs2
binv x1, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x095c7abd # initialize rs1
li x30, 0xc30b3ccd # initialize rs2
binv x2, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x830d9242 # initialize rs1
li x18, 0x9115d0cf # initialize rs2
binv x3, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4acb0715 # initialize rs1
li x30, 0xbfd8d608 # initialize rs2
binv x4, x4, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8e23b244 # initialize rs1
li x24, 0x983f844d # initialize rs2
binv x5, x5, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2acdd168 # initialize rs1
li x9, 0x5d1fb893 # initialize rs2
binv x6, x6, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x860ab448 # initialize rs1
li x20, 0xaef2652d # initialize rs2
binv x7, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x61bcff6b # initialize rs1
li x13, 0x009faa46 # initialize rs2
binv x8, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xb3c7b0c7 # initialize rs1
li x30, 0x1fbb03db # initialize rs2
binv x9, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x4666654d # initialize rs1
li x31, 0x9e94637d # initialize rs2
binv x10, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa35450cd # initialize rs1
li x15, 0xa553e94a # initialize rs2
binv x11, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xadfb738f # initialize rs1
li x14, 0x703bb6b6 # initialize rs2
binv x12, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x0986f491 # initialize rs1
li x28, 0xfbba2f7c # initialize rs2
binv x13, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x9476ce98 # initialize rs1
li x28, 0x3844a828 # initialize rs2
binv x14, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xa3d7c979 # initialize rs1
li x14, 0xb971d896 # initialize rs2
binv x15, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xa8dd4a1b # initialize rs1
li x19, 0xae91ed38 # initialize rs2
binv x16, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x3fa3f15e # initialize rs1
li x18, 0xf1b28b38 # initialize rs2
binv x17, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xdf46883b # initialize rs1
li x9, 0x9d85948d # initialize rs2
binv x18, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xcd0bbc8f # initialize rs1
li x12, 0x3bf07b80 # initialize rs2
binv x19, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf942fb96 # initialize rs1
li x28, 0xbff27c16 # initialize rs2
binv x20, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x5eed037d # initialize rs1
li x21, 0xf6de685e # initialize rs2
binv x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xc022bf4a # initialize rs1
li x31, 0xe114f0b8 # initialize rs2
binv x22, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xddbdc91d # initialize rs1
li x25, 0xd095b952 # initialize rs2
binv x23, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x3634e246 # initialize rs1
li x28, 0x38d52371 # initialize rs2
binv x24, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x94869e71 # initialize rs1
li x14, 0x7a65d5ef # initialize rs2
binv x25, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x56290c83 # initialize rs1
li x7, 0x3966abd7 # initialize rs2
binv x26, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xc83c5386 # initialize rs1
li x1, 0x4db64bbc # initialize rs2
binv x27, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x1752bff0 # initialize rs1
li x5, 0x4b0725b8 # initialize rs2
binv x28, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x5aa9e627 # initialize rs1
li x3, 0x72e69bdb # initialize rs2
binv x29, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x82002764 # initialize rs1
li x6, 0xfcae4844 # initialize rs2
binv x30, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x5aa0618c # initialize rs1
li x11, 0x9c7d4838 # initialize rs2
binv x31, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x26, 0x89d88d8c # initialize rs1
li x0, 0x83124473 # initialize rs2
binv x0, x26, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x16, 0x13103442 # initialize rs1
li x1, 0x70c9e553 # initialize rs2
binv x1, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x7, 0xfd4228fc # initialize rs1
li x2, 0x7d0ecb79 # initialize rs2
binv x2, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x16, 0xa94ce428 # initialize rs1
li x3, 0x74cf7da2 # initialize rs2
binv x3, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0x05eb8e48 # initialize rs1
li x4, 0x954581eb # initialize rs2
binv x4, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0x646b1a13 # initialize rs1
li x5, 0x3c25bf5b # initialize rs2
binv x5, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
li x31, 0x4ebad5cf # initialize rs1
li x6, 0x3af07a2c # initialize rs2
binv x6, x31, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0x33c738f2 # initialize rs1
li x7, 0xaaf2b994 # initialize rs2
binv x7, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x6, 0x2d2ab584 # initialize rs1
li x8, 0xb15d2ac5 # initialize rs2
binv x8, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x29, 0x7a0be0b9 # initialize rs1
li x9, 0x33d96f04 # initialize rs2
binv x9, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x22, 0xaa0d2303 # initialize rs1
li x10, 0x33cac7c3 # initialize rs2
binv x10, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x3, 0xf9fbfbf6 # initialize rs1
li x11, 0x3cb48e40 # initialize rs2
binv x11, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x31, 0x80a3319c # initialize rs1
li x12, 0xca62b088 # initialize rs2
binv x12, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x28, 0x9342b8a1 # initialize rs1
li x13, 0x6df65cad # initialize rs2
binv x13, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x5, 0x8f5a73e3 # initialize rs1
li x14, 0x6f8a090e # initialize rs2
binv x14, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x17, 0x6f9a73d2 # initialize rs1
li x15, 0xdc9135f8 # initialize rs2
binv x15, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x8, 0xd3b26b68 # initialize rs1
li x16, 0xb21159fa # initialize rs2
binv x16, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x12, 0x2bcda91e # initialize rs1
li x17, 0x08432f5e # initialize rs2
binv x17, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x14, 0xed0f1087 # initialize rs1
li x18, 0x4b0ae327 # initialize rs2
binv x18, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x12, 0x6880cc38 # initialize rs1
li x19, 0x9a40a88c # initialize rs2
binv x19, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x14, 0x8e55d8bc # initialize rs1
li x20, 0x5e2f2a9a # initialize rs2
binv x20, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x20, 0x53a5aa56 # initialize rs1
li x21, 0xc9700d03 # initialize rs2
binv x21, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x25, 0x5dcf68c8 # initialize rs1
li x22, 0x46be006c # initialize rs2
binv x22, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x18, 0xc1feb2a3 # initialize rs1
li x23, 0x2d1cfee8 # initialize rs2
binv x23, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x30, 0x6c308191 # initialize rs1
li x24, 0x041a41a5 # initialize rs2
binv x24, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x1, 0xaca5dc50 # initialize rs1
li x25, 0xc9f4885a # initialize rs2
binv x25, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x11, 0x57a7a0f5 # initialize rs1
li x26, 0xd3e182b6 # initialize rs2
binv x26, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x9, 0x11c8ee72 # initialize rs1
li x27, 0x994a4b98 # initialize rs2
binv x27, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x8, 0xcfefdedb # initialize rs1
li x28, 0x8e533020 # initialize rs2
binv x28, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x25, 0x7e1335a8 # initialize rs1
li x29, 0x2f0256b7 # initialize rs2
binv x29, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x16, 0x6df421e5 # initialize rs1
li x30, 0x8399993b # initialize rs2
binv x30, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0xde27328e # initialize rs1
li x31, 0x70625dbe # initialize rs2
binv x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x6da7d941 # initialize rs1
li x0, 0xb380ade3 # initialize rs2
binv x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x2f3723a1 # initialize rs1
li x1, 0xa449dabd # initialize rs2
binv x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x13bf02e1 # initialize rs1
li x2, 0x77251a8e # initialize rs2
binv x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x48f6d524 # initialize rs1
li x3, 0xe32b12e1 # initialize rs2
binv x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf1df6cbd # initialize rs1
li x4, 0x4edde31a # initialize rs2
binv x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x14aa718a # initialize rs1
li x5, 0x30975453 # initialize rs2
binv x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4a772a14 # initialize rs1
li x6, 0xdc157a85 # initialize rs2
binv x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xda68d3cd # initialize rs1
li x7, 0x89f39cf8 # initialize rs2
binv x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xa1decc49 # initialize rs1
li x8, 0x11e764d0 # initialize rs2
binv x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x7294101e # initialize rs1
li x9, 0xf983fdf7 # initialize rs2
binv x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x572beab1 # initialize rs1
li x10, 0x9368dd74 # initialize rs2
binv x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x4755e1d1 # initialize rs1
li x11, 0x96ac79a8 # initialize rs2
binv x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xbfaea11f # initialize rs1
li x12, 0x5cbe4ca8 # initialize rs2
binv x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x85b2bae5 # initialize rs1
li x13, 0x80f386f2 # initialize rs2
binv x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x153cbd4d # initialize rs1
li x14, 0x554c6b1c # initialize rs2
binv x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x26e05a3c # initialize rs1
li x15, 0x3b018caf # initialize rs2
binv x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xa3759692 # initialize rs1
li x16, 0xce3ead9c # initialize rs2
binv x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x72b816f9 # initialize rs1
li x17, 0xaf597093 # initialize rs2
binv x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x84b6e215 # initialize rs1
li x18, 0x67449190 # initialize rs2
binv x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xd33ca1c5 # initialize rs1
li x19, 0xb204ff71 # initialize rs2
binv x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x62f693a6 # initialize rs1
li x20, 0x2ceaa3f2 # initialize rs2
binv x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xff18fc10 # initialize rs1
li x21, 0x2ad36eca # initialize rs2
binv x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x3138aa6f # initialize rs1
li x22, 0x9d06e30f # initialize rs2
binv x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x60fa2eb5 # initialize rs1
li x23, 0x17e90ee8 # initialize rs2
binv x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xaf37e92c # initialize rs1
li x24, 0xa2281ed8 # initialize rs2
binv x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x539c3b33 # initialize rs1
li x25, 0x6baf2476 # initialize rs2
binv x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x0b45abba # initialize rs1
li x26, 0x6daa0f0f # initialize rs2
binv x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xb1825aac # initialize rs1
li x27, 0x2673d6b4 # initialize rs2
binv x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x518a7cd2 # initialize rs1
li x28, 0x6bddac4c # initialize rs2
binv x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x102ec268 # initialize rs1
li x29, 0x4861d656 # initialize rs2
binv x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xf8ec4013 # initialize rs1
li x30, 0x8c8ea611 # initialize rs2
binv x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x26d2bde0 # initialize rs1
li x31, 0x03b33c7b # initialize rs2
binv x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x2, x22 # perform first operation
binv x6, x12, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x17, x29 # perform first operation
binv x3, x16, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x26, x9 # perform first operation
binv x29, x28, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x21, x12 # perform first operation
binv x12, x1, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x16, x14 # perform first operation
binv x16, x12, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x11, x20 # perform first operation
binv x11, x8, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x29, x21 # perform first operation
binv x28, x2, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x7, x1 # perform first operation
binv x21, x6, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x18, x14 # perform first operation
binv x27, x22, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x9, x2 # perform first operation
binv x9, x19, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x14, x26 # perform first operation
binv x26, x16, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x27, x17 # perform first operation
binv x21, x10, x24 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-bclri.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x05119549 # initialize rs1
bclri x10, x0, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x9aac39ce # initialize rs1
bclri x29, x1, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xd53cda58 # initialize rs1
bclri x11, x2, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x5aa630e5 # initialize rs1
bclri x12, x3, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x96fe8b2c # initialize rs1
bclri x9, x4, 13 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x25bb023d # initialize rs1
bclri x23, x5, 28 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x268f9955 # initialize rs1
bclri x19, x6, 19 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc13d10d7 # initialize rs1
bclri x13, x7, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xdc78d5ae # initialize rs1
bclri x27, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x1de0e42f # initialize rs1
bclri x31, x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x4d8eb677 # initialize rs1
bclri x25, x10, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x6eee40d9 # initialize rs1
bclri x15, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x8a1329be # initialize rs1
bclri x26, x12, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x70ccd57b # initialize rs1
bclri x12, x13, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x4b625611 # initialize rs1
bclri x15, x14, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x77a52941 # initialize rs1
bclri x16, x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xa9a4f2d1 # initialize rs1
bclri x30, x16, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x18336d65 # initialize rs1
bclri x19, x17, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x6022f061 # initialize rs1
bclri x21, x18, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x93a544b4 # initialize rs1
bclri x30, x19, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xbd38be5c # initialize rs1
bclri x28, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xe9b780ce # initialize rs1
bclri x30, x21, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x41abce45 # initialize rs1
bclri x25, x22, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xac5b99fd # initialize rs1
bclri x31, x23, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x0299f11b # initialize rs1
bclri x29, x24, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x72023943 # initialize rs1
bclri x23, x25, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xb9217d0d # initialize rs1
bclri x3, x26, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x2339a958 # initialize rs1
bclri x16, x27, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xf99ab516 # initialize rs1
bclri x3, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x90ce346b # initialize rs1
bclri x10, x29, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x488d7174 # initialize rs1
bclri x11, x30, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xc867f238 # initialize rs1
bclri x22, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 124)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0x6d3f2ca3 # initialize rs1
bclri x0, x3, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x19, 0xdf8096c3 # initialize rs1
bclri x1, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x23, 0xe5b4d0be # initialize rs1
bclri x2, x23, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x8, 0x1a2f17cc # initialize rs1
bclri x3, x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x033769df # initialize rs1
bclri x4, x29, 11 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x8218f149 # initialize rs1
bclri x5, x31, 0 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x4bf3dbb9 # initialize rs1
bclri x6, x23, 6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x97cc3bc0 # initialize rs1
bclri x7, x3, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x3, 0x83dc622a # initialize rs1
bclri x8, x3, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x5, 0x7d19c4a7 # initialize rs1
bclri x9, x5, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x26, 0x353a58e1 # initialize rs1
bclri x10, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x5, 0x879ccc7b # initialize rs1
bclri x11, x5, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x10, 0xf729e23a # initialize rs1
bclri x12, x10, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x6, 0xecb95336 # initialize rs1
bclri x13, x6, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x5c19c0fb # initialize rs1
bclri x14, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x26, 0xa0c1deb4 # initialize rs1
bclri x15, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x27, 0x12ac9515 # initialize rs1
bclri x16, x27, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x30, 0xd3681251 # initialize rs1
bclri x17, x30, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x19, 0x2f2888b6 # initialize rs1
bclri x18, x19, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x31, 0x3df7fe81 # initialize rs1
bclri x19, x31, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x21, 0x175edd58 # initialize rs1
bclri x20, x21, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0xe10507b2 # initialize rs1
bclri x21, x30, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x6, 0x1072a2a3 # initialize rs1
bclri x22, x6, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x14, 0x104e90d1 # initialize rs1
bclri x23, x14, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x22, 0x25e21846 # initialize rs1
bclri x24, x22, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x19, 0x49a62dc8 # initialize rs1
bclri x25, x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x9, 0x018850e6 # initialize rs1
bclri x26, x9, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x14, 0xc043309d # initialize rs1
bclri x27, x14, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x11, 0xc4b0021d # initialize rs1
bclri x28, x11, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x30, 0x953d7c65 # initialize rs1
bclri x29, x30, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x28, 0x7c2c13f2 # initialize rs1
bclri x30, x28, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x28, 0x35c61c59 # initialize rs1
bclri x31, x28, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x00000000 # initialize rs1
bclri x12, x3, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x16, 0x00000001 # initialize rs1
bclri x9, x16, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x28, 0x00000002 # initialize rs1
bclri x27, x28, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x30, 0x80000000 # initialize rs1
bclri x27, x30, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x12, 0x80000001 # initialize rs1
bclri x19, x12, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x11, 0x7fffffff # initialize rs1
bclri x18, x11, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x12, 0x7ffffffe # initialize rs1
bclri x27, x12, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x6, 0xffffffff # initialize rs1
bclri x3, x6, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0xfffffffe # initialize rs1
bclri x8, x12, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x2, 0x5bbc8872 # initialize rs1
bclri x3, x2, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x20, 0xaaaaaaaa # initialize rs1
bclri x31, x20, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x9, 0x55555555 # initialize rs1
bclri x12, x9, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xb5071efc # initialize rs1
bclri x0, x0, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x789844fb # initialize rs1
bclri x1, x1, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x767dd66a # initialize rs1
bclri x2, x2, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xc3880497 # initialize rs1
bclri x3, x3, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5def08eb # initialize rs1
bclri x4, x4, 27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7fce77c2 # initialize rs1
bclri x5, x5, 7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbb9ea5cc # initialize rs1
bclri x6, x6, 12 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6d5f8219 # initialize rs1
bclri x7, x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xbbeed361 # initialize rs1
bclri x8, x8, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x073304f4 # initialize rs1
bclri x9, x9, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x1a105af6 # initialize rs1
bclri x10, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x4a98b0c7 # initialize rs1
bclri x11, x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x2c626960 # initialize rs1
bclri x12, x12, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xfa6f2077 # initialize rs1
bclri x13, x13, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x3ff0c032 # initialize rs1
bclri x14, x14, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x324e14d8 # initialize rs1
bclri x15, x15, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x2eb709d9 # initialize rs1
bclri x16, x16, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x5faba3a4 # initialize rs1
bclri x17, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x1605cb68 # initialize rs1
bclri x18, x18, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xde1a5cc6 # initialize rs1
bclri x19, x19, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x89f11131 # initialize rs1
bclri x20, x20, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd5de9c29 # initialize rs1
bclri x21, x21, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x8cfdbfa6 # initialize rs1
bclri x22, x22, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x7e7d0cce # initialize rs1
bclri x23, x23, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x40223d48 # initialize rs1
bclri x24, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x4108e941 # initialize rs1
bclri x25, x25, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x7e4390d3 # initialize rs1
bclri x26, x26, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xa1f94b8b # initialize rs1
bclri x27, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x186101c8 # initialize rs1
bclri x28, x28, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x53563e10 # initialize rs1
bclri x29, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xc9a4f21a # initialize rs1
bclri x30, x30, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x369f268f # initialize rs1
bclri x31, x31, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_uimm (Test bit = 0)
li x11, 0x2feb2079 # initialize rs1
bclri x19, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 432)

# Testcase cp_uimm (Test bit = 1)
li x8, 0x269944ba # initialize rs1
bclri x26, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 436)

# Testcase cp_uimm (Test bit = 2)
li x25, 0xc97d7b6d # initialize rs1
bclri x8, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_uimm (Test bit = 3)
li x30, 0x73648ae5 # initialize rs1
bclri x7, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 444)

# Testcase cp_uimm (Test bit = 4)
li x17, 0x681b46d4 # initialize rs1
bclri x3, x17, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 448)

# Testcase cp_uimm (Test bit = 5)
li x24, 0x6e54c849 # initialize rs1
bclri x6, x24, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 452)

# Testcase cp_uimm (Test bit = 6)
li x5, 0x8fb097ab # initialize rs1
bclri x2, x5, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 456)

# Testcase cp_uimm (Test bit = 7)
li x23, 0x36c8594c # initialize rs1
bclri x10, x23, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 460)

# Testcase cp_uimm (Test bit = 8)
li x24, 0x6def517b # initialize rs1
bclri x23, x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 464)

# Testcase cp_uimm (Test bit = 9)
li x3, 0x2aed495d # initialize rs1
bclri x26, x3, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 468)

# Testcase cp_uimm (Test bit = 10)
li x6, 0x0a191ff0 # initialize rs1
bclri x19, x6, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cp_uimm (Test bit = 11)
li x23, 0xae62fc80 # initialize rs1
bclri x9, x23, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 476)

# Testcase cp_uimm (Test bit = 12)
li x22, 0x6e2e6fef # initialize rs1
bclri x14, x22, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cp_uimm (Test bit = 13)
li x8, 0xc19a1280 # initialize rs1
bclri x10, x8, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 484)

# Testcase cp_uimm (Test bit = 14)
li x20, 0xe5e4b667 # initialize rs1
bclri x10, x20, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 488)

# Testcase cp_uimm (Test bit = 15)
li x16, 0xdbb0bdd4 # initialize rs1
bclri x13, x16, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 492)

# Testcase cp_uimm (Test bit = 16)
li x23, 0x1335ff21 # initialize rs1
bclri x3, x23, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 496)

# Testcase cp_uimm (Test bit = 17)
li x19, 0x2855bc41 # initialize rs1
bclri x29, x19, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 500)

# Testcase cp_uimm (Test bit = 18)
li x29, 0x09a2fdc2 # initialize rs1
bclri x15, x29, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 504)

# Testcase cp_uimm (Test bit = 19)
li x8, 0xf0130123 # initialize rs1
bclri x10, x8, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 508)

# Testcase cp_uimm (Test bit = 20)
li x5, 0xcda6839f # initialize rs1
bclri x10, x5, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 512)

# Testcase cp_uimm (Test bit = 21)
li x18, 0xa011f60e # initialize rs1
bclri x25, x18, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 516)

# Testcase cp_uimm (Test bit = 22)
li x22, 0x853a6f38 # initialize rs1
bclri x6, x22, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 520)

# Testcase cp_uimm (Test bit = 23)
li x9, 0x1276c558 # initialize rs1
bclri x26, x9, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 524)

# Testcase cp_uimm (Test bit = 24)
li x10, 0xacd0003b # initialize rs1
bclri x2, x10, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_uimm (Test bit = 25)
li x8, 0x79df6074 # initialize rs1
bclri x14, x8, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 532)

# Testcase cp_uimm (Test bit = 26)
li x17, 0xd56d3081 # initialize rs1
bclri x20, x17, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 536)

# Testcase cp_uimm (Test bit = 27)
li x5, 0xa18dda6b # initialize rs1
bclri x9, x5, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 540)

# Testcase cp_uimm (Test bit = 28)
li x7, 0x22363fec # initialize rs1
bclri x28, x7, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cp_uimm (Test bit = 29)
li x13, 0xff72fd94 # initialize rs1
bclri x28, x13, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 548)

# Testcase cp_uimm (Test bit = 30)
li x15, 0xac171d2a # initialize rs1
bclri x10, x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 552)

# Testcase cp_uimm (Test bit = 31)
li x6, 0xc87d1b16 # initialize rs1
bclri x19, x6, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 556)

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x6, x25 # perform first operation
bclri x28, x20, 4 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x17, x3 # perform first operation
bclri x10, x13, 30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x2, x20 # perform first operation
bclri x9, x10, 28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x2, x8 # perform first operation
bclri x2, x29, 29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x28, x16 # perform first operation
bclri x7, x14, 21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x10, x2 # perform first operation
bclri x2, x11, 15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x24, x15 # perform first operation
bclri x27, x23, 13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x25, x16 # perform first operation
bclri x19, x29, 23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x22, x9 # perform first operation
bclri x17, x25, 13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x26, x22 # perform first operation
bclri x26, x10, 31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x13, x19 # perform first operation
bclri x19, x9, 28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x12, x22 # perform first operation
bclri x7, x19, 31 # perform second (triggering) operation

#.EQU SIGSIZE,560


// ******************
// Tests from: WALLY-COV-binvi.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x2866552b # initialize rs1
binvi x17, x0, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x8d87c64d # initialize rs1
binvi x3, x1, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x99607f9a # initialize rs1
binvi x16, x2, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x0ec37666 # initialize rs1
binvi x12, x3, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1e97a6c3 # initialize rs1
binvi x27, x4, 19 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3a42bf4a # initialize rs1
binvi x26, x5, 21 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdfed156f # initialize rs1
binvi x23, x6, 6 # perform operation
RVTEST_SIGUPD(x7, x0, x23, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5b0c12f6 # initialize rs1
binvi x1, x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xbbac3507 # initialize rs1
binvi x9, x8, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xaef830eb # initialize rs1
binvi x23, x9, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xe39860ad # initialize rs1
binvi x12, x10, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x76a62d98 # initialize rs1
binvi x29, x11, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x0a92f150 # initialize rs1
binvi x24, x12, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x7042b941 # initialize rs1
binvi x5, x13, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x0e8eaf1e # initialize rs1
binvi x10, x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x8213591d # initialize rs1
binvi x21, x15, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xc21f6236 # initialize rs1
binvi x28, x16, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xc353a5c0 # initialize rs1
binvi x8, x17, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x9ad82f39 # initialize rs1
binvi x28, x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x224267ff # initialize rs1
binvi x18, x19, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x71951ab6 # initialize rs1
binvi x23, x20, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xf1b89bd6 # initialize rs1
binvi x10, x21, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x2abab493 # initialize rs1
binvi x21, x22, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x70024f0a # initialize rs1
binvi x15, x23, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x43f2e501 # initialize rs1
binvi x18, x24, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xa26dacf3 # initialize rs1
binvi x19, x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xbfb1456c # initialize rs1
binvi x15, x26, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xf1d70712 # initialize rs1
binvi x17, x27, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x4dc2c429 # initialize rs1
binvi x23, x28, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xdc076045 # initialize rs1
binvi x2, x29, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xd1503cdb # initialize rs1
binvi x14, x30, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x083a992b # initialize rs1
binvi x13, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 124)

# Testcase cp_rd (Test destination rd = x0)
li x15, 0x406a7799 # initialize rs1
binvi x0, x15, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x21, 0xd57ed240 # initialize rs1
binvi x1, x21, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x27, 0x1c1dd487 # initialize rs1
binvi x2, x27, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x14, 0x3db1d972 # initialize rs1
binvi x3, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x2442e29b # initialize rs1
binvi x4, x6, 27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0xe764cfa9 # initialize rs1
binvi x5, x16, 6 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0x87d5d448 # initialize rs1
binvi x6, x12, 17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0x462ed80a # initialize rs1
binvi x7, x15, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x1, 0xfbb5e5ef # initialize rs1
binvi x8, x1, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0x0556529b # initialize rs1
binvi x9, x10, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x11, 0x05898e18 # initialize rs1
binvi x10, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x25, 0x353273b4 # initialize rs1
binvi x11, x25, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x7, 0x58bc626a # initialize rs1
binvi x12, x7, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x18, 0x24849241 # initialize rs1
binvi x13, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0xc7bb3068 # initialize rs1
binvi x14, x9, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x24, 0x0aa1d022 # initialize rs1
binvi x15, x24, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x29, 0x91e47966 # initialize rs1
binvi x16, x29, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x14, 0x1255bdd6 # initialize rs1
binvi x17, x14, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x11, 0x3a576a60 # initialize rs1
binvi x18, x11, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x16, 0x84276411 # initialize rs1
binvi x19, x16, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x21, 0x8054e68e # initialize rs1
binvi x20, x21, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x27, 0x370a213b # initialize rs1
binvi x21, x27, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0x0cfc0833 # initialize rs1
binvi x22, x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x27, 0x39643357 # initialize rs1
binvi x23, x27, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x1, 0xc7effcb6 # initialize rs1
binvi x24, x1, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x24, 0x2655288d # initialize rs1
binvi x25, x24, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x13, 0x3076b933 # initialize rs1
binvi x26, x13, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x22, 0xd73bd2fe # initialize rs1
binvi x27, x22, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x9, 0x4b63ad37 # initialize rs1
binvi x28, x9, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0xb73c6714 # initialize rs1
binvi x29, x12, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x5, 0x0268804f # initialize rs1
binvi x30, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x15, 0x5d180d79 # initialize rs1
binvi x31, x15, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x27, 0x00000000 # initialize rs1
binvi x14, x27, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x00000001 # initialize rs1
binvi x20, x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x00000002 # initialize rs1
binvi x10, x23, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x2, 0x80000000 # initialize rs1
binvi x17, x2, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x12, 0x80000001 # initialize rs1
binvi x11, x12, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x7, 0x7fffffff # initialize rs1
binvi x6, x7, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x9, 0x7ffffffe # initialize rs1
binvi x25, x9, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x29, 0xffffffff # initialize rs1
binvi x2, x29, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0xfffffffe # initialize rs1
binvi x28, x19, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x11, 0x5bbc8872 # initialize rs1
binvi x22, x11, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x13, 0xaaaaaaaa # initialize rs1
binvi x11, x13, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x5, 0x55555555 # initialize rs1
binvi x24, x5, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x26263f6b # initialize rs1
binvi x0, x0, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x6d6f7d57 # initialize rs1
binvi x1, x1, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x2723358f # initialize rs1
binvi x2, x2, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x2736cde9 # initialize rs1
binvi x3, x3, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x705f615b # initialize rs1
binvi x4, x4, 8 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x6997be1e # initialize rs1
binvi x5, x5, 2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4bbbd993 # initialize rs1
binvi x6, x6, 18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xae37d690 # initialize rs1
binvi x7, x7, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x326808ce # initialize rs1
binvi x8, x8, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x07473805 # initialize rs1
binvi x9, x9, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xe9f1a64c # initialize rs1
binvi x10, x10, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x43b66855 # initialize rs1
binvi x11, x11, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x77aec8c3 # initialize rs1
binvi x12, x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xf322ccc3 # initialize rs1
binvi x13, x13, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xbb56619b # initialize rs1
binvi x14, x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x338b52c4 # initialize rs1
binvi x15, x15, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xbe8492fe # initialize rs1
binvi x16, x16, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x799472dc # initialize rs1
binvi x17, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xd90f86f9 # initialize rs1
binvi x18, x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x4565045c # initialize rs1
binvi x19, x19, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xee742407 # initialize rs1
binvi x20, x20, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x431c30e2 # initialize rs1
binvi x21, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x0bb4bd75 # initialize rs1
binvi x22, x22, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x22cf3413 # initialize rs1
binvi x23, x23, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x79ba1460 # initialize rs1
binvi x24, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x4c991b76 # initialize rs1
binvi x25, x25, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x521d8107 # initialize rs1
binvi x26, x26, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xcc672564 # initialize rs1
binvi x27, x27, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x8ebb004e # initialize rs1
binvi x28, x28, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x8f23e3d6 # initialize rs1
binvi x29, x29, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x006470a0 # initialize rs1
binvi x30, x30, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xd8f3a672 # initialize rs1
binvi x31, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_uimm (Test bit = 0)
li x8, 0x57f09ac4 # initialize rs1
binvi x21, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 432)

# Testcase cp_uimm (Test bit = 1)
li x21, 0xe4d12825 # initialize rs1
binvi x3, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 436)

# Testcase cp_uimm (Test bit = 2)
li x20, 0x99711333 # initialize rs1
binvi x5, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 440)

# Testcase cp_uimm (Test bit = 3)
li x19, 0x436f0f5a # initialize rs1
binvi x24, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 444)

# Testcase cp_uimm (Test bit = 4)
li x15, 0xc2fc75ed # initialize rs1
binvi x2, x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 448)

# Testcase cp_uimm (Test bit = 5)
li x22, 0xb99c870c # initialize rs1
binvi x18, x22, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 452)

# Testcase cp_uimm (Test bit = 6)
li x22, 0xd4ce9ba6 # initialize rs1
binvi x31, x22, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 456)

# Testcase cp_uimm (Test bit = 7)
li x13, 0xa146ff6a # initialize rs1
binvi x11, x13, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 460)

# Testcase cp_uimm (Test bit = 8)
li x29, 0x2cb23de2 # initialize rs1
binvi x14, x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 464)

# Testcase cp_uimm (Test bit = 9)
li x20, 0xabef02a7 # initialize rs1
binvi x9, x20, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 468)

# Testcase cp_uimm (Test bit = 10)
li x3, 0x60188573 # initialize rs1
binvi x10, x3, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cp_uimm (Test bit = 11)
li x25, 0xd5d658af # initialize rs1
binvi x1, x25, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 476)

# Testcase cp_uimm (Test bit = 12)
li x7, 0xcec3014d # initialize rs1
binvi x19, x7, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cp_uimm (Test bit = 13)
li x17, 0x62589fd5 # initialize rs1
binvi x9, x17, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 484)

# Testcase cp_uimm (Test bit = 14)
li x29, 0x4be67886 # initialize rs1
binvi x28, x29, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 488)

# Testcase cp_uimm (Test bit = 15)
li x9, 0xc9ee1c78 # initialize rs1
binvi x27, x9, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 492)

# Testcase cp_uimm (Test bit = 16)
li x19, 0x36c91946 # initialize rs1
binvi x12, x19, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 496)

# Testcase cp_uimm (Test bit = 17)
li x6, 0x5d875770 # initialize rs1
binvi x23, x6, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 500)

# Testcase cp_uimm (Test bit = 18)
li x26, 0x8d41efb5 # initialize rs1
binvi x18, x26, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 504)

# Testcase cp_uimm (Test bit = 19)
li x26, 0x4305cc11 # initialize rs1
binvi x20, x26, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 508)

# Testcase cp_uimm (Test bit = 20)
li x2, 0xfda57e22 # initialize rs1
binvi x31, x2, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 512)

# Testcase cp_uimm (Test bit = 21)
li x20, 0xa1e9caf2 # initialize rs1
binvi x23, x20, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 516)

# Testcase cp_uimm (Test bit = 22)
li x23, 0x6387148c # initialize rs1
binvi x21, x23, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cp_uimm (Test bit = 23)
li x20, 0x38f69f7e # initialize rs1
binvi x10, x20, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 524)

# Testcase cp_uimm (Test bit = 24)
li x2, 0xa1729f55 # initialize rs1
binvi x9, x2, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

# Testcase cp_uimm (Test bit = 25)
li x6, 0x50f506d3 # initialize rs1
binvi x7, x6, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 532)

# Testcase cp_uimm (Test bit = 26)
li x17, 0x32734a90 # initialize rs1
binvi x19, x17, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 536)

# Testcase cp_uimm (Test bit = 27)
li x21, 0x89be2d0a # initialize rs1
binvi x20, x21, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 540)

# Testcase cp_uimm (Test bit = 28)
li x19, 0x4dd88f51 # initialize rs1
binvi x28, x19, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cp_uimm (Test bit = 29)
li x27, 0x10560415 # initialize rs1
binvi x18, x27, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 548)

# Testcase cp_uimm (Test bit = 30)
li x21, 0x8ae13287 # initialize rs1
binvi x16, x21, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 552)

# Testcase cp_uimm (Test bit = 31)
li x7, 0xc355d752 # initialize rs1
binvi x1, x7, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 556)

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x31, x6 # perform first operation
binvi x17, x28, 8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x22, x9 # perform first operation
binvi x23, x24, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x11, x7 # perform first operation
binvi x23, x13, 6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x22, x3 # perform first operation
binvi x22, x17, 13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x5, x19 # perform first operation
binvi x19, x15, 23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x15, x22 # perform first operation
binvi x22, x16, 27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x24, x31 # perform first operation
binvi x8, x26, 25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x9, x7 # perform first operation
binvi x13, x22, 13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x21, x3 # perform first operation
binvi x7, x19, 28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x13, x22 # perform first operation
binvi x13, x19, 14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x31, x19 # perform first operation
binvi x19, x25, 13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x26, x12 # perform first operation
binvi x15, x10, 26 # perform second (triggering) operation

#.EQU SIGSIZE,560


// ******************
// Tests from: WALLY-COV-bset.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x401df5b3 # initialize rs1
li x9, 0x624fd7f7 # initialize rs2
bset x19, x0, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xe2ba2563 # initialize rs1
li x2, 0x4190d26e # initialize rs2
bset x7, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x52f21663 # initialize rs1
li x1, 0x5a896d43 # initialize rs2
bset x31, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xce546746 # initialize rs1
li x9, 0x5acd8c8f # initialize rs2
bset x30, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x833b171f # initialize rs1
li x31, 0x44b3d3b7 # initialize rs2
bset x8, x4, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xea18325c # initialize rs1
li x7, 0x8afdf770 # initialize rs2
bset x12, x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x842b6104 # initialize rs1
li x2, 0x6a515301 # initialize rs2
bset x25, x6, x2 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1c87b0b9 # initialize rs1
li x17, 0xf7c9a422 # initialize rs2
bset x4, x7, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x6c54598b # initialize rs1
li x4, 0xf22195c9 # initialize rs2
bset x21, x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xc66d6d81 # initialize rs1
li x20, 0x67d2eb01 # initialize rs2
bset x14, x9, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xec4cbb40 # initialize rs1
li x4, 0xdbec4124 # initialize rs2
bset x1, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x7c8b4435 # initialize rs1
li x10, 0x628128b9 # initialize rs2
bset x25, x11, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xe50c8dda # initialize rs1
li x1, 0xb566f38b # initialize rs2
bset x2, x12, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x31b2d148 # initialize rs1
li x11, 0x8018e4d7 # initialize rs2
bset x19, x13, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x387d55e4 # initialize rs1
li x2, 0x8315bc45 # initialize rs2
bset x6, x14, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x6a229864 # initialize rs1
li x31, 0x277d44d0 # initialize rs2
bset x11, x15, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x21e21857 # initialize rs1
li x8, 0x544b13bd # initialize rs2
bset x9, x16, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x8b94a5f6 # initialize rs1
li x12, 0x2edd4731 # initialize rs2
bset x22, x17, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xde36cbca # initialize rs1
li x20, 0x593eeaa7 # initialize rs2
bset x10, x18, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x1e8f8077 # initialize rs1
li x24, 0x59ee77df # initialize rs2
bset x27, x19, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xc8d3a10b # initialize rs1
li x30, 0x360e5b34 # initialize rs2
bset x3, x20, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x3c194c89 # initialize rs1
li x24, 0x60707b73 # initialize rs2
bset x30, x21, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x0b0dd56c # initialize rs1
li x9, 0x48028ec7 # initialize rs2
bset x1, x22, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xa5c5d212 # initialize rs1
li x3, 0x87a1982f # initialize rs2
bset x17, x23, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xafb604c1 # initialize rs1
li x6, 0x082e7e32 # initialize rs2
bset x20, x24, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x1843a687 # initialize rs1
li x8, 0x25c135a2 # initialize rs2
bset x23, x25, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xd215aac9 # initialize rs1
li x3, 0xd51885d2 # initialize rs2
bset x1, x26, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x4d1e0358 # initialize rs1
li x24, 0x16ae1b32 # initialize rs2
bset x28, x27, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xdfab5235 # initialize rs1
li x12, 0xca5619ba # initialize rs2
bset x4, x28, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xfe0cec1c # initialize rs1
li x4, 0x75fa6956 # initialize rs2
bset x14, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xfe38a94f # initialize rs1
li x29, 0x8f857916 # initialize rs2
bset x2, x30, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x5b33f8c5 # initialize rs1
li x3, 0xe875e8c4 # initialize rs2
bset x27, x31, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0x725d32fa # initialize rs1
li x0, 0x661bbf46 # initialize rs2
bset x3, x20, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x6, 0xd0b78c7b # initialize rs1
li x1, 0xc403e880 # initialize rs2
bset x27, x6, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x23, 0x9a5eed6d # initialize rs1
li x2, 0xc6ea456c # initialize rs2
bset x24, x23, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x30, 0x16581eb3 # initialize rs1
li x3, 0xda1b2c32 # initialize rs2
bset x10, x30, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
li x29, 0x08a00d2a # initialize rs1
li x4, 0x57086b4d # initialize rs2
bset x11, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x90eefd07 # initialize rs1
li x5, 0xcc67d08e # initialize rs2
bset x11, x13, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x9ec78a42 # initialize rs1
li x6, 0x5104359c # initialize rs2
bset x31, x27, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0xf9d757e2 # initialize rs1
li x7, 0xd48d171b # initialize rs2
bset x12, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x15, 0x8fa1ca1d # initialize rs1
li x8, 0xc1774178 # initialize rs2
bset x23, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x12, 0x0377dfe3 # initialize rs1
li x9, 0xc5fe234e # initialize rs2
bset x7, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x27, 0xad012f2c # initialize rs1
li x10, 0x04009e88 # initialize rs2
bset x25, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x13, 0x134af118 # initialize rs1
li x11, 0x47aa9436 # initialize rs2
bset x29, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x26, 0x042be8a6 # initialize rs1
li x12, 0xc5cd4084 # initialize rs2
bset x18, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x9, 0x67233d22 # initialize rs1
li x13, 0x4ce71005 # initialize rs2
bset x30, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x1, 0xcbbe4d50 # initialize rs1
li x14, 0xb06076fa # initialize rs2
bset x9, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0x62c4c329 # initialize rs1
li x15, 0xead38ecb # initialize rs2
bset x26, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x9, 0x30c1bd6a # initialize rs1
li x16, 0xc9853d2d # initialize rs2
bset x15, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x6, 0x332b5399 # initialize rs1
li x17, 0xc53e5b89 # initialize rs2
bset x9, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x8, 0x24052125 # initialize rs1
li x18, 0xcbf709b9 # initialize rs2
bset x28, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x16, 0xbe678e63 # initialize rs1
li x19, 0x33b900c9 # initialize rs2
bset x30, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x23, 0x20cc5f20 # initialize rs1
li x20, 0x5badb504 # initialize rs2
bset x21, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x16, 0xd80d8080 # initialize rs1
li x21, 0xe13aaee9 # initialize rs2
bset x25, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x10, 0x38ba6671 # initialize rs1
li x22, 0x1798c176 # initialize rs2
bset x31, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x17, 0x0694cf1f # initialize rs1
li x23, 0xf7edcd86 # initialize rs2
bset x5, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x17, 0xb944551a # initialize rs1
li x24, 0x4a2dd902 # initialize rs2
bset x31, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x20, 0xf43bcf9a # initialize rs1
li x25, 0xdea84b0c # initialize rs2
bset x8, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x20, 0x8b40f742 # initialize rs1
li x26, 0x6550bd07 # initialize rs2
bset x31, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x9, 0x7dd24786 # initialize rs1
li x27, 0x0faf512d # initialize rs2
bset x20, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x15, 0xfc4cbe2e # initialize rs1
li x28, 0xb7625808 # initialize rs2
bset x23, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x10, 0x2001a39d # initialize rs1
li x29, 0x01ac9c26 # initialize rs2
bset x11, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x18, 0xaf58a923 # initialize rs1
li x30, 0x00c26c4b # initialize rs2
bset x12, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x1, 0x2346dcda # initialize rs1
li x31, 0x789770a7 # initialize rs2
bset x17, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 252)

# Testcase cp_rd (Test destination rd = x0)
li x14, 0xe76426de # initialize rs1
li x21, 0xd16f9962 # initialize rs2
bset x0, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x23, 0x53ed3fd4 # initialize rs1
li x21, 0x01bd808c # initialize rs2
bset x1, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0xe0f2960e # initialize rs1
li x23, 0xfe3c253e # initialize rs2
bset x2, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x11, 0xbd6f903b # initialize rs1
li x17, 0x2578f6ad # initialize rs2
bset x3, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0x3056a712 # initialize rs1
li x2, 0xbd4cd61b # initialize rs2
bset x4, x18, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0x159e1a80 # initialize rs1
li x22, 0xd41d8a18 # initialize rs2
bset x5, x21, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x22d9a2a6 # initialize rs1
li x25, 0x7d2c7d95 # initialize rs2
bset x6, x3, x25 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x14, 0xd2328a65 # initialize rs1
li x3, 0x1bb99f03 # initialize rs2
bset x7, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x25, 0xfce41b04 # initialize rs1
li x5, 0x68d70662 # initialize rs2
bset x8, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0xba7dccba # initialize rs1
li x8, 0x786924fb # initialize rs2
bset x9, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0xe8f53c38 # initialize rs1
li x10, 0x5cf55936 # initialize rs2
bset x10, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x20, 0x3033ea42 # initialize rs1
li x23, 0xe5115ab7 # initialize rs2
bset x11, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x23, 0x293772cf # initialize rs1
li x26, 0x2862ee28 # initialize rs2
bset x12, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x25, 0x6d8974cb # initialize rs1
li x24, 0xfa6c42a1 # initialize rs2
bset x13, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x29, 0x4034ba9c # initialize rs1
li x24, 0x519107e4 # initialize rs2
bset x14, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x24, 0x5e30c60b # initialize rs1
li x30, 0x5e7e6784 # initialize rs2
bset x15, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x28, 0xad9bbc72 # initialize rs1
li x21, 0xac4122c5 # initialize rs2
bset x16, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x31, 0xf492b409 # initialize rs1
li x17, 0x2b3690ff # initialize rs2
bset x17, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x5, 0x8d12d518 # initialize rs1
li x3, 0x1a5d5661 # initialize rs2
bset x18, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x26, 0xba02a988 # initialize rs1
li x5, 0x3c17d370 # initialize rs2
bset x19, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x10, 0x3676d8b7 # initialize rs1
li x6, 0x7b857d86 # initialize rs2
bset x20, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x6, 0x007097e4 # initialize rs1
li x7, 0x454df45c # initialize rs2
bset x21, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x19, 0xeb429c74 # initialize rs1
li x10, 0x073a0eb8 # initialize rs2
bset x22, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x22, 0x92591116 # initialize rs1
li x15, 0x5fcc244a # initialize rs2
bset x23, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x25, 0x93149b93 # initialize rs1
li x11, 0x42c689b3 # initialize rs2
bset x24, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x30, 0xd8448130 # initialize rs1
li x26, 0x52295595 # initialize rs2
bset x25, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x14, 0x8be63601 # initialize rs1
li x18, 0x6f1284e4 # initialize rs2
bset x26, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x1, 0x7b886022 # initialize rs1
li x21, 0x9cf3c060 # initialize rs2
bset x27, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x14, 0x2316a2e5 # initialize rs1
li x16, 0x2db20ee9 # initialize rs2
bset x28, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0x4c8a02dd # initialize rs1
li x6, 0xd94cc7eb # initialize rs2
bset x29, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x17, 0x67d9270b # initialize rs1
li x14, 0x8a6e004b # initialize rs2
bset x30, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0x5dc8e4a0 # initialize rs1
li x5, 0x48da4701 # initialize rs2
bset x31, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x31, 0x00000000 # initialize rs1
li x2, 0x626ed015 # initialize rs2
bset x1, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x00000001 # initialize rs1
li x6, 0xc5ecc201 # initialize rs2
bset x15, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x9, 0x00000002 # initialize rs1
li x19, 0x6f8755c0 # initialize rs2
bset x31, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x10, 0x80000000 # initialize rs1
li x3, 0xb7b6653a # initialize rs2
bset x19, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x2, 0x80000001 # initialize rs1
li x25, 0x058db9c4 # initialize rs2
bset x11, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x7, 0x7fffffff # initialize rs1
li x1, 0x33ad02b0 # initialize rs2
bset x12, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x6, 0x7ffffffe # initialize rs1
li x25, 0xb4cd0c49 # initialize rs2
bset x22, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x23, 0xffffffff # initialize rs1
li x28, 0xb3c13184 # initialize rs2
bset x10, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0xfffffffe # initialize rs1
li x13, 0xd5e93ae9 # initialize rs2
bset x11, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x18, 0x5bbc8872 # initialize rs1
li x30, 0x8e9fbe30 # initialize rs2
bset x19, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x6, 0xaaaaaaaa # initialize rs1
li x7, 0x7567dd6d # initialize rs2
bset x8, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x30, 0x55555555 # initialize rs1
li x18, 0x373c320d # initialize rs2
bset x14, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x7, 0x5f452760 # initialize rs1
li x11, 0x00000000 # initialize rs2
bset x10, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x19, 0x4a13912b # initialize rs1
li x2, 0x00000001 # initialize rs2
bset x5, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x20, 0x64239606 # initialize rs1
li x14, 0x00000002 # initialize rs2
bset x29, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x26, 0xb66847cc # initialize rs1
li x16, 0x80000000 # initialize rs2
bset x27, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x30, 0x7450148e # initialize rs1
li x16, 0x80000001 # initialize rs2
bset x12, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x29, 0xa07eed68 # initialize rs1
li x25, 0x7fffffff # initialize rs2
bset x8, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x18, 0xb02699df # initialize rs1
li x17, 0x7ffffffe # initialize rs2
bset x7, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x3, 0xac776722 # initialize rs1
li x20, 0xffffffff # initialize rs2
bset x17, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0xec5736f2 # initialize rs1
li x5, 0xfffffffe # initialize rs2
bset x7, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x31, 0xe314df0a # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
bset x29, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x5, 0x81df1d97 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
bset x26, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x9, 0x01281bdc # initialize rs1
li x22, 0x55555555 # initialize rs2
bset x12, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x27, 0x00000000 # initialize rs1
li x7, 0x00000000 # initialize rs2
bset x6, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x7, 0x00000000 # initialize rs1
li x1, 0x00000001 # initialize rs2
bset x5, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x24, 0x00000000 # initialize rs1
li x28, 0x00000002 # initialize rs2
bset x18, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x25, 0x00000000 # initialize rs1
li x24, 0x80000000 # initialize rs2
bset x19, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x29, 0x00000000 # initialize rs1
li x10, 0x80000001 # initialize rs2
bset x25, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x23, 0x00000000 # initialize rs1
li x3, 0x7fffffff # initialize rs2
bset x17, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x16, 0x00000000 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
bset x12, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x27, 0x00000000 # initialize rs1
li x29, 0xffffffff # initialize rs2
bset x15, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x28, 0x00000000 # initialize rs1
li x5, 0xfffffffe # initialize rs2
bset x29, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x9, 0x00000000 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
bset x12, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x23, 0x00000000 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
bset x5, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x26, 0x00000000 # initialize rs1
li x20, 0x55555555 # initialize rs2
bset x21, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x26, 0x00000001 # initialize rs1
li x24, 0x00000000 # initialize rs2
bset x9, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x21, 0x00000001 # initialize rs1
li x31, 0x00000001 # initialize rs2
bset x11, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x28, 0x00000001 # initialize rs1
li x12, 0x00000002 # initialize rs2
bset x6, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x31, 0x00000001 # initialize rs1
li x13, 0x80000000 # initialize rs2
bset x25, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x12, 0x00000001 # initialize rs1
li x10, 0x80000001 # initialize rs2
bset x11, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x9, 0x00000001 # initialize rs1
li x16, 0x7fffffff # initialize rs2
bset x2, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x8, 0x00000001 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
bset x6, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x10, 0x00000001 # initialize rs1
li x21, 0xffffffff # initialize rs2
bset x15, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x17, 0x00000001 # initialize rs1
li x30, 0xfffffffe # initialize rs2
bset x5, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x31, 0x00000001 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
bset x30, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x30, 0x00000001 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
bset x18, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x12, 0x00000001 # initialize rs1
li x28, 0x55555555 # initialize rs2
bset x29, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x21, 0x00000002 # initialize rs1
li x8, 0x00000000 # initialize rs2
bset x25, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x11, 0x00000002 # initialize rs1
li x18, 0x00000001 # initialize rs2
bset x23, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x14, 0x00000002 # initialize rs1
li x6, 0x00000002 # initialize rs2
bset x13, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x10, 0x00000002 # initialize rs1
li x22, 0x80000000 # initialize rs2
bset x25, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x29, 0x00000002 # initialize rs1
li x27, 0x80000001 # initialize rs2
bset x13, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x13, 0x00000002 # initialize rs1
li x27, 0x7fffffff # initialize rs2
bset x10, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x21, 0x00000002 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
bset x31, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x3, 0x00000002 # initialize rs1
li x25, 0xffffffff # initialize rs2
bset x18, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x23, 0x00000002 # initialize rs1
li x8, 0xfffffffe # initialize rs2
bset x5, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x12, 0x00000002 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
bset x15, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x19, 0x00000002 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
bset x8, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x17, 0x00000002 # initialize rs1
li x28, 0x55555555 # initialize rs2
bset x7, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x1, 0x80000000 # initialize rs1
li x23, 0x00000000 # initialize rs2
bset x7, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x26, 0x80000000 # initialize rs1
li x11, 0x00000001 # initialize rs2
bset x29, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x13, 0x80000000 # initialize rs1
li x27, 0x00000002 # initialize rs2
bset x25, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x19, 0x80000000 # initialize rs1
li x22, 0x80000000 # initialize rs2
bset x10, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x12, 0x80000000 # initialize rs1
li x5, 0x80000001 # initialize rs2
bset x29, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x8, 0x80000000 # initialize rs1
li x6, 0x7fffffff # initialize rs2
bset x22, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x31, 0x80000000 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
bset x19, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x17, 0x80000000 # initialize rs1
li x5, 0xffffffff # initialize rs2
bset x9, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x6, 0x80000000 # initialize rs1
li x23, 0xfffffffe # initialize rs2
bset x5, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x6, 0x80000000 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
bset x10, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x29, 0x80000000 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
bset x3, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x28, 0x80000000 # initialize rs1
li x21, 0x55555555 # initialize rs2
bset x14, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x15, 0x80000001 # initialize rs1
li x7, 0x00000000 # initialize rs2
bset x28, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x24, 0x80000001 # initialize rs1
li x19, 0x00000001 # initialize rs2
bset x31, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x5, 0x80000001 # initialize rs1
li x25, 0x00000002 # initialize rs2
bset x20, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x31, 0x80000001 # initialize rs1
li x22, 0x80000000 # initialize rs2
bset x8, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x23, 0x80000001 # initialize rs1
li x5, 0x80000001 # initialize rs2
bset x28, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x8, 0x80000001 # initialize rs1
li x5, 0x7fffffff # initialize rs2
bset x1, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x30, 0x80000001 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
bset x3, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x15, 0x80000001 # initialize rs1
li x8, 0xffffffff # initialize rs2
bset x6, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x15, 0x80000001 # initialize rs1
li x29, 0xfffffffe # initialize rs2
bset x30, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x9, 0x80000001 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
bset x22, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x13, 0x80000001 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
bset x24, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x18, 0x80000001 # initialize rs1
li x8, 0x55555555 # initialize rs2
bset x13, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x16, 0x7fffffff # initialize rs1
li x23, 0x00000000 # initialize rs2
bset x24, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x28, 0x7fffffff # initialize rs1
li x16, 0x00000001 # initialize rs2
bset x18, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x25, 0x7fffffff # initialize rs1
li x19, 0x00000002 # initialize rs2
bset x18, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x11, 0x7fffffff # initialize rs1
li x17, 0x80000000 # initialize rs2
bset x7, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x2, 0x7fffffff # initialize rs1
li x16, 0x80000001 # initialize rs2
bset x12, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x23, 0x7fffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
bset x11, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x6, 0x7fffffff # initialize rs1
li x8, 0x7ffffffe # initialize rs2
bset x30, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x22, 0x7fffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
bset x20, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x28, 0x7fffffff # initialize rs1
li x24, 0xfffffffe # initialize rs2
bset x1, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x8, 0x7fffffff # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
bset x30, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x8, 0x7fffffff # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
bset x14, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x20, 0x7fffffff # initialize rs1
li x16, 0x55555555 # initialize rs2
bset x8, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x22, 0x7ffffffe # initialize rs1
li x3, 0x00000000 # initialize rs2
bset x21, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x16, 0x7ffffffe # initialize rs1
li x2, 0x00000001 # initialize rs2
bset x25, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x13, 0x7ffffffe # initialize rs1
li x29, 0x00000002 # initialize rs2
bset x27, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x6, 0x7ffffffe # initialize rs1
li x19, 0x80000000 # initialize rs2
bset x28, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x13, 0x7ffffffe # initialize rs1
li x18, 0x80000001 # initialize rs2
bset x17, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x17, 0x7ffffffe # initialize rs1
li x7, 0x7fffffff # initialize rs2
bset x14, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x21, 0x7ffffffe # initialize rs1
li x20, 0x7ffffffe # initialize rs2
bset x11, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x22, 0x7ffffffe # initialize rs1
li x7, 0xffffffff # initialize rs2
bset x17, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x3, 0x7ffffffe # initialize rs1
li x15, 0xfffffffe # initialize rs2
bset x16, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x14, 0x7ffffffe # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
bset x23, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x5, 0x7ffffffe # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
bset x8, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x12, 0x7ffffffe # initialize rs1
li x20, 0x55555555 # initialize rs2
bset x27, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x29, 0xffffffff # initialize rs1
li x15, 0x00000000 # initialize rs2
bset x17, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x31, 0xffffffff # initialize rs1
li x30, 0x00000001 # initialize rs2
bset x3, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x2, 0xffffffff # initialize rs1
li x12, 0x00000002 # initialize rs2
bset x9, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x20, 0xffffffff # initialize rs1
li x15, 0x80000000 # initialize rs2
bset x19, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x31, 0xffffffff # initialize rs1
li x6, 0x80000001 # initialize rs2
bset x13, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x7, 0xffffffff # initialize rs1
li x9, 0x7fffffff # initialize rs2
bset x27, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x25, 0xffffffff # initialize rs1
li x1, 0x7ffffffe # initialize rs2
bset x13, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x11, 0xffffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
bset x5, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x13, 0xffffffff # initialize rs1
li x10, 0xfffffffe # initialize rs2
bset x19, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x30, 0xffffffff # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
bset x11, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x22, 0xffffffff # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
bset x10, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x23, 0xffffffff # initialize rs1
li x21, 0x55555555 # initialize rs2
bset x15, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x30, 0xfffffffe # initialize rs1
li x14, 0x00000000 # initialize rs2
bset x18, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x27, 0xfffffffe # initialize rs1
li x26, 0x00000001 # initialize rs2
bset x18, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x29, 0xfffffffe # initialize rs1
li x3, 0x00000002 # initialize rs2
bset x16, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x20, 0xfffffffe # initialize rs1
li x22, 0x80000000 # initialize rs2
bset x19, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x9, 0xfffffffe # initialize rs1
li x5, 0x80000001 # initialize rs2
bset x23, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x1, 0xfffffffe # initialize rs1
li x19, 0x7fffffff # initialize rs2
bset x28, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x3, 0xfffffffe # initialize rs1
li x28, 0x7ffffffe # initialize rs2
bset x23, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x8, 0xfffffffe # initialize rs1
li x9, 0xffffffff # initialize rs2
bset x25, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x10, 0xfffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
bset x2, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x18, 0xfffffffe # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
bset x3, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x23, 0xfffffffe # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
bset x12, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x26, 0xfffffffe # initialize rs1
li x30, 0x55555555 # initialize rs2
bset x27, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x18, 0x5bbc8872 # initialize rs1
li x14, 0x00000000 # initialize rs2
bset x22, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x5, 0x5bbc8872 # initialize rs1
li x10, 0x00000001 # initialize rs2
bset x16, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x30, 0x5bbc8872 # initialize rs1
li x25, 0x00000002 # initialize rs2
bset x20, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x27, 0x5bbc8872 # initialize rs1
li x29, 0x80000000 # initialize rs2
bset x11, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x7, 0x5bbc8872 # initialize rs1
li x26, 0x80000001 # initialize rs2
bset x13, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x11, 0x5bbc8872 # initialize rs1
li x18, 0x7fffffff # initialize rs2
bset x12, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x13, 0x5bbc8872 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
bset x8, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x21, 0x5bbc8872 # initialize rs1
li x16, 0xffffffff # initialize rs2
bset x19, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x11, 0x5bbc8872 # initialize rs1
li x22, 0xfffffffe # initialize rs2
bset x18, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x29, 0x5bbc8872 # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
bset x13, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x12, 0x5bbc8872 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
bset x13, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x3, 0x5bbc8872 # initialize rs1
li x17, 0x55555555 # initialize rs2
bset x25, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x21, 0xaaaaaaaa # initialize rs1
li x20, 0x00000000 # initialize rs2
bset x28, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x10, 0xaaaaaaaa # initialize rs1
li x6, 0x00000001 # initialize rs2
bset x11, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x19, 0xaaaaaaaa # initialize rs1
li x27, 0x00000002 # initialize rs2
bset x1, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x8, 0xaaaaaaaa # initialize rs1
li x14, 0x80000000 # initialize rs2
bset x2, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x27, 0xaaaaaaaa # initialize rs1
li x22, 0x80000001 # initialize rs2
bset x1, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x27, 0xaaaaaaaa # initialize rs1
li x11, 0x7fffffff # initialize rs2
bset x26, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x23, 0xaaaaaaaa # initialize rs1
li x14, 0x7ffffffe # initialize rs2
bset x13, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x27, 0xaaaaaaaa # initialize rs1
li x19, 0xffffffff # initialize rs2
bset x6, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x5, 0xaaaaaaaa # initialize rs1
li x15, 0xfffffffe # initialize rs2
bset x7, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x3, 0xaaaaaaaa # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
bset x31, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
bset x10, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x31, 0xaaaaaaaa # initialize rs1
li x24, 0x55555555 # initialize rs2
bset x28, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x2, 0x55555555 # initialize rs1
li x13, 0x00000000 # initialize rs2
bset x1, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x3, 0x55555555 # initialize rs1
li x29, 0x00000001 # initialize rs2
bset x18, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x28, 0x55555555 # initialize rs1
li x12, 0x00000002 # initialize rs2
bset x26, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x11, 0x55555555 # initialize rs1
li x14, 0x80000000 # initialize rs2
bset x10, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x12, 0x55555555 # initialize rs1
li x19, 0x80000001 # initialize rs2
bset x28, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x6, 0x55555555 # initialize rs1
li x2, 0x7fffffff # initialize rs2
bset x29, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x17, 0x55555555 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
bset x25, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x20, 0x55555555 # initialize rs1
li x22, 0xffffffff # initialize rs2
bset x19, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x16, 0x55555555 # initialize rs1
li x30, 0xfffffffe # initialize rs2
bset x23, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x28, 0x55555555 # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
bset x25, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x5, 0x55555555 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
bset x10, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x28, 0x55555555 # initialize rs1
li x11, 0x55555555 # initialize rs2
bset x12, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x413a1d4a # initialize rs1
li x0, 0xa505bfd9 # initialize rs2
bset x11, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x50cabd51 # initialize rs1
li x1, 0xddfb019c # initialize rs2
bset x30, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x7e929d3a # initialize rs1
li x2, 0x630923cd # initialize rs2
bset x11, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xbd787637 # initialize rs1
li x3, 0xa77301a0 # initialize rs2
bset x2, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0e16f0a6 # initialize rs1
li x4, 0xa8ceaadb # initialize rs2
bset x11, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x47392392 # initialize rs1
li x5, 0xc0ba01e7 # initialize rs2
bset x8, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8e51da40 # initialize rs1
li x6, 0x190c235b # initialize rs2
bset x24, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6c6c9649 # initialize rs1
li x7, 0xa1a89460 # initialize rs2
bset x20, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6573e2fd # initialize rs1
li x8, 0x4bfe439a # initialize rs2
bset x9, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x1425e9f4 # initialize rs1
li x9, 0xd42b62a7 # initialize rs2
bset x16, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xfa6dbeb1 # initialize rs1
li x10, 0x9b242330 # initialize rs2
bset x25, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xd1e303ff # initialize rs1
li x11, 0x260159c1 # initialize rs2
bset x3, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x106a2eb2 # initialize rs1
li x12, 0x25d8fafe # initialize rs2
bset x19, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x7d70a119 # initialize rs1
li x13, 0x06b5af65 # initialize rs2
bset x14, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x7c5e2b76 # initialize rs1
li x14, 0xc4596142 # initialize rs2
bset x30, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x6882008d # initialize rs1
li x15, 0xe8c1eead # initialize rs2
bset x26, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xdde72fa6 # initialize rs1
li x16, 0xbc66625b # initialize rs2
bset x19, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x6f9fe877 # initialize rs1
li x17, 0x3445bd60 # initialize rs2
bset x20, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xa55b3fcc # initialize rs1
li x18, 0x522512f1 # initialize rs2
bset x11, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xf8313d2e # initialize rs1
li x19, 0xbee46885 # initialize rs2
bset x2, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xd532eb02 # initialize rs1
li x20, 0x46bfbc68 # initialize rs2
bset x28, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x8010a541 # initialize rs1
li x21, 0x79a1f26d # initialize rs2
bset x14, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x1ff1fe76 # initialize rs1
li x22, 0x74ee2b74 # initialize rs2
bset x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x226f7f14 # initialize rs1
li x23, 0x9a196e8c # initialize rs2
bset x29, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x07a30549 # initialize rs1
li x24, 0xd6cf8bb2 # initialize rs2
bset x26, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x2dbd14f1 # initialize rs1
li x25, 0xa5dbb61c # initialize rs2
bset x14, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xe10c5f91 # initialize rs1
li x26, 0xa8098fca # initialize rs2
bset x1, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x5d946405 # initialize rs1
li x27, 0x5a3d3af4 # initialize rs2
bset x3, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x573f9784 # initialize rs1
li x28, 0x81862265 # initialize rs2
bset x11, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x87515ff3 # initialize rs1
li x29, 0xb7557aa6 # initialize rs2
bset x27, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xc9e0959e # initialize rs1
li x30, 0x2529095b # initialize rs2
bset x28, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xd385ccc8 # initialize rs1
li x31, 0x39858123 # initialize rs2
bset x8, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x02ca5526 # initialize rs1
li x14, 0x56b8988f # initialize rs2
bset x0, x0, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa8a78d19 # initialize rs1
li x6, 0x1f5f8fb0 # initialize rs2
bset x1, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x83c64d1e # initialize rs1
li x9, 0x6c379449 # initialize rs2
bset x2, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x096672af # initialize rs1
li x5, 0x7365a150 # initialize rs2
bset x3, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x43edba66 # initialize rs1
li x8, 0x57122629 # initialize rs2
bset x4, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x65114717 # initialize rs1
li x20, 0xca1fbb23 # initialize rs2
bset x5, x5, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2f3c4536 # initialize rs1
li x21, 0xb9965b27 # initialize rs2
bset x6, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6f862def # initialize rs1
li x22, 0x756c5824 # initialize rs2
bset x7, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x71611d08 # initialize rs1
li x7, 0xd701d023 # initialize rs2
bset x8, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x9ff5b53d # initialize rs1
li x30, 0x3a402682 # initialize rs2
bset x9, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xee2f332f # initialize rs1
li x17, 0xe8eac5b3 # initialize rs2
bset x10, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x41452440 # initialize rs1
li x29, 0xdba93886 # initialize rs2
bset x11, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf8fc4691 # initialize rs1
li x31, 0xd8fa41a0 # initialize rs2
bset x12, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd0908b0b # initialize rs1
li x30, 0xb881909d # initialize rs2
bset x13, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xdc69a541 # initialize rs1
li x19, 0xc3eca669 # initialize rs2
bset x14, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xff6867a0 # initialize rs1
li x18, 0xc085c68c # initialize rs2
bset x15, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x9fdba886 # initialize rs1
li x20, 0xdc166985 # initialize rs2
bset x16, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x61fb4cdf # initialize rs1
li x1, 0x98746ccc # initialize rs2
bset x17, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xe9af5801 # initialize rs1
li x16, 0x3ca76e9f # initialize rs2
bset x18, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x3bbc8fcf # initialize rs1
li x28, 0x236d0437 # initialize rs2
bset x19, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x01eb66e9 # initialize rs1
li x9, 0x1f5dae9d # initialize rs2
bset x20, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x26f3c795 # initialize rs1
li x13, 0xa0458212 # initialize rs2
bset x21, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xe68f88d5 # initialize rs1
li x5, 0x35fdb582 # initialize rs2
bset x22, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x8d2f4990 # initialize rs1
li x21, 0xccd4ba6d # initialize rs2
bset x23, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe45ea269 # initialize rs1
li x22, 0xb165c7ee # initialize rs2
bset x24, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xaadfa758 # initialize rs1
li x15, 0xd67814b0 # initialize rs2
bset x25, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xec2b5bcd # initialize rs1
li x10, 0xd690b65c # initialize rs2
bset x26, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x9af2e959 # initialize rs1
li x7, 0x8e961dae # initialize rs2
bset x27, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x34610d95 # initialize rs1
li x22, 0xef9ecc32 # initialize rs2
bset x28, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x6fabbe2b # initialize rs1
li x31, 0xc91a31a3 # initialize rs2
bset x29, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xc0d7eab2 # initialize rs1
li x31, 0xab50c0fb # initialize rs2
bset x30, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x7c2c7a12 # initialize rs1
li x24, 0x86cfc04e # initialize rs2
bset x31, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x25, 0x459b00bb # initialize rs1
li x0, 0x591606fa # initialize rs2
bset x0, x25, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x700f881d # initialize rs1
li x1, 0x3002d6d3 # initialize rs2
bset x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x18, 0xdc8e15bc # initialize rs1
li x2, 0xb543afd3 # initialize rs2
bset x2, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x13, 0xe47c093b # initialize rs1
li x3, 0x583319af # initialize rs2
bset x3, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0xcec3c992 # initialize rs1
li x4, 0x568ec039 # initialize rs2
bset x4, x12, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0xf7a398dd # initialize rs1
li x5, 0xd5fe545a # initialize rs2
bset x5, x7, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0xd2360331 # initialize rs1
li x6, 0x7e512e33 # initialize rs2
bset x6, x22, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0xbb35da95 # initialize rs1
li x7, 0x1e37856c # initialize rs2
bset x7, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x13, 0x6de78fca # initialize rs1
li x8, 0x15dccfab # initialize rs2
bset x8, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x22, 0x2050103f # initialize rs1
li x9, 0xfa20f1ae # initialize rs2
bset x9, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x16, 0x13c2a34c # initialize rs1
li x10, 0xab9e955f # initialize rs2
bset x10, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x25, 0x1f3e3509 # initialize rs1
li x11, 0x5b4883ad # initialize rs2
bset x11, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x13, 0x74fdb7be # initialize rs1
li x12, 0xec855d62 # initialize rs2
bset x12, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x18, 0xcdf71b52 # initialize rs1
li x13, 0x3b2897f4 # initialize rs2
bset x13, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x27, 0x6c02cdfc # initialize rs1
li x14, 0x74622363 # initialize rs2
bset x14, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x5, 0xae43b9ac # initialize rs1
li x15, 0x30e8e0b2 # initialize rs2
bset x15, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x2, 0xe9c3299f # initialize rs1
li x16, 0x46570d87 # initialize rs2
bset x16, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x7, 0x42502c8d # initialize rs1
li x17, 0x7b1bfef6 # initialize rs2
bset x17, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x24, 0x896f8962 # initialize rs1
li x18, 0x823562cb # initialize rs2
bset x18, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x18, 0x8ebd52ba # initialize rs1
li x19, 0xf8725151 # initialize rs2
bset x19, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x16, 0x50c649ee # initialize rs1
li x20, 0xb51543c3 # initialize rs2
bset x20, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x29, 0x56ee3058 # initialize rs1
li x21, 0x3e2d3169 # initialize rs2
bset x21, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x26, 0x9270f7c3 # initialize rs1
li x22, 0xcafec135 # initialize rs2
bset x22, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x27, 0xdab42cb7 # initialize rs1
li x23, 0x4ada84a4 # initialize rs2
bset x23, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x1, 0xb0eeffd2 # initialize rs1
li x24, 0xc7823036 # initialize rs2
bset x24, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x21, 0xcd5bd2f3 # initialize rs1
li x25, 0xe1685da4 # initialize rs2
bset x25, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x7, 0x8ab4b467 # initialize rs1
li x26, 0x49e7e07f # initialize rs2
bset x26, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x31, 0xc52ba8e5 # initialize rs1
li x27, 0x5e538dc6 # initialize rs2
bset x27, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x29, 0x1f7525ef # initialize rs1
li x28, 0x90ad1bfa # initialize rs2
bset x28, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x11, 0xd9839e83 # initialize rs1
li x29, 0xf29920dc # initialize rs2
bset x29, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x18, 0xce5a032e # initialize rs1
li x30, 0x946cfc84 # initialize rs2
bset x30, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x30, 0xbd0c6ef8 # initialize rs1
li x31, 0x7db2fa02 # initialize rs2
bset x31, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x694db8db # initialize rs1
li x0, 0xca4cdd84 # initialize rs2
bset x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xdf473295 # initialize rs1
li x1, 0xb435854b # initialize rs2
bset x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xa224e3e6 # initialize rs1
li x2, 0x38f1900f # initialize rs2
bset x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x8a438037 # initialize rs1
li x3, 0x27aaa7f4 # initialize rs2
bset x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8d951b76 # initialize rs1
li x4, 0x118c890c # initialize rs2
bset x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe8dae356 # initialize rs1
li x5, 0x0f4d7451 # initialize rs2
bset x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb4bf9b47 # initialize rs1
li x6, 0x638031e4 # initialize rs2
bset x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7bb9c12b # initialize rs1
li x7, 0x7807b22f # initialize rs2
bset x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xb0c05886 # initialize rs1
li x8, 0x8f4bf394 # initialize rs2
bset x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x5ecd95c7 # initialize rs1
li x9, 0x73356fa1 # initialize rs2
bset x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xcb60ab2e # initialize rs1
li x10, 0x3d55b903 # initialize rs2
bset x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x4d53a2af # initialize rs1
li x11, 0x8a55f68e # initialize rs2
bset x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x8769006d # initialize rs1
li x12, 0xe689eca6 # initialize rs2
bset x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xd93a5f77 # initialize rs1
li x13, 0xef6e8379 # initialize rs2
bset x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x959c9d6b # initialize rs1
li x14, 0x9814db9e # initialize rs2
bset x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x9255faeb # initialize rs1
li x15, 0xa265ca12 # initialize rs2
bset x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x311e6e42 # initialize rs1
li x16, 0xad381405 # initialize rs2
bset x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x98fd3178 # initialize rs1
li x17, 0xfed80548 # initialize rs2
bset x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xf0fd4efe # initialize rs1
li x18, 0x553cd163 # initialize rs2
bset x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x90351590 # initialize rs1
li x19, 0xc9987e3c # initialize rs2
bset x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xecdb8d64 # initialize rs1
li x20, 0x1158b21c # initialize rs2
bset x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x2523dff6 # initialize rs1
li x21, 0x20f3e36b # initialize rs2
bset x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xcd9e183c # initialize rs1
li x22, 0xc45dd26c # initialize rs2
bset x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x3ded1d2a # initialize rs1
li x23, 0x14685d93 # initialize rs2
bset x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xa029e0b9 # initialize rs1
li x24, 0xab84d014 # initialize rs2
bset x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xf3920895 # initialize rs1
li x25, 0x4f5e903e # initialize rs2
bset x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x859429bc # initialize rs1
li x26, 0x52bb24a1 # initialize rs2
bset x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xb68aebf9 # initialize rs1
li x27, 0x9bbb2a33 # initialize rs2
bset x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xe41a4742 # initialize rs1
li x28, 0x8e7a44f1 # initialize rs2
bset x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x8cec5e5a # initialize rs1
li x29, 0xcaa4f23a # initialize rs2
bset x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x9efb4251 # initialize rs1
li x30, 0xa09ff52a # initialize rs2
bset x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xec3acf96 # initialize rs1
li x31, 0xe4864df0 # initialize rs2
bset x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x31, x8 # perform first operation
bset x17, x7, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x11, x16 # perform first operation
bset x13, x3, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x2, x1 # perform first operation
bset x5, x17, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x8, x24 # perform first operation
bset x8, x27, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x8, x16 # perform first operation
bset x8, x15, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x22, x19 # perform first operation
bset x2, x8, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x30, x14 # perform first operation
bset x12, x2, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x16, x3 # perform first operation
bset x17, x15, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x10, x5 # perform first operation
bset x9, x25, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x1, x9 # perform first operation
bset x1, x3, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x8, x9 # perform first operation
bset x9, x29, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x3, x8 # perform first operation
bset x27, x14, x29 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-bclr.S
// ******************


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

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-bext.S
// ******************


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

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-bexti.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x7e4f80d9 # initialize rs1
bexti x9, x0, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x8a1d91ab # initialize rs1
bexti x10, x1, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x7e94352b # initialize rs1
bexti x19, x2, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xf93d9baa # initialize rs1
bexti x13, x3, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2ae37491 # initialize rs1
bexti x7, x4, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x572b9284 # initialize rs1
bexti x31, x5, 8 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc822430c # initialize rs1
bexti x29, x6, 19 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8fcec199 # initialize rs1
bexti x30, x7, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xbd68468f # initialize rs1
bexti x28, x8, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x89a7aec9 # initialize rs1
bexti x12, x9, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x38ba522c # initialize rs1
bexti x6, x10, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x2f878097 # initialize rs1
bexti x19, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xd5a41e18 # initialize rs1
bexti x24, x12, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x67f2d8de # initialize rs1
bexti x6, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x6b9510c6 # initialize rs1
bexti x13, x14, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xbf518c5f # initialize rs1
bexti x5, x15, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x4cfd5918 # initialize rs1
bexti x6, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x432820d1 # initialize rs1
bexti x25, x17, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x48658111 # initialize rs1
bexti x24, x18, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xef6442cf # initialize rs1
bexti x23, x19, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xd42024a1 # initialize rs1
bexti x1, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x50be8961 # initialize rs1
bexti x26, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xa8e54f27 # initialize rs1
bexti x2, x22, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x81fa9885 # initialize rs1
bexti x19, x23, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x64a7cf9a # initialize rs1
bexti x31, x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x04305fda # initialize rs1
bexti x5, x25, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xc0f2cdfc # initialize rs1
bexti x12, x26, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x97626b9b # initialize rs1
bexti x13, x27, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x85661b2f # initialize rs1
bexti x29, x28, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x396b2b8b # initialize rs1
bexti x30, x29, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x875da525 # initialize rs1
bexti x3, x30, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x3873754b # initialize rs1
bexti x23, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 124)

# Testcase cp_rd (Test destination rd = x0)
li x25, 0x67591ce4 # initialize rs1
bexti x0, x25, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x9, 0x584daa7f # initialize rs1
bexti x1, x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x23, 0xb12b570f # initialize rs1
bexti x2, x23, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x17, 0x2f068839 # initialize rs1
bexti x3, x17, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0x0f2b38b5 # initialize rs1
bexti x4, x17, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0xa9cdf2bc # initialize rs1
bexti x5, x30, 13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0xdbbd3a7b # initialize rs1
bexti x6, x5, 28 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0xeab15acf # initialize rs1
bexti x7, x17, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x2, 0x735d931b # initialize rs1
bexti x8, x2, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x31, 0x8e0285af # initialize rs1
bexti x9, x31, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x62a1823c # initialize rs1
bexti x10, x21, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0x08569e09 # initialize rs1
bexti x11, x8, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x20, 0xe7219588 # initialize rs1
bexti x12, x20, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x30, 0x49dc9abf # initialize rs1
bexti x13, x30, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x6, 0xed981dc6 # initialize rs1
bexti x14, x6, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0xed452fbf # initialize rs1
bexti x15, x12, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x29, 0x3bf7d360 # initialize rs1
bexti x16, x29, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x25, 0x916e3624 # initialize rs1
bexti x17, x25, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x14, 0x6bdde81e # initialize rs1
bexti x18, x14, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x6, 0xc6ea7742 # initialize rs1
bexti x19, x6, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x26, 0x94e4d4e5 # initialize rs1
bexti x20, x26, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x26, 0xbb6152fc # initialize rs1
bexti x21, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x1, 0x6a543f3a # initialize rs1
bexti x22, x1, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x24, 0x7cf4b349 # initialize rs1
bexti x23, x24, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x26, 0x15d91a40 # initialize rs1
bexti x24, x26, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x9, 0xb487cbef # initialize rs1
bexti x25, x9, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x84fcbcd9 # initialize rs1
bexti x26, x26, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0x039de091 # initialize rs1
bexti x27, x6, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x25, 0xc63ddd44 # initialize rs1
bexti x28, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x8, 0xb552c7d4 # initialize rs1
bexti x29, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x25, 0x18f0b084 # initialize rs1
bexti x30, x25, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0x8b04cb8a # initialize rs1
bexti x31, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x2, 0x00000000 # initialize rs1
bexti x13, x2, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x00000001 # initialize rs1
bexti x5, x21, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x1, 0x00000002 # initialize rs1
bexti x25, x1, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x9, 0x80000000 # initialize rs1
bexti x14, x9, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x25, 0x80000001 # initialize rs1
bexti x11, x25, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x29, 0x7fffffff # initialize rs1
bexti x23, x29, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x16, 0x7ffffffe # initialize rs1
bexti x23, x16, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x30, 0xffffffff # initialize rs1
bexti x1, x30, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0xfffffffe # initialize rs1
bexti x1, x14, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x9, 0x5bbc8872 # initialize rs1
bexti x7, x9, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x17, 0xaaaaaaaa # initialize rs1
bexti x18, x17, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x6, 0x55555555 # initialize rs1
bexti x22, x6, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x9959013d # initialize rs1
bexti x0, x0, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x974d6748 # initialize rs1
bexti x1, x1, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x8cd0945b # initialize rs1
bexti x2, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xba011fa1 # initialize rs1
bexti x3, x3, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf953ca2b # initialize rs1
bexti x4, x4, 9 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x3d5d9fc2 # initialize rs1
bexti x5, x5, 10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc3dfd780 # initialize rs1
bexti x6, x6, 2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcbfd1096 # initialize rs1
bexti x7, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x2fcc5fd2 # initialize rs1
bexti x8, x8, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x3c387aa4 # initialize rs1
bexti x9, x9, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x3fd22835 # initialize rs1
bexti x10, x10, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x264443fb # initialize rs1
bexti x11, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x9132d8f1 # initialize rs1
bexti x12, x12, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xbf3774ee # initialize rs1
bexti x13, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x91ad1eca # initialize rs1
bexti x14, x14, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xb3c5a606 # initialize rs1
bexti x15, x15, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xe9130fff # initialize rs1
bexti x16, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x4847e770 # initialize rs1
bexti x17, x17, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xdf5459ca # initialize rs1
bexti x18, x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x3d96c4ba # initialize rs1
bexti x19, x19, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x2ee7b9bf # initialize rs1
bexti x20, x20, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x312cb4a6 # initialize rs1
bexti x21, x21, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x0f74cb08 # initialize rs1
bexti x22, x22, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xff2fd3ef # initialize rs1
bexti x23, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xc07da431 # initialize rs1
bexti x24, x24, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xd3a6f81e # initialize rs1
bexti x25, x25, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xa717a987 # initialize rs1
bexti x26, x26, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xafc68476 # initialize rs1
bexti x27, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xb3fb6a9b # initialize rs1
bexti x28, x28, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1ccca891 # initialize rs1
bexti x29, x29, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x63315c8f # initialize rs1
bexti x30, x30, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x7c2eb190 # initialize rs1
bexti x31, x31, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_uimm (Test bit = 0)
li x25, 0xa5171ea3 # initialize rs1
bexti x7, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 432)

# Testcase cp_uimm (Test bit = 1)
li x23, 0x2df7bd77 # initialize rs1
bexti x11, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 436)

# Testcase cp_uimm (Test bit = 2)
li x15, 0x42b9b77c # initialize rs1
bexti x6, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 440)

# Testcase cp_uimm (Test bit = 3)
li x19, 0x0a79e37f # initialize rs1
bexti x20, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 444)

# Testcase cp_uimm (Test bit = 4)
li x6, 0x2586b632 # initialize rs1
bexti x22, x6, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 448)

# Testcase cp_uimm (Test bit = 5)
li x18, 0x3f0a0751 # initialize rs1
bexti x9, x18, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 452)

# Testcase cp_uimm (Test bit = 6)
li x16, 0xd71439a7 # initialize rs1
bexti x31, x16, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 456)

# Testcase cp_uimm (Test bit = 7)
li x11, 0xfcc0945d # initialize rs1
bexti x5, x11, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 460)

# Testcase cp_uimm (Test bit = 8)
li x12, 0x49c92b5d # initialize rs1
bexti x2, x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cp_uimm (Test bit = 9)
li x22, 0x7ae8160d # initialize rs1
bexti x31, x22, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 468)

# Testcase cp_uimm (Test bit = 10)
li x7, 0xedf1a1a3 # initialize rs1
bexti x27, x7, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_uimm (Test bit = 11)
li x10, 0xb0651bd3 # initialize rs1
bexti x8, x10, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 476)

# Testcase cp_uimm (Test bit = 12)
li x9, 0x4a3d3897 # initialize rs1
bexti x30, x9, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cp_uimm (Test bit = 13)
li x31, 0xef0c7df5 # initialize rs1
bexti x10, x31, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 484)

# Testcase cp_uimm (Test bit = 14)
li x11, 0x2f68b855 # initialize rs1
bexti x7, x11, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cp_uimm (Test bit = 15)
li x14, 0x400d0cfc # initialize rs1
bexti x15, x14, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 492)

# Testcase cp_uimm (Test bit = 16)
li x6, 0xa3c8dff4 # initialize rs1
bexti x10, x6, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 496)

# Testcase cp_uimm (Test bit = 17)
li x19, 0x1ec9289e # initialize rs1
bexti x7, x19, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 500)

# Testcase cp_uimm (Test bit = 18)
li x6, 0x43cffbfa # initialize rs1
bexti x16, x6, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cp_uimm (Test bit = 19)
li x5, 0x2c8e1fc5 # initialize rs1
bexti x14, x5, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 508)

# Testcase cp_uimm (Test bit = 20)
li x25, 0x1438fe63 # initialize rs1
bexti x5, x25, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 512)

# Testcase cp_uimm (Test bit = 21)
li x21, 0x5b8edcea # initialize rs1
bexti x22, x21, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 516)

# Testcase cp_uimm (Test bit = 22)
li x17, 0x2d153c8a # initialize rs1
bexti x3, x17, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cp_uimm (Test bit = 23)
li x30, 0xde026a9c # initialize rs1
bexti x24, x30, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 524)

# Testcase cp_uimm (Test bit = 24)
li x13, 0x17957b54 # initialize rs1
bexti x10, x13, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_uimm (Test bit = 25)
li x19, 0x43efa2e6 # initialize rs1
bexti x9, x19, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 532)

# Testcase cp_uimm (Test bit = 26)
li x27, 0x677a37d2 # initialize rs1
bexti x6, x27, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cp_uimm (Test bit = 27)
li x9, 0x81923879 # initialize rs1
bexti x3, x9, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 540)

# Testcase cp_uimm (Test bit = 28)
li x11, 0x1bc1c9e5 # initialize rs1
bexti x27, x11, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 544)

# Testcase cp_uimm (Test bit = 29)
li x14, 0x9f524faa # initialize rs1
bexti x28, x14, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 548)

# Testcase cp_uimm (Test bit = 30)
li x10, 0x67201894 # initialize rs1
bexti x5, x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 552)

# Testcase cp_uimm (Test bit = 31)
li x14, 0xa7c72012 # initialize rs1
bexti x7, x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 556)

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x24, x29 # perform first operation
bexti x22, x26, 31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x3, x21 # perform first operation
bexti x16, x28, 24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x18, x7 # perform first operation
bexti x29, x31, 10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x9, x18 # perform first operation
bexti x18, x15, 11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x31, x30 # perform first operation
bexti x25, x13, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x12, x25 # perform first operation
bexti x25, x5, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x25, x14 # perform first operation
bexti x17, x7, 31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x19, x11 # perform first operation
bexti x16, x3, 12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x25, x1 # perform first operation
bexti x21, x29, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x15, x13 # perform first operation
bexti x15, x20, 11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x26, x16, x17 # perform first operation
bexti x17, x20, 13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x18, x29 # perform first operation
bexti x16, x5, 12 # perform second (triggering) operation

#.EQU SIGSIZE,560
.EQU SIGSIZE,8512 #combined


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
