///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-slti.S
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
li x0, 0xda1bbd69 # initialize rs1
slti x23, x0, 1112 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x1b6e8be6 # initialize rs1
slti x17, x1, 1380 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x3e610675 # initialize rs1
slti x29, x2, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xcf8ed45e # initialize rs1
slti x31, x3, 891 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3010a3df # initialize rs1
slti x20, x4, 756 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x23d420bf # initialize rs1
slti x8, x5, 1488 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdbabcdf5 # initialize rs1
slti x13, x6, 1918 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfc6adb9d # initialize rs1
slti x19, x7, -1781 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x2713ae6c # initialize rs1
slti x30, x8, -411 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x5f13dff4 # initialize rs1
slti x16, x9, -577 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x91a031d5 # initialize rs1
slti x12, x10, -53 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x54bcf748 # initialize rs1
slti x24, x11, 326 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x097533c6 # initialize rs1
slti x29, x12, -146 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xc87a88f1 # initialize rs1
slti x9, x13, 1925 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xa90cf208 # initialize rs1
slti x27, x14, 1516 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xd7c4de97 # initialize rs1
slti x17, x15, -1699 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xccddfc7c # initialize rs1
slti x12, x16, -195 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x0b090945 # initialize rs1
slti x6, x17, 1862 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xb409334e # initialize rs1
slti x17, x18, -466 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xb59b7a63 # initialize rs1
slti x17, x19, -1001 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xda313832 # initialize rs1
slti x24, x20, 1111 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xeb1b4e84 # initialize rs1
slti x27, x21, 1857 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xe057ff97 # initialize rs1
slti x24, x22, 682 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x4ad4971e # initialize rs1
slti x8, x23, 1269 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x048963a1 # initialize rs1
slti x16, x24, -1866 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xc4942c49 # initialize rs1
slti x19, x25, 850 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x4cc35c39 # initialize rs1
slti x21, x26, 1788 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x2ff5ee2f # initialize rs1
slti x6, x27, -903 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xfee42c19 # initialize rs1
slti x25, x28, 1264 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xf4c35e0f # initialize rs1
slti x11, x29, -1283 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x3b47e086 # initialize rs1
slti x29, x30, 1041 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xc3f4e858 # initialize rs1
slti x3, x31, -940 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 124)

# Testcase cp_rd (Test destination rd = x0)
li x22, 0xb3fe3a3a # initialize rs1
slti x0, x22, 767 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x12, 0xa1ecd401 # initialize rs1
slti x1, x12, -1378 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x16, 0xd54020fc # initialize rs1
slti x2, x16, 1149 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x25, 0xdd9fe28b # initialize rs1
slti x3, x25, -1408 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0x6d52f683 # initialize rs1
slti x4, x20, 1517 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0xa4532e18 # initialize rs1
slti x5, x4, 1915 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0xaa3a44e7 # initialize rs1
slti x6, x24, 999 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x61f6abfd # initialize rs1
slti x7, x1, -1054 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x29, 0xf11959a0 # initialize rs1
slti x8, x29, -375 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x21, 0xd12a115c # initialize rs1
slti x9, x21, 270 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x12, 0x0d14083b # initialize rs1
slti x10, x12, -629 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x9, 0xc0e43097 # initialize rs1
slti x11, x9, 909 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x19, 0x449ef692 # initialize rs1
slti x12, x19, 1467 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x11, 0x9368bde4 # initialize rs1
slti x13, x11, -437 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x27, 0x44ffee6d # initialize rs1
slti x14, x27, -252 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x18, 0xa8ad54c9 # initialize rs1
slti x15, x18, 1505 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x30, 0x80eb4352 # initialize rs1
slti x16, x30, 1764 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x25, 0xa15f32b7 # initialize rs1
slti x17, x25, 403 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x30, 0xfc0728d0 # initialize rs1
slti x18, x30, -445 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x28, 0x46388947 # initialize rs1
slti x19, x28, 1400 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x7, 0x4a5e8ea5 # initialize rs1
slti x20, x7, -815 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x9, 0x55f5bec7 # initialize rs1
slti x21, x9, 1856 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x19, 0x1ddfeceb # initialize rs1
slti x22, x19, 1558 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0x4db6bf79 # initialize rs1
slti x23, x30, -976 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x29, 0xafcdfa3a # initialize rs1
slti x24, x29, -314 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x11, 0x74b63bf1 # initialize rs1
slti x25, x11, 193 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x20, 0x219fedb5 # initialize rs1
slti x26, x20, 1650 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x15, 0x2fa2cf3a # initialize rs1
slti x27, x15, -640 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x1, 0x3eeb0941 # initialize rs1
slti x28, x1, 1395 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x24, 0xca798d98 # initialize rs1
slti x29, x24, -190 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x8, 0x479826bb # initialize rs1
slti x30, x8, 2043 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x3, 0x0a868fef # initialize rs1
slti x31, x3, 1888 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x29, 0x00000000 # initialize rs1
slti x15, x29, 929 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x28, 0x00000001 # initialize rs1
slti x3, x28, -879 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x13, 0x00000002 # initialize rs1
slti x25, x13, -735 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x29, 0x80000000 # initialize rs1
slti x24, x29, 785 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x2, 0x80000001 # initialize rs1
slti x16, x2, -852 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x12, 0x7fffffff # initialize rs1
slti x20, x12, -21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x15, 0x7ffffffe # initialize rs1
slti x25, x15, -1543 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0xffffffff # initialize rs1
slti x3, x8, -417 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0xfffffffe # initialize rs1
slti x8, x29, 619 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x25, 0x5bbc8872 # initialize rs1
slti x26, x25, -1671 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
slti x23, x25, -1180 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x21, 0x55555555 # initialize rs1
slti x12, x21, -1703 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 300)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000 # initialize rs1
slti x21, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 304)

# Testcase cr_rs1_imm_corners
li x20, 0x00000000 # initialize rs1
slti x2, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 308)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000 # initialize rs1
slti x7, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000 # initialize rs1
slti x26, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 316)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000 # initialize rs1
slti x12, x30, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 320)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000 # initialize rs1
slti x1, x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 324)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000 # initialize rs1
slti x10, x5, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000 # initialize rs1
slti x21, x31, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 332)

# Testcase cr_rs1_imm_corners
li x25, 0x00000000 # initialize rs1
slti x31, x25, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 336)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000 # initialize rs1
slti x16, x21, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 340)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000 # initialize rs1
slti x29, x21, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 344)

# Testcase cr_rs1_imm_corners
li x27, 0x00000000 # initialize rs1
slti x12, x27, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 348)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000 # initialize rs1
slti x21, x10, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 352)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000 # initialize rs1
slti x29, x31, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 356)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000 # initialize rs1
slti x13, x31, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000 # initialize rs1
slti x2, x1, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 364)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000 # initialize rs1
slti x12, x21, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 368)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000 # initialize rs1
slti x11, x8, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 372)

# Testcase cr_rs1_imm_corners
li x16, 0x00000000 # initialize rs1
slti x18, x16, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cr_rs1_imm_corners
li x25, 0x00000000 # initialize rs1
slti x17, x25, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 380)

# Testcase cr_rs1_imm_corners
li x16, 0x00000001 # initialize rs1
slti x25, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 384)

# Testcase cr_rs1_imm_corners
li x12, 0x00000001 # initialize rs1
slti x11, x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 388)

# Testcase cr_rs1_imm_corners
li x19, 0x00000001 # initialize rs1
slti x20, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 392)

# Testcase cr_rs1_imm_corners
li x24, 0x00000001 # initialize rs1
slti x6, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 396)

# Testcase cr_rs1_imm_corners
li x25, 0x00000001 # initialize rs1
slti x6, x25, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 400)

# Testcase cr_rs1_imm_corners
li x9, 0x00000001 # initialize rs1
slti x7, x9, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 404)

# Testcase cr_rs1_imm_corners
li x25, 0x00000001 # initialize rs1
slti x18, x25, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 408)

# Testcase cr_rs1_imm_corners
li x23, 0x00000001 # initialize rs1
slti x14, x23, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 412)

# Testcase cr_rs1_imm_corners
li x12, 0x00000001 # initialize rs1
slti x28, x12, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cr_rs1_imm_corners
li x2, 0x00000001 # initialize rs1
slti x7, x2, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 420)

# Testcase cr_rs1_imm_corners
li x11, 0x00000001 # initialize rs1
slti x2, x11, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 424)

# Testcase cr_rs1_imm_corners
li x24, 0x00000001 # initialize rs1
slti x11, x24, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 428)

# Testcase cr_rs1_imm_corners
li x23, 0x00000001 # initialize rs1
slti x28, x23, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 432)

# Testcase cr_rs1_imm_corners
li x5, 0x00000001 # initialize rs1
slti x29, x5, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 436)

# Testcase cr_rs1_imm_corners
li x22, 0x00000001 # initialize rs1
slti x6, x22, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 440)

# Testcase cr_rs1_imm_corners
li x18, 0x00000001 # initialize rs1
slti x1, x18, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 444)

# Testcase cr_rs1_imm_corners
li x7, 0x00000001 # initialize rs1
slti x9, x7, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 448)

# Testcase cr_rs1_imm_corners
li x14, 0x00000001 # initialize rs1
slti x20, x14, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 452)

# Testcase cr_rs1_imm_corners
li x5, 0x00000001 # initialize rs1
slti x14, x5, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 456)

# Testcase cr_rs1_imm_corners
li x26, 0x00000001 # initialize rs1
slti x28, x26, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 460)

# Testcase cr_rs1_imm_corners
li x14, 0x00000002 # initialize rs1
slti x31, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cr_rs1_imm_corners
li x20, 0x00000002 # initialize rs1
slti x29, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 468)

# Testcase cr_rs1_imm_corners
li x26, 0x00000002 # initialize rs1
slti x30, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 472)

# Testcase cr_rs1_imm_corners
li x5, 0x00000002 # initialize rs1
slti x13, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 476)

# Testcase cr_rs1_imm_corners
li x27, 0x00000002 # initialize rs1
slti x11, x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 480)

# Testcase cr_rs1_imm_corners
li x20, 0x00000002 # initialize rs1
slti x18, x20, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 484)

# Testcase cr_rs1_imm_corners
li x7, 0x00000002 # initialize rs1
slti x11, x7, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rs1
slti x9, x13, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 492)

# Testcase cr_rs1_imm_corners
li x3, 0x00000002 # initialize rs1
slti x7, x3, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 496)

# Testcase cr_rs1_imm_corners
li x12, 0x00000002 # initialize rs1
slti x15, x12, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 500)

# Testcase cr_rs1_imm_corners
li x20, 0x00000002 # initialize rs1
slti x24, x20, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 504)

# Testcase cr_rs1_imm_corners
li x26, 0x00000002 # initialize rs1
slti x8, x26, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 508)

# Testcase cr_rs1_imm_corners
li x6, 0x00000002 # initialize rs1
slti x19, x6, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 512)

# Testcase cr_rs1_imm_corners
li x9, 0x00000002 # initialize rs1
slti x24, x9, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 516)

# Testcase cr_rs1_imm_corners
li x27, 0x00000002 # initialize rs1
slti x26, x27, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 520)

# Testcase cr_rs1_imm_corners
li x22, 0x00000002 # initialize rs1
slti x5, x22, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 524)

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rs1
slti x21, x13, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 528)

# Testcase cr_rs1_imm_corners
li x17, 0x00000002 # initialize rs1
slti x29, x17, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 532)

# Testcase cr_rs1_imm_corners
li x7, 0x00000002 # initialize rs1
slti x2, x7, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 536)

# Testcase cr_rs1_imm_corners
li x16, 0x00000002 # initialize rs1
slti x3, x16, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 540)

# Testcase cr_rs1_imm_corners
li x24, 0x80000000 # initialize rs1
slti x21, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 544)

# Testcase cr_rs1_imm_corners
li x9, 0x80000000 # initialize rs1
slti x14, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 548)

# Testcase cr_rs1_imm_corners
li x17, 0x80000000 # initialize rs1
slti x10, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 552)

# Testcase cr_rs1_imm_corners
li x24, 0x80000000 # initialize rs1
slti x13, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 556)

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rs1
slti x19, x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 560)

# Testcase cr_rs1_imm_corners
li x30, 0x80000000 # initialize rs1
slti x1, x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 564)

# Testcase cr_rs1_imm_corners
li x17, 0x80000000 # initialize rs1
slti x3, x17, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 568)

# Testcase cr_rs1_imm_corners
li x3, 0x80000000 # initialize rs1
slti x15, x3, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 572)

# Testcase cr_rs1_imm_corners
li x24, 0x80000000 # initialize rs1
slti x22, x24, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 576)

# Testcase cr_rs1_imm_corners
li x2, 0x80000000 # initialize rs1
slti x17, x2, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 580)

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rs1
slti x14, x13, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 584)

# Testcase cr_rs1_imm_corners
li x31, 0x80000000 # initialize rs1
slti x23, x31, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 588)

# Testcase cr_rs1_imm_corners
li x22, 0x80000000 # initialize rs1
slti x6, x22, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 592)

# Testcase cr_rs1_imm_corners
li x22, 0x80000000 # initialize rs1
slti x23, x22, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 596)

# Testcase cr_rs1_imm_corners
li x14, 0x80000000 # initialize rs1
slti x15, x14, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 600)

# Testcase cr_rs1_imm_corners
li x1, 0x80000000 # initialize rs1
slti x22, x1, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 604)

# Testcase cr_rs1_imm_corners
li x27, 0x80000000 # initialize rs1
slti x18, x27, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 608)

# Testcase cr_rs1_imm_corners
li x26, 0x80000000 # initialize rs1
slti x21, x26, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 612)

# Testcase cr_rs1_imm_corners
li x27, 0x80000000 # initialize rs1
slti x25, x27, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 616)

# Testcase cr_rs1_imm_corners
li x12, 0x80000000 # initialize rs1
slti x19, x12, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 620)

# Testcase cr_rs1_imm_corners
li x3, 0x80000001 # initialize rs1
slti x31, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 624)

# Testcase cr_rs1_imm_corners
li x1, 0x80000001 # initialize rs1
slti x22, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 628)

# Testcase cr_rs1_imm_corners
li x5, 0x80000001 # initialize rs1
slti x28, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 632)

# Testcase cr_rs1_imm_corners
li x10, 0x80000001 # initialize rs1
slti x12, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 636)

# Testcase cr_rs1_imm_corners
li x22, 0x80000001 # initialize rs1
slti x2, x22, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 640)

# Testcase cr_rs1_imm_corners
li x20, 0x80000001 # initialize rs1
slti x22, x20, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 644)

# Testcase cr_rs1_imm_corners
li x11, 0x80000001 # initialize rs1
slti x14, x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 648)

# Testcase cr_rs1_imm_corners
li x20, 0x80000001 # initialize rs1
slti x31, x20, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 652)

# Testcase cr_rs1_imm_corners
li x22, 0x80000001 # initialize rs1
slti x2, x22, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cr_rs1_imm_corners
li x11, 0x80000001 # initialize rs1
slti x5, x11, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 660)

# Testcase cr_rs1_imm_corners
li x12, 0x80000001 # initialize rs1
slti x31, x12, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 664)

# Testcase cr_rs1_imm_corners
li x3, 0x80000001 # initialize rs1
slti x11, x3, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 668)

# Testcase cr_rs1_imm_corners
li x24, 0x80000001 # initialize rs1
slti x9, x24, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 672)

# Testcase cr_rs1_imm_corners
li x17, 0x80000001 # initialize rs1
slti x28, x17, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 676)

# Testcase cr_rs1_imm_corners
li x14, 0x80000001 # initialize rs1
slti x20, x14, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 680)

# Testcase cr_rs1_imm_corners
li x12, 0x80000001 # initialize rs1
slti x30, x12, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 684)

# Testcase cr_rs1_imm_corners
li x3, 0x80000001 # initialize rs1
slti x1, x3, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 688)

# Testcase cr_rs1_imm_corners
li x1, 0x80000001 # initialize rs1
slti x2, x1, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 692)

# Testcase cr_rs1_imm_corners
li x22, 0x80000001 # initialize rs1
slti x17, x22, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 696)

# Testcase cr_rs1_imm_corners
li x26, 0x80000001 # initialize rs1
slti x3, x26, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 700)

# Testcase cr_rs1_imm_corners
li x6, 0x7fffffff # initialize rs1
slti x9, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 704)

# Testcase cr_rs1_imm_corners
li x25, 0x7fffffff # initialize rs1
slti x23, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 708)

# Testcase cr_rs1_imm_corners
li x16, 0x7fffffff # initialize rs1
slti x27, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 712)

# Testcase cr_rs1_imm_corners
li x2, 0x7fffffff # initialize rs1
slti x19, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 716)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffff # initialize rs1
slti x28, x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 720)

# Testcase cr_rs1_imm_corners
li x11, 0x7fffffff # initialize rs1
slti x25, x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 724)

# Testcase cr_rs1_imm_corners
li x2, 0x7fffffff # initialize rs1
slti x29, x2, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 728)

# Testcase cr_rs1_imm_corners
li x7, 0x7fffffff # initialize rs1
slti x14, x7, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 732)

# Testcase cr_rs1_imm_corners
li x19, 0x7fffffff # initialize rs1
slti x31, x19, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 736)

# Testcase cr_rs1_imm_corners
li x5, 0x7fffffff # initialize rs1
slti x19, x5, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 740)

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffff # initialize rs1
slti x7, x3, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 744)

# Testcase cr_rs1_imm_corners
li x17, 0x7fffffff # initialize rs1
slti x19, x17, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 748)

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffff # initialize rs1
slti x2, x3, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 752)

# Testcase cr_rs1_imm_corners
li x26, 0x7fffffff # initialize rs1
slti x11, x26, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 756)

# Testcase cr_rs1_imm_corners
li x21, 0x7fffffff # initialize rs1
slti x9, x21, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 760)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffff # initialize rs1
slti x8, x14, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 764)

# Testcase cr_rs1_imm_corners
li x2, 0x7fffffff # initialize rs1
slti x15, x2, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 768)

# Testcase cr_rs1_imm_corners
li x6, 0x7fffffff # initialize rs1
slti x14, x6, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 772)

# Testcase cr_rs1_imm_corners
li x17, 0x7fffffff # initialize rs1
slti x19, x17, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 776)

# Testcase cr_rs1_imm_corners
li x17, 0x7fffffff # initialize rs1
slti x24, x17, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 780)

# Testcase cr_rs1_imm_corners
li x5, 0x7ffffffe # initialize rs1
slti x31, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 784)

# Testcase cr_rs1_imm_corners
li x25, 0x7ffffffe # initialize rs1
slti x3, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 788)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffe # initialize rs1
slti x15, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 792)

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffe # initialize rs1
slti x28, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 796)

# Testcase cr_rs1_imm_corners
li x31, 0x7ffffffe # initialize rs1
slti x23, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 800)

# Testcase cr_rs1_imm_corners
li x24, 0x7ffffffe # initialize rs1
slti x27, x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 804)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rs1
slti x20, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 808)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffe # initialize rs1
slti x13, x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 812)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffe # initialize rs1
slti x23, x16, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 816)

# Testcase cr_rs1_imm_corners
li x25, 0x7ffffffe # initialize rs1
slti x1, x25, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 820)

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffe # initialize rs1
slti x11, x27, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 824)

# Testcase cr_rs1_imm_corners
li x7, 0x7ffffffe # initialize rs1
slti x27, x7, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 828)

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffe # initialize rs1
slti x24, x27, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffe # initialize rs1
slti x23, x3, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 836)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffe # initialize rs1
slti x1, x8, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 840)

# Testcase cr_rs1_imm_corners
li x20, 0x7ffffffe # initialize rs1
slti x3, x20, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 844)

# Testcase cr_rs1_imm_corners
li x24, 0x7ffffffe # initialize rs1
slti x3, x24, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 848)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffe # initialize rs1
slti x2, x12, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 852)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffe # initialize rs1
slti x15, x16, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 856)

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffe # initialize rs1
slti x23, x3, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 860)

# Testcase cr_rs1_imm_corners
li x1, 0xffffffff # initialize rs1
slti x5, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 864)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffff # initialize rs1
slti x16, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 868)

# Testcase cr_rs1_imm_corners
li x18, 0xffffffff # initialize rs1
slti x12, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 872)

# Testcase cr_rs1_imm_corners
li x1, 0xffffffff # initialize rs1
slti x7, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 876)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffff # initialize rs1
slti x3, x26, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 880)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffff # initialize rs1
slti x20, x9, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 884)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffff # initialize rs1
slti x6, x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 888)

# Testcase cr_rs1_imm_corners
li x19, 0xffffffff # initialize rs1
slti x27, x19, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 892)

# Testcase cr_rs1_imm_corners
li x3, 0xffffffff # initialize rs1
slti x16, x3, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 896)

# Testcase cr_rs1_imm_corners
li x6, 0xffffffff # initialize rs1
slti x30, x6, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 900)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff # initialize rs1
slti x17, x12, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 904)

# Testcase cr_rs1_imm_corners
li x22, 0xffffffff # initialize rs1
slti x31, x22, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 908)

# Testcase cr_rs1_imm_corners
li x21, 0xffffffff # initialize rs1
slti x23, x21, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 912)

# Testcase cr_rs1_imm_corners
li x7, 0xffffffff # initialize rs1
slti x12, x7, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 916)

# Testcase cr_rs1_imm_corners
li x22, 0xffffffff # initialize rs1
slti x31, x22, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 920)

# Testcase cr_rs1_imm_corners
li x23, 0xffffffff # initialize rs1
slti x2, x23, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 924)

# Testcase cr_rs1_imm_corners
li x17, 0xffffffff # initialize rs1
slti x9, x17, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cr_rs1_imm_corners
li x28, 0xffffffff # initialize rs1
slti x19, x28, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 932)

# Testcase cr_rs1_imm_corners
li x23, 0xffffffff # initialize rs1
slti x14, x23, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 936)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rs1
slti x1, x13, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 940)

# Testcase cr_rs1_imm_corners
li x21, 0xfffffffe # initialize rs1
slti x9, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 944)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffe # initialize rs1
slti x20, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 948)

# Testcase cr_rs1_imm_corners
li x6, 0xfffffffe # initialize rs1
slti x18, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 952)

# Testcase cr_rs1_imm_corners
li x1, 0xfffffffe # initialize rs1
slti x22, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 956)

# Testcase cr_rs1_imm_corners
li x31, 0xfffffffe # initialize rs1
slti x19, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 960)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffe # initialize rs1
slti x27, x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 964)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffe # initialize rs1
slti x5, x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 968)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffe # initialize rs1
slti x13, x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 972)

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rs1
slti x21, x13, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 976)

# Testcase cr_rs1_imm_corners
li x22, 0xfffffffe # initialize rs1
slti x25, x22, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 980)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffe # initialize rs1
slti x27, x11, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 984)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffe # initialize rs1
slti x31, x12, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 988)

# Testcase cr_rs1_imm_corners
li x26, 0xfffffffe # initialize rs1
slti x25, x26, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 992)

# Testcase cr_rs1_imm_corners
li x21, 0xfffffffe # initialize rs1
slti x28, x21, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 996)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffe # initialize rs1
slti x5, x10, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1000)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffe # initialize rs1
slti x14, x24, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1004)

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffe # initialize rs1
slti x30, x27, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1008)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffe # initialize rs1
slti x19, x14, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1012)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffe # initialize rs1
slti x1, x8, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1016)

# Testcase cr_rs1_imm_corners
li x21, 0xfffffffe # initialize rs1
slti x31, x21, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1020)

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc8872 # initialize rs1
slti x20, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1024)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8872 # initialize rs1
slti x24, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1028)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc8872 # initialize rs1
slti x7, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1032)

# Testcase cr_rs1_imm_corners
li x30, 0x5bbc8872 # initialize rs1
slti x22, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1036)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc8872 # initialize rs1
slti x25, x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1040)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc8872 # initialize rs1
slti x3, x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1044)

# Testcase cr_rs1_imm_corners
li x30, 0x5bbc8872 # initialize rs1
slti x29, x30, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1048)

# Testcase cr_rs1_imm_corners
li x6, 0x5bbc8872 # initialize rs1
slti x11, x6, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1052)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc8872 # initialize rs1
slti x27, x15, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1056)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc8872 # initialize rs1
slti x21, x10, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1060)

# Testcase cr_rs1_imm_corners
li x21, 0x5bbc8872 # initialize rs1
slti x31, x21, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1064)

# Testcase cr_rs1_imm_corners
li x5, 0x5bbc8872 # initialize rs1
slti x18, x5, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1068)

# Testcase cr_rs1_imm_corners
li x21, 0x5bbc8872 # initialize rs1
slti x20, x21, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1072)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc8872 # initialize rs1
slti x20, x8, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1076)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc8872 # initialize rs1
slti x24, x10, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1080)

# Testcase cr_rs1_imm_corners
li x25, 0x5bbc8872 # initialize rs1
slti x27, x25, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1084)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc8872 # initialize rs1
slti x23, x10, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1088)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc8872 # initialize rs1
slti x10, x11, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1092)

# Testcase cr_rs1_imm_corners
li x19, 0x5bbc8872 # initialize rs1
slti x18, x19, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1096)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc8872 # initialize rs1
slti x15, x14, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1100)

# Testcase cr_rs1_imm_corners
li x22, 0xaaaaaaaa # initialize rs1
slti x12, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1104)

# Testcase cr_rs1_imm_corners
li x31, 0xaaaaaaaa # initialize rs1
slti x6, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1108)

# Testcase cr_rs1_imm_corners
li x5, 0xaaaaaaaa # initialize rs1
slti x13, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1112)

# Testcase cr_rs1_imm_corners
li x30, 0xaaaaaaaa # initialize rs1
slti x22, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1116)

# Testcase cr_rs1_imm_corners
li x2, 0xaaaaaaaa # initialize rs1
slti x15, x2, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1120)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaa # initialize rs1
slti x8, x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1124)

# Testcase cr_rs1_imm_corners
li x21, 0xaaaaaaaa # initialize rs1
slti x1, x21, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1128)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaa # initialize rs1
slti x16, x18, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1132)

# Testcase cr_rs1_imm_corners
li x1, 0xaaaaaaaa # initialize rs1
slti x30, x1, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1136)

# Testcase cr_rs1_imm_corners
li x1, 0xaaaaaaaa # initialize rs1
slti x9, x1, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1140)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaa # initialize rs1
slti x27, x25, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1144)

# Testcase cr_rs1_imm_corners
li x6, 0xaaaaaaaa # initialize rs1
slti x28, x6, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1148)

# Testcase cr_rs1_imm_corners
li x31, 0xaaaaaaaa # initialize rs1
slti x26, x31, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1152)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaa # initialize rs1
slti x31, x15, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1156)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaa # initialize rs1
slti x11, x18, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1160)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaa # initialize rs1
slti x23, x14, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1164)

# Testcase cr_rs1_imm_corners
li x26, 0xaaaaaaaa # initialize rs1
slti x11, x26, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1168)

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaa # initialize rs1
slti x7, x27, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1172)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaa # initialize rs1
slti x20, x18, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1176)

# Testcase cr_rs1_imm_corners
li x19, 0xaaaaaaaa # initialize rs1
slti x21, x19, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1180)

# Testcase cr_rs1_imm_corners
li x25, 0x55555555 # initialize rs1
slti x27, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1184)

# Testcase cr_rs1_imm_corners
li x30, 0x55555555 # initialize rs1
slti x19, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1188)

# Testcase cr_rs1_imm_corners
li x17, 0x55555555 # initialize rs1
slti x28, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1192)

# Testcase cr_rs1_imm_corners
li x18, 0x55555555 # initialize rs1
slti x26, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1196)

# Testcase cr_rs1_imm_corners
li x18, 0x55555555 # initialize rs1
slti x2, x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1200)

# Testcase cr_rs1_imm_corners
li x22, 0x55555555 # initialize rs1
slti x5, x22, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1204)

# Testcase cr_rs1_imm_corners
li x6, 0x55555555 # initialize rs1
slti x10, x6, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1208)

# Testcase cr_rs1_imm_corners
li x22, 0x55555555 # initialize rs1
slti x8, x22, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1212)

# Testcase cr_rs1_imm_corners
li x11, 0x55555555 # initialize rs1
slti x18, x11, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1216)

# Testcase cr_rs1_imm_corners
li x8, 0x55555555 # initialize rs1
slti x16, x8, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1220)

# Testcase cr_rs1_imm_corners
li x16, 0x55555555 # initialize rs1
slti x14, x16, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1224)

# Testcase cr_rs1_imm_corners
li x2, 0x55555555 # initialize rs1
slti x23, x2, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1228)

# Testcase cr_rs1_imm_corners
li x21, 0x55555555 # initialize rs1
slti x20, x21, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1232)

# Testcase cr_rs1_imm_corners
li x22, 0x55555555 # initialize rs1
slti x27, x22, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1236)

# Testcase cr_rs1_imm_corners
li x21, 0x55555555 # initialize rs1
slti x11, x21, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1240)

# Testcase cr_rs1_imm_corners
li x25, 0x55555555 # initialize rs1
slti x22, x25, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1244)

# Testcase cr_rs1_imm_corners
li x23, 0x55555555 # initialize rs1
slti x30, x23, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1248)

# Testcase cr_rs1_imm_corners
li x26, 0x55555555 # initialize rs1
slti x11, x26, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1252)

# Testcase cr_rs1_imm_corners
li x24, 0x55555555 # initialize rs1
slti x9, x24, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1256)

# Testcase cr_rs1_imm_corners
li x28, 0x55555555 # initialize rs1
slti x1, x28, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xeb779fe0 # initialize rs1
slti x0, x0, -1754 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x09aa51ca # initialize rs1
slti x1, x1, 573 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x8aa809fe # initialize rs1
slti x2, x2, -1068 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xfd3ac247 # initialize rs1
slti x3, x3, 1804 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x33b774a0 # initialize rs1
slti x4, x4, -1408 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb1193360 # initialize rs1
slti x5, x5, -1195 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb9997b52 # initialize rs1
slti x6, x6, -1770 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf93da620 # initialize rs1
slti x7, x7, 1298 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd3bd7383 # initialize rs1
slti x8, x8, 311 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x02b86a1a # initialize rs1
slti x9, x9, 115 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xbcf75eaf # initialize rs1
slti x10, x10, -1860 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x1980b9a2 # initialize rs1
slti x11, x11, -36 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xe111941b # initialize rs1
slti x12, x12, 2029 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xb1889180 # initialize rs1
slti x13, x13, -244 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x816e54bb # initialize rs1
slti x14, x14, -1181 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x63082710 # initialize rs1
slti x15, x15, -396 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x3526dd3c # initialize rs1
slti x16, x16, 1323 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x61566005 # initialize rs1
slti x17, x17, 2017 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xbbe984b5 # initialize rs1
slti x18, x18, 106 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xfa384dc7 # initialize rs1
slti x19, x19, -607 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xc54dc5f9 # initialize rs1
slti x20, x20, -535 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xdc5d41ec # initialize rs1
slti x21, x21, -787 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xe3ebf763 # initialize rs1
slti x22, x22, -207 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xd09a3f90 # initialize rs1
slti x23, x23, 423 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x0fb92eb9 # initialize rs1
slti x24, x24, 1689 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x13e80170 # initialize rs1
slti x25, x25, -1588 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x86e87b7e # initialize rs1
slti x26, x26, -15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x02b4bb42 # initialize rs1
slti x27, x27, 556 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xf245cbf6 # initialize rs1
slti x28, x28, -1912 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xb2cb47df # initialize rs1
slti x29, x29, 185 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xf30ddaf4 # initialize rs1
slti x30, x30, 216 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xa1d050b1 # initialize rs1
slti x31, x31, 667 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1388)

# Testcase cp_imm_corners
li x22, 0xa3ac70f7 # initialize rs1
slti x9, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1392)

# Testcase cp_imm_corners
li x19, 0xef3f3b9d # initialize rs1
slti x28, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1396)

# Testcase cp_imm_corners
li x9, 0x45f7f82a # initialize rs1
slti x8, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1400)

# Testcase cp_imm_corners
li x24, 0x6b1f4087 # initialize rs1
slti x3, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1404)

# Testcase cp_imm_corners
li x3, 0xa3e7fd2c # initialize rs1
slti x5, x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1408)

# Testcase cp_imm_corners
li x18, 0x199cbec3 # initialize rs1
slti x19, x18, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1412)

# Testcase cp_imm_corners
li x12, 0x9621ae57 # initialize rs1
slti x5, x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1416)

# Testcase cp_imm_corners
li x24, 0x99809f8a # initialize rs1
slti x30, x24, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1420)

# Testcase cp_imm_corners
li x23, 0x7d9e6fc0 # initialize rs1
slti x6, x23, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1424)

# Testcase cp_imm_corners
li x3, 0x95d88abc # initialize rs1
slti x31, x3, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1428)

# Testcase cp_imm_corners
li x21, 0x2b94968e # initialize rs1
slti x6, x21, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1432)

# Testcase cp_imm_corners
li x1, 0xe6943abc # initialize rs1
slti x12, x1, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1436)

# Testcase cp_imm_corners
li x31, 0xef7ff241 # initialize rs1
slti x9, x31, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1440)

# Testcase cp_imm_corners
li x31, 0xefad8d15 # initialize rs1
slti x24, x31, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1444)

# Testcase cp_imm_corners
li x11, 0x510bc947 # initialize rs1
slti x14, x11, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1448)

# Testcase cp_imm_corners
li x29, 0x85066254 # initialize rs1
slti x16, x29, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1452)

# Testcase cp_imm_corners
li x29, 0x50c73e8c # initialize rs1
slti x3, x29, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1456)

# Testcase cp_imm_corners
li x30, 0x7a51f410 # initialize rs1
slti x26, x30, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1460)

# Testcase cp_imm_corners
li x21, 0xf9e1e1ba # initialize rs1
slti x25, x21, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1464)

# Testcase cp_imm_corners
li x9, 0x93a32f9d # initialize rs1
slti x21, x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1468)

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x21, x23 # perform first operation
slti x13, x28, -539 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x14, x29 # perform first operation
slti x19, x30, 654 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x20, x8 # perform first operation
slti x14, x7, -1776 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x10, x18 # perform first operation
slti x10, x1, 763 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x23, x15 # perform first operation
slti x9, x25, -1393 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x6, x12 # perform first operation
slti x11, x14, 307 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x13, x15 # perform first operation
slti x7, x3, -1213 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x27, x11 # perform first operation
slti x1, x8, -1235 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x5, x10 # perform first operation
slti x12, x24, -1968 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x16, x30 # perform first operation
slti x16, x19, 1714 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x19, x22 # perform first operation
slti x22, x30, 1621 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x15, x19 # perform first operation
slti x25, x20, 696 # perform second (triggering) operation

.EQU SIGSIZE,1472


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
