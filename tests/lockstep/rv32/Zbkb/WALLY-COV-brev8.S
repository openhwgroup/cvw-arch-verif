///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbkb/WALLY-COV-brev8.S
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
li x0, 0xfc9c0d76 # initialize rs1
brev8 x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xbda7b1f4 # initialize rs1
brev8 x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xfd5fe551 # initialize rs1
brev8 x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xc61f30f9 # initialize rs1
brev8 x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xcdef614c # initialize rs1
brev8 x3, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4e64c80c # initialize rs1
brev8 x2, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2d509f1e # initialize rs1
brev8 x10, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8339a49c # initialize rs1
brev8 x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x4b776291 # initialize rs1
brev8 x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x2faaf5e1 # initialize rs1
brev8 x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x919304d7 # initialize rs1
brev8 x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x4c762e39 # initialize rs1
brev8 x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x6f0f6e4e # initialize rs1
brev8 x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xea48a4f7 # initialize rs1
brev8 x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xb2b98934 # initialize rs1
brev8 x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x30613243 # initialize rs1
brev8 x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xcc85f5b0 # initialize rs1
brev8 x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xaa580544 # initialize rs1
brev8 x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x65834c69 # initialize rs1
brev8 x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x345d5802 # initialize rs1
brev8 x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xc6a57771 # initialize rs1
brev8 x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x2c03b243 # initialize rs1
brev8 x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xe44ed69a # initialize rs1
brev8 x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x9c3af130 # initialize rs1
brev8 x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xc623aa9f # initialize rs1
brev8 x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x24f1816b # initialize rs1
brev8 x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xe8948feb # initialize rs1
brev8 x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x0edac64e # initialize rs1
brev8 x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x97f3c962 # initialize rs1
brev8 x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xb60db724 # initialize rs1
brev8 x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xe6230f8f # initialize rs1
brev8 x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x556fdc6f # initialize rs1
brev8 x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 124)

# Testcase cp_rd (Test destination rd = x0)
li x28, 0x7c68f9fc # initialize rs1
brev8 x0, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x20, 0x4340fdc5 # initialize rs1
brev8 x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x5, 0xbb2dd8e5 # initialize rs1
brev8 x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x22, 0xeebcb2b6 # initialize rs1
brev8 x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0xbd672c38 # initialize rs1
brev8 x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x00057065 # initialize rs1
brev8 x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0x8df1b062 # initialize rs1
brev8 x6, x14 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x7334c5d1 # initialize rs1
brev8 x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x26, 0x442b5a10 # initialize rs1
brev8 x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x18, 0xd006ae15 # initialize rs1
brev8 x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x26, 0x13226b39 # initialize rs1
brev8 x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x16, 0xbe5e9b0d # initialize rs1
brev8 x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0x8fa14e7d # initialize rs1
brev8 x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x20, 0x2f02fc4c # initialize rs1
brev8 x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x23, 0x3bada205 # initialize rs1
brev8 x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x29, 0x64407f27 # initialize rs1
brev8 x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x19, 0xe8c285e3 # initialize rs1
brev8 x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x25, 0xce073eeb # initialize rs1
brev8 x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x17, 0x0154be97 # initialize rs1
brev8 x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x25, 0xc70bd8d2 # initialize rs1
brev8 x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x27, 0xe64d3923 # initialize rs1
brev8 x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x440c9e53 # initialize rs1
brev8 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x12, 0x3ade9c28 # initialize rs1
brev8 x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x13, 0xe684d49a # initialize rs1
brev8 x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x25, 0xe61cf87e # initialize rs1
brev8 x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x6f68ee5c # initialize rs1
brev8 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x23, 0x718f2c51 # initialize rs1
brev8 x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x10, 0x155daa9b # initialize rs1
brev8 x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x1, 0x3d774eee # initialize rs1
brev8 x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x1, 0xec8130d3 # initialize rs1
brev8 x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x8, 0x4ed0ff41 # initialize rs1
brev8 x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x25, 0x83c92719 # initialize rs1
brev8 x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x00000000 # initialize rs1
brev8 x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x00000001 # initialize rs1
brev8 x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x00000002 # initialize rs1
brev8 x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x5, 0x80000000 # initialize rs1
brev8 x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x6, 0x80000001 # initialize rs1
brev8 x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x20, 0x7fffffff # initialize rs1
brev8 x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x10, 0x7ffffffe # initialize rs1
brev8 x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0xffffffff # initialize rs1
brev8 x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0xfffffffe # initialize rs1
brev8 x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x10, 0x5bbc8872 # initialize rs1
brev8 x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x17, 0xaaaaaaaa # initialize rs1
brev8 x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x20, 0x55555555 # initialize rs1
brev8 x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xe0ddb743 # initialize rs1
brev8 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x17151ac4 # initialize rs1
brev8 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x44fa3c3f # initialize rs1
brev8 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xcd46cf47 # initialize rs1
brev8 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4f2237b1 # initialize rs1
brev8 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1fe6d046 # initialize rs1
brev8 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4605687a # initialize rs1
brev8 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1f622583 # initialize rs1
brev8 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x0b427867 # initialize rs1
brev8 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc1b890ec # initialize rs1
brev8 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x9d57e06f # initialize rs1
brev8 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x902fa1eb # initialize rs1
brev8 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xdcc7b540 # initialize rs1
brev8 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xa3cd1026 # initialize rs1
brev8 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x3c39710d # initialize rs1
brev8 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x0ad00709 # initialize rs1
brev8 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xa28fcce1 # initialize rs1
brev8 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x9067c460 # initialize rs1
brev8 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x36313ddd # initialize rs1
brev8 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x1f142354 # initialize rs1
brev8 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x7affeb2b # initialize rs1
brev8 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x14747f76 # initialize rs1
brev8 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x0c7c1e05 # initialize rs1
brev8 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa7e48f30 # initialize rs1
brev8 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7f89eba8 # initialize rs1
brev8 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xf62286b3 # initialize rs1
brev8 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xe44c8d3d # initialize rs1
brev8 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x7eb018d2 # initialize rs1
brev8 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa5392085 # initialize rs1
brev8 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xdbf48a9a # initialize rs1
brev8 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xc44241db # initialize rs1
brev8 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x8513db6c # initialize rs1
brev8 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x15, x18 # perform first operation
brev8 x14, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x13, x29 # perform first operation
brev8 x10, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x29, x1 # perform first operation
brev8 x20, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x10, x27 # perform first operation
brev8 x27, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x25, x27 # perform first operation
brev8 x15, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x1, x30 # perform first operation
brev8 x1, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x16, x11 # perform first operation
brev8 x29, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x11, x24 # perform first operation
brev8 x1, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x10, x18 # perform first operation
brev8 x12, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x3, x7 # perform first operation
brev8 x3, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x16, x13 # perform first operation
brev8 x13, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x14, x25 # perform first operation
brev8 x15, x6 # perform second (triggering) operation

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
