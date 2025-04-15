///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.andi.S
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

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x00000000 # initialize rd'
c.andi x8, -3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0x00000001 # initialize rd'
c.andi x11, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x00000002 # initialize rd'
c.andi x12, -8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x9, 0x80000000 # initialize rd'
c.andi x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x10, 0x80000001 # initialize rd'
c.andi x10, -15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x12, 0x7fffffff # initialize rd'
c.andi x12, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x8, 0x7ffffffe # initialize rd'
c.andi x8, -23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x10, 0xffffffff # initialize rd'
c.andi x10, -10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0xfffffffe # initialize rd'
c.andi x13, -25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x9, 0x5bbc8872 # initialize rd'
c.andi x9, -12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x12, 0xaaaaaaaa # initialize rd'
c.andi x12, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x8, 0x55555555 # initialize rd'
c.andi x8, -14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 44)

# Testcase cp_imm_corners
li x14, 0x8e1acff5 # initialize rd'
c.andi x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cp_imm_corners
li x10, 0xc5140784 # initialize rd'
c.andi x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 52)

# Testcase cp_imm_corners
li x8, 0x1cb36175 # initialize rd'
c.andi x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_imm_corners
li x15, 0x01c331dd # initialize rd'
c.andi x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_imm_corners
li x8, 0xaa217e90 # initialize rd'
c.andi x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_imm_corners
li x8, 0x28fed239 # initialize rd'
c.andi x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 68)

# Testcase cp_imm_corners
li x14, 0x6ae60e20 # initialize rd'
c.andi x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_imm_corners
li x15, 0x89222e29 # initialize rd'
c.andi x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 76)

# Testcase cp_imm_corners
li x11, 0xcd52cda0 # initialize rd'
c.andi x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_imm_corners
li x14, 0x4e9b0103 # initialize rd'
c.andi x14, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 84)

# Testcase cp_imm_corners
li x11, 0x1c7aaef5 # initialize rd'
c.andi x11, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_imm_corners
li x14, 0xcf66bb76 # initialize rd'
c.andi x14, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 92)

# Testcase cp_imm_corners
li x10, 0x06fe25da # initialize rd'
c.andi x10, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 96)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000 # initialize rd'
c.andi x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 100)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000 # initialize rd'
c.andi x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000 # initialize rd'
c.andi x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 108)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000 # initialize rd'
c.andi x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd'
c.andi x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 116)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000 # initialize rd'
c.andi x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000 # initialize rd'
c.andi x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 124)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000 # initialize rd'
c.andi x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 128)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000 # initialize rd'
c.andi x10, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 132)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000 # initialize rd'
c.andi x12, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 136)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000 # initialize rd'
c.andi x12, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 140)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000 # initialize rd'
c.andi x10, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000 # initialize rd'
c.andi x11, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 148)

# Testcase cr_rs1_imm_corners
li x15, 0x00000001 # initialize rd'
c.andi x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cr_rs1_imm_corners
li x11, 0x00000001 # initialize rd'
c.andi x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 156)

# Testcase cr_rs1_imm_corners
li x14, 0x00000001 # initialize rd'
c.andi x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 160)

# Testcase cr_rs1_imm_corners
li x12, 0x00000001 # initialize rd'
c.andi x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 164)

# Testcase cr_rs1_imm_corners
li x12, 0x00000001 # initialize rd'
c.andi x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd'
c.andi x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 172)

# Testcase cr_rs1_imm_corners
li x10, 0x00000001 # initialize rd'
c.andi x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 176)

# Testcase cr_rs1_imm_corners
li x12, 0x00000001 # initialize rd'
c.andi x12, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 180)

# Testcase cr_rs1_imm_corners
li x8, 0x00000001 # initialize rd'
c.andi x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 184)

# Testcase cr_rs1_imm_corners
li x10, 0x00000001 # initialize rd'
c.andi x10, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 188)

# Testcase cr_rs1_imm_corners
li x8, 0x00000001 # initialize rd'
c.andi x8, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cr_rs1_imm_corners
li x14, 0x00000001 # initialize rd'
c.andi x14, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 196)

# Testcase cr_rs1_imm_corners
li x11, 0x00000001 # initialize rd'
c.andi x11, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cr_rs1_imm_corners
li x12, 0x00000002 # initialize rd'
c.andi x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 204)

# Testcase cr_rs1_imm_corners
li x10, 0x00000002 # initialize rd'
c.andi x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cr_rs1_imm_corners
li x15, 0x00000002 # initialize rd'
c.andi x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 212)

# Testcase cr_rs1_imm_corners
li x15, 0x00000002 # initialize rd'
c.andi x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd'
c.andi x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 220)

# Testcase cr_rs1_imm_corners
li x15, 0x00000002 # initialize rd'
c.andi x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 224)

# Testcase cr_rs1_imm_corners
li x14, 0x00000002 # initialize rd'
c.andi x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 228)

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd'
c.andi x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cr_rs1_imm_corners
li x12, 0x00000002 # initialize rd'
c.andi x12, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 236)

# Testcase cr_rs1_imm_corners
li x15, 0x00000002 # initialize rd'
c.andi x15, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 240)

# Testcase cr_rs1_imm_corners
li x11, 0x00000002 # initialize rd'
c.andi x11, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 244)

# Testcase cr_rs1_imm_corners
li x15, 0x00000002 # initialize rd'
c.andi x15, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

# Testcase cr_rs1_imm_corners
li x9, 0x00000002 # initialize rd'
c.andi x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 252)

# Testcase cr_rs1_imm_corners
li x11, 0x80000000 # initialize rd'
c.andi x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cr_rs1_imm_corners
li x11, 0x80000000 # initialize rd'
c.andi x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 260)

# Testcase cr_rs1_imm_corners
li x10, 0x80000000 # initialize rd'
c.andi x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 264)

# Testcase cr_rs1_imm_corners
li x11, 0x80000000 # initialize rd'
c.andi x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 268)

# Testcase cr_rs1_imm_corners
li x12, 0x80000000 # initialize rd'
c.andi x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cr_rs1_imm_corners
li x9, 0x80000000 # initialize rd'
c.andi x9, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 276)

# Testcase cr_rs1_imm_corners
li x15, 0x80000000 # initialize rd'
c.andi x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 280)

# Testcase cr_rs1_imm_corners
li x10, 0x80000000 # initialize rd'
c.andi x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 284)

# Testcase cr_rs1_imm_corners
li x14, 0x80000000 # initialize rd'
c.andi x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 288)

# Testcase cr_rs1_imm_corners
li x12, 0x80000000 # initialize rd'
c.andi x12, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 292)

# Testcase cr_rs1_imm_corners
li x11, 0x80000000 # initialize rd'
c.andi x11, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cr_rs1_imm_corners
li x11, 0x80000000 # initialize rd'
c.andi x11, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cr_rs1_imm_corners
li x9, 0x80000000 # initialize rd'
c.andi x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 304)

# Testcase cr_rs1_imm_corners
li x9, 0x80000001 # initialize rd'
c.andi x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 308)

# Testcase cr_rs1_imm_corners
li x12, 0x80000001 # initialize rd'
c.andi x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 312)

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd'
c.andi x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 316)

# Testcase cr_rs1_imm_corners
li x10, 0x80000001 # initialize rd'
c.andi x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cr_rs1_imm_corners
li x10, 0x80000001 # initialize rd'
c.andi x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 324)

# Testcase cr_rs1_imm_corners
li x8, 0x80000001 # initialize rd'
c.andi x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 328)

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd'
c.andi x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 332)

# Testcase cr_rs1_imm_corners
li x14, 0x80000001 # initialize rd'
c.andi x14, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 336)

# Testcase cr_rs1_imm_corners
li x14, 0x80000001 # initialize rd'
c.andi x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 340)

# Testcase cr_rs1_imm_corners
li x12, 0x80000001 # initialize rd'
c.andi x12, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 344)

# Testcase cr_rs1_imm_corners
li x14, 0x80000001 # initialize rd'
c.andi x14, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 348)

# Testcase cr_rs1_imm_corners
li x9, 0x80000001 # initialize rd'
c.andi x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 352)

# Testcase cr_rs1_imm_corners
li x14, 0x80000001 # initialize rd'
c.andi x14, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 356)

# Testcase cr_rs1_imm_corners
li x11, 0x7fffffff # initialize rd'
c.andi x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd'
c.andi x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 364)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd'
c.andi x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 368)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffff # initialize rd'
c.andi x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 372)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffff # initialize rd'
c.andi x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 376)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffff # initialize rd'
c.andi x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 380)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffff # initialize rd'
c.andi x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 384)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffff # initialize rd'
c.andi x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 388)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd'
c.andi x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 392)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd'
c.andi x13, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 396)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffff # initialize rd'
c.andi x12, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 400)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffff # initialize rd'
c.andi x8, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 404)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffff # initialize rd'
c.andi x12, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 408)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd'
c.andi x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 412)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffe # initialize rd'
c.andi x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 416)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffe # initialize rd'
c.andi x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 420)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffe # initialize rd'
c.andi x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 424)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffe # initialize rd'
c.andi x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 428)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd'
c.andi x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 432)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffe # initialize rd'
c.andi x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 436)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd'
c.andi x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 440)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffe # initialize rd'
c.andi x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 444)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffe # initialize rd'
c.andi x8, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 448)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffe # initialize rd'
c.andi x15, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 452)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd'
c.andi x13, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffe # initialize rd'
c.andi x11, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 460)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff # initialize rd'
c.andi x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 464)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffff # initialize rd'
c.andi x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 468)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd'
c.andi x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 472)

# Testcase cr_rs1_imm_corners
li x15, 0xffffffff # initialize rd'
c.andi x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 476)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff # initialize rd'
c.andi x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 480)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd'
c.andi x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 484)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff # initialize rd'
c.andi x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 488)

# Testcase cr_rs1_imm_corners
li x15, 0xffffffff # initialize rd'
c.andi x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 492)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff # initialize rd'
c.andi x12, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 496)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff # initialize rd'
c.andi x12, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 500)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff # initialize rd'
c.andi x12, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffff # initialize rd'
c.andi x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 508)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffff # initialize rd'
c.andi x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 512)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffe # initialize rd'
c.andi x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 516)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffe # initialize rd'
c.andi x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 520)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffe # initialize rd'
c.andi x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 524)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffe # initialize rd'
c.andi x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 528)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffe # initialize rd'
c.andi x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 532)

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd'
c.andi x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 536)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffe # initialize rd'
c.andi x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 540)

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd'
c.andi x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 544)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffe # initialize rd'
c.andi x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 548)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffe # initialize rd'
c.andi x8, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 552)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffe # initialize rd'
c.andi x14, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 556)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffe # initialize rd'
c.andi x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 560)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffe # initialize rd'
c.andi x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 564)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc8872 # initialize rd'
c.andi x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 568)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc8872 # initialize rd'
c.andi x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 572)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc8872 # initialize rd'
c.andi x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 576)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc8872 # initialize rd'
c.andi x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 580)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc8872 # initialize rd'
c.andi x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 584)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc8872 # initialize rd'
c.andi x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 588)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc8872 # initialize rd'
c.andi x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc8872 # initialize rd'
c.andi x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 596)

# Testcase cr_rs1_imm_corners
li x12, 0x5bbc8872 # initialize rd'
c.andi x12, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc8872 # initialize rd'
c.andi x15, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 604)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc8872 # initialize rd'
c.andi x10, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 608)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc8872 # initialize rd'
c.andi x11, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 612)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc8872 # initialize rd'
c.andi x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 616)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaa # initialize rd'
c.andi x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 620)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaa # initialize rd'
c.andi x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaa # initialize rd'
c.andi x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 628)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaa # initialize rd'
c.andi x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 632)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaa # initialize rd'
c.andi x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 636)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaa # initialize rd'
c.andi x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaa # initialize rd'
c.andi x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 644)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaa # initialize rd'
c.andi x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 648)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaa # initialize rd'
c.andi x10, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 652)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaa # initialize rd'
c.andi x12, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 656)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaa # initialize rd'
c.andi x12, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 660)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaa # initialize rd'
c.andi x15, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 664)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaa # initialize rd'
c.andi x8, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 668)

# Testcase cr_rs1_imm_corners
li x9, 0x55555555 # initialize rd'
c.andi x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 672)

# Testcase cr_rs1_imm_corners
li x14, 0x55555555 # initialize rd'
c.andi x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 676)

# Testcase cr_rs1_imm_corners
li x10, 0x55555555 # initialize rd'
c.andi x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 680)

# Testcase cr_rs1_imm_corners
li x11, 0x55555555 # initialize rd'
c.andi x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 684)

# Testcase cr_rs1_imm_corners
li x11, 0x55555555 # initialize rd'
c.andi x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 688)

# Testcase cr_rs1_imm_corners
li x15, 0x55555555 # initialize rd'
c.andi x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 692)

# Testcase cr_rs1_imm_corners
li x11, 0x55555555 # initialize rd'
c.andi x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 696)

# Testcase cr_rs1_imm_corners
li x8, 0x55555555 # initialize rd'
c.andi x8, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 700)

# Testcase cr_rs1_imm_corners
li x15, 0x55555555 # initialize rd'
c.andi x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 704)

# Testcase cr_rs1_imm_corners
li x12, 0x55555555 # initialize rd'
c.andi x12, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 708)

# Testcase cr_rs1_imm_corners
li x9, 0x55555555 # initialize rd'
c.andi x9, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cr_rs1_imm_corners
li x15, 0x55555555 # initialize rd'
c.andi x15, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 716)

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd'
c.andi x13, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xebb9d73b # initialize rd'
c.andi x8, -11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 724)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x790d355c # initialize rd'
c.andi x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x596c74eb # initialize rd'
c.andi x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 732)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xef5e057c # initialize rd'
c.andi x11, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x4e0fe776 # initialize rd'
c.andi x12, -30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 740)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x7c1724dc # initialize rd'
c.andi x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x9ebec93e # initialize rd'
c.andi x14, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 748)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xce9a47f4 # initialize rd'
c.andi x15, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 752)

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0x6ece960f # initialize rd'
c.andi x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 756)

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x6ec06bba # initialize rd'
c.andi x14, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 760)

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0xa5101c2a # initialize rd'
c.andi x9, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 764)

# Testcase cp_rs1 (Test source rs1 = x11)
li x12, 0x9c8cb0db # initialize rd'
c.andi x12, -22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 768)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0x4b4c8a17 # initialize rd'
c.andi x15, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 772)

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0x1e22430d # initialize rd'
c.andi x8, -4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 776)

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0x8938cbed # initialize rd'
c.andi x9, -16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 780)

# Testcase cp_rs1 (Test source rs1 = x15)
li x11, 0xa45506be # initialize rd'
c.andi x11, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 784)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x5ec0ae40 # initialize rd'
c.andi x8, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 788)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xd2209e4f # initialize rd'
c.andi x9, -10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 792)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xfef60d59 # initialize rd'
c.andi x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 796)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xf7aa51de # initialize rd'
c.andi x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x4810ab8a # initialize rd'
c.andi x12, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 804)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb5711cd2 # initialize rd'
c.andi x13, -24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 808)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x5eaebd78 # initialize rd'
c.andi x14, -20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 812)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xcef02fce # initialize rd'
c.andi x15, -27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 816)

.EQU SIGSIZE,820


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
