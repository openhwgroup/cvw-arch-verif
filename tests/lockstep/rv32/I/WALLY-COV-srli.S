///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-srli.S
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
li x0, 0x5438eff4 # initialize rs1
srli x7, x0, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x5cc95375 # initialize rs1
srli x11, x1, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x404ac40d # initialize rs1
srli x3, x2, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x447cf148 # initialize rs1
srli x10, x3, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe6d9d567 # initialize rs1
srli x29, x4, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbae84679 # initialize rs1
srli x18, x5, 0 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7a959d8e # initialize rs1
srli x19, x6, 31 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa232ddbb # initialize rs1
srli x14, x7, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x5b1cbac7 # initialize rs1
srli x15, x8, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xc57ee5a5 # initialize rs1
srli x26, x9, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x2904e398 # initialize rs1
srli x13, x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x338da610 # initialize rs1
srli x2, x11, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x9634ece9 # initialize rs1
srli x25, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xc32d153e # initialize rs1
srli x3, x13, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xdfe7d19f # initialize rs1
srli x31, x14, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x21b120e8 # initialize rs1
srli x30, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x90285cd6 # initialize rs1
srli x11, x16, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe91bb09d # initialize rs1
srli x1, x17, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xfac96fa6 # initialize rs1
srli x8, x18, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xbf9c43a1 # initialize rs1
srli x27, x19, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x96d86afc # initialize rs1
srli x29, x20, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x577f2b5c # initialize rs1
srli x2, x21, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x6ffb1143 # initialize rs1
srli x1, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x44314aa1 # initialize rs1
srli x31, x23, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x582b23be # initialize rs1
srli x13, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x4cd06e9b # initialize rs1
srli x5, x25, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x8055b292 # initialize rs1
srli x16, x26, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x5478c325 # initialize rs1
srli x29, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x4bd6fd0d # initialize rs1
srli x15, x28, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x068b915b # initialize rs1
srli x19, x29, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x44b5b233 # initialize rs1
srli x24, x30, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x7f8a46bb # initialize rs1
srli x20, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 124)

# Testcase cp_rd (Test destination rd = x0)
li x6, 0xc36a6d75 # initialize rs1
srli x0, x6, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x6, 0x01497309 # initialize rs1
srli x1, x6, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x19, 0x075eab2c # initialize rs1
srli x2, x19, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x28, 0x80ccd1a9 # initialize rs1
srli x3, x28, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0xbfc849c9 # initialize rs1
srli x4, x13, 17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0x7a896a05 # initialize rs1
srli x5, x14, 7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x50339fb8 # initialize rs1
srli x6, x4, 23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0xfee5ecff # initialize rs1
srli x7, x12, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x6, 0xc055f943 # initialize rs1
srli x8, x6, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x6, 0x4965a0fb # initialize rs1
srli x9, x6, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x5, 0x0f3e2b07 # initialize rs1
srli x10, x5, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x2, 0x4e6083f9 # initialize rs1
srli x11, x2, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x31, 0xd8f934cf # initialize rs1
srli x12, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0x0eefd252 # initialize rs1
srli x13, x8, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0x87ecf47a # initialize rs1
srli x14, x13, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x30, 0x31261c72 # initialize rs1
srli x15, x30, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x22, 0x8e43a1ef # initialize rs1
srli x16, x22, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0x1a35af82 # initialize rs1
srli x17, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x16, 0xd732bf4d # initialize rs1
srli x18, x16, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x12, 0x46f5f873 # initialize rs1
srli x19, x12, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x24, 0x14936da2 # initialize rs1
srli x20, x24, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x22, 0xb97f7c26 # initialize rs1
srli x21, x22, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x1, 0x8112ceb6 # initialize rs1
srli x22, x1, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x14, 0x84947cb3 # initialize rs1
srli x23, x14, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x1, 0xa6281aee # initialize rs1
srli x24, x1, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x27, 0x353a2c62 # initialize rs1
srli x25, x27, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x13, 0xf239e544 # initialize rs1
srli x26, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x1, 0x59fa02de # initialize rs1
srli x27, x1, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x14, 0x6db81d89 # initialize rs1
srli x28, x14, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x19, 0x4c0290a3 # initialize rs1
srli x29, x19, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x8, 0x60887ab9 # initialize rs1
srli x30, x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x1, 0xc5bec4b1 # initialize rs1
srli x31, x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x00000000 # initialize rs1
srli x21, x7, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x30, 0x00000001 # initialize rs1
srli x24, x30, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x28, 0x00000002 # initialize rs1
srli x11, x28, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x15, 0x80000000 # initialize rs1
srli x3, x15, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x19, 0x80000001 # initialize rs1
srli x17, x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x31, 0x7fffffff # initialize rs1
srli x12, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x7, 0x7ffffffe # initialize rs1
srli x29, x7, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x21, 0xffffffff # initialize rs1
srli x30, x21, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0xfffffffe # initialize rs1
srli x25, x12, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x3, 0x5bbc8872 # initialize rs1
srli x30, x3, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
srli x10, x25, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x21, 0x55555555 # initialize rs1
srli x16, x21, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x34e6a4a5 # initialize rs1
srli x0, x0, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x3c6e574d # initialize rs1
srli x1, x1, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x3c2e8fff # initialize rs1
srli x2, x2, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xbfce9c17 # initialize rs1
srli x3, x3, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6617b559 # initialize rs1
srli x4, x4, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4e57a6c8 # initialize rs1
srli x5, x5, 7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb6e3da3d # initialize rs1
srli x6, x6, 13 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x360fcea8 # initialize rs1
srli x7, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9c3178e8 # initialize rs1
srli x8, x8, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xab9b5bf5 # initialize rs1
srli x9, x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x42073308 # initialize rs1
srli x10, x10, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xfc49f6eb # initialize rs1
srli x11, x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x45367832 # initialize rs1
srli x12, x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x47e07546 # initialize rs1
srli x13, x13, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x3296b96e # initialize rs1
srli x14, x14, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x70cd6c9d # initialize rs1
srli x15, x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xed25f34c # initialize rs1
srli x16, x16, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x1b08f9d1 # initialize rs1
srli x17, x17, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xbcc90052 # initialize rs1
srli x18, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x8d77d5de # initialize rs1
srli x19, x19, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x10f1e689 # initialize rs1
srli x20, x20, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf9ed6ca0 # initialize rs1
srli x21, x21, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xf2b78c53 # initialize rs1
srli x22, x22, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xfbf96f3c # initialize rs1
srli x23, x23, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x52dd8c9f # initialize rs1
srli x24, x24, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x94cdb397 # initialize rs1
srli x25, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xa698ef94 # initialize rs1
srli x26, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x21b219f0 # initialize rs1
srli x27, x27, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xf38bb808 # initialize rs1
srli x28, x28, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x61d2609c # initialize rs1
srli x29, x29, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1aeb5584 # initialize rs1
srli x30, x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x8453653b # initialize rs1
srli x31, x31, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_uimm (Test bit = 0)
li x28, 0xba030269 # initialize rs1
srli x11, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 432)

# Testcase cp_uimm (Test bit = 1)
li x10, 0x2215bdbb # initialize rs1
srli x26, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 436)

# Testcase cp_uimm (Test bit = 2)
li x22, 0x85775463 # initialize rs1
srli x13, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 440)

# Testcase cp_uimm (Test bit = 3)
li x30, 0xcb32329b # initialize rs1
srli x1, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 444)

# Testcase cp_uimm (Test bit = 4)
li x14, 0x0bc6b08b # initialize rs1
srli x8, x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 448)

# Testcase cp_uimm (Test bit = 5)
li x12, 0x89b314c1 # initialize rs1
srli x31, x12, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 452)

# Testcase cp_uimm (Test bit = 6)
li x8, 0xabe85822 # initialize rs1
srli x10, x8, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cp_uimm (Test bit = 7)
li x31, 0x7ca16fae # initialize rs1
srli x24, x31, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 460)

# Testcase cp_uimm (Test bit = 8)
li x11, 0x4081324e # initialize rs1
srli x16, x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 464)

# Testcase cp_uimm (Test bit = 9)
li x13, 0x2e46b22b # initialize rs1
srli x1, x13, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 468)

# Testcase cp_uimm (Test bit = 10)
li x11, 0x677e84a5 # initialize rs1
srli x20, x11, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 472)

# Testcase cp_uimm (Test bit = 11)
li x13, 0x7a9670b1 # initialize rs1
srli x12, x13, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 476)

# Testcase cp_uimm (Test bit = 12)
li x3, 0x76cbc69e # initialize rs1
srli x24, x3, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 480)

# Testcase cp_uimm (Test bit = 13)
li x26, 0xceac79c6 # initialize rs1
srli x10, x26, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 484)

# Testcase cp_uimm (Test bit = 14)
li x13, 0xde3e812c # initialize rs1
srli x26, x13, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 488)

# Testcase cp_uimm (Test bit = 15)
li x30, 0xfb47958c # initialize rs1
srli x5, x30, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 492)

# Testcase cp_uimm (Test bit = 16)
li x25, 0xd84669a2 # initialize rs1
srli x16, x25, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 496)

# Testcase cp_uimm (Test bit = 17)
li x22, 0x73595d81 # initialize rs1
srli x13, x22, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 500)

# Testcase cp_uimm (Test bit = 18)
li x30, 0xc868d018 # initialize rs1
srli x3, x30, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 504)

# Testcase cp_uimm (Test bit = 19)
li x3, 0xbceced79 # initialize rs1
srli x20, x3, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 508)

# Testcase cp_uimm (Test bit = 20)
li x17, 0xe04ec6ea # initialize rs1
srli x19, x17, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 512)

# Testcase cp_uimm (Test bit = 21)
li x20, 0x25f7e144 # initialize rs1
srli x26, x20, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 516)

# Testcase cp_uimm (Test bit = 22)
li x13, 0xb796746a # initialize rs1
srli x16, x13, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 520)

# Testcase cp_uimm (Test bit = 23)
li x3, 0x1b21e4d9 # initialize rs1
srli x22, x3, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 524)

# Testcase cp_uimm (Test bit = 24)
li x11, 0xae284ef9 # initialize rs1
srli x9, x11, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

# Testcase cp_uimm (Test bit = 25)
li x3, 0x991f0f17 # initialize rs1
srli x25, x3, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 532)

# Testcase cp_uimm (Test bit = 26)
li x25, 0x1272115d # initialize rs1
srli x28, x25, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 536)

# Testcase cp_uimm (Test bit = 27)
li x5, 0x989b68ec # initialize rs1
srli x19, x5, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 540)

# Testcase cp_uimm (Test bit = 28)
li x20, 0xa0258652 # initialize rs1
srli x18, x20, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 544)

# Testcase cp_uimm (Test bit = 29)
li x9, 0xaaa2d14f # initialize rs1
srli x3, x9, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 548)

# Testcase cp_uimm (Test bit = 30)
li x6, 0x153becd2 # initialize rs1
srli x13, x6, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cp_uimm (Test bit = 31)
li x21, 0xb60c8785 # initialize rs1
srli x2, x21, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 556)

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x21, x3 # perform first operation
srli x17, x22, 20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x13, x10 # perform first operation
srli x25, x24, 22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x17, x13 # perform first operation
srli x22, x12, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x5, x15 # perform first operation
srli x1, x1, 15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x3, x7 # perform first operation
srli x26, x10, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x22, x30 # perform first operation
srli x30, x21, 21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x6, x30 # perform first operation
srli x15, x28, 25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x25, x17 # perform first operation
srli x24, x15, 20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x10, x24 # perform first operation
srli x15, x12, 16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x26, x3 # perform first operation
srli x26, x24, 18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x30, x22 # perform first operation
srli x22, x6, 10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x17, x2 # perform first operation
srli x28, x7, 24 # perform second (triggering) operation

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
