///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.slli.S
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
li x1, 0xcf243f4f
c.slli x1, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x19c335d1
c.slli x2, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 4)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xa14fe26a
c.slli x3, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xed7b1bed
c.slli x4, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 12)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3af4669b
c.slli x5, 27 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 16)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf89531b4
c.slli x6, 16 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 20)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcb442ca4
c.slli x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x873b0b2d
c.slli x8, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 28)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xe62a9166
c.slli x9, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x9f6d0592
c.slli x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 36)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xa89e3f32
c.slli x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xc355aa9c
c.slli x12, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb2eb1cd6
c.slli x13, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xae181e21
c.slli x14, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 52)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x63c0953d
c.slli x15, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x05691937
c.slli x16, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 60)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x65aa0381
c.slli x17, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 64)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xd1274dfb
c.slli x18, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 68)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x79eeacdf
c.slli x19, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 72)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x5ecad0a2
c.slli x20, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 76)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xc0325d2a
c.slli x21, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 80)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x357c47ad
c.slli x22, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 84)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x8c6c40fa
c.slli x23, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x8190bfd0
c.slli x24, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 92)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x7e6c28d5
c.slli x25, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x507133d5
c.slli x26, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 100)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xfc87e6d0
c.slli x27, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x3c6364fc
c.slli x28, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 108)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x602e687b
c.slli x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x4b502921
c.slli x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 116)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x29ee3906
c.slli x31, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x31, 0x00000000
c.slli x31, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x00000001
c.slli x24, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0x00000002
c.slli x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 132)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x8, 0x80000000
c.slli x8, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 136)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x6, 0x80000001
c.slli x6, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 140)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x1, 0x7fffffff
c.slli x1, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 144)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x11, 0x7ffffffe
c.slli x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 148)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x3, 0xffffffff
c.slli x3, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 152)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0xfffffffe
c.slli x15, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 156)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x31, 0x5bbc8872
c.slli x31, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 160)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x15, 0xaaaaaaaa
c.slli x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 164)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x19, 0x55555555
c.slli x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 168)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000
c.slli x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 172)

# Testcase cr_rs1_imm_corners
li x16, 0x00000000
c.slli x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cr_rs1_imm_corners
li x16, 0x00000000
c.slli x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 180)

# Testcase cr_rs1_imm_corners
li x19, 0x00000000
c.slli x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cr_rs1_imm_corners
li x23, 0x00000000
c.slli x23, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 188)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000
c.slli x11, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000
c.slli x1, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 196)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000
c.slli x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 200)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000
c.slli x24, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 204)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000
c.slli x29, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000
c.slli x24, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 212)

# Testcase cr_rs1_imm_corners
li x28, 0x00000001
c.slli x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cr_rs1_imm_corners
li x29, 0x00000001
c.slli x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 220)

# Testcase cr_rs1_imm_corners
li x27, 0x00000001
c.slli x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 224)

# Testcase cr_rs1_imm_corners
li x6, 0x00000001
c.slli x6, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 228)

# Testcase cr_rs1_imm_corners
li x24, 0x00000001
c.slli x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 232)

# Testcase cr_rs1_imm_corners
li x7, 0x00000001
c.slli x7, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 236)

# Testcase cr_rs1_imm_corners
li x23, 0x00000001
c.slli x23, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 240)

# Testcase cr_rs1_imm_corners
li x2, 0x00000001
c.slli x2, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 244)

# Testcase cr_rs1_imm_corners
li x16, 0x00000001
c.slli x16, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 248)

# Testcase cr_rs1_imm_corners
li x10, 0x00000001
c.slli x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 252)

# Testcase cr_rs1_imm_corners
li x15, 0x00000001
c.slli x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cr_rs1_imm_corners
li x2, 0x00000002
c.slli x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 260)

# Testcase cr_rs1_imm_corners
li x12, 0x00000002
c.slli x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 264)

# Testcase cr_rs1_imm_corners
li x7, 0x00000002
c.slli x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 268)

# Testcase cr_rs1_imm_corners
li x25, 0x00000002
c.slli x25, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 272)

# Testcase cr_rs1_imm_corners
li x24, 0x00000002
c.slli x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 276)

# Testcase cr_rs1_imm_corners
li x25, 0x00000002
c.slli x25, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 280)

# Testcase cr_rs1_imm_corners
li x3, 0x00000002
c.slli x3, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 284)

# Testcase cr_rs1_imm_corners
li x11, 0x00000002
c.slli x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 288)

# Testcase cr_rs1_imm_corners
li x3, 0x00000002
c.slli x3, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 292)

# Testcase cr_rs1_imm_corners
li x31, 0x00000002
c.slli x31, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 296)

# Testcase cr_rs1_imm_corners
li x20, 0x00000002
c.slli x20, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 300)

# Testcase cr_rs1_imm_corners
li x30, 0x80000000
c.slli x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 304)

# Testcase cr_rs1_imm_corners
li x6, 0x80000000
c.slli x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 308)

# Testcase cr_rs1_imm_corners
li x5, 0x80000000
c.slli x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 312)

# Testcase cr_rs1_imm_corners
li x25, 0x80000000
c.slli x25, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 316)

# Testcase cr_rs1_imm_corners
li x11, 0x80000000
c.slli x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 320)

# Testcase cr_rs1_imm_corners
li x24, 0x80000000
c.slli x24, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 324)

# Testcase cr_rs1_imm_corners
li x12, 0x80000000
c.slli x12, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 328)

# Testcase cr_rs1_imm_corners
li x24, 0x80000000
c.slli x24, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 332)

# Testcase cr_rs1_imm_corners
li x1, 0x80000000
c.slli x1, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 336)

# Testcase cr_rs1_imm_corners
li x30, 0x80000000
c.slli x30, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 340)

# Testcase cr_rs1_imm_corners
li x14, 0x80000000
c.slli x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 344)

# Testcase cr_rs1_imm_corners
li x8, 0x80000001
c.slli x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 348)

# Testcase cr_rs1_imm_corners
li x5, 0x80000001
c.slli x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 352)

# Testcase cr_rs1_imm_corners
li x18, 0x80000001
c.slli x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 356)

# Testcase cr_rs1_imm_corners
li x9, 0x80000001
c.slli x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 360)

# Testcase cr_rs1_imm_corners
li x28, 0x80000001
c.slli x28, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 364)

# Testcase cr_rs1_imm_corners
li x1, 0x80000001
c.slli x1, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 368)

# Testcase cr_rs1_imm_corners
li x16, 0x80000001
c.slli x16, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 372)

# Testcase cr_rs1_imm_corners
li x26, 0x80000001
c.slli x26, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 376)

# Testcase cr_rs1_imm_corners
li x28, 0x80000001
c.slli x28, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 380)

# Testcase cr_rs1_imm_corners
li x10, 0x80000001
c.slli x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cr_rs1_imm_corners
li x11, 0x80000001
c.slli x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 388)

# Testcase cr_rs1_imm_corners
li x18, 0x7fffffff
c.slli x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cr_rs1_imm_corners
li x17, 0x7fffffff
c.slli x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 396)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffff
c.slli x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 400)

# Testcase cr_rs1_imm_corners
li x21, 0x7fffffff
c.slli x21, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 404)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffff
c.slli x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 408)

# Testcase cr_rs1_imm_corners
li x7, 0x7fffffff
c.slli x7, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 412)

# Testcase cr_rs1_imm_corners
li x16, 0x7fffffff
c.slli x16, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 416)

# Testcase cr_rs1_imm_corners
li x28, 0x7fffffff
c.slli x28, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 420)

# Testcase cr_rs1_imm_corners
li x1, 0x7fffffff
c.slli x1, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 424)

# Testcase cr_rs1_imm_corners
li x26, 0x7fffffff
c.slli x26, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 428)

# Testcase cr_rs1_imm_corners
li x6, 0x7fffffff
c.slli x6, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 432)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffe
c.slli x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 436)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffe
c.slli x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 440)

# Testcase cr_rs1_imm_corners
li x28, 0x7ffffffe
c.slli x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 444)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffe
c.slli x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 448)

# Testcase cr_rs1_imm_corners
li x28, 0x7ffffffe
c.slli x28, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 452)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffe
c.slli x10, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cr_rs1_imm_corners
li x17, 0x7ffffffe
c.slli x17, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 460)

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffe
c.slli x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 464)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe
c.slli x13, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 468)

# Testcase cr_rs1_imm_corners
li x7, 0x7ffffffe
c.slli x7, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 472)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffe
c.slli x9, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 476)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffff
c.slli x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffff
c.slli x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 484)

# Testcase cr_rs1_imm_corners
li x24, 0xffffffff
c.slli x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 488)

# Testcase cr_rs1_imm_corners
li x28, 0xffffffff
c.slli x28, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 492)

# Testcase cr_rs1_imm_corners
li x29, 0xffffffff
c.slli x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 496)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffff
c.slli x26, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 500)

# Testcase cr_rs1_imm_corners
li x1, 0xffffffff
c.slli x1, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 504)

# Testcase cr_rs1_imm_corners
li x29, 0xffffffff
c.slli x29, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 508)

# Testcase cr_rs1_imm_corners
li x31, 0xffffffff
c.slli x31, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 512)

# Testcase cr_rs1_imm_corners
li x6, 0xffffffff
c.slli x6, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 516)

# Testcase cr_rs1_imm_corners
li x24, 0xffffffff
c.slli x24, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 520)

# Testcase cr_rs1_imm_corners
li x22, 0xfffffffe
c.slli x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 524)

# Testcase cr_rs1_imm_corners
li x25, 0xfffffffe
c.slli x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 528)

# Testcase cr_rs1_imm_corners
li x6, 0xfffffffe
c.slli x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 532)

# Testcase cr_rs1_imm_corners
li x1, 0xfffffffe
c.slli x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 536)

# Testcase cr_rs1_imm_corners
li x23, 0xfffffffe
c.slli x23, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 540)

# Testcase cr_rs1_imm_corners
li x26, 0xfffffffe
c.slli x26, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 544)

# Testcase cr_rs1_imm_corners
li x19, 0xfffffffe
c.slli x19, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 548)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffe
c.slli x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 552)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffe
c.slli x24, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 556)

# Testcase cr_rs1_imm_corners
li x6, 0xfffffffe
c.slli x6, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 560)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffe
c.slli x10, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 564)

# Testcase cr_rs1_imm_corners
li x12, 0x5bbc8872
c.slli x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 568)

# Testcase cr_rs1_imm_corners
li x5, 0x5bbc8872
c.slli x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 572)

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc8872
c.slli x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 576)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc8872
c.slli x2, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 580)

# Testcase cr_rs1_imm_corners
li x5, 0x5bbc8872
c.slli x5, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 584)

# Testcase cr_rs1_imm_corners
li x21, 0x5bbc8872
c.slli x21, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 588)

# Testcase cr_rs1_imm_corners
li x17, 0x5bbc8872
c.slli x17, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 592)

# Testcase cr_rs1_imm_corners
li x28, 0x5bbc8872
c.slli x28, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 596)

# Testcase cr_rs1_imm_corners
li x30, 0x5bbc8872
c.slli x30, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 600)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc8872
c.slli x2, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 604)

# Testcase cr_rs1_imm_corners
li x26, 0x5bbc8872
c.slli x26, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 608)

# Testcase cr_rs1_imm_corners
li x20, 0xaaaaaaaa
c.slli x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 612)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaa
c.slli x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 616)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaa
c.slli x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 620)

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaa
c.slli x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 624)

# Testcase cr_rs1_imm_corners
li x21, 0xaaaaaaaa
c.slli x21, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 628)

# Testcase cr_rs1_imm_corners
li x1, 0xaaaaaaaa
c.slli x1, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 632)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaa
c.slli x25, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 636)

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaa
c.slli x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 640)

# Testcase cr_rs1_imm_corners
li x22, 0xaaaaaaaa
c.slli x22, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 644)

# Testcase cr_rs1_imm_corners
li x20, 0xaaaaaaaa
c.slli x20, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 648)

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaa
c.slli x3, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 652)

# Testcase cr_rs1_imm_corners
li x14, 0x55555555
c.slli x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 656)

# Testcase cr_rs1_imm_corners
li x12, 0x55555555
c.slli x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 660)

# Testcase cr_rs1_imm_corners
li x16, 0x55555555
c.slli x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 664)

# Testcase cr_rs1_imm_corners
li x24, 0x55555555
c.slli x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 668)

# Testcase cr_rs1_imm_corners
li x13, 0x55555555
c.slli x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 672)

# Testcase cr_rs1_imm_corners
li x29, 0x55555555
c.slli x29, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 676)

# Testcase cr_rs1_imm_corners
li x3, 0x55555555
c.slli x3, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 680)

# Testcase cr_rs1_imm_corners
li x13, 0x55555555
c.slli x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 684)

# Testcase cr_rs1_imm_corners
li x14, 0x55555555
c.slli x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 688)

# Testcase cr_rs1_imm_corners
li x29, 0x55555555
c.slli x29, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 692)

# Testcase cr_rs1_imm_corners
li x2, 0x55555555
c.slli x2, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 696)

# Testcase cp_uimm (Test bit = 0)
li x25, 0xe5437cfa
c.slli x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 700)

# Testcase cp_uimm (Test bit = 1)
li x29, 0x053ff980
c.slli x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 704)

# Testcase cp_uimm (Test bit = 2)
li x9, 0x3005c3e7
c.slli x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 708)

# Testcase cp_uimm (Test bit = 3)
li x13, 0xf8a04863
c.slli x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 712)

# Testcase cp_uimm (Test bit = 4)
li x6, 0xdd2e1707
c.slli x6, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 716)

# Testcase cp_uimm (Test bit = 5)
li x2, 0xe26138f4
c.slli x2, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 720)

# Testcase cp_uimm (Test bit = 6)
li x16, 0x9e105132
c.slli x16, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 724)

# Testcase cp_uimm (Test bit = 7)
li x2, 0x979958b1
c.slli x2, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 728)

# Testcase cp_uimm (Test bit = 8)
li x30, 0xaa11b8ef
c.slli x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 732)

# Testcase cp_uimm (Test bit = 9)
li x22, 0xee13854c
c.slli x22, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 736)

# Testcase cp_uimm (Test bit = 10)
li x29, 0x21f761c9
c.slli x29, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 740)

# Testcase cp_uimm (Test bit = 11)
li x10, 0xcde0bbb1
c.slli x10, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 744)

# Testcase cp_uimm (Test bit = 12)
li x1, 0x71d5a75d
c.slli x1, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 748)

# Testcase cp_uimm (Test bit = 13)
li x29, 0xd5fb9a42
c.slli x29, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 752)

# Testcase cp_uimm (Test bit = 14)
li x12, 0x76076628
c.slli x12, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 756)

# Testcase cp_uimm (Test bit = 15)
li x20, 0xa355d8d9
c.slli x20, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 760)

# Testcase cp_uimm (Test bit = 16)
li x5, 0x59cebe84
c.slli x5, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 764)

# Testcase cp_uimm (Test bit = 17)
li x5, 0x9db1ac6c
c.slli x5, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 768)

# Testcase cp_uimm (Test bit = 18)
li x30, 0x67327721
c.slli x30, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 772)

# Testcase cp_uimm (Test bit = 19)
li x25, 0x131608c2
c.slli x25, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 776)

# Testcase cp_uimm (Test bit = 20)
li x28, 0xaf41a49a
c.slli x28, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 780)

# Testcase cp_uimm (Test bit = 21)
li x9, 0x9bbdd52e
c.slli x9, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 784)

# Testcase cp_uimm (Test bit = 22)
li x17, 0x9f8684b9
c.slli x17, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 788)

# Testcase cp_uimm (Test bit = 23)
li x13, 0x7fac8a65
c.slli x13, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 792)

# Testcase cp_uimm (Test bit = 24)
li x20, 0x7701fb6c
c.slli x20, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 796)

# Testcase cp_uimm (Test bit = 25)
li x5, 0xac0a316d
c.slli x5, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 800)

# Testcase cp_uimm (Test bit = 26)
li x1, 0xbfe5860d
c.slli x1, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 804)

# Testcase cp_uimm (Test bit = 27)
li x22, 0x8aeda6ce
c.slli x22, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 808)

# Testcase cp_uimm (Test bit = 28)
li x18, 0xd660d872
c.slli x18, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 812)

# Testcase cp_uimm (Test bit = 29)
li x3, 0xf76e7269
c.slli x3, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 816)

# Testcase cp_uimm (Test bit = 30)
li x5, 0x86b843a7
c.slli x5, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 820)

# Testcase cp_uimm (Test bit = 31)
li x26, 0xad644feb
c.slli x26, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 824)

.EQU SIGSIZE,828


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
