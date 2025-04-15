///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zknh/WALLY-COV-sha256sig0.S
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
li x0, 0x07775b64 # initialize rs1
sha256sig0 x25, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xe169729a # initialize rs1
sha256sig0 x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x2b1145e4 # initialize rs1
sha256sig0 x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xa98f09f6 # initialize rs1
sha256sig0 x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x88d78654 # initialize rs1
sha256sig0 x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x17aaf186 # initialize rs1
sha256sig0 x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x68dde273 # initialize rs1
sha256sig0 x2, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x418f63ee # initialize rs1
sha256sig0 x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x9ef73530 # initialize rs1
sha256sig0 x11, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x13522b0b # initialize rs1
sha256sig0 x23, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x0df0d519 # initialize rs1
sha256sig0 x20, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x61a7fba7 # initialize rs1
sha256sig0 x15, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x6abf4e0f # initialize rs1
sha256sig0 x16, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x8af088b1 # initialize rs1
sha256sig0 x23, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x08fbc6e2 # initialize rs1
sha256sig0 x12, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x94e0e047 # initialize rs1
sha256sig0 x31, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xb094d69a # initialize rs1
sha256sig0 x12, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe0af6775 # initialize rs1
sha256sig0 x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x3761fbc5 # initialize rs1
sha256sig0 x3, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x2b412e4d # initialize rs1
sha256sig0 x15, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x03dc3d64 # initialize rs1
sha256sig0 x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x6c6d0a1b # initialize rs1
sha256sig0 x20, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x9a7d7a68 # initialize rs1
sha256sig0 x24, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x5a94f50f # initialize rs1
sha256sig0 x18, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x6c622d80 # initialize rs1
sha256sig0 x16, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x7d4a3c94 # initialize rs1
sha256sig0 x30, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x7a0dc601 # initialize rs1
sha256sig0 x19, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd3a6e275 # initialize rs1
sha256sig0 x18, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xd1a5fafd # initialize rs1
sha256sig0 x3, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x3254ae32 # initialize rs1
sha256sig0 x10, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xd3b35437 # initialize rs1
sha256sig0 x1, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xf4c068dd # initialize rs1
sha256sig0 x8, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 124)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0x8738bbaa # initialize rs1
sha256sig0 x0, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x17, 0x24612556 # initialize rs1
sha256sig0 x1, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x20, 0xeb33ed8e # initialize rs1
sha256sig0 x2, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x9, 0xa57559b7 # initialize rs1
sha256sig0 x3, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
li x26, 0xa891c52f # initialize rs1
sha256sig0 x4, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0xf58ccb17 # initialize rs1
sha256sig0 x5, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x88f69b48 # initialize rs1
sha256sig0 x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0x9cf0fae1 # initialize rs1
sha256sig0 x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x18, 0xf6bb8ed5 # initialize rs1
sha256sig0 x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0xaf7cc19b # initialize rs1
sha256sig0 x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x15, 0x374b96f3 # initialize rs1
sha256sig0 x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x26, 0xe12d27dc # initialize rs1
sha256sig0 x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x26, 0xa1df4801 # initialize rs1
sha256sig0 x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x20, 0x246cecb9 # initialize rs1
sha256sig0 x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x27, 0x51a70bbe # initialize rs1
sha256sig0 x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x13, 0x4519d161 # initialize rs1
sha256sig0 x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x14, 0xc2778be9 # initialize rs1
sha256sig0 x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x5, 0xdd16764b # initialize rs1
sha256sig0 x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x8, 0x1a914d2d # initialize rs1
sha256sig0 x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x17, 0x417ea2dc # initialize rs1
sha256sig0 x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x7218c6ae # initialize rs1
sha256sig0 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x8, 0xf76541f0 # initialize rs1
sha256sig0 x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x28, 0x201dbf9a # initialize rs1
sha256sig0 x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x11, 0x33dad8f5 # initialize rs1
sha256sig0 x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x6, 0x54ee25e9 # initialize rs1
sha256sig0 x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x24, 0x784545b9 # initialize rs1
sha256sig0 x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x1, 0xcea58ece # initialize rs1
sha256sig0 x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x20, 0xe4787cc5 # initialize rs1
sha256sig0 x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x21, 0x622bdfca # initialize rs1
sha256sig0 x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0x31f171b0 # initialize rs1
sha256sig0 x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x12, 0x757f32a5 # initialize rs1
sha256sig0 x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x18, 0x95c79c63 # initialize rs1
sha256sig0 x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x00000000 # initialize rs1
sha256sig0 x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x00000001 # initialize rs1
sha256sig0 x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0x00000002 # initialize rs1
sha256sig0 x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x21, 0x80000000 # initialize rs1
sha256sig0 x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x19, 0x80000001 # initialize rs1
sha256sig0 x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x27, 0x7fffffff # initialize rs1
sha256sig0 x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x21, 0x7ffffffe # initialize rs1
sha256sig0 x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0xffffffff # initialize rs1
sha256sig0 x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0xfffffffe # initialize rs1
sha256sig0 x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x27, 0x5bbc8872 # initialize rs1
sha256sig0 x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x28, 0xaaaaaaaa # initialize rs1
sha256sig0 x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x2, 0x55555555 # initialize rs1
sha256sig0 x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc2b107b3 # initialize rs1
sha256sig0 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xda7793db # initialize rs1
sha256sig0 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xa6da0f7c # initialize rs1
sha256sig0 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x1bc3048f # initialize rs1
sha256sig0 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2efc331c # initialize rs1
sha256sig0 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x79021468 # initialize rs1
sha256sig0 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xfec3ba57 # initialize rs1
sha256sig0 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5b1f265d # initialize rs1
sha256sig0 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9dabe1a7 # initialize rs1
sha256sig0 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xb713a140 # initialize rs1
sha256sig0 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xd7190ac2 # initialize rs1
sha256sig0 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xcc97791a # initialize rs1
sha256sig0 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x0c91ce93 # initialize rs1
sha256sig0 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x77b8a697 # initialize rs1
sha256sig0 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc56c90f6 # initialize rs1
sha256sig0 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x7b0e7d05 # initialize rs1
sha256sig0 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x1d6b9ee0 # initialize rs1
sha256sig0 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xbe733e1e # initialize rs1
sha256sig0 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xb373d08f # initialize rs1
sha256sig0 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x5774b7a4 # initialize rs1
sha256sig0 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x6da495b5 # initialize rs1
sha256sig0 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x1bb92e9f # initialize rs1
sha256sig0 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x9b60074c # initialize rs1
sha256sig0 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x38c0cd9e # initialize rs1
sha256sig0 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x11fe2feb # initialize rs1
sha256sig0 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x412d2614 # initialize rs1
sha256sig0 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x8f790428 # initialize rs1
sha256sig0 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x81a7b1bb # initialize rs1
sha256sig0 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xeda68661 # initialize rs1
sha256sig0 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x246e6be7 # initialize rs1
sha256sig0 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xe69e90c2 # initialize rs1
sha256sig0 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x45596d96 # initialize rs1
sha256sig0 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x6, x10 # perform first operation
sha256sig0 x2, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x19, x16 # perform first operation
sha256sig0 x12, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x5, x26 # perform first operation
sha256sig0 x17, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x18, x23 # perform first operation
sha256sig0 x23, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x11, x14 # perform first operation
sha256sig0 x12, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x31, x29 # perform first operation
sha256sig0 x29, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x16, x18 # perform first operation
sha256sig0 x14, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x15, x21 # perform first operation
sha256sig0 x20, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x9, x8 # perform first operation
sha256sig0 x10, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x9, x11 # perform first operation
sha256sig0 x9, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x18, x7 # perform first operation
sha256sig0 x7, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x29, x10 # perform first operation
sha256sig0 x27, x28 # perform second (triggering) operation

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
