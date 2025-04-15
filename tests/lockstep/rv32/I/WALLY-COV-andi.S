///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-andi.S
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
li x0, 0x45f1efea # initialize rs1
andi x29, x0, 1272 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x5cc50e1a # initialize rs1
andi x22, x1, 1151 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x7f779f91 # initialize rs1
andi x28, x2, 1915 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x85eb0051 # initialize rs1
andi x21, x3, 1970 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x851bbd5a # initialize rs1
andi x30, x4, -1962 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xda3d6e4a # initialize rs1
andi x16, x5, -418 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0b378969 # initialize rs1
andi x5, x6, 1669 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x703c22e4 # initialize rs1
andi x15, x7, -714 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xec24f9de # initialize rs1
andi x6, x8, 527 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x943c02f5 # initialize rs1
andi x14, x9, -1923 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x8542a7b0 # initialize rs1
andi x17, x10, -493 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x203dd178 # initialize rs1
andi x22, x11, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x304ceb52 # initialize rs1
andi x5, x12, -1784 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa4c7fc44 # initialize rs1
andi x24, x13, 1192 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x658354de # initialize rs1
andi x12, x14, -1538 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x59732c36 # initialize rs1
andi x20, x15, -1268 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xb042f939 # initialize rs1
andi x29, x16, 1665 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x36b0517a # initialize rs1
andi x27, x17, 917 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x346f67db # initialize rs1
andi x13, x18, 1637 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xbe5d7aef # initialize rs1
andi x11, x19, 1662 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x9e66a6f3 # initialize rs1
andi x30, x20, -390 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x3ceb947d # initialize rs1
andi x1, x21, 2006 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xd236d7bf # initialize rs1
andi x12, x22, 1345 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x90f10368 # initialize rs1
andi x7, x23, -2032 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xf6193393 # initialize rs1
andi x10, x24, -1258 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x45aeca57 # initialize rs1
andi x3, x25, -1260 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xb5579fde # initialize rs1
andi x5, x26, -225 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x8874878c # initialize rs1
andi x8, x27, 274 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x7e63da99 # initialize rs1
andi x30, x28, -233 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xb9b6e2e5 # initialize rs1
andi x17, x29, -1079 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xf7a4325d # initialize rs1
andi x8, x30, -1000 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x8a4f9fab # initialize rs1
andi x23, x31, -620 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 124)

# Testcase cp_rd (Test destination rd = x0)
li x24, 0x358c204e # initialize rs1
andi x0, x24, -825 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x28, 0x2aa1190d # initialize rs1
andi x1, x28, -1648 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x6d049eb3 # initialize rs1
andi x2, x2, 1914 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x5, 0xdaa9defa # initialize rs1
andi x3, x5, -940 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0xb08e15ad # initialize rs1
andi x4, x5, -752 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
li x4, 0xa161d5b7 # initialize rs1
andi x5, x4, 471 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0x45db1f6d # initialize rs1
andi x6, x13, 410 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0x5b15f3bf # initialize rs1
andi x7, x9, 1232 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x7, 0xfb37cd9e # initialize rs1
andi x8, x7, 953 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x18, 0x195bbed1 # initialize rs1
andi x9, x18, 1233 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x17, 0xa74ad2b5 # initialize rs1
andi x10, x17, 321 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x30, 0xb5060d7d # initialize rs1
andi x11, x30, -23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0xe832cd26 # initialize rs1
andi x12, x9, -364 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x22, 0x2cbcef97 # initialize rs1
andi x13, x22, -851 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x27, 0x198184bb # initialize rs1
andi x14, x27, 1603 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x19ba9fb1 # initialize rs1
andi x15, x15, -259 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x30, 0x629d2057 # initialize rs1
andi x16, x30, 1771 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x23, 0x1e10a4cb # initialize rs1
andi x17, x23, -370 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x12, 0xfe019d85 # initialize rs1
andi x18, x12, 557 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x21, 0x65503267 # initialize rs1
andi x19, x21, -1187 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x31, 0xc4e0719d # initialize rs1
andi x20, x31, 693 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x29, 0xc518499c # initialize rs1
andi x21, x29, -1066 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x27, 0x1f681a20 # initialize rs1
andi x22, x27, -1256 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x27, 0x5a6d8a4f # initialize rs1
andi x23, x27, -392 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x25, 0x3743b097 # initialize rs1
andi x24, x25, 1293 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x12, 0x752e7af8 # initialize rs1
andi x25, x12, -429 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x23, 0xd7e149bd # initialize rs1
andi x26, x23, -830 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x17, 0xc49fe5d1 # initialize rs1
andi x27, x17, 109 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x25, 0xed2f70ce # initialize rs1
andi x28, x25, 592 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x5, 0xe9cb2d66 # initialize rs1
andi x29, x5, 119 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x23, 0x3d32cfd9 # initialize rs1
andi x30, x23, 1703 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x10, 0xfa9ac0e9 # initialize rs1
andi x31, x10, 1147 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x2, 0x00000000 # initialize rs1
andi x24, x2, 118 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x30, 0x00000001 # initialize rs1
andi x7, x30, -1653 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x20, 0x00000002 # initialize rs1
andi x12, x20, 1156 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x18, 0x80000000 # initialize rs1
andi x26, x18, 1215 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x22, 0x80000001 # initialize rs1
andi x26, x22, -1494 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x17, 0x7fffffff # initialize rs1
andi x20, x17, -974 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x2, 0x7ffffffe # initialize rs1
andi x22, x2, 1048 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x25, 0xffffffff # initialize rs1
andi x16, x25, 1769 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0xfffffffe # initialize rs1
andi x11, x6, 665 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x9, 0x5bbc8872 # initialize rs1
andi x1, x9, 1187 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x19, 0xaaaaaaaa # initialize rs1
andi x24, x19, 269 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x9, 0x55555555 # initialize rs1
andi x3, x9, -888 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 300)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000 # initialize rs1
andi x18, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 304)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000 # initialize rs1
andi x8, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 308)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000 # initialize rs1
andi x17, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 312)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000 # initialize rs1
andi x21, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 316)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000 # initialize rs1
andi x21, x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 320)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000 # initialize rs1
andi x30, x7, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 324)

# Testcase cr_rs1_imm_corners
li x19, 0x00000000 # initialize rs1
andi x13, x19, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 328)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000 # initialize rs1
andi x21, x5, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 332)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000 # initialize rs1
andi x8, x29, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rs1
andi x24, x13, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 340)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000 # initialize rs1
andi x18, x14, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 344)

# Testcase cr_rs1_imm_corners
li x25, 0x00000000 # initialize rs1
andi x6, x25, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 348)

# Testcase cr_rs1_imm_corners
li x25, 0x00000000 # initialize rs1
andi x14, x25, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000 # initialize rs1
andi x19, x22, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 356)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000 # initialize rs1
andi x29, x9, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 360)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000 # initialize rs1
andi x2, x22, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 364)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000 # initialize rs1
andi x8, x10, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 368)

# Testcase cr_rs1_imm_corners
li x25, 0x00000000 # initialize rs1
andi x8, x25, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 372)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000 # initialize rs1
andi x19, x1, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 376)

# Testcase cr_rs1_imm_corners
li x27, 0x00000000 # initialize rs1
andi x22, x27, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 380)

# Testcase cr_rs1_imm_corners
li x21, 0x00000001 # initialize rs1
andi x27, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 384)

# Testcase cr_rs1_imm_corners
li x6, 0x00000001 # initialize rs1
andi x22, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 388)

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rs1
andi x15, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

# Testcase cr_rs1_imm_corners
li x28, 0x00000001 # initialize rs1
andi x29, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 396)

# Testcase cr_rs1_imm_corners
li x6, 0x00000001 # initialize rs1
andi x21, x6, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 400)

# Testcase cr_rs1_imm_corners
li x5, 0x00000001 # initialize rs1
andi x18, x5, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 404)

# Testcase cr_rs1_imm_corners
li x11, 0x00000001 # initialize rs1
andi x17, x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 408)

# Testcase cr_rs1_imm_corners
li x2, 0x00000001 # initialize rs1
andi x1, x2, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 412)

# Testcase cr_rs1_imm_corners
li x15, 0x00000001 # initialize rs1
andi x25, x15, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cr_rs1_imm_corners
li x2, 0x00000001 # initialize rs1
andi x25, x2, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 420)

# Testcase cr_rs1_imm_corners
li x15, 0x00000001 # initialize rs1
andi x16, x15, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 424)

# Testcase cr_rs1_imm_corners
li x20, 0x00000001 # initialize rs1
andi x8, x20, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 428)

# Testcase cr_rs1_imm_corners
li x11, 0x00000001 # initialize rs1
andi x13, x11, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 432)

# Testcase cr_rs1_imm_corners
li x8, 0x00000001 # initialize rs1
andi x19, x8, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 436)

# Testcase cr_rs1_imm_corners
li x12, 0x00000001 # initialize rs1
andi x9, x12, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 440)

# Testcase cr_rs1_imm_corners
li x19, 0x00000001 # initialize rs1
andi x10, x19, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 444)

# Testcase cr_rs1_imm_corners
li x3, 0x00000001 # initialize rs1
andi x7, x3, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 448)

# Testcase cr_rs1_imm_corners
li x11, 0x00000001 # initialize rs1
andi x14, x11, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 452)

# Testcase cr_rs1_imm_corners
li x25, 0x00000001 # initialize rs1
andi x26, x25, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cr_rs1_imm_corners
li x15, 0x00000001 # initialize rs1
andi x28, x15, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 460)

# Testcase cr_rs1_imm_corners
li x30, 0x00000002 # initialize rs1
andi x28, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cr_rs1_imm_corners
li x22, 0x00000002 # initialize rs1
andi x24, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 468)

# Testcase cr_rs1_imm_corners
li x18, 0x00000002 # initialize rs1
andi x11, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 472)

# Testcase cr_rs1_imm_corners
li x23, 0x00000002 # initialize rs1
andi x6, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 476)

# Testcase cr_rs1_imm_corners
li x26, 0x00000002 # initialize rs1
andi x19, x26, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cr_rs1_imm_corners
li x24, 0x00000002 # initialize rs1
andi x17, x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 484)

# Testcase cr_rs1_imm_corners
li x9, 0x00000002 # initialize rs1
andi x27, x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 488)

# Testcase cr_rs1_imm_corners
li x9, 0x00000002 # initialize rs1
andi x19, x9, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 492)

# Testcase cr_rs1_imm_corners
li x11, 0x00000002 # initialize rs1
andi x17, x11, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 496)

# Testcase cr_rs1_imm_corners
li x14, 0x00000002 # initialize rs1
andi x20, x14, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 500)

# Testcase cr_rs1_imm_corners
li x16, 0x00000002 # initialize rs1
andi x29, x16, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 504)

# Testcase cr_rs1_imm_corners
li x30, 0x00000002 # initialize rs1
andi x22, x30, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 508)

# Testcase cr_rs1_imm_corners
li x30, 0x00000002 # initialize rs1
andi x17, x30, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 512)

# Testcase cr_rs1_imm_corners
li x15, 0x00000002 # initialize rs1
andi x22, x15, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 516)

# Testcase cr_rs1_imm_corners
li x18, 0x00000002 # initialize rs1
andi x24, x18, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 520)

# Testcase cr_rs1_imm_corners
li x3, 0x00000002 # initialize rs1
andi x8, x3, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 524)

# Testcase cr_rs1_imm_corners
li x3, 0x00000002 # initialize rs1
andi x31, x3, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 528)

# Testcase cr_rs1_imm_corners
li x16, 0x00000002 # initialize rs1
andi x10, x16, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 532)

# Testcase cr_rs1_imm_corners
li x3, 0x00000002 # initialize rs1
andi x6, x3, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cr_rs1_imm_corners
li x23, 0x00000002 # initialize rs1
andi x30, x23, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 540)

# Testcase cr_rs1_imm_corners
li x27, 0x80000000 # initialize rs1
andi x17, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 544)

# Testcase cr_rs1_imm_corners
li x19, 0x80000000 # initialize rs1
andi x20, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 548)

# Testcase cr_rs1_imm_corners
li x30, 0x80000000 # initialize rs1
andi x3, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cr_rs1_imm_corners
li x9, 0x80000000 # initialize rs1
andi x1, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 556)

# Testcase cr_rs1_imm_corners
li x21, 0x80000000 # initialize rs1
andi x15, x21, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 560)

# Testcase cr_rs1_imm_corners
li x30, 0x80000000 # initialize rs1
andi x15, x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 564)

# Testcase cr_rs1_imm_corners
li x20, 0x80000000 # initialize rs1
andi x23, x20, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 568)

# Testcase cr_rs1_imm_corners
li x22, 0x80000000 # initialize rs1
andi x9, x22, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 572)

# Testcase cr_rs1_imm_corners
li x31, 0x80000000 # initialize rs1
andi x23, x31, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 576)

# Testcase cr_rs1_imm_corners
li x23, 0x80000000 # initialize rs1
andi x28, x23, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 580)

# Testcase cr_rs1_imm_corners
li x12, 0x80000000 # initialize rs1
andi x3, x12, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cr_rs1_imm_corners
li x5, 0x80000000 # initialize rs1
andi x15, x5, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 588)

# Testcase cr_rs1_imm_corners
li x22, 0x80000000 # initialize rs1
andi x20, x22, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 592)

# Testcase cr_rs1_imm_corners
li x27, 0x80000000 # initialize rs1
andi x18, x27, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 596)

# Testcase cr_rs1_imm_corners
li x7, 0x80000000 # initialize rs1
andi x5, x7, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 600)

# Testcase cr_rs1_imm_corners
li x14, 0x80000000 # initialize rs1
andi x30, x14, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 604)

# Testcase cr_rs1_imm_corners
li x17, 0x80000000 # initialize rs1
andi x2, x17, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 608)

# Testcase cr_rs1_imm_corners
li x6, 0x80000000 # initialize rs1
andi x24, x6, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 612)

# Testcase cr_rs1_imm_corners
li x23, 0x80000000 # initialize rs1
andi x16, x23, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 616)

# Testcase cr_rs1_imm_corners
li x1, 0x80000000 # initialize rs1
andi x17, x1, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 620)

# Testcase cr_rs1_imm_corners
li x23, 0x80000001 # initialize rs1
andi x20, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 624)

# Testcase cr_rs1_imm_corners
li x16, 0x80000001 # initialize rs1
andi x19, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 628)

# Testcase cr_rs1_imm_corners
li x29, 0x80000001 # initialize rs1
andi x31, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 632)

# Testcase cr_rs1_imm_corners
li x11, 0x80000001 # initialize rs1
andi x19, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 636)

# Testcase cr_rs1_imm_corners
li x23, 0x80000001 # initialize rs1
andi x22, x23, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 640)

# Testcase cr_rs1_imm_corners
li x27, 0x80000001 # initialize rs1
andi x17, x27, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 644)

# Testcase cr_rs1_imm_corners
li x15, 0x80000001 # initialize rs1
andi x16, x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 648)

# Testcase cr_rs1_imm_corners
li x29, 0x80000001 # initialize rs1
andi x31, x29, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 652)

# Testcase cr_rs1_imm_corners
li x29, 0x80000001 # initialize rs1
andi x12, x29, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 656)

# Testcase cr_rs1_imm_corners
li x21, 0x80000001 # initialize rs1
andi x25, x21, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 660)

# Testcase cr_rs1_imm_corners
li x5, 0x80000001 # initialize rs1
andi x22, x5, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 664)

# Testcase cr_rs1_imm_corners
li x12, 0x80000001 # initialize rs1
andi x13, x12, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 668)

# Testcase cr_rs1_imm_corners
li x21, 0x80000001 # initialize rs1
andi x7, x21, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 672)

# Testcase cr_rs1_imm_corners
li x31, 0x80000001 # initialize rs1
andi x28, x31, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 676)

# Testcase cr_rs1_imm_corners
li x5, 0x80000001 # initialize rs1
andi x22, x5, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 680)

# Testcase cr_rs1_imm_corners
li x10, 0x80000001 # initialize rs1
andi x28, x10, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 684)

# Testcase cr_rs1_imm_corners
li x18, 0x80000001 # initialize rs1
andi x15, x18, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 688)

# Testcase cr_rs1_imm_corners
li x15, 0x80000001 # initialize rs1
andi x20, x15, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 692)

# Testcase cr_rs1_imm_corners
li x1, 0x80000001 # initialize rs1
andi x22, x1, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 696)

# Testcase cr_rs1_imm_corners
li x18, 0x80000001 # initialize rs1
andi x16, x18, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 700)

# Testcase cr_rs1_imm_corners
li x16, 0x7fffffff # initialize rs1
andi x11, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 704)

# Testcase cr_rs1_imm_corners
li x22, 0x7fffffff # initialize rs1
andi x20, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 708)

# Testcase cr_rs1_imm_corners
li x21, 0x7fffffff # initialize rs1
andi x1, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 712)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffff # initialize rs1
andi x31, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 716)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffff # initialize rs1
andi x2, x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 720)

# Testcase cr_rs1_imm_corners
li x31, 0x7fffffff # initialize rs1
andi x12, x31, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 724)

# Testcase cr_rs1_imm_corners
li x2, 0x7fffffff # initialize rs1
andi x1, x2, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 728)

# Testcase cr_rs1_imm_corners
li x28, 0x7fffffff # initialize rs1
andi x21, x28, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 732)

# Testcase cr_rs1_imm_corners
li x26, 0x7fffffff # initialize rs1
andi x22, x26, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 736)

# Testcase cr_rs1_imm_corners
li x19, 0x7fffffff # initialize rs1
andi x31, x19, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 740)

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffff # initialize rs1
andi x25, x3, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 744)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffff # initialize rs1
andi x14, x8, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 748)

# Testcase cr_rs1_imm_corners
li x1, 0x7fffffff # initialize rs1
andi x11, x1, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 752)

# Testcase cr_rs1_imm_corners
li x20, 0x7fffffff # initialize rs1
andi x14, x20, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 756)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rs1
andi x29, x13, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 760)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rs1
andi x30, x13, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 764)

# Testcase cr_rs1_imm_corners
li x5, 0x7fffffff # initialize rs1
andi x25, x5, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 768)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffff # initialize rs1
andi x21, x14, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 772)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffff # initialize rs1
andi x16, x15, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 776)

# Testcase cr_rs1_imm_corners
li x26, 0x7fffffff # initialize rs1
andi x7, x26, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 780)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffe # initialize rs1
andi x6, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rs1
andi x12, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 788)

# Testcase cr_rs1_imm_corners
li x28, 0x7ffffffe # initialize rs1
andi x27, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 792)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffe # initialize rs1
andi x18, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 796)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffe # initialize rs1
andi x5, x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 800)

# Testcase cr_rs1_imm_corners
li x1, 0x7ffffffe # initialize rs1
andi x6, x1, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 804)

# Testcase cr_rs1_imm_corners
li x6, 0x7ffffffe # initialize rs1
andi x31, x6, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 808)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffe # initialize rs1
andi x14, x11, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 812)

# Testcase cr_rs1_imm_corners
li x23, 0x7ffffffe # initialize rs1
andi x25, x23, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffe # initialize rs1
andi x24, x15, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 820)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffe # initialize rs1
andi x14, x9, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 824)

# Testcase cr_rs1_imm_corners
li x5, 0x7ffffffe # initialize rs1
andi x19, x5, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 828)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffe # initialize rs1
andi x23, x10, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 832)

# Testcase cr_rs1_imm_corners
li x26, 0x7ffffffe # initialize rs1
andi x20, x26, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 836)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffe # initialize rs1
andi x27, x19, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 840)

# Testcase cr_rs1_imm_corners
li x17, 0x7ffffffe # initialize rs1
andi x22, x17, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 844)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffe # initialize rs1
andi x2, x12, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 848)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffe # initialize rs1
andi x21, x15, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 852)

# Testcase cr_rs1_imm_corners
li x18, 0x7ffffffe # initialize rs1
andi x3, x18, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 856)

# Testcase cr_rs1_imm_corners
li x5, 0x7ffffffe # initialize rs1
andi x7, x5, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 860)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffff # initialize rs1
andi x23, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 864)

# Testcase cr_rs1_imm_corners
li x20, 0xffffffff # initialize rs1
andi x8, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 868)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff # initialize rs1
andi x23, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 872)

# Testcase cr_rs1_imm_corners
li x21, 0xffffffff # initialize rs1
andi x20, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 876)

# Testcase cr_rs1_imm_corners
li x20, 0xffffffff # initialize rs1
andi x31, x20, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 880)

# Testcase cr_rs1_imm_corners
li x30, 0xffffffff # initialize rs1
andi x2, x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 884)

# Testcase cr_rs1_imm_corners
li x3, 0xffffffff # initialize rs1
andi x11, x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 888)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff # initialize rs1
andi x9, x12, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 892)

# Testcase cr_rs1_imm_corners
li x5, 0xffffffff # initialize rs1
andi x27, x5, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 896)

# Testcase cr_rs1_imm_corners
li x6, 0xffffffff # initialize rs1
andi x1, x6, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 900)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rs1
andi x6, x13, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 904)

# Testcase cr_rs1_imm_corners
li x21, 0xffffffff # initialize rs1
andi x26, x21, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 908)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffff # initialize rs1
andi x31, x14, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 912)

# Testcase cr_rs1_imm_corners
li x20, 0xffffffff # initialize rs1
andi x30, x20, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 916)

# Testcase cr_rs1_imm_corners
li x19, 0xffffffff # initialize rs1
andi x14, x19, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 920)

# Testcase cr_rs1_imm_corners
li x3, 0xffffffff # initialize rs1
andi x25, x3, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 924)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffff # initialize rs1
andi x24, x9, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 928)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff # initialize rs1
andi x3, x12, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 932)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffff # initialize rs1
andi x21, x14, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 936)

# Testcase cr_rs1_imm_corners
li x3, 0xffffffff # initialize rs1
andi x23, x3, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 940)

# Testcase cr_rs1_imm_corners
li x6, 0xfffffffe # initialize rs1
andi x2, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 944)

# Testcase cr_rs1_imm_corners
li x23, 0xfffffffe # initialize rs1
andi x14, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 948)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffe # initialize rs1
andi x8, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

# Testcase cr_rs1_imm_corners
li x31, 0xfffffffe # initialize rs1
andi x1, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 956)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffe # initialize rs1
andi x8, x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 960)

# Testcase cr_rs1_imm_corners
li x30, 0xfffffffe # initialize rs1
andi x17, x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 964)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffe # initialize rs1
andi x9, x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 968)

# Testcase cr_rs1_imm_corners
li x26, 0xfffffffe # initialize rs1
andi x28, x26, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 972)

# Testcase cr_rs1_imm_corners
li x23, 0xfffffffe # initialize rs1
andi x14, x23, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 976)

# Testcase cr_rs1_imm_corners
li x31, 0xfffffffe # initialize rs1
andi x24, x31, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 980)

# Testcase cr_rs1_imm_corners
li x23, 0xfffffffe # initialize rs1
andi x8, x23, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 984)

# Testcase cr_rs1_imm_corners
li x1, 0xfffffffe # initialize rs1
andi x20, x1, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 988)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffe # initialize rs1
andi x23, x14, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cr_rs1_imm_corners
li x21, 0xfffffffe # initialize rs1
andi x5, x21, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 996)

# Testcase cr_rs1_imm_corners
li x18, 0xfffffffe # initialize rs1
andi x12, x18, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1000)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffe # initialize rs1
andi x18, x8, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1004)

# Testcase cr_rs1_imm_corners
li x31, 0xfffffffe # initialize rs1
andi x12, x31, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1008)

# Testcase cr_rs1_imm_corners
li x31, 0xfffffffe # initialize rs1
andi x17, x31, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1012)

# Testcase cr_rs1_imm_corners
li x16, 0xfffffffe # initialize rs1
andi x29, x16, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1016)

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffe # initialize rs1
andi x23, x3, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1020)

# Testcase cr_rs1_imm_corners
li x28, 0x5bbc8872 # initialize rs1
andi x23, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1024)

# Testcase cr_rs1_imm_corners
li x16, 0x5bbc8872 # initialize rs1
andi x6, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1028)

# Testcase cr_rs1_imm_corners
li x29, 0x5bbc8872 # initialize rs1
andi x26, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1032)

# Testcase cr_rs1_imm_corners
li x31, 0x5bbc8872 # initialize rs1
andi x14, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1036)

# Testcase cr_rs1_imm_corners
li x7, 0x5bbc8872 # initialize rs1
andi x20, x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1040)

# Testcase cr_rs1_imm_corners
li x19, 0x5bbc8872 # initialize rs1
andi x15, x19, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1044)

# Testcase cr_rs1_imm_corners
li x12, 0x5bbc8872 # initialize rs1
andi x6, x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1048)

# Testcase cr_rs1_imm_corners
li x24, 0x5bbc8872 # initialize rs1
andi x16, x24, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1052)

# Testcase cr_rs1_imm_corners
li x31, 0x5bbc8872 # initialize rs1
andi x2, x31, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1056)

# Testcase cr_rs1_imm_corners
li x16, 0x5bbc8872 # initialize rs1
andi x11, x16, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1060)

# Testcase cr_rs1_imm_corners
li x23, 0x5bbc8872 # initialize rs1
andi x10, x23, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1064)

# Testcase cr_rs1_imm_corners
li x23, 0x5bbc8872 # initialize rs1
andi x17, x23, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1068)

# Testcase cr_rs1_imm_corners
li x18, 0x5bbc8872 # initialize rs1
andi x23, x18, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1072)

# Testcase cr_rs1_imm_corners
li x31, 0x5bbc8872 # initialize rs1
andi x19, x31, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1076)

# Testcase cr_rs1_imm_corners
li x7, 0x5bbc8872 # initialize rs1
andi x11, x7, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1080)

# Testcase cr_rs1_imm_corners
li x19, 0x5bbc8872 # initialize rs1
andi x16, x19, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1084)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc8872 # initialize rs1
andi x9, x14, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1088)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc8872 # initialize rs1
andi x10, x8, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1092)

# Testcase cr_rs1_imm_corners
li x19, 0x5bbc8872 # initialize rs1
andi x24, x19, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1096)

# Testcase cr_rs1_imm_corners
li x24, 0x5bbc8872 # initialize rs1
andi x19, x24, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1100)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaa # initialize rs1
andi x31, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1104)

# Testcase cr_rs1_imm_corners
li x31, 0xaaaaaaaa # initialize rs1
andi x16, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1108)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaa # initialize rs1
andi x19, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1112)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaa # initialize rs1
andi x17, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1116)

# Testcase cr_rs1_imm_corners
li x6, 0xaaaaaaaa # initialize rs1
andi x21, x6, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1120)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaa # initialize rs1
andi x10, x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1124)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaa # initialize rs1
andi x14, x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaa # initialize rs1
andi x20, x25, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1132)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaa # initialize rs1
andi x5, x11, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1136)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaa # initialize rs1
andi x18, x10, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1140)

# Testcase cr_rs1_imm_corners
li x21, 0xaaaaaaaa # initialize rs1
andi x10, x21, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1144)

# Testcase cr_rs1_imm_corners
li x1, 0xaaaaaaaa # initialize rs1
andi x7, x1, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1148)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaa # initialize rs1
andi x29, x10, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1152)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaa # initialize rs1
andi x22, x18, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1156)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaa # initialize rs1
andi x12, x14, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1160)

# Testcase cr_rs1_imm_corners
li x7, 0xaaaaaaaa # initialize rs1
andi x23, x7, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1164)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaa # initialize rs1
andi x5, x11, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1168)

# Testcase cr_rs1_imm_corners
li x7, 0xaaaaaaaa # initialize rs1
andi x31, x7, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1172)

# Testcase cr_rs1_imm_corners
li x28, 0xaaaaaaaa # initialize rs1
andi x3, x28, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1176)

# Testcase cr_rs1_imm_corners
li x30, 0xaaaaaaaa # initialize rs1
andi x26, x30, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1180)

# Testcase cr_rs1_imm_corners
li x15, 0x55555555 # initialize rs1
andi x27, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1184)

# Testcase cr_rs1_imm_corners
li x30, 0x55555555 # initialize rs1
andi x15, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1188)

# Testcase cr_rs1_imm_corners
li x2, 0x55555555 # initialize rs1
andi x15, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1192)

# Testcase cr_rs1_imm_corners
li x25, 0x55555555 # initialize rs1
andi x1, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1196)

# Testcase cr_rs1_imm_corners
li x24, 0x55555555 # initialize rs1
andi x11, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1200)

# Testcase cr_rs1_imm_corners
li x29, 0x55555555 # initialize rs1
andi x8, x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1204)

# Testcase cr_rs1_imm_corners
li x29, 0x55555555 # initialize rs1
andi x23, x29, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1208)

# Testcase cr_rs1_imm_corners
li x6, 0x55555555 # initialize rs1
andi x26, x6, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1212)

# Testcase cr_rs1_imm_corners
li x19, 0x55555555 # initialize rs1
andi x13, x19, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1216)

# Testcase cr_rs1_imm_corners
li x3, 0x55555555 # initialize rs1
andi x5, x3, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1220)

# Testcase cr_rs1_imm_corners
li x28, 0x55555555 # initialize rs1
andi x24, x28, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1224)

# Testcase cr_rs1_imm_corners
li x5, 0x55555555 # initialize rs1
andi x29, x5, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1228)

# Testcase cr_rs1_imm_corners
li x10, 0x55555555 # initialize rs1
andi x19, x10, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1232)

# Testcase cr_rs1_imm_corners
li x19, 0x55555555 # initialize rs1
andi x2, x19, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1236)

# Testcase cr_rs1_imm_corners
li x30, 0x55555555 # initialize rs1
andi x10, x30, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1240)

# Testcase cr_rs1_imm_corners
li x7, 0x55555555 # initialize rs1
andi x10, x7, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1244)

# Testcase cr_rs1_imm_corners
li x30, 0x55555555 # initialize rs1
andi x28, x30, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1248)

# Testcase cr_rs1_imm_corners
li x10, 0x55555555 # initialize rs1
andi x18, x10, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1252)

# Testcase cr_rs1_imm_corners
li x1, 0x55555555 # initialize rs1
andi x3, x1, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1256)

# Testcase cr_rs1_imm_corners
li x1, 0x55555555 # initialize rs1
andi x2, x1, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x865f2852 # initialize rs1
andi x0, x0, -763 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x4d60a32a # initialize rs1
andi x1, x1, 348 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x27263be9 # initialize rs1
andi x2, x2, 1549 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x30be9220 # initialize rs1
andi x3, x3, -1087 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x74fb55a7 # initialize rs1
andi x4, x4, 1849 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0e4ee273 # initialize rs1
andi x5, x5, 42 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x35d78585 # initialize rs1
andi x6, x6, -1688 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4347d534 # initialize rs1
andi x7, x7, -1067 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x8f3e06c3 # initialize rs1
andi x8, x8, -1471 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x4ef88538 # initialize rs1
andi x9, x9, 2037 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc704b04a # initialize rs1
andi x10, x10, 485 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xaa4f341c # initialize rs1
andi x11, x11, -165 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xd27b710e # initialize rs1
andi x12, x12, -1651 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe4ca954c # initialize rs1
andi x13, x13, -775 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xbf2af12d # initialize rs1
andi x14, x14, 1362 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8d954e73 # initialize rs1
andi x15, x15, 599 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x29322e34 # initialize rs1
andi x16, x16, -885 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x0dce7344 # initialize rs1
andi x17, x17, 1711 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xa0f509a8 # initialize rs1
andi x18, x18, -290 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf093ba18 # initialize rs1
andi x19, x19, -1230 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3eef931a # initialize rs1
andi x20, x20, 949 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd37f3c71 # initialize rs1
andi x21, x21, 1843 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x92885ce7 # initialize rs1
andi x22, x22, -286 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x245efca4 # initialize rs1
andi x23, x23, -902 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x8e91d29e # initialize rs1
andi x24, x24, -1898 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x8e9bef67 # initialize rs1
andi x25, x25, 1880 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xdfa70f03 # initialize rs1
andi x26, x26, -453 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x293eadf0 # initialize rs1
andi x27, x27, -1060 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x115257fa # initialize rs1
andi x28, x28, -945 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x6174ffdb # initialize rs1
andi x29, x29, -328 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x4fba7b58 # initialize rs1
andi x30, x30, -1039 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x42025545 # initialize rs1
andi x31, x31, 580 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1388)

# Testcase cp_imm_corners
li x19, 0x4650d143 # initialize rs1
andi x18, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1392)

# Testcase cp_imm_corners
li x25, 0x12abd10d # initialize rs1
andi x16, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1396)

# Testcase cp_imm_corners
li x23, 0x1dd0059e # initialize rs1
andi x26, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1400)

# Testcase cp_imm_corners
li x23, 0xe3dbc101 # initialize rs1
andi x26, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1404)

# Testcase cp_imm_corners
li x21, 0x87f08772 # initialize rs1
andi x24, x21, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cp_imm_corners
li x3, 0xb9f558ea # initialize rs1
andi x10, x3, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1412)

# Testcase cp_imm_corners
li x31, 0xf45704b5 # initialize rs1
andi x11, x31, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1416)

# Testcase cp_imm_corners
li x31, 0x852311a9 # initialize rs1
andi x19, x31, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1420)

# Testcase cp_imm_corners
li x1, 0x5545db19 # initialize rs1
andi x15, x1, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1424)

# Testcase cp_imm_corners
li x27, 0xdc294a39 # initialize rs1
andi x20, x27, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1428)

# Testcase cp_imm_corners
li x3, 0x94e1ed40 # initialize rs1
andi x24, x3, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1432)

# Testcase cp_imm_corners
li x13, 0xcfd5f762 # initialize rs1
andi x2, x13, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1436)

# Testcase cp_imm_corners
li x11, 0x80376ef0 # initialize rs1
andi x17, x11, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1440)

# Testcase cp_imm_corners
li x17, 0xbf80665f # initialize rs1
andi x12, x17, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1444)

# Testcase cp_imm_corners
li x29, 0x26f6ad65 # initialize rs1
andi x22, x29, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1448)

# Testcase cp_imm_corners
li x17, 0x159765f9 # initialize rs1
andi x15, x17, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1452)

# Testcase cp_imm_corners
li x7, 0x623c703a # initialize rs1
andi x18, x7, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1456)

# Testcase cp_imm_corners
li x9, 0x304b0d83 # initialize rs1
andi x11, x9, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1460)

# Testcase cp_imm_corners
li x2, 0x00a225af # initialize rs1
andi x9, x2, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1464)

# Testcase cp_imm_corners
li x6, 0xff37d929 # initialize rs1
andi x19, x6, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1468)

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x17, x5 # perform first operation
andi x11, x23, 401 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x18, x9 # perform first operation
andi x12, x31, 81 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x9, x23 # perform first operation
andi x16, x3, 328 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x16, x24 # perform first operation
andi x16, x26, -615 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x3, x23 # perform first operation
andi x1, x7, 843 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x21, x25 # perform first operation
andi x26, x1, -1038 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x12, x10 # perform first operation
andi x22, x19, 1725 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x20, x10 # perform first operation
andi x24, x16, -1709 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x29, x7 # perform first operation
andi x2, x10, -1999 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x13, x28 # perform first operation
andi x13, x12, -253 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x15, x19 # perform first operation
andi x19, x29, -291 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x15, x21 # perform first operation
andi x12, x24, 1772 # perform second (triggering) operation

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
