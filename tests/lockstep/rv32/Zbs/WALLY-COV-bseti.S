///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbs/WALLY-COV-bseti.S
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

.EQU SIGSIZE,560


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
