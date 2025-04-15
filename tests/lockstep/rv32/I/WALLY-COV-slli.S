///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-slli.S
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
li x0, 0xbef516c1 # initialize rs1
slli x14, x0, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x5d0be0d1 # initialize rs1
slli x31, x1, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x6d2db53a # initialize rs1
slli x25, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x1166ebff # initialize rs1
slli x11, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x99f9c199 # initialize rs1
slli x28, x4, 5 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1130c530 # initialize rs1
slli x19, x5, 7 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3426afb9 # initialize rs1
slli x18, x6, 4 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x19d545b7 # initialize rs1
slli x13, x7, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x5994780c # initialize rs1
slli x10, x8, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x0c34f775 # initialize rs1
slli x13, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x6199dfd9 # initialize rs1
slli x18, x10, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xbe695e14 # initialize rs1
slli x9, x11, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x6e7440df # initialize rs1
slli x6, x12, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xbe36c4a9 # initialize rs1
slli x30, x13, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x48077805 # initialize rs1
slli x27, x14, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xe9ef8653 # initialize rs1
slli x20, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x57614ded # initialize rs1
slli x10, x16, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x06d77e7e # initialize rs1
slli x31, x17, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x86540b29 # initialize rs1
slli x20, x18, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x5be830c3 # initialize rs1
slli x25, x19, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x75b18f38 # initialize rs1
slli x6, x20, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xa83d16ae # initialize rs1
slli x28, x21, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x735221db # initialize rs1
slli x30, x22, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x3d641141 # initialize rs1
slli x3, x23, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xc7fb3a57 # initialize rs1
slli x19, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xe4cd6c1d # initialize rs1
slli x28, x25, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xf694d1ad # initialize rs1
slli x2, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x0046e1fc # initialize rs1
slli x6, x27, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xea39ab86 # initialize rs1
slli x14, x28, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xe4d8d44c # initialize rs1
slli x19, x29, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x2f70fa3c # initialize rs1
slli x23, x30, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x5419fc3d # initialize rs1
slli x25, x31, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 124)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0x4f421b4a # initialize rs1
slli x0, x3, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x20, 0x7a768bc4 # initialize rs1
slli x1, x20, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x3, 0xf653d623 # initialize rs1
slli x2, x3, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x7, 0x0aa126bc # initialize rs1
slli x3, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0xdfba84b9 # initialize rs1
slli x4, x15, 14 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0xf10996fd # initialize rs1
slli x5, x11, 13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0x2f03a6d1 # initialize rs1
slli x6, x12, 6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xaa2dbbc9 # initialize rs1
slli x7, x24, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x27, 0xb5bb5395 # initialize rs1
slli x8, x27, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x27, 0x94bb64f6 # initialize rs1
slli x9, x27, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x6, 0xe2b21a27 # initialize rs1
slli x10, x6, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x17, 0x449b118a # initialize rs1
slli x11, x17, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x24, 0xe11bc7b8 # initialize rs1
slli x12, x24, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x29, 0x562f78a3 # initialize rs1
slli x13, x29, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x16, 0x8eb72944 # initialize rs1
slli x14, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x26, 0xba555040 # initialize rs1
slli x15, x26, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x22, 0xafeb2017 # initialize rs1
slli x16, x22, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x11, 0x2edd69d2 # initialize rs1
slli x17, x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x23, 0xdd8447c3 # initialize rs1
slli x18, x23, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x13, 0x3bfe830e # initialize rs1
slli x19, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x21, 0x86502f42 # initialize rs1
slli x20, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x22, 0xf58a6fd7 # initialize rs1
slli x21, x22, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x29, 0x87e2ce60 # initialize rs1
slli x22, x29, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x3, 0x8050b78b # initialize rs1
slli x23, x3, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x13, 0x077d35a5 # initialize rs1
slli x24, x13, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x11, 0xa7658503 # initialize rs1
slli x25, x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x8, 0x775cc0ae # initialize rs1
slli x26, x8, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x20, 0x8057b818 # initialize rs1
slli x27, x20, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x24, 0xc465e507 # initialize rs1
slli x28, x24, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x21, 0x7b50456c # initialize rs1
slli x29, x21, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x23, 0x7a2afec9 # initialize rs1
slli x30, x23, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x2, 0x5c6da26c # initialize rs1
slli x31, x2, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x19, 0x00000000 # initialize rs1
slli x9, x19, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x2, 0x00000001 # initialize rs1
slli x6, x2, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x19, 0x00000002 # initialize rs1
slli x8, x19, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x7, 0x80000000 # initialize rs1
slli x23, x7, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x13, 0x80000001 # initialize rs1
slli x18, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x21, 0x7fffffff # initialize rs1
slli x30, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x15, 0x7ffffffe # initialize rs1
slli x29, x15, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x22, 0xffffffff # initialize rs1
slli x18, x22, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x3, 0xfffffffe # initialize rs1
slli x27, x3, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x25, 0x5bbc8872 # initialize rs1
slli x1, x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x11, 0xaaaaaaaa # initialize rs1
slli x3, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x19, 0x55555555 # initialize rs1
slli x16, x19, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x5c00ca18 # initialize rs1
slli x0, x0, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x286371af # initialize rs1
slli x1, x1, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xd1fd0e65 # initialize rs1
slli x2, x2, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x3aa87b13 # initialize rs1
slli x3, x3, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xccb166ff # initialize rs1
slli x4, x4, 11 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc77698b4 # initialize rs1
slli x5, x5, 18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x92ddccda # initialize rs1
slli x6, x6, 28 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6bdccc0a # initialize rs1
slli x7, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xc4443aae # initialize rs1
slli x8, x8, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xd74c4f5f # initialize rs1
slli x9, x9, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc776f559 # initialize rs1
slli x10, x10, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x6c664836 # initialize rs1
slli x11, x11, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x850c4ed3 # initialize rs1
slli x12, x12, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xb1113072 # initialize rs1
slli x13, x13, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x57d787d0 # initialize rs1
slli x14, x14, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x81f0f118 # initialize rs1
slli x15, x15, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xee94ed57 # initialize rs1
slli x16, x16, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x0be9e99e # initialize rs1
slli x17, x17, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x2a94a380 # initialize rs1
slli x18, x18, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xb5edd1fb # initialize rs1
slli x19, x19, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x588cd0e6 # initialize rs1
slli x20, x20, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x37a75a0c # initialize rs1
slli x21, x21, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x69329685 # initialize rs1
slli x22, x22, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x29065e07 # initialize rs1
slli x23, x23, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x94351950 # initialize rs1
slli x24, x24, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x85d2fa79 # initialize rs1
slli x25, x25, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x080e59b5 # initialize rs1
slli x26, x26, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb192f74d # initialize rs1
slli x27, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xc378d575 # initialize rs1
slli x28, x28, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x6b160422 # initialize rs1
slli x29, x29, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x5c4c5c50 # initialize rs1
slli x30, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x3a90e323 # initialize rs1
slli x31, x31, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_uimm (Test bit = 0)
li x20, 0xc25747f7 # initialize rs1
slli x2, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 432)

# Testcase cp_uimm (Test bit = 1)
li x10, 0xa262927f # initialize rs1
slli x14, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 436)

# Testcase cp_uimm (Test bit = 2)
li x10, 0x2f98ddef # initialize rs1
slli x3, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 440)

# Testcase cp_uimm (Test bit = 3)
li x10, 0xcf79263e # initialize rs1
slli x5, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 444)

# Testcase cp_uimm (Test bit = 4)
li x9, 0xdd331fac # initialize rs1
slli x13, x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 448)

# Testcase cp_uimm (Test bit = 5)
li x6, 0xe294ed19 # initialize rs1
slli x7, x6, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 452)

# Testcase cp_uimm (Test bit = 6)
li x5, 0xc400c535 # initialize rs1
slli x26, x5, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cp_uimm (Test bit = 7)
li x27, 0xbce020b2 # initialize rs1
slli x22, x27, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 460)

# Testcase cp_uimm (Test bit = 8)
li x28, 0xa4902c8d # initialize rs1
slli x23, x28, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 464)

# Testcase cp_uimm (Test bit = 9)
li x1, 0xb2ab27de # initialize rs1
slli x31, x1, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 468)

# Testcase cp_uimm (Test bit = 10)
li x7, 0xd5828893 # initialize rs1
slli x19, x7, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cp_uimm (Test bit = 11)
li x12, 0xeffa9f75 # initialize rs1
slli x13, x12, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 476)

# Testcase cp_uimm (Test bit = 12)
li x13, 0x84404148 # initialize rs1
slli x23, x13, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 480)

# Testcase cp_uimm (Test bit = 13)
li x20, 0x43db3b8f # initialize rs1
slli x15, x20, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 484)

# Testcase cp_uimm (Test bit = 14)
li x21, 0xf1792ce1 # initialize rs1
slli x31, x21, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_uimm (Test bit = 15)
li x11, 0x74885e8a # initialize rs1
slli x20, x11, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 492)

# Testcase cp_uimm (Test bit = 16)
li x24, 0x87149587 # initialize rs1
slli x26, x24, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 496)

# Testcase cp_uimm (Test bit = 17)
li x28, 0xfde8e720 # initialize rs1
slli x13, x28, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 500)

# Testcase cp_uimm (Test bit = 18)
li x18, 0xbc8ef491 # initialize rs1
slli x17, x18, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 504)

# Testcase cp_uimm (Test bit = 19)
li x7, 0xda695938 # initialize rs1
slli x31, x7, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 508)

# Testcase cp_uimm (Test bit = 20)
li x12, 0xe4355808 # initialize rs1
slli x7, x12, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 512)

# Testcase cp_uimm (Test bit = 21)
li x27, 0x7d2c0962 # initialize rs1
slli x17, x27, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 516)

# Testcase cp_uimm (Test bit = 22)
li x1, 0x1f70831a # initialize rs1
slli x9, x1, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cp_uimm (Test bit = 23)
li x10, 0xd2796a0a # initialize rs1
slli x22, x10, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 524)

# Testcase cp_uimm (Test bit = 24)
li x2, 0xc9954473 # initialize rs1
slli x21, x2, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 528)

# Testcase cp_uimm (Test bit = 25)
li x1, 0x864066da # initialize rs1
slli x31, x1, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 532)

# Testcase cp_uimm (Test bit = 26)
li x9, 0x117c34bb # initialize rs1
slli x5, x9, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 536)

# Testcase cp_uimm (Test bit = 27)
li x21, 0x37c88294 # initialize rs1
slli x17, x21, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 540)

# Testcase cp_uimm (Test bit = 28)
li x8, 0x50518dad # initialize rs1
slli x18, x8, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 544)

# Testcase cp_uimm (Test bit = 29)
li x25, 0xa5c78a5f # initialize rs1
slli x8, x25, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 548)

# Testcase cp_uimm (Test bit = 30)
li x29, 0x3c368a71 # initialize rs1
slli x13, x29, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cp_uimm (Test bit = 31)
li x27, 0x411c047c # initialize rs1
slli x5, x27, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 556)

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x22, x19 # perform first operation
slli x25, x2, 25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x29, x19 # perform first operation
slli x15, x7, 7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x14, x7 # perform first operation
slli x6, x23, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x25, x31 # perform first operation
slli x31, x5, 4 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x12, x13 # perform first operation
slli x12, x29, 27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x25, x7 # perform first operation
slli x6, x7, 25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x24, x31 # perform first operation
slli x18, x19, 24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x8, x23 # perform first operation
slli x11, x25, 18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x11, x12 # perform first operation
slli x9, x10, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x22, x2 # perform first operation
slli x22, x1, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x15, x6 # perform first operation
slli x6, x31, 22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x29, x24 # perform first operation
slli x5, x12, 31 # perform second (triggering) operation

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
