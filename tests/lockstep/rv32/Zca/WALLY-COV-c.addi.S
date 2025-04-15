///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.addi.S
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

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0xf7905f48 # initialize rs1
c.addi x1, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x1ed19ecb # initialize rs1
c.addi x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 4)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x314302f2 # initialize rs1
c.addi x3, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc17268f3 # initialize rs1
c.addi x4, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 12)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc5bb0025 # initialize rs1
c.addi x5, 0 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 16)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3c5b2047 # initialize rs1
c.addi x6, -17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 20)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd9d15180 # initialize rs1
c.addi x7, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x71ee3bdf # initialize rs1
c.addi x8, -14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 28)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xa656b080 # initialize rs1
c.addi x9, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x07a3a9f0 # initialize rs1
c.addi x10, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 36)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x455cb8f1 # initialize rs1
c.addi x11, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x469063e5 # initialize rs1
c.addi x12, -29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x46d76ece # initialize rs1
c.addi x13, -25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xdeb15220 # initialize rs1
c.addi x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 52)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xd9400088 # initialize rs1
c.addi x15, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x939f7730 # initialize rs1
c.addi x16, -23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 60)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xd711121a # initialize rs1
c.addi x17, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 64)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x4a06cc36 # initialize rs1
c.addi x18, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 68)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x3e61f0ca # initialize rs1
c.addi x19, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 72)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xb3092c5d # initialize rs1
c.addi x20, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 76)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xf1462de6 # initialize rs1
c.addi x21, -18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 80)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x8d1cc301 # initialize rs1
c.addi x22, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 84)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x137fe4a2 # initialize rs1
c.addi x23, -16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xe4c993b8 # initialize rs1
c.addi x24, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 92)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x9ec3d540 # initialize rs1
c.addi x25, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xedab6b9b # initialize rs1
c.addi x26, -21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 100)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x22789739 # initialize rs1
c.addi x27, -27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x7cd02e56 # initialize rs1
c.addi x28, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 108)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x39336dc8 # initialize rs1
c.addi x29, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x59f750a2 # initialize rs1
c.addi x30, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 116)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xc624b7d9 # initialize rs1
c.addi x31, -14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x6, 0x00000000 # initialize rs1
c.addi x6, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 124)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x27, 0x00000001 # initialize rs1
c.addi x27, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 128)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x13, 0x00000002 # initialize rs1
c.addi x13, -28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 132)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x30, 0x80000000 # initialize rs1
c.addi x30, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 136)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x23, 0x80000001 # initialize rs1
c.addi x23, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 140)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x24, 0x7fffffff # initialize rs1
c.addi x24, -3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 144)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x5, 0x7ffffffe # initialize rs1
c.addi x5, -27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 148)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x27, 0xffffffff # initialize rs1
c.addi x27, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 152)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0xfffffffe # initialize rs1
c.addi x15, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 156)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x1, 0x5bbc8872 # initialize rs1
c.addi x1, -29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x18, 0xaaaaaaaa # initialize rs1
c.addi x18, -18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 164)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x11, 0x55555555 # initialize rs1
c.addi x11, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000 # initialize rs1
c.addi x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 172)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000 # initialize rs1
c.addi x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000 # initialize rs1
c.addi x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 180)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000 # initialize rs1
c.addi x2, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000 # initialize rs1
c.addi x22, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 188)

# Testcase cr_rs1_imm_corners
li x16, 0x00000000 # initialize rs1
c.addi x16, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000 # initialize rs1
c.addi x2, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 196)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000 # initialize rs1
c.addi x10, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 200)

# Testcase cr_rs1_imm_corners
li x28, 0x00000000 # initialize rs1
c.addi x28, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 204)

# Testcase cr_rs1_imm_corners
li x23, 0x00000000 # initialize rs1
c.addi x23, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 208)

# Testcase cr_rs1_imm_corners
li x27, 0x00000000 # initialize rs1
c.addi x27, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 212)

# Testcase cr_rs1_imm_corners
li x28, 0x00000000 # initialize rs1
c.addi x28, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cr_rs1_imm_corners
li x12, 0x00000001 # initialize rs1
c.addi x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 220)

# Testcase cr_rs1_imm_corners
li x14, 0x00000001 # initialize rs1
c.addi x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cr_rs1_imm_corners
li x11, 0x00000001 # initialize rs1
c.addi x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 228)

# Testcase cr_rs1_imm_corners
li x11, 0x00000001 # initialize rs1
c.addi x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 232)

# Testcase cr_rs1_imm_corners
li x21, 0x00000001 # initialize rs1
c.addi x21, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 236)

# Testcase cr_rs1_imm_corners
li x5, 0x00000001 # initialize rs1
c.addi x5, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 240)

# Testcase cr_rs1_imm_corners
li x16, 0x00000001 # initialize rs1
c.addi x16, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 244)

# Testcase cr_rs1_imm_corners
li x24, 0x00000001 # initialize rs1
c.addi x24, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 248)

# Testcase cr_rs1_imm_corners
li x7, 0x00000001 # initialize rs1
c.addi x7, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 252)

# Testcase cr_rs1_imm_corners
li x20, 0x00000001 # initialize rs1
c.addi x20, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 256)

# Testcase cr_rs1_imm_corners
li x2, 0x00000001 # initialize rs1
c.addi x2, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 260)

# Testcase cr_rs1_imm_corners
li x18, 0x00000001 # initialize rs1
c.addi x18, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 264)

# Testcase cr_rs1_imm_corners
li x31, 0x00000002 # initialize rs1
c.addi x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 268)

# Testcase cr_rs1_imm_corners
li x15, 0x00000002 # initialize rs1
c.addi x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 272)

# Testcase cr_rs1_imm_corners
li x5, 0x00000002 # initialize rs1
c.addi x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 276)

# Testcase cr_rs1_imm_corners
li x29, 0x00000002 # initialize rs1
c.addi x29, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 280)

# Testcase cr_rs1_imm_corners
li x14, 0x00000002 # initialize rs1
c.addi x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 284)

# Testcase cr_rs1_imm_corners
li x23, 0x00000002 # initialize rs1
c.addi x23, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 288)

# Testcase cr_rs1_imm_corners
li x6, 0x00000002 # initialize rs1
c.addi x6, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 292)

# Testcase cr_rs1_imm_corners
li x9, 0x00000002 # initialize rs1
c.addi x9, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 296)

# Testcase cr_rs1_imm_corners
li x23, 0x00000002 # initialize rs1
c.addi x23, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 300)

# Testcase cr_rs1_imm_corners
li x1, 0x00000002 # initialize rs1
c.addi x1, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 304)

# Testcase cr_rs1_imm_corners
li x26, 0x00000002 # initialize rs1
c.addi x26, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 308)

# Testcase cr_rs1_imm_corners
li x24, 0x00000002 # initialize rs1
c.addi x24, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 312)

# Testcase cr_rs1_imm_corners
li x26, 0x80000000 # initialize rs1
c.addi x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 316)

# Testcase cr_rs1_imm_corners
li x25, 0x80000000 # initialize rs1
c.addi x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 320)

# Testcase cr_rs1_imm_corners
li x30, 0x80000000 # initialize rs1
c.addi x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 324)

# Testcase cr_rs1_imm_corners
li x12, 0x80000000 # initialize rs1
c.addi x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 328)

# Testcase cr_rs1_imm_corners
li x15, 0x80000000 # initialize rs1
c.addi x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 332)

# Testcase cr_rs1_imm_corners
li x1, 0x80000000 # initialize rs1
c.addi x1, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 336)

# Testcase cr_rs1_imm_corners
li x10, 0x80000000 # initialize rs1
c.addi x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 340)

# Testcase cr_rs1_imm_corners
li x3, 0x80000000 # initialize rs1
c.addi x3, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 344)

# Testcase cr_rs1_imm_corners
li x10, 0x80000000 # initialize rs1
c.addi x10, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 348)

# Testcase cr_rs1_imm_corners
li x12, 0x80000000 # initialize rs1
c.addi x12, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cr_rs1_imm_corners
li x2, 0x80000000 # initialize rs1
c.addi x2, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 356)

# Testcase cr_rs1_imm_corners
li x3, 0x80000000 # initialize rs1
c.addi x3, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 360)

# Testcase cr_rs1_imm_corners
li x11, 0x80000001 # initialize rs1
c.addi x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 364)

# Testcase cr_rs1_imm_corners
li x26, 0x80000001 # initialize rs1
c.addi x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 368)

# Testcase cr_rs1_imm_corners
li x7, 0x80000001 # initialize rs1
c.addi x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 372)

# Testcase cr_rs1_imm_corners
li x22, 0x80000001 # initialize rs1
c.addi x22, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 376)

# Testcase cr_rs1_imm_corners
li x5, 0x80000001 # initialize rs1
c.addi x5, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 380)

# Testcase cr_rs1_imm_corners
li x10, 0x80000001 # initialize rs1
c.addi x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cr_rs1_imm_corners
li x31, 0x80000001 # initialize rs1
c.addi x31, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 388)

# Testcase cr_rs1_imm_corners
li x29, 0x80000001 # initialize rs1
c.addi x29, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 392)

# Testcase cr_rs1_imm_corners
li x12, 0x80000001 # initialize rs1
c.addi x12, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 396)

# Testcase cr_rs1_imm_corners
li x31, 0x80000001 # initialize rs1
c.addi x31, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 400)

# Testcase cr_rs1_imm_corners
li x27, 0x80000001 # initialize rs1
c.addi x27, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 404)

# Testcase cr_rs1_imm_corners
li x22, 0x80000001 # initialize rs1
c.addi x22, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 408)

# Testcase cr_rs1_imm_corners
li x16, 0x7fffffff # initialize rs1
c.addi x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 412)

# Testcase cr_rs1_imm_corners
li x22, 0x7fffffff # initialize rs1
c.addi x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cr_rs1_imm_corners
li x11, 0x7fffffff # initialize rs1
c.addi x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 420)

# Testcase cr_rs1_imm_corners
li x25, 0x7fffffff # initialize rs1
c.addi x25, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 424)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffff # initialize rs1
c.addi x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 428)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffff # initialize rs1
c.addi x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 432)

# Testcase cr_rs1_imm_corners
li x6, 0x7fffffff # initialize rs1
c.addi x6, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 436)

# Testcase cr_rs1_imm_corners
li x17, 0x7fffffff # initialize rs1
c.addi x17, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 440)

# Testcase cr_rs1_imm_corners
li x18, 0x7fffffff # initialize rs1
c.addi x18, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 444)

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffff # initialize rs1
c.addi x3, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 448)

# Testcase cr_rs1_imm_corners
li x22, 0x7fffffff # initialize rs1
c.addi x22, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 452)

# Testcase cr_rs1_imm_corners
li x5, 0x7fffffff # initialize rs1
c.addi x5, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cr_rs1_imm_corners
li x20, 0x7ffffffe # initialize rs1
c.addi x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 460)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffe # initialize rs1
c.addi x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 464)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffe # initialize rs1
c.addi x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 468)

# Testcase cr_rs1_imm_corners
li x29, 0x7ffffffe # initialize rs1
c.addi x29, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cr_rs1_imm_corners
li x23, 0x7ffffffe # initialize rs1
c.addi x23, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 476)

# Testcase cr_rs1_imm_corners
li x22, 0x7ffffffe # initialize rs1
c.addi x22, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 480)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffe # initialize rs1
c.addi x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 484)

# Testcase cr_rs1_imm_corners
li x23, 0x7ffffffe # initialize rs1
c.addi x23, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 488)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffe # initialize rs1
c.addi x15, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 492)

# Testcase cr_rs1_imm_corners
li x5, 0x7ffffffe # initialize rs1
c.addi x5, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 496)

# Testcase cr_rs1_imm_corners
li x21, 0x7ffffffe # initialize rs1
c.addi x21, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 500)

# Testcase cr_rs1_imm_corners
li x20, 0x7ffffffe # initialize rs1
c.addi x20, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 504)

# Testcase cr_rs1_imm_corners
li x3, 0xffffffff # initialize rs1
c.addi x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 508)

# Testcase cr_rs1_imm_corners
li x20, 0xffffffff # initialize rs1
c.addi x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 512)

# Testcase cr_rs1_imm_corners
li x19, 0xffffffff # initialize rs1
c.addi x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 516)

# Testcase cr_rs1_imm_corners
li x17, 0xffffffff # initialize rs1
c.addi x17, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 520)

# Testcase cr_rs1_imm_corners
li x18, 0xffffffff # initialize rs1
c.addi x18, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 524)

# Testcase cr_rs1_imm_corners
li x30, 0xffffffff # initialize rs1
c.addi x30, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cr_rs1_imm_corners
li x23, 0xffffffff # initialize rs1
c.addi x23, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 532)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffff # initialize rs1
c.addi x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 536)

# Testcase cr_rs1_imm_corners
li x16, 0xffffffff # initialize rs1
c.addi x16, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 540)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffff # initialize rs1
c.addi x26, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 544)

# Testcase cr_rs1_imm_corners
li x7, 0xffffffff # initialize rs1
c.addi x7, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 548)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffff # initialize rs1
c.addi x26, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 552)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffe # initialize rs1
c.addi x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 556)

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffe # initialize rs1
c.addi x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 560)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffe # initialize rs1
c.addi x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 564)

# Testcase cr_rs1_imm_corners
li x5, 0xfffffffe # initialize rs1
c.addi x5, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 568)

# Testcase cr_rs1_imm_corners
li x17, 0xfffffffe # initialize rs1
c.addi x17, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 572)

# Testcase cr_rs1_imm_corners
li x26, 0xfffffffe # initialize rs1
c.addi x26, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 576)

# Testcase cr_rs1_imm_corners
li x30, 0xfffffffe # initialize rs1
c.addi x30, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 580)

# Testcase cr_rs1_imm_corners
li x29, 0xfffffffe # initialize rs1
c.addi x29, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 584)

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffe # initialize rs1
c.addi x27, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 588)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffe # initialize rs1
c.addi x11, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 592)

# Testcase cr_rs1_imm_corners
li x26, 0xfffffffe # initialize rs1
c.addi x26, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 596)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffe # initialize rs1
c.addi x10, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 600)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc8872 # initialize rs1
c.addi x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 604)

# Testcase cr_rs1_imm_corners
li x30, 0x5bbc8872 # initialize rs1
c.addi x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 608)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc8872 # initialize rs1
c.addi x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 612)

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc8872 # initialize rs1
c.addi x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 616)

# Testcase cr_rs1_imm_corners
li x28, 0x5bbc8872 # initialize rs1
c.addi x28, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 620)

# Testcase cr_rs1_imm_corners
li x20, 0x5bbc8872 # initialize rs1
c.addi x20, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 624)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc8872 # initialize rs1
c.addi x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 628)

# Testcase cr_rs1_imm_corners
li x29, 0x5bbc8872 # initialize rs1
c.addi x29, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 632)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc8872 # initialize rs1
c.addi x11, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 636)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8872 # initialize rs1
c.addi x13, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 640)

# Testcase cr_rs1_imm_corners
li x22, 0x5bbc8872 # initialize rs1
c.addi x22, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 644)

# Testcase cr_rs1_imm_corners
li x24, 0x5bbc8872 # initialize rs1
c.addi x24, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 648)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaa # initialize rs1
c.addi x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 652)

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaa # initialize rs1
c.addi x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 656)

# Testcase cr_rs1_imm_corners
li x6, 0xaaaaaaaa # initialize rs1
c.addi x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 660)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaa # initialize rs1
c.addi x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 664)

# Testcase cr_rs1_imm_corners
li x21, 0xaaaaaaaa # initialize rs1
c.addi x21, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 668)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaa # initialize rs1
c.addi x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 672)

# Testcase cr_rs1_imm_corners
li x31, 0xaaaaaaaa # initialize rs1
c.addi x31, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 676)

# Testcase cr_rs1_imm_corners
li x5, 0xaaaaaaaa # initialize rs1
c.addi x5, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 680)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaa # initialize rs1
c.addi x18, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 684)

# Testcase cr_rs1_imm_corners
li x26, 0xaaaaaaaa # initialize rs1
c.addi x26, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 688)

# Testcase cr_rs1_imm_corners
li x30, 0xaaaaaaaa # initialize rs1
c.addi x30, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 692)

# Testcase cr_rs1_imm_corners
li x2, 0xaaaaaaaa # initialize rs1
c.addi x2, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 696)

# Testcase cr_rs1_imm_corners
li x17, 0x55555555 # initialize rs1
c.addi x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 700)

# Testcase cr_rs1_imm_corners
li x28, 0x55555555 # initialize rs1
c.addi x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 704)

# Testcase cr_rs1_imm_corners
li x27, 0x55555555 # initialize rs1
c.addi x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 708)

# Testcase cr_rs1_imm_corners
li x21, 0x55555555 # initialize rs1
c.addi x21, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 712)

# Testcase cr_rs1_imm_corners
li x21, 0x55555555 # initialize rs1
c.addi x21, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 716)

# Testcase cr_rs1_imm_corners
li x20, 0x55555555 # initialize rs1
c.addi x20, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 720)

# Testcase cr_rs1_imm_corners
li x9, 0x55555555 # initialize rs1
c.addi x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 724)

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rs1
c.addi x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 728)

# Testcase cr_rs1_imm_corners
li x19, 0x55555555 # initialize rs1
c.addi x19, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 732)

# Testcase cr_rs1_imm_corners
li x10, 0x55555555 # initialize rs1
c.addi x10, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 736)

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rs1
c.addi x13, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 740)

# Testcase cr_rs1_imm_corners
li x22, 0x55555555 # initialize rs1
c.addi x22, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 744)

.EQU SIGSIZE,748


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
