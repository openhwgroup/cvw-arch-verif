///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zicsr/WALLY-COV-csrrc.S
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
li x0, 0x94120180 # initialize rs1
csrrc x22, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xa50f2674 # initialize rs1
csrrc x5, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x1cba44c4 # initialize rs1
csrrc x19, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x8a7de794 # initialize rs1
csrrc x24, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb1ba7a11 # initialize rs1
csrrc x14, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7447d52b # initialize rs1
csrrc x18, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xed9fae38 # initialize rs1
csrrc x10, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x713f25c0 # initialize rs1
csrrc x13, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xebe08873 # initialize rs1
csrrc x2, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x3e8b48bf # initialize rs1
csrrc x5, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xc5c6dc90 # initialize rs1
csrrc x18, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xcffc512b # initialize rs1
csrrc x25, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x66078a7d # initialize rs1
csrrc x1, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x25d240f8 # initialize rs1
csrrc x10, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xfd0e88f5 # initialize rs1
csrrc x12, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x26557b36 # initialize rs1
csrrc x11, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x62a4c060 # initialize rs1
csrrc x15, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x6acaf8a6 # initialize rs1
csrrc x1, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x6b7d1eba # initialize rs1
csrrc x13, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xd4f7d0a9 # initialize rs1
csrrc x9, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xdca0ab41 # initialize rs1
csrrc x30, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x253ebbed # initialize rs1
csrrc x15, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x5a8349df # initialize rs1
csrrc x2, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x9e364604 # initialize rs1
csrrc x17, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x52850f5e # initialize rs1
csrrc x31, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x5bf17dc3 # initialize rs1
csrrc x20, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x6a3cc9f3 # initialize rs1
csrrc x8, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x53c5b971 # initialize rs1
csrrc x17, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x40713b79 # initialize rs1
csrrc x11, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xa948f352 # initialize rs1
csrrc x24, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x022324bd # initialize rs1
csrrc x10, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x4f95c27a # initialize rs1
csrrc x16, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 124)

# Testcase cp_rd (Test destination rd = x0)
li x7, 0xa7e2b232 # initialize rs1
csrrc x0, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x25, 0xf20839de # initialize rs1
csrrc x1, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x15, 0x182ad5dd # initialize rs1
csrrc x2, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x27, 0x8705c3ae # initialize rs1
csrrc x3, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0xbb1223d2 # initialize rs1
csrrc x4, mscratch, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x5afecf11 # initialize rs1
csrrc x5, mscratch, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0xc5f116f8 # initialize rs1
csrrc x6, mscratch, x14 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xd8b98075 # initialize rs1
csrrc x7, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x21, 0x4dc8587e # initialize rs1
csrrc x8, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x27, 0xb751c2fb # initialize rs1
csrrc x9, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x693c9ef6 # initialize rs1
csrrc x10, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x1, 0x955bf0d7 # initialize rs1
csrrc x11, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0x15d08bd6 # initialize rs1
csrrc x12, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0xee59f832 # initialize rs1
csrrc x13, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x28, 0x8c50d084 # initialize rs1
csrrc x14, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x23, 0x87e37998 # initialize rs1
csrrc x15, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x1, 0xfe49a87e # initialize rs1
csrrc x16, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x9, 0x66da56c4 # initialize rs1
csrrc x17, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x23, 0x0859ec31 # initialize rs1
csrrc x18, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x17, 0xcf8f4836 # initialize rs1
csrrc x19, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x12, 0xcd11f799 # initialize rs1
csrrc x20, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x22, 0x3c34c03f # initialize rs1
csrrc x21, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0x0e24127e # initialize rs1
csrrc x22, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x5, 0x7e17ce19 # initialize rs1
csrrc x23, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x27, 0x182eec40 # initialize rs1
csrrc x24, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x18, 0x7fd0da09 # initialize rs1
csrrc x25, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x22, 0x69417c72 # initialize rs1
csrrc x26, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x3, 0x1bceba37 # initialize rs1
csrrc x27, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x30, 0x0d92e45b # initialize rs1
csrrc x28, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x24, 0x169f5ea8 # initialize rs1
csrrc x29, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0x7fb51275 # initialize rs1
csrrc x30, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x2, 0x67386893 # initialize rs1
csrrc x31, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0x00000000 # initialize rs1
csrrc x25, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x3, 0x00000001 # initialize rs1
csrrc x17, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x00000002 # initialize rs1
csrrc x26, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x22, 0x80000000 # initialize rs1
csrrc x13, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x24, 0x80000001 # initialize rs1
csrrc x30, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x29, 0x7fffffff # initialize rs1
csrrc x7, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x3, 0x7ffffffe # initialize rs1
csrrc x21, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0xffffffff # initialize rs1
csrrc x17, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x1, 0xfffffffe # initialize rs1
csrrc x19, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x31, 0x5bbc8872 # initialize rs1
csrrc x5, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x14, 0xaaaaaaaa # initialize rs1
csrrc x9, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x6, 0x55555555 # initialize rs1
csrrc x16, mscratch, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xfb0d1b94 # initialize rs1
csrrc x0, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xcacaabf6 # initialize rs1
csrrc x1, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xdbcb04a1 # initialize rs1
csrrc x2, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd6788730 # initialize rs1
csrrc x3, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xee91a8ee # initialize rs1
csrrc x4, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x87cad2a3 # initialize rs1
csrrc x5, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7f49f4a3 # initialize rs1
csrrc x6, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x416286cc # initialize rs1
csrrc x7, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x49e0149f # initialize rs1
csrrc x8, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x3356091e # initialize rs1
csrrc x9, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x0e792708 # initialize rs1
csrrc x10, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x727b6c0f # initialize rs1
csrrc x11, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x3a727b6a # initialize rs1
csrrc x12, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xf315dd59 # initialize rs1
csrrc x13, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xf6ca369c # initialize rs1
csrrc x14, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x244ee0cb # initialize rs1
csrrc x15, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xc293f7ed # initialize rs1
csrrc x16, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xcf92e9c4 # initialize rs1
csrrc x17, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x123f26a0 # initialize rs1
csrrc x18, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xe9b02b4a # initialize rs1
csrrc x19, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3e02783e # initialize rs1
csrrc x20, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd42f1a58 # initialize rs1
csrrc x21, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x65dd62d7 # initialize rs1
csrrc x22, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa7b27490 # initialize rs1
csrrc x23, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x4820687b # initialize rs1
csrrc x24, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xe29a14c3 # initialize rs1
csrrc x25, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x13debd74 # initialize rs1
csrrc x26, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x8f43703b # initialize rs1
csrrc x27, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x232df957 # initialize rs1
csrrc x28, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x540748c8 # initialize rs1
csrrc x29, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xba8e52b4 # initialize rs1
csrrc x30, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x9343ca03 # initialize rs1
csrrc x31, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x18, x13 # perform first operation
csrrc x31, mscratch, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x27, x22 # perform first operation
csrrc x11, mscratch, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x31, x29 # perform first operation
csrrc x16, mscratch, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x27, x20 # perform first operation
csrrc x11, mscratch, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x1, x25 # perform first operation
csrrc x12, mscratch, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x23, x16 # perform first operation
csrrc x23, mscratch, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x31, x14 # perform first operation
csrrc x9, mscratch, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x13, x2 # perform first operation
csrrc x7, mscratch, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x23, x13 # perform first operation
csrrc x14, mscratch, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x24, x6 # perform first operation
csrrc x24, mscratch, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x5, x3 # perform first operation
csrrc x3, mscratch, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x21, x22 # perform first operation
csrrc x20, mscratch, x29 # perform second (triggering) operation

.EQU SIGSIZE,432


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
