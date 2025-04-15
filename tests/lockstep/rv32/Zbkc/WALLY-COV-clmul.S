///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbkc/WALLY-COV-clmul.S
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
li x0, 0xfa95613b # initialize rs1
li x22, 0x92fb1c09 # initialize rs2
clmul x15, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x130d3a30 # initialize rs1
li x3, 0x96c6aa63 # initialize rs2
clmul x29, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x85bcc306 # initialize rs1
li x11, 0x71118cef # initialize rs2
clmul x6, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb2cd9341 # initialize rs1
li x13, 0x854de076 # initialize rs2
clmul x14, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6465422f # initialize rs1
li x10, 0x8ff4036c # initialize rs2
clmul x22, x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb591a377 # initialize rs1
li x2, 0xb1ef01fe # initialize rs2
clmul x18, x5, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3110a473 # initialize rs1
li x31, 0xd86083ad # initialize rs2
clmul x24, x6, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x64ff0887 # initialize rs1
li x1, 0xc011610a # initialize rs2
clmul x30, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xf189a82f # initialize rs1
li x23, 0x5c89d634 # initialize rs2
clmul x14, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x17b6c207 # initialize rs1
li x10, 0x38ed56c3 # initialize rs2
clmul x2, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x7a7dd699 # initialize rs1
li x31, 0xf8561d5e # initialize rs2
clmul x1, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa33af9ed # initialize rs1
li x14, 0x6eaf43da # initialize rs2
clmul x10, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xf646058d # initialize rs1
li x11, 0x7da10eee # initialize rs2
clmul x3, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xe3b93081 # initialize rs1
li x6, 0x33e7ed18 # initialize rs2
clmul x2, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x5b594029 # initialize rs1
li x30, 0x90efd4db # initialize rs2
clmul x13, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xe37a6d85 # initialize rs1
li x7, 0xd0e779d4 # initialize rs2
clmul x19, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x98603e01 # initialize rs1
li x8, 0xbed70743 # initialize rs2
clmul x22, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x1fce9cd1 # initialize rs1
li x2, 0x7f639fd8 # initialize rs2
clmul x22, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xd352a186 # initialize rs1
li x12, 0x75c506ab # initialize rs2
clmul x19, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x4ffeb3e9 # initialize rs1
li x21, 0x19a51f83 # initialize rs2
clmul x13, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x63c3bf5a # initialize rs1
li x13, 0x18e95069 # initialize rs2
clmul x11, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x6d3cc926 # initialize rs1
li x11, 0x5e19620d # initialize rs2
clmul x24, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xd5f3de16 # initialize rs1
li x9, 0xa457ccc5 # initialize rs2
clmul x1, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x51efc1c3 # initialize rs1
li x31, 0x87a09768 # initialize rs2
clmul x10, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x875e2bc0 # initialize rs1
li x26, 0x28547080 # initialize rs2
clmul x16, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x8112f28a # initialize rs1
li x27, 0x56115333 # initialize rs2
clmul x6, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xfcec9fce # initialize rs1
li x31, 0x98c91ef7 # initialize rs2
clmul x30, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x87d75e42 # initialize rs1
li x26, 0x8a6bc4a6 # initialize rs2
clmul x31, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xf1c88b2e # initialize rs1
li x20, 0xd33a8c1e # initialize rs2
clmul x16, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xe2b8123f # initialize rs1
li x13, 0x539b23a0 # initialize rs2
clmul x24, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x1c35aebf # initialize rs1
li x6, 0x53c7312d # initialize rs2
clmul x29, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x673ef67b # initialize rs1
li x19, 0x246035ce # initialize rs2
clmul x26, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x1, 0x78473f76 # initialize rs1
li x0, 0x8b70caed # initialize rs2
clmul x8, x1, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x21, 0x5fcda6e8 # initialize rs1
li x1, 0x50413065 # initialize rs2
clmul x23, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x19, 0x015feb44 # initialize rs1
li x2, 0x6718d628 # initialize rs2
clmul x8, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x9, 0xd955ffa3 # initialize rs1
li x3, 0xbd28892d # initialize rs2
clmul x16, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0x1442126d # initialize rs1
li x4, 0x0696961e # initialize rs2
clmul x17, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0xdf256780 # initialize rs1
li x5, 0x83333bf5 # initialize rs2
clmul x28, x7, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x16, 0xe12a8a53 # initialize rs1
li x6, 0x7ec67da3 # initialize rs2
clmul x18, x16, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0xaf0f2520 # initialize rs1
li x7, 0x92dc391a # initialize rs2
clmul x18, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x19, 0xc6dcd537 # initialize rs1
li x8, 0x9b275c58 # initialize rs2
clmul x24, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x7, 0xa026c56d # initialize rs1
li x9, 0x2919ea4b # initialize rs2
clmul x31, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x28, 0xc9d4f4f3 # initialize rs1
li x10, 0x9a551042 # initialize rs2
clmul x19, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0x5901db60 # initialize rs1
li x11, 0x65b978f7 # initialize rs2
clmul x20, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x30, 0x3a5b3d74 # initialize rs1
li x12, 0x510d2959 # initialize rs2
clmul x29, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x20, 0xf39ef45f # initialize rs1
li x13, 0xfa1df1e6 # initialize rs2
clmul x28, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x26, 0x77d0d887 # initialize rs1
li x14, 0x3385b9ad # initialize rs2
clmul x22, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x6, 0xc0a71e73 # initialize rs1
li x15, 0x8caa20c5 # initialize rs2
clmul x28, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x11, 0x34e5da11 # initialize rs1
li x16, 0x7b83ee33 # initialize rs2
clmul x26, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x2, 0x2a42a26f # initialize rs1
li x17, 0x5c0333d2 # initialize rs2
clmul x24, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x5, 0x9c731d2f # initialize rs1
li x18, 0x994e4788 # initialize rs2
clmul x15, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x17, 0x91076bf7 # initialize rs1
li x19, 0x6341259e # initialize rs2
clmul x10, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x8, 0xd455a111 # initialize rs1
li x20, 0x7b7594ec # initialize rs2
clmul x31, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x30, 0xc50f5e23 # initialize rs1
li x21, 0x05b7d31c # initialize rs2
clmul x8, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x14, 0x92c0c209 # initialize rs1
li x22, 0x13e5015d # initialize rs2
clmul x15, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x27, 0x3019522e # initialize rs1
li x23, 0xac7b4dee # initialize rs2
clmul x8, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x10, 0x3ad8413d # initialize rs1
li x24, 0xd53a2608 # initialize rs2
clmul x14, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x3, 0x10a79e06 # initialize rs1
li x25, 0xf1f59849 # initialize rs2
clmul x15, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x15, 0x22c617c7 # initialize rs1
li x26, 0xefff9d34 # initialize rs2
clmul x30, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x23, 0x9d27f8ff # initialize rs1
li x27, 0x7e2f85e8 # initialize rs2
clmul x1, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x22, 0x48c47255 # initialize rs1
li x28, 0x2cb55610 # initialize rs2
clmul x1, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x5, 0x788ce2f7 # initialize rs1
li x29, 0xf48f1867 # initialize rs2
clmul x28, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x10, 0xf1f1187c # initialize rs1
li x30, 0xb03ae992 # initialize rs2
clmul x27, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x30, 0x61f40169 # initialize rs1
li x31, 0x4c202132 # initialize rs2
clmul x3, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 252)

# Testcase cp_rd (Test destination rd = x0)
li x20, 0x6edb6bab # initialize rs1
li x21, 0xcbced670 # initialize rs2
clmul x0, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x24, 0x717330fe # initialize rs1
li x12, 0x0976e833 # initialize rs2
clmul x1, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0xacc7e279 # initialize rs1
li x8, 0xaa4fc2af # initialize rs2
clmul x2, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x12, 0xd5186e8e # initialize rs1
li x2, 0x6810bbee # initialize rs2
clmul x3, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0x66154f09 # initialize rs1
li x22, 0x8bea6b9b # initialize rs2
clmul x4, x15, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x08671ecf # initialize rs1
li x7, 0x4fcdc173 # initialize rs2
clmul x5, x1, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0x1f4b8fc5 # initialize rs1
li x31, 0xa33172a8 # initialize rs2
clmul x6, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
li x21, 0x86f7fff8 # initialize rs1
li x27, 0xa10a1f58 # initialize rs2
clmul x7, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x24, 0x6ed96d29 # initialize rs1
li x21, 0x3937c862 # initialize rs2
clmul x8, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xe0ebf058 # initialize rs1
li x20, 0xac7a288d # initialize rs2
clmul x9, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x19, 0x2649f102 # initialize rs1
li x20, 0xcd1807f5 # initialize rs2
clmul x10, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x1, 0x99194d0a # initialize rs1
li x21, 0x23880c08 # initialize rs2
clmul x11, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x6, 0xa0ea2e08 # initialize rs1
li x25, 0x9c59c265 # initialize rs2
clmul x12, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x27, 0x6917d7a7 # initialize rs1
li x18, 0xe0f522da # initialize rs2
clmul x13, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x443e185f # initialize rs1
li x13, 0xa2cf0335 # initialize rs2
clmul x14, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x18, 0xd3a6ade7 # initialize rs1
li x22, 0x82101bf0 # initialize rs2
clmul x15, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x19, 0x7c325d2e # initialize rs1
li x10, 0x06cb8f49 # initialize rs2
clmul x16, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x22, 0x6b678001 # initialize rs1
li x20, 0x2fd9fc04 # initialize rs2
clmul x17, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x8, 0xaca71fa0 # initialize rs1
li x17, 0x85bc0740 # initialize rs2
clmul x18, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x8b826320 # initialize rs1
li x15, 0x4b3a545e # initialize rs2
clmul x19, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x23, 0x294aa4e1 # initialize rs1
li x26, 0xad24ee54 # initialize rs2
clmul x20, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0x70872a81 # initialize rs1
li x18, 0x26a5f407 # initialize rs2
clmul x21, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x27, 0x77c64ccd # initialize rs1
li x28, 0x459338ce # initialize rs2
clmul x22, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0xf50acc97 # initialize rs1
li x7, 0x917eaed0 # initialize rs2
clmul x23, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x18, 0x47dd530c # initialize rs1
li x8, 0x1e74646a # initialize rs2
clmul x24, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x16, 0x58dee979 # initialize rs1
li x17, 0xb4e57f2a # initialize rs2
clmul x25, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x10, 0xc1e2719c # initialize rs1
li x16, 0x7ac88651 # initialize rs2
clmul x26, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x26, 0x63314f5a # initialize rs1
li x31, 0xbd638463 # initialize rs2
clmul x27, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x1, 0x318ac2f4 # initialize rs1
li x17, 0x710691fd # initialize rs2
clmul x28, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x2, 0x403a8f6e # initialize rs1
li x7, 0xad235999 # initialize rs2
clmul x29, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x19, 0x5634026e # initialize rs1
li x13, 0x86747ecc # initialize rs2
clmul x30, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x16, 0x0c271f53 # initialize rs1
li x24, 0xf860fa22 # initialize rs2
clmul x31, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x21, 0x00000000 # initialize rs1
li x29, 0x611c5a14 # initialize rs2
clmul x16, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x00000001 # initialize rs1
li x27, 0xf453bc1b # initialize rs2
clmul x28, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x7, 0x00000002 # initialize rs1
li x19, 0x5025e259 # initialize rs2
clmul x18, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x10, 0x80000000 # initialize rs1
li x21, 0x62f89c44 # initialize rs2
clmul x24, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x17, 0x80000001 # initialize rs1
li x14, 0x42bfcda7 # initialize rs2
clmul x1, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x26, 0x7fffffff # initialize rs1
li x29, 0xd4559057 # initialize rs2
clmul x30, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x15, 0x7ffffffe # initialize rs1
li x12, 0x4f587d06 # initialize rs2
clmul x9, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0xffffffff # initialize rs1
li x16, 0xc522863d # initialize rs2
clmul x23, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x27, 0xfffffffe # initialize rs1
li x15, 0x24ee07f4 # initialize rs2
clmul x31, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x2, 0x5bbc8872 # initialize rs1
li x30, 0x406e4126 # initialize rs2
clmul x21, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x1, 0xaaaaaaaa # initialize rs1
li x9, 0xbd310e48 # initialize rs2
clmul x26, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x27, 0x55555555 # initialize rs1
li x12, 0x05fc108c # initialize rs2
clmul x6, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x15, 0x3a073014 # initialize rs1
li x10, 0x00000000 # initialize rs2
clmul x2, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x25, 0xb51a6754 # initialize rs1
li x1, 0x00000001 # initialize rs2
clmul x22, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0x8b84bf64 # initialize rs1
li x3, 0x00000002 # initialize rs2
clmul x2, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x7, 0xf4025048 # initialize rs1
li x29, 0x80000000 # initialize rs2
clmul x13, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x22, 0x9e7b8cce # initialize rs1
li x31, 0x80000001 # initialize rs2
clmul x16, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x13, 0x5753b42e # initialize rs1
li x28, 0x7fffffff # initialize rs2
clmul x18, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x31, 0x803a05de # initialize rs1
li x8, 0x7ffffffe # initialize rs2
clmul x11, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x20, 0xfea37d65 # initialize rs1
li x15, 0xffffffff # initialize rs2
clmul x17, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0xcfc77cff # initialize rs1
li x24, 0xfffffffe # initialize rs2
clmul x11, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x20, 0x7b0d8053 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
clmul x7, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x16, 0x73d64414 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
clmul x3, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x20, 0xe9e1bd85 # initialize rs1
li x11, 0x55555555 # initialize rs2
clmul x24, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x16, 0x00000000 # initialize rs1
li x21, 0x00000000 # initialize rs2
clmul x1, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x27, 0x00000000 # initialize rs1
li x22, 0x00000001 # initialize rs2
clmul x12, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x20, 0x00000000 # initialize rs1
li x17, 0x00000002 # initialize rs2
clmul x7, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x18, 0x00000000 # initialize rs1
li x7, 0x80000000 # initialize rs2
clmul x30, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x10, 0x00000000 # initialize rs1
li x13, 0x80000001 # initialize rs2
clmul x28, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x26, 0x00000000 # initialize rs1
li x16, 0x7fffffff # initialize rs2
clmul x17, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x12, 0x00000000 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
clmul x25, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x26, 0x00000000 # initialize rs1
li x11, 0xffffffff # initialize rs2
clmul x5, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x26, 0x00000000 # initialize rs1
li x24, 0xfffffffe # initialize rs2
clmul x10, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x13, 0x00000000 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
clmul x31, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x28, 0x00000000 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
clmul x1, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x22, 0x00000000 # initialize rs1
li x26, 0x55555555 # initialize rs2
clmul x7, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x14, 0x00000001 # initialize rs1
li x31, 0x00000000 # initialize rs2
clmul x12, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x31, 0x00000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
clmul x17, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x30, 0x00000001 # initialize rs1
li x23, 0x00000002 # initialize rs2
clmul x1, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x2, 0x00000001 # initialize rs1
li x17, 0x80000000 # initialize rs2
clmul x19, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x29, 0x00000001 # initialize rs1
li x30, 0x80000001 # initialize rs2
clmul x18, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x16, 0x00000001 # initialize rs1
li x24, 0x7fffffff # initialize rs2
clmul x20, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x18, 0x00000001 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
clmul x28, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x21, 0x00000001 # initialize rs1
li x13, 0xffffffff # initialize rs2
clmul x6, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x22, 0x00000001 # initialize rs1
li x10, 0xfffffffe # initialize rs2
clmul x18, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x11, 0x00000001 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
clmul x23, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x14, 0x00000001 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
clmul x19, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x17, 0x00000001 # initialize rs1
li x3, 0x55555555 # initialize rs2
clmul x31, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x9, 0x00000002 # initialize rs1
li x13, 0x00000000 # initialize rs2
clmul x22, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x5, 0x00000002 # initialize rs1
li x11, 0x00000001 # initialize rs2
clmul x20, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x19, 0x00000002 # initialize rs1
li x2, 0x00000002 # initialize rs2
clmul x21, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x27, 0x00000002 # initialize rs1
li x25, 0x80000000 # initialize rs2
clmul x22, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x25, 0x00000002 # initialize rs1
li x16, 0x80000001 # initialize rs2
clmul x18, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x2, 0x00000002 # initialize rs1
li x3, 0x7fffffff # initialize rs2
clmul x13, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x5, 0x00000002 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
clmul x28, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x19, 0x00000002 # initialize rs1
li x18, 0xffffffff # initialize rs2
clmul x13, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x6, 0x00000002 # initialize rs1
li x8, 0xfffffffe # initialize rs2
clmul x16, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x24, 0x00000002 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
clmul x29, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x26, 0x00000002 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
clmul x10, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x31, 0x00000002 # initialize rs1
li x2, 0x55555555 # initialize rs2
clmul x9, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x20, 0x80000000 # initialize rs1
li x9, 0x00000000 # initialize rs2
clmul x11, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x21, 0x80000000 # initialize rs1
li x31, 0x00000001 # initialize rs2
clmul x27, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x14, 0x80000000 # initialize rs1
li x9, 0x00000002 # initialize rs2
clmul x11, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x11, 0x80000000 # initialize rs1
li x14, 0x80000000 # initialize rs2
clmul x20, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x9, 0x80000000 # initialize rs1
li x5, 0x80000001 # initialize rs2
clmul x1, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x8, 0x80000000 # initialize rs1
li x23, 0x7fffffff # initialize rs2
clmul x31, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x18, 0x80000000 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
clmul x29, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x10, 0x80000000 # initialize rs1
li x27, 0xffffffff # initialize rs2
clmul x31, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x17, 0x80000000 # initialize rs1
li x16, 0xfffffffe # initialize rs2
clmul x10, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x7, 0x80000000 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
clmul x25, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x16, 0x80000000 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
clmul x11, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x13, 0x80000000 # initialize rs1
li x23, 0x55555555 # initialize rs2
clmul x5, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x21, 0x80000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
clmul x6, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x17, 0x80000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
clmul x24, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x6, 0x80000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
clmul x5, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x26, 0x80000001 # initialize rs1
li x30, 0x80000000 # initialize rs2
clmul x16, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x16, 0x80000001 # initialize rs1
li x8, 0x80000001 # initialize rs2
clmul x18, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x15, 0x80000001 # initialize rs1
li x10, 0x7fffffff # initialize rs2
clmul x16, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x19, 0x80000001 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
clmul x13, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x1, 0x80000001 # initialize rs1
li x14, 0xffffffff # initialize rs2
clmul x25, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x21, 0x80000001 # initialize rs1
li x9, 0xfffffffe # initialize rs2
clmul x14, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x20, 0x80000001 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
clmul x29, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x16, 0x80000001 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
clmul x24, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x9, 0x80000001 # initialize rs1
li x1, 0x55555555 # initialize rs2
clmul x14, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x5, 0x7fffffff # initialize rs1
li x25, 0x00000000 # initialize rs2
clmul x9, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x6, 0x7fffffff # initialize rs1
li x19, 0x00000001 # initialize rs2
clmul x24, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x25, 0x7fffffff # initialize rs1
li x29, 0x00000002 # initialize rs2
clmul x7, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x27, 0x7fffffff # initialize rs1
li x18, 0x80000000 # initialize rs2
clmul x28, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x24, 0x7fffffff # initialize rs1
li x19, 0x80000001 # initialize rs2
clmul x25, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x29, 0x7fffffff # initialize rs1
li x30, 0x7fffffff # initialize rs2
clmul x31, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x12, 0x7fffffff # initialize rs1
li x24, 0x7ffffffe # initialize rs2
clmul x22, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x31, 0x7fffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
clmul x25, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x31, 0x7fffffff # initialize rs1
li x12, 0xfffffffe # initialize rs2
clmul x9, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x10, 0x7fffffff # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
clmul x12, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x3, 0x7fffffff # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
clmul x2, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x19, 0x7fffffff # initialize rs1
li x7, 0x55555555 # initialize rs2
clmul x18, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x20, 0x7ffffffe # initialize rs1
li x15, 0x00000000 # initialize rs2
clmul x29, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x20, 0x7ffffffe # initialize rs1
li x7, 0x00000001 # initialize rs2
clmul x15, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x21, 0x7ffffffe # initialize rs1
li x22, 0x00000002 # initialize rs2
clmul x14, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x12, 0x7ffffffe # initialize rs1
li x25, 0x80000000 # initialize rs2
clmul x19, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x23, 0x7ffffffe # initialize rs1
li x22, 0x80000001 # initialize rs2
clmul x6, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x11, 0x7ffffffe # initialize rs1
li x10, 0x7fffffff # initialize rs2
clmul x25, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs1
li x17, 0x7ffffffe # initialize rs2
clmul x22, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x13, 0x7ffffffe # initialize rs1
li x21, 0xffffffff # initialize rs2
clmul x15, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x3, 0x7ffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
clmul x29, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x20, 0x7ffffffe # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
clmul x15, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x7, 0x7ffffffe # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
clmul x25, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x16, 0x7ffffffe # initialize rs1
li x20, 0x55555555 # initialize rs2
clmul x11, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x11, 0xffffffff # initialize rs1
li x23, 0x00000000 # initialize rs2
clmul x27, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x1, 0xffffffff # initialize rs1
li x22, 0x00000001 # initialize rs2
clmul x9, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x5, 0xffffffff # initialize rs1
li x17, 0x00000002 # initialize rs2
clmul x9, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x23, 0xffffffff # initialize rs1
li x11, 0x80000000 # initialize rs2
clmul x17, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x24, 0xffffffff # initialize rs1
li x14, 0x80000001 # initialize rs2
clmul x25, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x31, 0xffffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
clmul x16, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x30, 0xffffffff # initialize rs1
li x16, 0x7ffffffe # initialize rs2
clmul x19, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x3, 0xffffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
clmul x16, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x8, 0xffffffff # initialize rs1
li x27, 0xfffffffe # initialize rs2
clmul x30, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x11, 0xffffffff # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
clmul x27, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x12, 0xffffffff # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
clmul x7, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x17, 0xffffffff # initialize rs1
li x12, 0x55555555 # initialize rs2
clmul x31, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x10, 0xfffffffe # initialize rs1
li x22, 0x00000000 # initialize rs2
clmul x17, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x17, 0xfffffffe # initialize rs1
li x10, 0x00000001 # initialize rs2
clmul x16, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x7, 0xfffffffe # initialize rs1
li x6, 0x00000002 # initialize rs2
clmul x21, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x2, 0xfffffffe # initialize rs1
li x21, 0x80000000 # initialize rs2
clmul x12, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x14, 0xfffffffe # initialize rs1
li x8, 0x80000001 # initialize rs2
clmul x31, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x24, 0xfffffffe # initialize rs1
li x7, 0x7fffffff # initialize rs2
clmul x28, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x17, 0xfffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
clmul x1, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x23, 0xfffffffe # initialize rs1
li x6, 0xffffffff # initialize rs2
clmul x27, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x1, 0xfffffffe # initialize rs1
li x26, 0xfffffffe # initialize rs2
clmul x7, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x31, 0xfffffffe # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
clmul x13, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x3, 0xfffffffe # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
clmul x28, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x30, 0xfffffffe # initialize rs1
li x11, 0x55555555 # initialize rs2
clmul x22, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x29, 0x5bbc8872 # initialize rs1
li x10, 0x00000000 # initialize rs2
clmul x1, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x20, 0x5bbc8872 # initialize rs1
li x5, 0x00000001 # initialize rs2
clmul x17, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x27, 0x5bbc8872 # initialize rs1
li x15, 0x00000002 # initialize rs2
clmul x13, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x30, 0x5bbc8872 # initialize rs1
li x24, 0x80000000 # initialize rs2
clmul x3, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x22, 0x5bbc8872 # initialize rs1
li x18, 0x80000001 # initialize rs2
clmul x27, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x1, 0x5bbc8872 # initialize rs1
li x14, 0x7fffffff # initialize rs2
clmul x6, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x17, 0x5bbc8872 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
clmul x5, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x23, 0x5bbc8872 # initialize rs1
li x9, 0xffffffff # initialize rs2
clmul x29, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x28, 0x5bbc8872 # initialize rs1
li x19, 0xfffffffe # initialize rs2
clmul x25, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x17, 0x5bbc8872 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
clmul x15, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x16, 0x5bbc8872 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
clmul x21, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x11, 0x5bbc8872 # initialize rs1
li x17, 0x55555555 # initialize rs2
clmul x27, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x7, 0xaaaaaaaa # initialize rs1
li x6, 0x00000000 # initialize rs2
clmul x20, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x27, 0xaaaaaaaa # initialize rs1
li x31, 0x00000001 # initialize rs2
clmul x12, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x2, 0xaaaaaaaa # initialize rs1
li x20, 0x00000002 # initialize rs2
clmul x12, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x31, 0xaaaaaaaa # initialize rs1
li x21, 0x80000000 # initialize rs2
clmul x7, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x8, 0xaaaaaaaa # initialize rs1
li x11, 0x80000001 # initialize rs2
clmul x14, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x25, 0xaaaaaaaa # initialize rs1
li x26, 0x7fffffff # initialize rs2
clmul x22, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x16, 0xaaaaaaaa # initialize rs1
li x25, 0x7ffffffe # initialize rs2
clmul x17, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x5, 0xaaaaaaaa # initialize rs1
li x22, 0xffffffff # initialize rs2
clmul x27, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x30, 0xaaaaaaaa # initialize rs1
li x2, 0xfffffffe # initialize rs2
clmul x9, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x8, 0xaaaaaaaa # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
clmul x25, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x29, 0xaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
clmul x12, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x2, 0xaaaaaaaa # initialize rs1
li x6, 0x55555555 # initialize rs2
clmul x7, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x11, 0x55555555 # initialize rs1
li x16, 0x00000000 # initialize rs2
clmul x9, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x1, 0x55555555 # initialize rs1
li x17, 0x00000001 # initialize rs2
clmul x26, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x27, 0x55555555 # initialize rs1
li x11, 0x00000002 # initialize rs2
clmul x19, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x13, 0x55555555 # initialize rs1
li x19, 0x80000000 # initialize rs2
clmul x23, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x27, 0x55555555 # initialize rs1
li x19, 0x80000001 # initialize rs2
clmul x13, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x5, 0x55555555 # initialize rs1
li x20, 0x7fffffff # initialize rs2
clmul x19, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x7, 0x55555555 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
clmul x2, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x14, 0x55555555 # initialize rs1
li x7, 0xffffffff # initialize rs2
clmul x6, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x11, 0x55555555 # initialize rs1
li x26, 0xfffffffe # initialize rs2
clmul x13, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x31, 0x55555555 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
clmul x28, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x29, 0x55555555 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
clmul x30, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x31, 0x55555555 # initialize rs1
li x21, 0x55555555 # initialize rs2
clmul x25, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xbd778d84 # initialize rs1
li x0, 0xfed3f0e2 # initialize rs2
clmul x11, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xc61bd6e1 # initialize rs1
li x1, 0xc5b87ae7 # initialize rs2
clmul x25, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xd06e2aff # initialize rs1
li x2, 0x5987a6b0 # initialize rs2
clmul x14, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x583eb27a # initialize rs1
li x3, 0xb1632501 # initialize rs2
clmul x22, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb02967ea # initialize rs1
li x4, 0xce0bbbeb # initialize rs2
clmul x1, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xab80c7cc # initialize rs1
li x5, 0xf148a22a # initialize rs2
clmul x25, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x58077f71 # initialize rs1
li x6, 0x963d3776 # initialize rs2
clmul x29, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3f2a5ed9 # initialize rs1
li x7, 0xa41ff5c9 # initialize rs2
clmul x22, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x4fce4e20 # initialize rs1
li x8, 0x9d9a192e # initialize rs2
clmul x10, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xd469f0c3 # initialize rs1
li x9, 0xdebf77ea # initialize rs2
clmul x5, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x08f520ca # initialize rs1
li x10, 0xbdf46b49 # initialize rs2
clmul x31, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xbf69c050 # initialize rs1
li x11, 0xf73b35a4 # initialize rs2
clmul x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x6a98f831 # initialize rs1
li x12, 0xfad03d94 # initialize rs2
clmul x16, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xc3b94a84 # initialize rs1
li x13, 0x8359c7f7 # initialize rs2
clmul x14, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x878f23ba # initialize rs1
li x14, 0xc9ffd954 # initialize rs2
clmul x3, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xc62693c4 # initialize rs1
li x15, 0x78dc1e28 # initialize rs2
clmul x10, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x960f4b4d # initialize rs1
li x16, 0x848c6a0b # initialize rs2
clmul x9, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x1afb53fd # initialize rs1
li x17, 0xe2952cc9 # initialize rs2
clmul x24, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x61a57946 # initialize rs1
li x18, 0x414f5797 # initialize rs2
clmul x23, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xb9d29fcd # initialize rs1
li x19, 0x6ecbc406 # initialize rs2
clmul x17, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x282553f1 # initialize rs1
li x20, 0x69b0350a # initialize rs2
clmul x29, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x1457e5cb # initialize rs1
li x21, 0x8f4016fe # initialize rs2
clmul x18, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x1791d4e1 # initialize rs1
li x22, 0xb97f6cfe # initialize rs2
clmul x12, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x8d505277 # initialize rs1
li x23, 0x6c53c078 # initialize rs2
clmul x28, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x777bd248 # initialize rs1
li x24, 0xad06656b # initialize rs2
clmul x8, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x6ee28b8c # initialize rs1
li x25, 0x7a352462 # initialize rs2
clmul x31, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xeee09c50 # initialize rs1
li x26, 0x33300bbe # initialize rs2
clmul x30, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xb0e0cdb1 # initialize rs1
li x27, 0xe162b61c # initialize rs2
clmul x7, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x7209b2b7 # initialize rs1
li x28, 0x67e95a29 # initialize rs2
clmul x6, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x43c8317e # initialize rs1
li x29, 0x251a025a # initialize rs2
clmul x3, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xc6d4b0ed # initialize rs1
li x30, 0x10d9f4af # initialize rs2
clmul x9, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x25fdc0b7 # initialize rs1
li x31, 0x7e5d243a # initialize rs2
clmul x7, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x24261c3a # initialize rs1
li x13, 0x45781e13 # initialize rs2
clmul x0, x0, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa91d8244 # initialize rs1
li x29, 0x3a78c2ad # initialize rs2
clmul x1, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xfaa54974 # initialize rs1
li x20, 0x836a87fb # initialize rs2
clmul x2, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x61a1b140 # initialize rs1
li x16, 0x2610479a # initialize rs2
clmul x3, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe1a22e40 # initialize rs1
li x15, 0xe75b9fdd # initialize rs2
clmul x4, x4, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xef499414 # initialize rs1
li x20, 0xbe4ce6d3 # initialize rs2
clmul x5, x5, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x46f04e39 # initialize rs1
li x11, 0xb30865a5 # initialize rs2
clmul x6, x6, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdcd62ffc # initialize rs1
li x31, 0x514c8c78 # initialize rs2
clmul x7, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x658d2388 # initialize rs1
li x12, 0xfc63f1e9 # initialize rs2
clmul x8, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x2f039e1a # initialize rs1
li x31, 0x0e478d8a # initialize rs2
clmul x9, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x340a5874 # initialize rs1
li x20, 0x88fb8aad # initialize rs2
clmul x10, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa3766cbd # initialize rs1
li x3, 0x2801b867 # initialize rs2
clmul x11, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xee525642 # initialize rs1
li x25, 0x8c82491a # initialize rs2
clmul x12, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x55002a41 # initialize rs1
li x17, 0x2261afd8 # initialize rs2
clmul x13, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x84fe4e2e # initialize rs1
li x9, 0x418c5ac4 # initialize rs2
clmul x14, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xf119e38e # initialize rs1
li x12, 0x806812e6 # initialize rs2
clmul x15, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x92c49214 # initialize rs1
li x27, 0xe8b4077d # initialize rs2
clmul x16, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xd4433c97 # initialize rs1
li x21, 0x9584d1df # initialize rs2
clmul x17, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xbc9a4f5e # initialize rs1
li x18, 0x424afd87 # initialize rs2
clmul x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xe4a31a87 # initialize rs1
li x31, 0xf72d87d8 # initialize rs2
clmul x19, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x4fb6da86 # initialize rs1
li x7, 0xa3460c94 # initialize rs2
clmul x20, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xbd5bd136 # initialize rs1
li x31, 0x5e94d2f6 # initialize rs2
clmul x21, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xc2e581c0 # initialize rs1
li x22, 0x7e6e1e4c # initialize rs2
clmul x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xfc6e44d9 # initialize rs1
li x14, 0xc8c7d450 # initialize rs2
clmul x23, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x64357ef7 # initialize rs1
li x22, 0x7473335d # initialize rs2
clmul x24, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xbb1c3ff0 # initialize rs1
li x16, 0x286f0383 # initialize rs2
clmul x25, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x4ce07d34 # initialize rs1
li x3, 0x71f9ac27 # initialize rs2
clmul x26, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x09ccba20 # initialize rs1
li x23, 0xe14274ea # initialize rs2
clmul x27, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x632dd15e # initialize rs1
li x24, 0xd4ff436e # initialize rs2
clmul x28, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x9641f050 # initialize rs1
li x13, 0x7a006314 # initialize rs2
clmul x29, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xb40d0196 # initialize rs1
li x29, 0x6eb3f4e8 # initialize rs2
clmul x30, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x7d8b9727 # initialize rs1
li x16, 0x8f830618 # initialize rs2
clmul x31, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x22, 0x048ee7a2 # initialize rs1
li x0, 0x06b0664f # initialize rs2
clmul x0, x22, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x9, 0x3801d1cd # initialize rs1
li x1, 0x09e0a283 # initialize rs2
clmul x1, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x9, 0xa126d8a1 # initialize rs1
li x2, 0x5542181c # initialize rs2
clmul x2, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x20, 0x344c4a50 # initialize rs1
li x3, 0x8b539f6e # initialize rs2
clmul x3, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0xa00c7191 # initialize rs1
li x4, 0xf021e31f # initialize rs2
clmul x4, x30, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0xe57be7df # initialize rs1
li x5, 0xca51c086 # initialize rs2
clmul x5, x20, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x0fb01c86 # initialize rs1
li x6, 0x2a6c12df # initialize rs2
clmul x6, x27, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xa013f037 # initialize rs1
li x7, 0xb3e5ce41 # initialize rs2
clmul x7, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x31, 0x482ece3d # initialize rs1
li x8, 0x47469dca # initialize rs2
clmul x8, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x28, 0x0a74ab38 # initialize rs1
li x9, 0xca0e2a58 # initialize rs2
clmul x9, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x28, 0xcbbf2ecf # initialize rs1
li x10, 0xd0a2ecc7 # initialize rs2
clmul x10, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x15, 0xa54e10fb # initialize rs1
li x11, 0x3f2b9789 # initialize rs2
clmul x11, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x1, 0xdc1fdd0b # initialize rs1
li x12, 0x7507d255 # initialize rs2
clmul x12, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x7, 0xc0d9921b # initialize rs1
li x13, 0x2a47a75a # initialize rs2
clmul x13, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x25, 0x75ffc247 # initialize rs1
li x14, 0x5dae9b20 # initialize rs2
clmul x14, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x25, 0xedd5232b # initialize rs1
li x15, 0xaf2d7655 # initialize rs2
clmul x15, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x7, 0x21213d57 # initialize rs1
li x16, 0xf09b4f53 # initialize rs2
clmul x16, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x23, 0xbbdedb61 # initialize rs1
li x17, 0x57e43383 # initialize rs2
clmul x17, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x23, 0xe04bf8b6 # initialize rs1
li x18, 0x6f9b0a8d # initialize rs2
clmul x18, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x14, 0xe214b285 # initialize rs1
li x19, 0xe6f0ca4b # initialize rs2
clmul x19, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x22, 0xba032f3d # initialize rs1
li x20, 0x32e494f0 # initialize rs2
clmul x20, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x14, 0x2ccb6ddd # initialize rs1
li x21, 0xb484f153 # initialize rs2
clmul x21, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x16, 0x0a7fdd39 # initialize rs1
li x22, 0x30136c4a # initialize rs2
clmul x22, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x12, 0xf059ddb9 # initialize rs1
li x23, 0x746f6c90 # initialize rs2
clmul x23, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x9, 0xde270ccd # initialize rs1
li x24, 0x7bc29983 # initialize rs2
clmul x24, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x2, 0x8966fb6d # initialize rs1
li x25, 0x167414df # initialize rs2
clmul x25, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x4e83da17 # initialize rs1
li x26, 0x4fc7c5cf # initialize rs2
clmul x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x2, 0xf073579d # initialize rs1
li x27, 0xf1460783 # initialize rs2
clmul x27, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x5, 0x95a93f17 # initialize rs1
li x28, 0xdae93a2b # initialize rs2
clmul x28, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x2, 0x388fe714 # initialize rs1
li x29, 0x29e80e2d # initialize rs2
clmul x29, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x9, 0xdc73af26 # initialize rs1
li x30, 0x993c97c2 # initialize rs2
clmul x30, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x15, 0xc3a95889 # initialize rs1
li x31, 0x313bc543 # initialize rs2
clmul x31, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x384bac44 # initialize rs1
li x0, 0x5dda788f # initialize rs2
clmul x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x3d178a06 # initialize rs1
li x1, 0xb8335425 # initialize rs2
clmul x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xe477c24c # initialize rs1
li x2, 0xe3bc6416 # initialize rs2
clmul x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x0c294666 # initialize rs1
li x3, 0xa3dcd366 # initialize rs2
clmul x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xcddd9366 # initialize rs1
li x4, 0x3e0f9b2c # initialize rs2
clmul x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x87af0cbd # initialize rs1
li x5, 0x881e877d # initialize rs2
clmul x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa868916c # initialize rs1
li x6, 0x2b74b234 # initialize rs2
clmul x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x66388a27 # initialize rs1
li x7, 0x04aa9fbc # initialize rs2
clmul x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x0ea8e836 # initialize rs1
li x8, 0xdb085867 # initialize rs2
clmul x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x40bef444 # initialize rs1
li x9, 0x54a8b466 # initialize rs2
clmul x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x40a46d8f # initialize rs1
li x10, 0xa0a9abc3 # initialize rs2
clmul x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x7d34a47b # initialize rs1
li x11, 0x43843dd1 # initialize rs2
clmul x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x69e739d3 # initialize rs1
li x12, 0x57de5159 # initialize rs2
clmul x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x10c45c89 # initialize rs1
li x13, 0x4469077a # initialize rs2
clmul x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x6ea73efa # initialize rs1
li x14, 0xd222593a # initialize rs2
clmul x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xa03ed30e # initialize rs1
li x15, 0x3dfb10d7 # initialize rs2
clmul x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x477541fd # initialize rs1
li x16, 0x9f7c1100 # initialize rs2
clmul x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x4528a5c0 # initialize rs1
li x17, 0x8a057a8d # initialize rs2
clmul x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xc92a3f8e # initialize rs1
li x18, 0x1b07fa22 # initialize rs2
clmul x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x5c124ca7 # initialize rs1
li x19, 0xbd46c00c # initialize rs2
clmul x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x5d4637a2 # initialize rs1
li x20, 0x9b4dfc79 # initialize rs2
clmul x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x153191f0 # initialize rs1
li x21, 0xc3911452 # initialize rs2
clmul x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x0899f090 # initialize rs1
li x22, 0x1997153b # initialize rs2
clmul x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xc081ceb7 # initialize rs1
li x23, 0x96d69333 # initialize rs2
clmul x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xc89afbe5 # initialize rs1
li x24, 0xae831d43 # initialize rs2
clmul x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xe33835b9 # initialize rs1
li x25, 0x0b477c45 # initialize rs2
clmul x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x1fd45c9a # initialize rs1
li x26, 0xbfb253ba # initialize rs2
clmul x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xb682f48c # initialize rs1
li x27, 0x08846236 # initialize rs2
clmul x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xccc17db8 # initialize rs1
li x28, 0x078b46b5 # initialize rs2
clmul x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xe518200d # initialize rs1
li x29, 0xea395b6e # initialize rs2
clmul x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xab178f6b # initialize rs1
li x30, 0x56731b8d # initialize rs2
clmul x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x29f6403c # initialize rs1
li x31, 0x0e2dde2f # initialize rs2
clmul x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x7, x14 # perform first operation
clmul x3, x20, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x30, x20 # perform first operation
clmul x2, x23, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x25, x5 # perform first operation
clmul x26, x23, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x6, x22 # perform first operation
clmul x31, x31, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x14, x28 # perform first operation
clmul x14, x27, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x14, x28 # perform first operation
clmul x14, x21, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x27, x17 # perform first operation
clmul x2, x20, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x2, x31 # perform first operation
clmul x9, x11, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x26, x6 # perform first operation
clmul x29, x21, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x5, x3 # perform first operation
clmul x5, x29, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x5, x11 # perform first operation
clmul x11, x8, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x1, x26 # perform first operation
clmul x18, x28, x6 # perform second (triggering) operation

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
