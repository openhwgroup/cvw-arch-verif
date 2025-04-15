///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbb/WALLY-COV-sext.h.S
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
li x0, 0xd21cbcc8 # initialize rs1
sext.h x8, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x70edee20 # initialize rs1
sext.h x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x455306cb # initialize rs1
sext.h x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x98903eab # initialize rs1
sext.h x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x88ffb6ed # initialize rs1
sext.h x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1acdbd73 # initialize rs1
sext.h x15, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0x72e0474f # initialize rs1
sext.h x14, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x135307ed # initialize rs1
sext.h x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x9184cf85 # initialize rs1
sext.h x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x1be2fa1f # initialize rs1
sext.h x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x0ebe0aef # initialize rs1
sext.h x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x5f451df8 # initialize rs1
sext.h x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x9d2303f6 # initialize rs1
sext.h x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x90637af4 # initialize rs1
sext.h x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x767e4f25 # initialize rs1
sext.h x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc33aebd9 # initialize rs1
sext.h x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x1f940b53 # initialize rs1
sext.h x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x088a5b90 # initialize rs1
sext.h x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xca1c369e # initialize rs1
sext.h x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x609e0086 # initialize rs1
sext.h x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x8311153f # initialize rs1
sext.h x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x950b405f # initialize rs1
sext.h x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x48ddcf5c # initialize rs1
sext.h x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xbea0a5e2 # initialize rs1
sext.h x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xdcb510ac # initialize rs1
sext.h x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x43b943a8 # initialize rs1
sext.h x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xe2a851d3 # initialize rs1
sext.h x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xf13b9fc3 # initialize rs1
sext.h x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x3649c941 # initialize rs1
sext.h x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xff63737b # initialize rs1
sext.h x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x4191b4ed # initialize rs1
sext.h x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xe93563e8 # initialize rs1
sext.h x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 124)

# Testcase cp_rd (Test destination rd = x0)
li x30, 0xa061c936 # initialize rs1
sext.h x0, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x92749fa2 # initialize rs1
sext.h x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x29, 0x354f1781 # initialize rs1
sext.h x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x6, 0x6a04f0d0 # initialize rs1
sext.h x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x213872c6 # initialize rs1
sext.h x4, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0xaa8837a6 # initialize rs1
sext.h x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0xf08d9b64 # initialize rs1
sext.h x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x0e0f50c9 # initialize rs1
sext.h x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x2, 0xb46ddb01 # initialize rs1
sext.h x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x3, 0x837bbf2d # initialize rs1
sext.h x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x27, 0x49b7399a # initialize rs1
sext.h x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x26, 0x6f516547 # initialize rs1
sext.h x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x23, 0x0db9a22c # initialize rs1
sext.h x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x6, 0xb0014743 # initialize rs1
sext.h x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x31, 0x1471620a # initialize rs1
sext.h x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x3, 0x6b2353ef # initialize rs1
sext.h x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x15, 0xe81edbfc # initialize rs1
sext.h x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xd91dfb3b # initialize rs1
sext.h x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x14, 0x50a8476b # initialize rs1
sext.h x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x15, 0x1c87514c # initialize rs1
sext.h x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x14, 0x5189579b # initialize rs1
sext.h x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x6, 0xfd19ef2f # initialize rs1
sext.h x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x15, 0xb3a4c198 # initialize rs1
sext.h x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x20, 0x36f4d8bb # initialize rs1
sext.h x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x13, 0x5ec7c60b # initialize rs1
sext.h x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x18, 0x4f7e2a22 # initialize rs1
sext.h x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x3, 0x74328f5e # initialize rs1
sext.h x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x15, 0x628f3cba # initialize rs1
sext.h x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x15, 0x6030b50e # initialize rs1
sext.h x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x1, 0xb8a9b4f0 # initialize rs1
sext.h x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x5, 0x7287357b # initialize rs1
sext.h x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x20, 0xe1069bf9 # initialize rs1
sext.h x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x26, 0x00000000 # initialize rs1
sext.h x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x28, 0x00000001 # initialize rs1
sext.h x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x26, 0x00000002 # initialize rs1
sext.h x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x28, 0x80000000 # initialize rs1
sext.h x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x18, 0x80000001 # initialize rs1
sext.h x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x2, 0x7fffffff # initialize rs1
sext.h x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x20, 0x7ffffffe # initialize rs1
sext.h x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x29, 0xffffffff # initialize rs1
sext.h x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x26, 0xfffffffe # initialize rs1
sext.h x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x18, 0x5bbc8872 # initialize rs1
sext.h x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x1, 0xaaaaaaaa # initialize rs1
sext.h x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x2, 0x55555555 # initialize rs1
sext.h x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x9a3f5e53 # initialize rs1
sext.h x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x1ccfc5b2 # initialize rs1
sext.h x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x2acb4444 # initialize rs1
sext.h x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x37732c17 # initialize rs1
sext.h x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9d49c197 # initialize rs1
sext.h x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x61db5bcd # initialize rs1
sext.h x5, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x66338c1d # initialize rs1
sext.h x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x47258ff7 # initialize rs1
sext.h x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd74c776b # initialize rs1
sext.h x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xb78d6b41 # initialize rs1
sext.h x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x44f56415 # initialize rs1
sext.h x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xedf2dc89 # initialize rs1
sext.h x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf934420d # initialize rs1
sext.h x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xc1381aa4 # initialize rs1
sext.h x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xac5882c6 # initialize rs1
sext.h x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x1dc7017d # initialize rs1
sext.h x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x0eaa1d28 # initialize rs1
sext.h x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xb81f692e # initialize rs1
sext.h x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xf72014db # initialize rs1
sext.h x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf0b5161e # initialize rs1
sext.h x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x9019778a # initialize rs1
sext.h x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xafa40516 # initialize rs1
sext.h x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6f841703 # initialize rs1
sext.h x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x2972e415 # initialize rs1
sext.h x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x8ee1b506 # initialize rs1
sext.h x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xcd53223f # initialize rs1
sext.h x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x7e80ac26 # initialize rs1
sext.h x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xf64fe99e # initialize rs1
sext.h x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x7b4d688e # initialize rs1
sext.h x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1ffb271c # initialize rs1
sext.h x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x86d026a7 # initialize rs1
sext.h x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x8844cd5c # initialize rs1
sext.h x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x5, x12 # perform first operation
sext.h x22, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x21, x15 # perform first operation
sext.h x7, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x18, x23 # perform first operation
sext.h x15, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x14, x20 # perform first operation
sext.h x20, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x19, x14 # perform first operation
sext.h x14, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x30, x13 # perform first operation
sext.h x30, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x31, x5 # perform first operation
sext.h x14, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x9, x12 # perform first operation
sext.h x21, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x5, x2 # perform first operation
sext.h x22, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x24, x17 # perform first operation
sext.h x24, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x30, x18 # perform first operation
sext.h x18, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x6, x8 # perform first operation
sext.h x14, x25 # perform second (triggering) operation

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
