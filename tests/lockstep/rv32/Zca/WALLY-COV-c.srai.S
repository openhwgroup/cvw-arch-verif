///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.srai.S
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
li x12, 0x00000000
c.srai x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x14, 0x00000001
c.srai x14, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x13, 0x00000002
c.srai x13, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x14, 0x80000000
c.srai x14, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x10, 0x80000001
c.srai x10, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x9, 0x7fffffff
c.srai x9, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x9, 0x7ffffffe
c.srai x9, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0xffffffff
c.srai x12, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0xfffffffe
c.srai x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x15, 0x5bbc8872
c.srai x15, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x11, 0xaaaaaaaa
c.srai x11, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x15, 0x55555555
c.srai x15, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 44)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000
c.srai x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 48)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000
c.srai x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 52)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000
c.srai x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000
c.srai x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000
c.srai x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000
c.srai x8, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 68)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000
c.srai x15, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000
c.srai x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 76)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000
c.srai x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000
c.srai x12, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 84)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000
c.srai x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cr_rs1_imm_corners
li x11, 0x00000001
c.srai x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 92)

# Testcase cr_rs1_imm_corners
li x14, 0x00000001
c.srai x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cr_rs1_imm_corners
li x9, 0x00000001
c.srai x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 100)

# Testcase cr_rs1_imm_corners
li x8, 0x00000001
c.srai x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cr_rs1_imm_corners
li x9, 0x00000001
c.srai x9, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 108)

# Testcase cr_rs1_imm_corners
li x9, 0x00000001
c.srai x9, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cr_rs1_imm_corners
li x14, 0x00000001
c.srai x14, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 116)

# Testcase cr_rs1_imm_corners
li x10, 0x00000001
c.srai x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cr_rs1_imm_corners
li x9, 0x00000001
c.srai x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 124)

# Testcase cr_rs1_imm_corners
li x15, 0x00000001
c.srai x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 128)

# Testcase cr_rs1_imm_corners
li x15, 0x00000001
c.srai x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 132)

# Testcase cr_rs1_imm_corners
li x8, 0x00000002
c.srai x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 136)

# Testcase cr_rs1_imm_corners
li x13, 0x00000002
c.srai x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 140)

# Testcase cr_rs1_imm_corners
li x13, 0x00000002
c.srai x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cr_rs1_imm_corners
li x14, 0x00000002
c.srai x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 148)

# Testcase cr_rs1_imm_corners
li x11, 0x00000002
c.srai x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cr_rs1_imm_corners
li x12, 0x00000002
c.srai x12, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 156)

# Testcase cr_rs1_imm_corners
li x15, 0x00000002
c.srai x15, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cr_rs1_imm_corners
li x8, 0x00000002
c.srai x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 164)

# Testcase cr_rs1_imm_corners
li x9, 0x00000002
c.srai x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 168)

# Testcase cr_rs1_imm_corners
li x10, 0x00000002
c.srai x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 172)

# Testcase cr_rs1_imm_corners
li x8, 0x00000002
c.srai x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 176)

# Testcase cr_rs1_imm_corners
li x9, 0x80000000
c.srai x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 180)

# Testcase cr_rs1_imm_corners
li x11, 0x80000000
c.srai x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cr_rs1_imm_corners
li x12, 0x80000000
c.srai x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 188)

# Testcase cr_rs1_imm_corners
li x13, 0x80000000
c.srai x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 192)

# Testcase cr_rs1_imm_corners
li x10, 0x80000000
c.srai x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 196)

# Testcase cr_rs1_imm_corners
li x12, 0x80000000
c.srai x12, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cr_rs1_imm_corners
li x13, 0x80000000
c.srai x13, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 204)

# Testcase cr_rs1_imm_corners
li x11, 0x80000000
c.srai x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 208)

# Testcase cr_rs1_imm_corners
li x9, 0x80000000
c.srai x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 212)

# Testcase cr_rs1_imm_corners
li x10, 0x80000000
c.srai x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 216)

# Testcase cr_rs1_imm_corners
li x14, 0x80000000
c.srai x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 220)

# Testcase cr_rs1_imm_corners
li x8, 0x80000001
c.srai x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cr_rs1_imm_corners
li x9, 0x80000001
c.srai x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 228)

# Testcase cr_rs1_imm_corners
li x11, 0x80000001
c.srai x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 232)

# Testcase cr_rs1_imm_corners
li x8, 0x80000001
c.srai x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 236)

# Testcase cr_rs1_imm_corners
li x13, 0x80000001
c.srai x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 240)

# Testcase cr_rs1_imm_corners
li x11, 0x80000001
c.srai x11, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 244)

# Testcase cr_rs1_imm_corners
li x13, 0x80000001
c.srai x13, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cr_rs1_imm_corners
li x12, 0x80000001
c.srai x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 252)

# Testcase cr_rs1_imm_corners
li x9, 0x80000001
c.srai x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 256)

# Testcase cr_rs1_imm_corners
li x15, 0x80000001
c.srai x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 260)

# Testcase cr_rs1_imm_corners
li x9, 0x80000001
c.srai x9, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 264)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffff
c.srai x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 268)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffff
c.srai x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 272)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffff
c.srai x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 276)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffff
c.srai x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 280)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffff
c.srai x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 284)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffff
c.srai x14, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 288)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff
c.srai x13, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 292)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffff
c.srai x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 296)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffff
c.srai x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 300)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffff
c.srai x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 304)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffff
c.srai x12, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 308)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffe
c.srai x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffe
c.srai x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffe
c.srai x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffe
c.srai x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 324)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffe
c.srai x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffe
c.srai x8, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 332)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe
c.srai x13, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 336)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffe
c.srai x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 340)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffe
c.srai x8, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 344)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffe
c.srai x8, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 348)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffe
c.srai x10, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cr_rs1_imm_corners
li x11, 0xffffffff
c.srai x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 356)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffff
c.srai x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff
c.srai x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 364)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffff
c.srai x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 368)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff
c.srai x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 372)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffff
c.srai x9, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 376)

# Testcase cr_rs1_imm_corners
li x11, 0xffffffff
c.srai x11, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 380)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff
c.srai x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 384)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff
c.srai x12, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 388)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffff
c.srai x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 392)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff
c.srai x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 396)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffe
c.srai x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 400)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffe
c.srai x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 404)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffe
c.srai x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffe
c.srai x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 412)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffe
c.srai x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 416)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffe
c.srai x15, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 420)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffe
c.srai x12, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 424)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffe
c.srai x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 428)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffe
c.srai x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffe
c.srai x12, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 436)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffe
c.srai x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 440)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8872
c.srai x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 444)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc8872
c.srai x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 448)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc8872
c.srai x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 452)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc8872
c.srai x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 456)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc8872
c.srai x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 460)

# Testcase cr_rs1_imm_corners
li x12, 0x5bbc8872
c.srai x12, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 464)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc8872
c.srai x15, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 468)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc8872
c.srai x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 472)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc8872
c.srai x8, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 476)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc8872
c.srai x14, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc8872
c.srai x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 484)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaa
c.srai x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaa
c.srai x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 492)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaa
c.srai x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 496)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaa
c.srai x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 500)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaa
c.srai x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 504)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaa
c.srai x11, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 508)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaa
c.srai x15, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 512)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaa
c.srai x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 516)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaa
c.srai x12, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 520)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa
c.srai x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 524)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaa
c.srai x12, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 528)

# Testcase cr_rs1_imm_corners
li x9, 0x55555555
c.srai x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 532)

# Testcase cr_rs1_imm_corners
li x11, 0x55555555
c.srai x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cr_rs1_imm_corners
li x13, 0x55555555
c.srai x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 540)

# Testcase cr_rs1_imm_corners
li x10, 0x55555555
c.srai x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cr_rs1_imm_corners
li x8, 0x55555555
c.srai x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 548)

# Testcase cr_rs1_imm_corners
li x13, 0x55555555
c.srai x13, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cr_rs1_imm_corners
li x13, 0x55555555
c.srai x13, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 556)

# Testcase cr_rs1_imm_corners
li x8, 0x55555555
c.srai x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cr_rs1_imm_corners
li x9, 0x55555555
c.srai x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 564)

# Testcase cr_rs1_imm_corners
li x11, 0x55555555
c.srai x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 568)

# Testcase cr_rs1_imm_corners
li x12, 0x55555555
c.srai x12, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 572)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x15347770
c.srai x8, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x57626b7f
c.srai x9, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 580)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x90d0c20c
c.srai x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x68a61892
c.srai x11, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 588)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x35c76cc1
c.srai x12, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xde22c066
c.srai x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 596)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xae36a4ab
c.srai x14, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x820dc4c4
c.srai x15, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 604)

# Testcase cp_uimm (Test bit = 0)
li x14, 0x3130a5b0
c.srai x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cp_uimm (Test bit = 1)
li x10, 0x3e53d68c
c.srai x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 612)

# Testcase cp_uimm (Test bit = 2)
li x10, 0x8adc5570
c.srai x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 616)

# Testcase cp_uimm (Test bit = 3)
li x13, 0xa448ed37
c.srai x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 620)

# Testcase cp_uimm (Test bit = 4)
li x12, 0xc104112a
c.srai x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 624)

# Testcase cp_uimm (Test bit = 5)
li x8, 0x382aac3e
c.srai x8, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 628)

# Testcase cp_uimm (Test bit = 6)
li x8, 0x4bd5b32e
c.srai x8, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 632)

# Testcase cp_uimm (Test bit = 7)
li x8, 0x5c9a937a
c.srai x8, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 636)

# Testcase cp_uimm (Test bit = 8)
li x10, 0x40143c9c
c.srai x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cp_uimm (Test bit = 9)
li x10, 0x3e3c83cd
c.srai x10, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 644)

# Testcase cp_uimm (Test bit = 10)
li x14, 0xa3b8cd95
c.srai x14, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 648)

# Testcase cp_uimm (Test bit = 11)
li x8, 0x70e60228
c.srai x8, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 652)

# Testcase cp_uimm (Test bit = 12)
li x14, 0xdfe5f232
c.srai x14, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 656)

# Testcase cp_uimm (Test bit = 13)
li x11, 0xc44d0d5f
c.srai x11, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 660)

# Testcase cp_uimm (Test bit = 14)
li x9, 0xf3d47f03
c.srai x9, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 664)

# Testcase cp_uimm (Test bit = 15)
li x8, 0x229099f8
c.srai x8, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 668)

# Testcase cp_uimm (Test bit = 16)
li x9, 0x39ecdb58
c.srai x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 672)

# Testcase cp_uimm (Test bit = 17)
li x8, 0x7818b2b5
c.srai x8, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 676)

# Testcase cp_uimm (Test bit = 18)
li x11, 0x00c0e033
c.srai x11, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 680)

# Testcase cp_uimm (Test bit = 19)
li x15, 0x80a97642
c.srai x15, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 684)

# Testcase cp_uimm (Test bit = 20)
li x15, 0xca5ff1aa
c.srai x15, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 688)

# Testcase cp_uimm (Test bit = 21)
li x15, 0xf7339cc4
c.srai x15, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 692)

# Testcase cp_uimm (Test bit = 22)
li x12, 0x13067af8
c.srai x12, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 696)

# Testcase cp_uimm (Test bit = 23)
li x13, 0x746626c9
c.srai x13, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 700)

# Testcase cp_uimm (Test bit = 24)
li x11, 0x1160f87b
c.srai x11, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 704)

# Testcase cp_uimm (Test bit = 25)
li x12, 0x853e3c94
c.srai x12, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 708)

# Testcase cp_uimm (Test bit = 26)
li x14, 0x36e8e87b
c.srai x14, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 712)

# Testcase cp_uimm (Test bit = 27)
li x8, 0x104b8026
c.srai x8, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 716)

# Testcase cp_uimm (Test bit = 28)
li x10, 0x8d4b9934
c.srai x10, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cp_uimm (Test bit = 29)
li x10, 0x62a43cdc
c.srai x10, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 724)

# Testcase cp_uimm (Test bit = 30)
li x15, 0x094e65fa
c.srai x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 728)

# Testcase cp_uimm (Test bit = 31)
li x8, 0x1a0c203a
c.srai x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 732)

# Testcase cp_rs1 (Test source rs1 = x8)
li x15, 0xf0501e8b
c.srai x15, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cp_rs1 (Test source rs1 = x9)
li x13, 0x51dc3148
c.srai x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 740)

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0x1f458471
c.srai x15, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 744)

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x6eb06289
c.srai x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 748)

# Testcase cp_rs1 (Test source rs1 = x12)
li x8, 0x4815d98c
c.srai x8, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 752)

# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0x30a3d3d7
c.srai x10, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 756)

# Testcase cp_rs1 (Test source rs1 = x14)
li x12, 0x4af61f92
c.srai x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 760)

# Testcase cp_rs1 (Test source rs1 = x15)
li x13, 0xadf33864
c.srai x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 764)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x493ac6f4
c.srai x8, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 768)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xd9acfc51
c.srai x9, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 772)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x5b7d697a
c.srai x10, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 776)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xab6470fb
c.srai x11, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 780)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x8b4b6389
c.srai x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 784)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x3104f726
c.srai x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 788)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x7c4ee845
c.srai x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 792)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf1bec634
c.srai x15, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 796)

.EQU SIGSIZE,800


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
