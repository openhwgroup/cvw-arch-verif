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

    

// ******************
// Tests from: WALLY-COV-c.srai.S
// ******************


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

#.EQU SIGSIZE,800


// ******************
// Tests from: WALLY-COV-c.slli.S
// ******************


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

#.EQU SIGSIZE,828


// ******************
// Tests from: WALLY-COV-c.bnez.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x00000000 # initialize rs1
c.bnez x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x15, 0x00000001 # initialize rs1
c.bnez x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0x00000002 # initialize rs1
c.bnez x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x11, 0x80000000 # initialize rs1
c.bnez x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x14, 0x80000001 # initialize rs1
c.bnez x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x10, 0x7fffffff # initialize rs1
c.bnez x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs1
c.bnez x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0xffffffff # initialize rs1
c.bnez x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x11, 0xfffffffe # initialize rs1
c.bnez x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x9, 0x5bbc8872 # initialize rs1
c.bnez x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # initialize rs1
c.bnez x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x14, 0x55555555 # initialize rs1
c.bnez x14, 1f # perform operation
nop
nop
1:

# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: li x8, 1 # initialize rs1 to 1
c.bnez x8,  1b # backward branch
3: nop # done with sequence

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x7261d534 # initialize rs1
c.bnez x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x34824e50 # initialize rs1
c.bnez x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x988d659c # initialize rs1
c.bnez x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xc518f642 # initialize rs1
c.bnez x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xb0058df1 # initialize rs1
c.bnez x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x5542b847 # initialize rs1
c.bnez x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x2c156d0c # initialize rs1
c.bnez x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xb141c465 # initialize rs1
c.bnez x15, 1f # perform operation
nop
nop
1:

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.mv.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xe51df0a2
c.mv x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x323eb48e
c.mv x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 4)

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x25f255cf
c.mv x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x20045c8c
c.mv x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 12)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x4, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5a75aca5
c.mv x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cp_rs2 (Test source rs2 = x6)
li x6, 0x08fa0549
c.mv x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 20)

# Testcase cp_rs2 (Test source rs2 = x7)
li x7, 0xcb6b90d8
c.mv x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 24)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x1423eedf
c.mv x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 28)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x8f8eeeb9
c.mv x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 32)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x7bb893dd
c.mv x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 36)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x640408db
c.mv x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x90bad968
c.mv x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 44)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x59d4b064
c.mv x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 48)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x987e1b0b
c.mv x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 52)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xa4d79e43
c.mv x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xa751ba56
c.mv x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 60)

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x4617b78c
c.mv x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x5415534a
c.mv x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 68)

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x418119af
c.mv x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x92e849f5
c.mv x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 76)

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0xffdb5ce5
c.mv x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x70c5900a
c.mv x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 84)

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x99165f99
c.mv x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x9a45b50a
c.mv x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 92)

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xe3ad313c
c.mv x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x117c07c5
c.mv x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 100)

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x39bbe7c9
c.mv x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xf8edd98e
c.mv x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 108)

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x07dfbea0
c.mv x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x03eac1d9
c.mv x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 116)

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x822f2a53
c.mv x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cp_rd (Test destination rd = x1)
li x7, 0x243be7ee
c.mv x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 124)

# Testcase cp_rd (Test destination rd = x2)
li x15, 0x83695468
c.mv x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_rd (Test destination rd = x3)
li x7, 0x8d202356
c.mv x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 132)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0xe7436e11
c.mv x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 136)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x893e8f51
c.mv x5, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 140)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0xdc2ac252
c.mv x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 144)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x20, 0xd6d1ee33
c.mv x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 148)

# Testcase cp_rd (Test destination rd = x8)
li x23, 0xbc18542a
c.mv x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 152)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0xad94a9fe
c.mv x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 156)

# Testcase cp_rd (Test destination rd = x10)
li x8, 0x67d39a94
c.mv x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cp_rd (Test destination rd = x11)
li x30, 0x4697e57d
c.mv x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 164)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x9a0b8b8c
c.mv x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_rd (Test destination rd = x13)
li x24, 0x5f2f4a62
c.mv x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 172)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x039ffdc0
c.mv x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0x41edae8f
c.mv x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 180)

# Testcase cp_rd (Test destination rd = x16)
li x14, 0x93eeaf24
c.mv x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 184)

# Testcase cp_rd (Test destination rd = x17)
li x13, 0xc7c3fd8d
c.mv x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 188)

# Testcase cp_rd (Test destination rd = x18)
li x11, 0xdc5adc83
c.mv x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 192)

# Testcase cp_rd (Test destination rd = x19)
li x30, 0x50393f02
c.mv x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 196)

# Testcase cp_rd (Test destination rd = x20)
li x1, 0x111a7d5c
c.mv x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0x5fd0e32b
c.mv x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 204)

# Testcase cp_rd (Test destination rd = x22)
li x18, 0x5fa40b35
c.mv x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 208)

# Testcase cp_rd (Test destination rd = x23)
li x5, 0xd6489287
c.mv x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 212)

# Testcase cp_rd (Test destination rd = x24)
li x26, 0xa17cda0f
c.mv x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 216)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x32d9ec18
c.mv x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 220)

# Testcase cp_rd (Test destination rd = x26)
li x20, 0xcaa09a8c
c.mv x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rd (Test destination rd = x27)
li x3, 0x870de3ab
c.mv x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 228)

# Testcase cp_rd (Test destination rd = x28)
li x26, 0xd1deff5f
c.mv x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cp_rd (Test destination rd = x29)
li x25, 0xddeeba4a
c.mv x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 236)

# Testcase cp_rd (Test destination rd = x30)
li x3, 0x3f4c7f69
c.mv x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
li x1, 0x13a0b641
c.mv x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 244)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0x00000000
c.mv x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 248)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x7, 0x00000001
c.mv x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 252)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x26, 0x00000002
c.mv x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 256)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x8, 0x80000000
c.mv x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 260)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x14, 0x80000001
c.mv x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 264)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x7, 0x7fffffff
c.mv x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 268)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x17, 0x7ffffffe
c.mv x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 272)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0xffffffff
c.mv x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 276)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x31, 0xfffffffe
c.mv x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 280)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x20, 0x5bbc8872
c.mv x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 284)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x10, 0xaaaaaaaa
c.mv x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 288)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x2, 0x55555555
c.mv x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x80b0f7ab
c.mv x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 296)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0xa6861577
c.mv x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 300)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x53d23477
c.mv x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 304)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x92e05212
c.mv x4, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
li x5, 0xa2ac6c56
c.mv x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf5ba6810
c.mv x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdc07c046
c.mv x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x84273017
c.mv x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xcb7237ca
c.mv x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xdb419db1
c.mv x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xc26935b2
c.mv x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xb1e95d4c
c.mv x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xff7880c4
c.mv x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x6a0d4a6a
c.mv x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x424c333a
c.mv x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xa9096844
c.mv x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x0513772a
c.mv x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x91152725
c.mv x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0xa330f4ec
c.mv x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x5524025b
c.mv x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x8659ea08
c.mv x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x5398af58
c.mv x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x4fcb6021
c.mv x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0xae646244
c.mv x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x1dc1f364
c.mv x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x143156da
c.mv x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x41add819
c.mv x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x33ccb99d
c.mv x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0xa966c4bc
c.mv x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xf71fbc94
c.mv x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x037478ab
c.mv x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 416)

#.EQU SIGSIZE,420


// ******************
// Tests from: WALLY-COV-c.and.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x11, 0x083a894e # initialize rs2
li x15, 0x00000000 # initialize rd,rs1
c.and x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x8b17744f # initialize rs2
li x14, 0x00000001 # initialize rd,rs1
c.and x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x9, 0xf7e155c6 # initialize rs2
li x10, 0x00000002 # initialize rd,rs1
c.and x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x13, 0xf2af4d04 # initialize rs2
li x11, 0x80000000 # initialize rd,rs1
c.and x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x13, 0xc7f2121e # initialize rs2
li x15, 0x80000001 # initialize rd,rs1
c.and x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x13, 0xd1921303 # initialize rs2
li x9, 0x7fffffff # initialize rd,rs1
c.and x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x14, 0xdd918757 # initialize rs2
li x12, 0x7ffffffe # initialize rd,rs1
c.and x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0x1035e42f # initialize rs2
li x12, 0xffffffff # initialize rd,rs1
c.and x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0x5e164a4d # initialize rs2
li x13, 0xfffffffe # initialize rd,rs1
c.and x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x15, 0x0c59405f # initialize rs2
li x13, 0x5bbc8872 # initialize rd,rs1
c.and x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x15, 0x718a6e3c # initialize rs2
li x11, 0xaaaaaaaa # initialize rd,rs1
c.and x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x15, 0x84fd7328 # initialize rs2
li x12, 0x55555555 # initialize rd,rs1
c.and x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x13, 0x00000000 # initialize rs2
li x14, 0x53757c64 # initialize rd,rs1
c.and x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x13, 0x00000001 # initialize rs2
li x9, 0xacf11052 # initialize rd,rs1
c.and x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 52)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0x00000002 # initialize rs2
li x11, 0xb195d527 # initialize rd,rs1
c.and x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x8, 0x80000000 # initialize rs2
li x11, 0x8ed2735f # initialize rd,rs1
c.and x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 60)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x13, 0x80000001 # initialize rs2
li x9, 0x7c0cbfa3 # initialize rd,rs1
c.and x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x9, 0x7fffffff # initialize rs2
li x15, 0x107fbd59 # initialize rd,rs1
c.and x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 68)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x9, 0x7ffffffe # initialize rs2
li x12, 0x6882f0a1 # initialize rd,rs1
c.and x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0xffffffff # initialize rs2
li x9, 0x28032d7d # initialize rd,rs1
c.and x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 76)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0xfffffffe # initialize rs2
li x10, 0x9d3595ee # initialize rd,rs1
c.and x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x9, 0x5bbc8872 # initialize rs2
li x15, 0xce8a1659 # initialize rd,rs1
c.and x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 84)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x11, 0xaaaaaaaa # initialize rs2
li x10, 0x7f08f6d4 # initialize rd,rs1
c.and x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x10, 0x55555555 # initialize rs2
li x9, 0xccc8ae22 # initialize rd,rs1
c.and x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 92)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xd459bb84 # initialize rs2
li x11, 0xc2d2dac2 # initialize rd,rs1
c.and x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x96fc0e3d # initialize rs2
li x10, 0x1b6a9150 # initialize rd,rs1
c.and x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x9fdeb39f # initialize rs2
li x8, 0x5e78da9c # initialize rd,rs1
c.and x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xcd4befcd # initialize rs2
li x11, 0xd61f58a1 # initialize rd,rs1
c.and x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xb6fa2c8f # initialize rs2
li x10, 0x08ffd399 # initialize rd,rs1
c.and x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x5ef4caf9 # initialize rs2
li x8, 0x846a85d8 # initialize rd,rs1
c.and x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xf9af6be4 # initialize rs2
li x9, 0x6bebbba0 # initialize rd,rs1
c.and x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x3e4248d8 # initialize rs2
li x14, 0x9d4bb464 # initialize rd,rs1
c.and x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 124)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x184dd24e # initialize rs2
li x8, 0xdc3ceef8 # initialize rd,rs1
c.and x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x72736529 # initialize rs2
li x9, 0x8e5e22ab # initialize rd,rs1
c.and x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 132)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x5d684030 # initialize rs2
li x10, 0x095b1658 # initialize rd,rs1
c.and x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x2a224c9e # initialize rs2
li x11, 0x9a31c05c # initialize rd,rs1
c.and x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 140)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x2c5aac0f # initialize rs2
li x12, 0xdb487a35 # initialize rd,rs1
c.and x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x68f27f3e # initialize rs2
li x13, 0x40e956bc # initialize rd,rs1
c.and x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 148)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x5ec53adb # initialize rs2
li x14, 0xf43478e6 # initialize rd,rs1
c.and x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x48cdfb92 # initialize rs2
li x15, 0x8b4d0c15 # initialize rd,rs1
c.and x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 156)

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0x2a6ebd95 # initialize rs2
li x15, 0x2f23bdcf # initialize rd,rs1
c.and x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0xf1249c62 # initialize rs2
li x14, 0x646eaa0b # initialize rd,rs1
c.and x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 164)

# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0x26902356 # initialize rs2
li x15, 0x12a358ea # initialize rd,rs1
c.and x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 168)

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0xa431b24b # initialize rs2
li x12, 0x76b0a29f # initialize rd,rs1
c.and x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 172)

# Testcase cp_rs1 (Test source rs1 = x12)
li x9, 0x922019cd # initialize rs2
li x10, 0xb45ec5d8 # initialize rd,rs1
c.and x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 176)

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0xb2b80f13 # initialize rs2
li x14, 0x9fcc1d79 # initialize rd,rs1
c.and x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 180)

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0x0f1831dd # initialize rs2
li x9, 0x91af17ba # initialize rd,rs1
c.and x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cp_rs1 (Test source rs1 = x15)
li x13, 0x5c75de26 # initialize rs2
li x14, 0x399fc96b # initialize rd,rs1
c.and x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 188)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x2311a8c0 # initialize rs2
li x10, 0x953fc89f # initialize rd,rs1
c.and x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 192)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xa1a9026b # initialize rs2
li x15, 0x214af89b # initialize rd,rs1
c.and x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 196)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x045b6cec # initialize rs2
li x13, 0x07722bb8 # initialize rd,rs1
c.and x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 200)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x4aa64eee # initialize rs2
li x8, 0x48ac2ff3 # initialize rd,rs1
c.and x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 204)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x5ee2470c # initialize rs2
li x9, 0x71ea8556 # initialize rd,rs1
c.and x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 208)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xbca9dafe # initialize rs2
li x9, 0x0be0bc27 # initialize rd,rs1
c.and x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 212)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x6e99384d # initialize rs2
li x15, 0x44874154 # initialize rd,rs1
c.and x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xfd987239 # initialize rs2
li x12, 0x14f79398 # initialize rd,rs1
c.and x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 220)

# Testcase cp_rd (Test destination rd = x8)
li x12, 0x8f34ee81 # initialize rs2
li x8, 0x0b06356a # initialize rd,rs1
c.and x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0x6492ce0a # initialize rs2
li x9, 0xa228dfa5 # initialize rd,rs1
c.and x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 228)

# Testcase cp_rd (Test destination rd = x10)
li x15, 0xd8e8b8d4 # initialize rs2
li x10, 0xa5c74c24 # initialize rd,rs1
c.and x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_rd (Test destination rd = x11)
li x9, 0x0b9e259d # initialize rs2
li x11, 0xbbe749cc # initialize rd,rs1
c.and x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 236)

# Testcase cp_rd (Test destination rd = x12)
li x15, 0xb9a335a8 # initialize rs2
li x12, 0x22c960eb # initialize rd,rs1
c.and x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rd (Test destination rd = x13)
li x9, 0xdff71518 # initialize rs2
li x13, 0x5073d6bb # initialize rd,rs1
c.and x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 244)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0x72fe48e6 # initialize rs2
li x14, 0x2eb8b668 # initialize rd,rs1
c.and x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x2659dfbc # initialize rs2
li x15, 0x98826ece # initialize rd,rs1
c.and x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 252)

#.EQU SIGSIZE,256


// ******************
// Tests from: WALLY-COV-c.xor.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x9, 0xa1e40e43 # initialize rs2
li x10, 0x00000000 # initialize rd,rs1
c.xor x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x99ac9fae # initialize rs2
li x11, 0x00000001 # initialize rd,rs1
c.xor x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x74870f0e # initialize rs2
li x14, 0x00000002 # initialize rd,rs1
c.xor x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x11, 0xde7a1daf # initialize rs2
li x10, 0x80000000 # initialize rd,rs1
c.xor x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x11, 0x0ddcdbb0 # initialize rs2
li x12, 0x80000001 # initialize rd,rs1
c.xor x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x10, 0x7faa5cae # initialize rs2
li x9, 0x7fffffff # initialize rd,rs1
c.xor x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x13, 0xc9375cef # initialize rs2
li x8, 0x7ffffffe # initialize rd,rs1
c.xor x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0x40ea3898 # initialize rs2
li x10, 0xffffffff # initialize rd,rs1
c.xor x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0xa1ee173e # initialize rs2
li x11, 0xfffffffe # initialize rd,rs1
c.xor x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x11, 0xa0a248d0 # initialize rs2
li x14, 0x5bbc8872 # initialize rd,rs1
c.xor x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x8, 0x753d607b # initialize rs2
li x13, 0xaaaaaaaa # initialize rd,rs1
c.xor x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x10, 0x6b75edb6 # initialize rs2
li x9, 0x55555555 # initialize rd,rs1
c.xor x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 44)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x9, 0x00000000 # initialize rs2
li x8, 0xb2148168 # initialize rd,rs1
c.xor x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x15, 0x00000001 # initialize rs2
li x9, 0x53ef8e95 # initialize rd,rs1
c.xor x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 52)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x9, 0x00000002 # initialize rs2
li x11, 0xea91b183 # initialize rd,rs1
c.xor x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x11, 0x80000000 # initialize rs2
li x13, 0x62dc5f24 # initialize rd,rs1
c.xor x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 60)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x11, 0x80000001 # initialize rs2
li x13, 0x3bbbc5bb # initialize rd,rs1
c.xor x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x11, 0x7fffffff # initialize rs2
li x13, 0xa28473aa # initialize rd,rs1
c.xor x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 68)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x8, 0x7ffffffe # initialize rs2
li x15, 0x5d393361 # initialize rd,rs1
c.xor x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x9, 0xffffffff # initialize rs2
li x15, 0xc3af1f5f # initialize rd,rs1
c.xor x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 76)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x11, 0xfffffffe # initialize rs2
li x15, 0x08b220fe # initialize rd,rs1
c.xor x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x11, 0x5bbc8872 # initialize rs2
li x9, 0xa56530c2 # initialize rd,rs1
c.xor x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 84)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x14, 0xaaaaaaaa # initialize rs2
li x13, 0x10012311 # initialize rd,rs1
c.xor x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x8, 0x55555555 # initialize rs2
li x10, 0x841bb390 # initialize rd,rs1
c.xor x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 92)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xbe412018 # initialize rs2
li x11, 0x7d832a4b # initialize rd,rs1
c.xor x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xacc1d2a4 # initialize rs2
li x14, 0x1568a0cb # initialize rd,rs1
c.xor x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x3f634ae4 # initialize rs2
li x11, 0x5d1966cc # initialize rd,rs1
c.xor x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x82d9e913 # initialize rs2
li x8, 0x2a476dba # initialize rd,rs1
c.xor x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x4b66564e # initialize rs2
li x10, 0x462ade5a # initialize rd,rs1
c.xor x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x6b9090e8 # initialize rs2
li x14, 0xd70b8127 # initialize rd,rs1
c.xor x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x95f269c1 # initialize rs2
li x12, 0xed8b8117 # initialize rd,rs1
c.xor x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x2aa9602a # initialize rs2
li x14, 0x3423ecc1 # initialize rd,rs1
c.xor x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 124)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x97f964f1 # initialize rs2
li x8, 0x01da8046 # initialize rd,rs1
c.xor x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xebdb6bc6 # initialize rs2
li x9, 0x3b2dfc35 # initialize rd,rs1
c.xor x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 132)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xa44cbd05 # initialize rs2
li x10, 0x8409f64a # initialize rd,rs1
c.xor x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xc9c4f928 # initialize rs2
li x11, 0x83e45a49 # initialize rd,rs1
c.xor x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 140)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xc23e4d20 # initialize rs2
li x12, 0x61b8d87e # initialize rd,rs1
c.xor x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x4d91bcd7 # initialize rs2
li x13, 0x26981cca # initialize rd,rs1
c.xor x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 148)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x81df394f # initialize rs2
li x14, 0xfde221ea # initialize rd,rs1
c.xor x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xf560745a # initialize rs2
li x15, 0x092bb8ec # initialize rd,rs1
c.xor x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 156)

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0x35021da8 # initialize rs2
li x13, 0xa8c67e8d # initialize rd,rs1
c.xor x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 160)

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x3c04cbcb # initialize rs2
li x13, 0xcfd5e344 # initialize rd,rs1
c.xor x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 164)

# Testcase cp_rs1 (Test source rs1 = x10)
li x11, 0x18965078 # initialize rs2
li x8, 0x88c36ce0 # initialize rd,rs1
c.xor x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x8994e092 # initialize rs2
li x15, 0x24560c57 # initialize rd,rs1
c.xor x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 172)

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0xdd3c3213 # initialize rs2
li x8, 0x81e2231d # initialize rd,rs1
c.xor x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 176)

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0xc670079c # initialize rs2
li x11, 0x48f5e8b3 # initialize rd,rs1
c.xor x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 180)

# Testcase cp_rs1 (Test source rs1 = x14)
li x15, 0x55c30be1 # initialize rs2
li x11, 0x554bca39 # initialize rd,rs1
c.xor x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x59d83efb # initialize rs2
li x9, 0x60319bbf # initialize rd,rs1
c.xor x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 188)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x13263076 # initialize rs2
li x10, 0x8eb390e8 # initialize rd,rs1
c.xor x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 192)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x48406e25 # initialize rs2
li x14, 0xe1b3cca1 # initialize rd,rs1
c.xor x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 196)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xc701acfc # initialize rs2
li x8, 0x042d21af # initialize rd,rs1
c.xor x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x66af7082 # initialize rs2
li x12, 0x062ee755 # initialize rd,rs1
c.xor x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 204)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x8f8a3c2b # initialize rs2
li x9, 0xe580b66c # initialize rd,rs1
c.xor x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 208)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x1d69aa90 # initialize rs2
li x8, 0x7bca8042 # initialize rd,rs1
c.xor x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 212)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xe171ef77 # initialize rs2
li x12, 0xef99c051 # initialize rd,rs1
c.xor x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 216)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x88ced1dd # initialize rs2
li x12, 0x00ae5cbb # initialize rd,rs1
c.xor x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 220)

# Testcase cp_rd (Test destination rd = x8)
li x13, 0x8944a25b # initialize rs2
li x8, 0xc27d25b3 # initialize rd,rs1
c.xor x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rd (Test destination rd = x9)
li x13, 0x05fd8599 # initialize rs2
li x9, 0xbc463fcd # initialize rd,rs1
c.xor x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 228)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb40a58ca # initialize rs2
li x10, 0x3f79e8d6 # initialize rd,rs1
c.xor x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_rd (Test destination rd = x11)
li x15, 0xfdcf412e # initialize rs2
li x11, 0xe3095e93 # initialize rd,rs1
c.xor x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 236)

# Testcase cp_rd (Test destination rd = x12)
li x11, 0xe675c391 # initialize rs2
li x12, 0xcf6a7f17 # initialize rd,rs1
c.xor x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x6d3a2c96 # initialize rs2
li x13, 0xf172cc2d # initialize rd,rs1
c.xor x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 244)

# Testcase cp_rd (Test destination rd = x14)
li x8, 0xf4f30797 # initialize rs2
li x14, 0x7385c3b1 # initialize rd,rs1
c.xor x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rd (Test destination rd = x15)
li x14, 0x57c4a166 # initialize rs2
li x15, 0x78773e05 # initialize rd,rs1
c.xor x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 252)

#.EQU SIGSIZE,256


// ******************
// Tests from: WALLY-COV-c.add.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs2 (Test source rs2 = x1)
li x5, 0x97e0ffbd
li x1, 0x30d2189e
c.add x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 0)

# Testcase cp_rs2 (Test source rs2 = x2)
li x12, 0x67032673
li x2, 0x59907445
c.add x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 4)

# Testcase cp_rs2 (Test source rs2 = x3)
li x6, 0xaf0d1661
li x3, 0x4c1c15dd
c.add x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0x7f44fde9
li x4, 0xc0afd8d8
c.add x23, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 12)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0xd355793c
li x5, 0xe12a3b14
c.add x27, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 16)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0x8171cb2f
li x6, 0xce80e5f0
c.add x12, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 20)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0xe6dc4058
li x7, 0x9161d929
c.add x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 24)

# Testcase cp_rs2 (Test source rs2 = x8)
li x29, 0xa4162923
li x8, 0xb41b6437
c.add x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 28)

# Testcase cp_rs2 (Test source rs2 = x9)
li x22, 0x86e7b601
li x9, 0xc00e25a6
c.add x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 32)

# Testcase cp_rs2 (Test source rs2 = x10)
li x26, 0x0af5d609
li x10, 0x61aa93fe
c.add x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 36)

# Testcase cp_rs2 (Test source rs2 = x11)
li x14, 0x4fbc5b7c
li x11, 0x6255e669
c.add x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cp_rs2 (Test source rs2 = x12)
li x10, 0xd718f705
li x12, 0xb61638de
c.add x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 44)

# Testcase cp_rs2 (Test source rs2 = x13)
li x24, 0x2de247fb
li x13, 0x6536e1d0
c.add x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 48)

# Testcase cp_rs2 (Test source rs2 = x14)
li x27, 0xf158cf94
li x14, 0x884bad5b
c.add x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 52)

# Testcase cp_rs2 (Test source rs2 = x15)
li x26, 0xee06b02e
li x15, 0xea1b751d
c.add x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 56)

# Testcase cp_rs2 (Test source rs2 = x16)
li x18, 0x8af2bc2d
li x16, 0x42f3e647
c.add x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 60)

# Testcase cp_rs2 (Test source rs2 = x17)
li x11, 0xff9acf2c
li x17, 0xa9ec7525
c.add x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs2 (Test source rs2 = x18)
li x1, 0xc09042f3
li x18, 0x25090acb
c.add x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 68)

# Testcase cp_rs2 (Test source rs2 = x19)
li x3, 0x9e2f4494
li x19, 0x47929c12
c.add x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 72)

# Testcase cp_rs2 (Test source rs2 = x20)
li x23, 0x9cb9d99d
li x20, 0x97c43b5c
c.add x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 76)

# Testcase cp_rs2 (Test source rs2 = x21)
li x20, 0x208d77e9
li x21, 0x892b3b45
c.add x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rs2 (Test source rs2 = x22)
li x18, 0x40e5e815
li x22, 0x94c270d2
c.add x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 84)

# Testcase cp_rs2 (Test source rs2 = x23)
li x29, 0xbb011272
li x23, 0xa6bde8a4
c.add x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cp_rs2 (Test source rs2 = x24)
li x29, 0x2cc1a129
li x24, 0xced5e2b4
c.add x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 92)

# Testcase cp_rs2 (Test source rs2 = x25)
li x21, 0x97a30969
li x25, 0x1ff2aef4
c.add x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase cp_rs2 (Test source rs2 = x26)
li x25, 0x9e28dd96
li x26, 0xb44ebfbb
c.add x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rs2 (Test source rs2 = x27)
li x25, 0x34df958f
li x27, 0xc831fd2f
c.add x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 104)

# Testcase cp_rs2 (Test source rs2 = x28)
li x17, 0xb57da318
li x28, 0xe3c6504b
c.add x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 108)

# Testcase cp_rs2 (Test source rs2 = x29)
li x7, 0x6226ab9a
li x29, 0xe186b924
c.add x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 112)

# Testcase cp_rs2 (Test source rs2 = x30)
li x23, 0x0ad77286
li x30, 0x5f8c3020
c.add x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 116)

# Testcase cp_rs2 (Test source rs2 = x31)
li x11, 0x4b5f539d
li x31, 0x318e1389
c.add x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xf73b9aa1
li x8, 0x225b3095
c.add x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 124)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xc1bc8209
li x7, 0x8a162b49
c.add x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xa5df0805
li x2, 0x3f6daf81
c.add x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 132)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x18cc56cf
li x16, 0x9fab85f9
c.add x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 136)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfdd45708
li x29, 0x6672f330
c.add x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 140)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc218b802
li x26, 0x6357d995
c.add x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 144)

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x647a9bd6
li x23, 0xba078511
c.add x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 148)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x4ebe79c9
li x14, 0x3f9e0ef9
c.add x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 152)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x02178263
li x18, 0xa82e9834
c.add x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 156)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x31a35de4
li x31, 0xa68a6bdb
c.add x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x1f3ba705
li x17, 0x824527b6
c.add x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 164)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb8a3480c
li x29, 0x2e0a0c32
c.add x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xa5cf37a7
li x19, 0x67647402
c.add x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 172)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xdfe41300
li x20, 0x77610247
c.add x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xc6da40c4
li x21, 0xf624dd41
c.add x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 180)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x6fbf0529
li x30, 0x8b1bb32d
c.add x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 184)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xa4c9394b
li x19, 0x1c9915db
c.add x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 188)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xf779432a
li x10, 0x83f32f6d
c.add x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 192)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x354144cb
li x22, 0x87b490a9
c.add x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 196)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x69cdc162
li x6, 0xd3bea5ac
c.add x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xaf5ecba8
li x17, 0x53aeb933
c.add x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 204)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xc66afd0f
li x12, 0x791b49cd
c.add x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 208)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x7d492601
li x8, 0x9e8e90d0
c.add x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 212)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x16220138
li x26, 0x55c9cbed
c.add x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 216)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x20b4e3b9
li x7, 0x135c305e
c.add x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 220)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x3978ace5
li x11, 0xc271ed83
c.add x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x7a4ed68f
li x26, 0xb1cdc1a4
c.add x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 228)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xa7ad79e6
li x27, 0xb04d6f66
c.add x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x2cda0a16
li x10, 0x4d07049e
c.add x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 236)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xa15195f7
li x3, 0x28c73d9d
c.add x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xa2832151
li x6, 0x25540f0a
c.add x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 244)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x00000000
li x30, 0xfbf0c0b2
c.add x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 248)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x25, 0x00000001
li x8, 0x99f757dc
c.add x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x00000002
li x26, 0xe6696bf1
c.add x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x9, 0x80000000
li x26, 0xc1aa9f7d
c.add x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x24, 0x80000001
li x15, 0xf1263a81
c.add x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x21, 0x7fffffff
li x6, 0xf34ed70f
c.add x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x31, 0x7ffffffe
li x16, 0xfbed47de
c.add x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x3, 0xffffffff
li x26, 0xb7600f53
c.add x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x26, 0xfffffffe
li x11, 0x26bbf001
c.add x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x18, 0x5bbc8872
li x31, 0x00c2df7b
c.add x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x2, 0xaaaaaaaa
li x1, 0x78ebdef6
c.add x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x6, 0x55555555
li x22, 0xc5a7b1e1
c.add x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 292)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x10, 0x9a304bf8
li x1, 0x00000000
c.add x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x31, 0x1227d86e
li x2, 0x00000001
c.add x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 300)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x22, 0x14c7e8c3
li x5, 0x00000002
c.add x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 304)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x14, 0x5080a457
li x23, 0x80000000
c.add x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 308)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x27, 0x3fcfbb4f
li x26, 0x80000001
c.add x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x30, 0x67db3aa7
li x7, 0x7fffffff
c.add x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 316)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x10, 0xe037f0f7
li x2, 0x7ffffffe
c.add x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x6, 0xf777bb0a
li x23, 0xffffffff
c.add x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 324)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x11, 0x4148ce56
li x1, 0xfffffffe
c.add x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x27, 0xe21f8bd5
li x19, 0x5bbc8872
c.add x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 332)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x9, 0x124f1ff1
li x12, 0xaaaaaaaa
c.add x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 336)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x26, 0x57e877f9
li x23, 0x55555555
c.add x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 340)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x22, 0x00000000
li x6, 0x00000000
c.add x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x11, 0x00000000
li x24, 0x00000001
c.add x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x9, 0x00000000
li x21, 0x00000002
c.add x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x3, 0x00000000
li x29, 0x80000000
c.add x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 356)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x11, 0x00000000
li x6, 0x80000001
c.add x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x10, 0x00000000
li x20, 0x7fffffff
c.add x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 364)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x3, 0x00000000
li x26, 0x7ffffffe
c.add x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x12, 0x00000000
li x23, 0xffffffff
c.add x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 372)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x20, 0x00000000
li x28, 0xfffffffe
c.add x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x6, 0x00000000
li x28, 0x5bbc8872
c.add x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 380)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x27, 0x00000000
li x31, 0xaaaaaaaa
c.add x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x11, 0x00000000
li x23, 0x55555555
c.add x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 388)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x27, 0x00000001
li x8, 0x00000000
c.add x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x22, 0x00000001
li x20, 0x00000001
c.add x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 396)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x8, 0x00000001
li x31, 0x00000002
c.add x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x31, 0x00000001
li x12, 0x80000000
c.add x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 404)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x18, 0x00000001
li x9, 0x80000001
c.add x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x23, 0x00000001
li x11, 0x7fffffff
c.add x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 412)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x9, 0x00000001
li x25, 0x7ffffffe
c.add x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x22, 0x00000001
li x9, 0xffffffff
c.add x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 420)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x21, 0x00000001
li x8, 0xfffffffe
c.add x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x12, 0x00000001
li x29, 0x5bbc8872
c.add x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 428)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x25, 0x00000001
li x8, 0xaaaaaaaa
c.add x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x9, 0x00000001
li x28, 0x55555555
c.add x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 436)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x29, 0x00000002
li x13, 0x00000000
c.add x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x30, 0x00000002
li x25, 0x00000001
c.add x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 444)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x21, 0x00000002
li x14, 0x00000002
c.add x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x2, 0x00000002
li x7, 0x80000000
c.add x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 452)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x17, 0x00000002
li x22, 0x80000001
c.add x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x21, 0x00000002
li x29, 0x7fffffff
c.add x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 460)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x9, 0x00000002
li x12, 0x7ffffffe
c.add x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x22, 0x00000002
li x1, 0xffffffff
c.add x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 468)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x9, 0x00000002
li x21, 0xfffffffe
c.add x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x29, 0x00000002
li x15, 0x5bbc8872
c.add x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x3, 0x00000002
li x26, 0xaaaaaaaa
c.add x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x20, 0x00000002
li x31, 0x55555555
c.add x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x31, 0x80000000
li x30, 0x00000000
c.add x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x24, 0x80000000
li x6, 0x00000001
c.add x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x14, 0x80000000
li x5, 0x00000002
c.add x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x18, 0x80000000
li x15, 0x80000000
c.add x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x29, 0x80000000
li x27, 0x80000001
c.add x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x15, 0x80000000
li x29, 0x7fffffff
c.add x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x29, 0x80000000
li x27, 0x7ffffffe
c.add x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x26, 0x80000000
li x13, 0xffffffff
c.add x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x30, 0x80000000
li x18, 0xfffffffe
c.add x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x18, 0x80000000
li x22, 0x5bbc8872
c.add x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x11, 0x80000000
li x16, 0xaaaaaaaa
c.add x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x20, 0x80000000
li x10, 0x55555555
c.add x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x26, 0x80000001
li x19, 0x00000000
c.add x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x17, 0x80000001
li x10, 0x00000001
c.add x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x18, 0x80000001
li x14, 0x00000002
c.add x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x23, 0x80000001
li x8, 0x80000000
c.add x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x22, 0x80000001
li x1, 0x80000001
c.add x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x22, 0x80000001
li x24, 0x7fffffff
c.add x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x20, 0x80000001
li x7, 0x7ffffffe
c.add x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x10, 0x80000001
li x27, 0xffffffff
c.add x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x25, 0x80000001
li x5, 0xfffffffe
c.add x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x6, 0x80000001
li x22, 0x5bbc8872
c.add x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x31, 0x80000001
li x19, 0xaaaaaaaa
c.add x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x10, 0x80000001
li x16, 0x55555555
c.add x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x17, 0x7fffffff
li x3, 0x00000000
c.add x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x10, 0x7fffffff
li x8, 0x00000001
c.add x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x31, 0x7fffffff
li x5, 0x00000002
c.add x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x16, 0x7fffffff
li x30, 0x80000000
c.add x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x5, 0x7fffffff
li x25, 0x80000001
c.add x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x9, 0x7fffffff
li x19, 0x7fffffff
c.add x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x8, 0x7fffffff
li x18, 0x7ffffffe
c.add x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x19, 0x7fffffff
li x12, 0xffffffff
c.add x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x14, 0x7fffffff
li x5, 0xfffffffe
c.add x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x28, 0x7fffffff
li x25, 0x5bbc8872
c.add x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x23, 0x7fffffff
li x9, 0xaaaaaaaa
c.add x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x26, 0x7fffffff
li x19, 0x55555555
c.add x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x29, 0x7ffffffe
li x28, 0x00000000
c.add x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x2, 0x7ffffffe
li x15, 0x00000001
c.add x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x23, 0x7ffffffe
li x8, 0x00000002
c.add x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x1, 0x7ffffffe
li x28, 0x80000000
c.add x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x27, 0x7ffffffe
li x24, 0x80000001
c.add x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x15, 0x7ffffffe
li x29, 0x7fffffff
c.add x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x23, 0x7ffffffe
li x17, 0x7ffffffe
c.add x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x2, 0x7ffffffe
li x14, 0xffffffff
c.add x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x19, 0x7ffffffe
li x20, 0xfffffffe
c.add x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x12, 0x7ffffffe
li x16, 0x5bbc8872
c.add x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x28, 0x7ffffffe
li x10, 0xaaaaaaaa
c.add x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x12, 0x7ffffffe
li x20, 0x55555555
c.add x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x10, 0xffffffff
li x17, 0x00000000
c.add x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x7, 0xffffffff
li x29, 0x00000001
c.add x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x23, 0xffffffff
li x28, 0x00000002
c.add x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x1, 0xffffffff
li x27, 0x80000000
c.add x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x12, 0xffffffff
li x17, 0x80000001
c.add x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x18, 0xffffffff
li x25, 0x7fffffff
c.add x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x2, 0xffffffff
li x7, 0x7ffffffe
c.add x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x16, 0xffffffff
li x15, 0xffffffff
c.add x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x19, 0xffffffff
li x29, 0xfffffffe
c.add x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x8, 0xffffffff
li x24, 0x5bbc8872
c.add x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x2, 0xffffffff
li x15, 0xaaaaaaaa
c.add x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x7, 0xffffffff
li x23, 0x55555555
c.add x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x25, 0xfffffffe
li x13, 0x00000000
c.add x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x10, 0xfffffffe
li x22, 0x00000001
c.add x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x25, 0xfffffffe
li x17, 0x00000002
c.add x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x9, 0xfffffffe
li x7, 0x80000000
c.add x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x17, 0xfffffffe
li x12, 0x80000001
c.add x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x2, 0xfffffffe
li x21, 0x7fffffff
c.add x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x26, 0xfffffffe
li x25, 0x7ffffffe
c.add x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x8, 0xfffffffe
li x2, 0xffffffff
c.add x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x19, 0xfffffffe
li x29, 0xfffffffe
c.add x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x10, 0xfffffffe
li x25, 0x5bbc8872
c.add x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x28, 0xfffffffe
li x31, 0xaaaaaaaa
c.add x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x6, 0xfffffffe
li x31, 0x55555555
c.add x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x28, 0x5bbc8872
li x1, 0x00000000
c.add x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x13, 0x5bbc8872
li x24, 0x00000001
c.add x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x5, 0x5bbc8872
li x8, 0x00000002
c.add x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x1, 0x5bbc8872
li x30, 0x80000000
c.add x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x29, 0x5bbc8872
li x18, 0x80000001
c.add x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x12, 0x5bbc8872
li x15, 0x7fffffff
c.add x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x20, 0x5bbc8872
li x11, 0x7ffffffe
c.add x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x21, 0x5bbc8872
li x1, 0xffffffff
c.add x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x11, 0x5bbc8872
li x8, 0xfffffffe
c.add x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x17, 0x5bbc8872
li x12, 0x5bbc8872
c.add x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x8, 0x5bbc8872
li x31, 0xaaaaaaaa
c.add x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x20, 0x5bbc8872
li x31, 0x55555555
c.add x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x3, 0xaaaaaaaa
li x9, 0x00000000
c.add x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x31, 0xaaaaaaaa
li x15, 0x00000001
c.add x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x19, 0xaaaaaaaa
li x5, 0x00000002
c.add x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x25, 0xaaaaaaaa
li x12, 0x80000000
c.add x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x25, 0xaaaaaaaa
li x17, 0x80000001
c.add x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x2, 0xaaaaaaaa
li x19, 0x7fffffff
c.add x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x3, 0xaaaaaaaa
li x22, 0x7ffffffe
c.add x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x1, 0xaaaaaaaa
li x14, 0xffffffff
c.add x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x13, 0xaaaaaaaa
li x5, 0xfffffffe
c.add x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x27, 0xaaaaaaaa
li x28, 0x5bbc8872
c.add x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x31, 0xaaaaaaaa
li x17, 0xaaaaaaaa
c.add x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x13, 0xaaaaaaaa
li x2, 0x55555555
c.add x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x3, 0x55555555
li x6, 0x00000000
c.add x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x20, 0x55555555
li x17, 0x00000001
c.add x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x27, 0x55555555
li x11, 0x00000002
c.add x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x13, 0x55555555
li x17, 0x80000000
c.add x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x26, 0x55555555
li x5, 0x80000001
c.add x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x5, 0x55555555
li x22, 0x7fffffff
c.add x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x29, 0x55555555
li x12, 0x7ffffffe
c.add x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x21, 0x55555555
li x24, 0xffffffff
c.add x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x31, 0x55555555
li x14, 0xfffffffe
c.add x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x29, 0x55555555
li x8, 0x5bbc8872
c.add x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x14, 0x55555555
li x24, 0xaaaaaaaa
c.add x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x3, 0x55555555
li x31, 0x55555555
c.add x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 916)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0xd013df27
li x1, 0x3438ad7e
c.add x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 920)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x4104a06f
li x2, 0xd24f6d5e
c.add x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 924)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x696c2156
li x3, 0x3d3b8acd
c.add x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 928)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1c0a5722
li x4, 0x80124990
c.add x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 932)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3a25965c
li x5, 0xf7accd90
c.add x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 936)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf17583c1
li x6, 0xf3eeefa6
c.add x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 940)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xac4bb441
li x7, 0x27aa2967
c.add x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 944)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xdc996f58
li x8, 0xf3a0f5ae
c.add x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 948)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x1aa397e7
li x9, 0x8eee5a5a
c.add x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xa1b04dc6
li x10, 0x3dec98a2
c.add x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 956)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x26859d91
li x11, 0x00e412d9
c.add x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 960)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xbd38a8a6
li x12, 0x094bc239
c.add x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 964)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x4caf8ed5
li x13, 0xb2b7b7ca
c.add x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 968)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x2c164718
li x14, 0x609a9831
c.add x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 972)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x1b69706d
li x15, 0x1cb744e1
c.add x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 976)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x804f93ed
li x16, 0xcfbf6d38
c.add x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 980)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x2b2c27b7
li x17, 0x4314b715
c.add x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 984)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x05432acb
li x18, 0x91ec2fe4
c.add x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 988)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x4282f7cf
li x19, 0xeed9ec4b
c.add x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 992)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0xca01344a
li x20, 0x740f0831
c.add x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 996)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xd1313ab0
li x21, 0xb930bfa0
c.add x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1000)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x37cf680c
li x22, 0xb7d9cea2
c.add x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1004)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x076d6b05
li x23, 0x651c4b94
c.add x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1008)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0xa92090f0
li x24, 0x1c072fb4
c.add x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1012)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x4b326877
li x25, 0xe01bf8b4
c.add x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1016)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0xd0e23628
li x26, 0xd8bf564d
c.add x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1020)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xbd365af4
li x27, 0xaae91576
c.add x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1024)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0xfe4ccb40
li x28, 0x72b1eb1c
c.add x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1028)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0xa2079ef2
li x29, 0xaa7f7924
c.add x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1032)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xf2447bdc
li x30, 0x5dd3fc83
c.add x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1036)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0xc4a875c4
li x31, 0x648bd119
c.add x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1040)

#.EQU SIGSIZE,1044


// ******************
// Tests from: WALLY-COV-c.or.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x13, 0x62cdd02f # initialize rs2
li x8, 0x00000000 # initialize rd,rs1
c.or x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x12, 0xd52a7068 # initialize rs2
li x8, 0x00000001 # initialize rd,rs1
c.or x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x10, 0x8af8c8a3 # initialize rs2
li x13, 0x00000002 # initialize rd,rs1
c.or x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x14, 0x831d3fc3 # initialize rs2
li x15, 0x80000000 # initialize rd,rs1
c.or x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x12, 0xf467a40e # initialize rs2
li x10, 0x80000001 # initialize rd,rs1
c.or x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x10, 0x5a2f5b80 # initialize rs2
li x11, 0x7fffffff # initialize rd,rs1
c.or x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x10, 0xf99882c2 # initialize rs2
li x11, 0x7ffffffe # initialize rd,rs1
c.or x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x10, 0xd6aba3e4 # initialize rs2
li x11, 0xffffffff # initialize rd,rs1
c.or x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0xaa1c163b # initialize rs2
li x8, 0xfffffffe # initialize rd,rs1
c.or x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x10, 0x8ac11230 # initialize rs2
li x12, 0x5bbc8872 # initialize rd,rs1
c.or x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x9, 0xd9a6c402 # initialize rs2
li x10, 0xaaaaaaaa # initialize rd,rs1
c.or x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x12, 0x7271775a # initialize rs2
li x11, 0x55555555 # initialize rd,rs1
c.or x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0x00000000 # initialize rs2
li x8, 0xd7e8d78c # initialize rd,rs1
c.or x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x11, 0x00000001 # initialize rs2
li x13, 0xed0b67a9 # initialize rd,rs1
c.or x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x13, 0x00000002 # initialize rs2
li x12, 0x430b23ae # initialize rd,rs1
c.or x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x8, 0x80000000 # initialize rs2
li x12, 0x3e2e9b41 # initialize rd,rs1
c.or x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 60)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x9, 0x80000001 # initialize rs2
li x11, 0x8287b9c0 # initialize rd,rs1
c.or x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x15, 0x7fffffff # initialize rs2
li x9, 0x5461ef67 # initialize rd,rs1
c.or x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x10, 0x7ffffffe # initialize rs2
li x12, 0x2b6b4954 # initialize rd,rs1
c.or x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0xffffffff # initialize rs2
li x15, 0xd2a07b1f # initialize rd,rs1
c.or x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 76)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x10, 0xfffffffe # initialize rs2
li x8, 0x77e28b2f # initialize rd,rs1
c.or x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x12, 0x5bbc8872 # initialize rs2
li x13, 0xb08bcc37 # initialize rd,rs1
c.or x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 84)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x9, 0xaaaaaaaa # initialize rs2
li x13, 0xd174fe93 # initialize rd,rs1
c.or x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x13, 0x55555555 # initialize rs2
li x9, 0x29374bae # initialize rd,rs1
c.or x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 92)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x39472a45 # initialize rs2
li x11, 0xdd2947e2 # initialize rd,rs1
c.or x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x6feee18f # initialize rs2
li x9, 0x94c420c5 # initialize rd,rs1
c.or x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x5fea8105 # initialize rs2
li x15, 0x2479f43e # initialize rd,rs1
c.or x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x6413b56e # initialize rs2
li x14, 0xba11da51 # initialize rd,rs1
c.or x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x18945d75 # initialize rs2
li x10, 0x2a227033 # initialize rd,rs1
c.or x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x8c88cb17 # initialize rs2
li x12, 0xa4d5554c # initialize rd,rs1
c.or x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x5a21fe4e # initialize rs2
li x12, 0x6f77014a # initialize rd,rs1
c.or x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x515c117e # initialize rs2
li x9, 0x556a0c85 # initialize rd,rs1
c.or x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 124)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x0aeb2835 # initialize rs2
li x8, 0x3f8c9e33 # initialize rd,rs1
c.or x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x71a2ecf0 # initialize rs2
li x9, 0x5f69043d # initialize rd,rs1
c.or x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 132)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x3124f0d7 # initialize rs2
li x10, 0x9ddd2bf7 # initialize rd,rs1
c.or x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xe1f9cf95 # initialize rs2
li x11, 0x8aa1cd84 # initialize rd,rs1
c.or x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 140)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x6503fe8a # initialize rs2
li x12, 0xf7ed4c0b # initialize rd,rs1
c.or x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xe14af0d9 # initialize rs2
li x13, 0x123320b3 # initialize rd,rs1
c.or x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 148)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x701ed212 # initialize rs2
li x14, 0xed442072 # initialize rd,rs1
c.or x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x05b3ffc3 # initialize rs2
li x15, 0x3ea29faf # initialize rd,rs1
c.or x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 156)

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0xa585b06d # initialize rs2
li x11, 0x8e4d6dc7 # initialize rd,rs1
c.or x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0xecd2c791 # initialize rs2
li x12, 0xf942bfce # initialize rd,rs1
c.or x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 164)

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0x3cc59447 # initialize rs2
li x14, 0xeed1af8c # initialize rd,rs1
c.or x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 168)

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0xd45e2089 # initialize rs2
li x10, 0x33e0df58 # initialize rd,rs1
c.or x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 172)

# Testcase cp_rs1 (Test source rs1 = x12)
li x9, 0x62d28a14 # initialize rs2
li x14, 0x74b42712 # initialize rd,rs1
c.or x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0x1f8de2ca # initialize rs2
li x10, 0xeb60facf # initialize rd,rs1
c.or x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 180)

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0x88bddd0e # initialize rs2
li x13, 0xdbe20bc4 # initialize rd,rs1
c.or x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_rs1 (Test source rs1 = x15)
li x11, 0x678f1bfa # initialize rs2
li x8, 0x6bcba4ac # initialize rd,rs1
c.or x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 188)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xf295459e # initialize rs2
li x14, 0xfff91608 # initialize rd,rs1
c.or x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xea496633 # initialize rs2
li x8, 0xfd131061 # initialize rd,rs1
c.or x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 196)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x7516f2c5 # initialize rs2
li x14, 0x6aa2f575 # initialize rd,rs1
c.or x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xd1f69c2a # initialize rs2
li x9, 0xcfced7f7 # initialize rd,rs1
c.or x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 204)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xa4f7123a # initialize rs2
li x10, 0xc4e4982d # initialize rd,rs1
c.or x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x7e3ea634 # initialize rs2
li x9, 0xb7995b05 # initialize rd,rs1
c.or x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 212)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x0275114d # initialize rs2
li x8, 0x7dfe6fb5 # initialize rd,rs1
c.or x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x15f1e22a # initialize rs2
li x10, 0x8a07f46b # initialize rd,rs1
c.or x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 220)

# Testcase cp_rd (Test destination rd = x8)
li x10, 0xd0218c05 # initialize rs2
li x8, 0xd90e2ef0 # initialize rd,rs1
c.or x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rd (Test destination rd = x9)
li x11, 0x70f22e12 # initialize rs2
li x9, 0x3680dc6f # initialize rd,rs1
c.or x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 228)

# Testcase cp_rd (Test destination rd = x10)
li x14, 0xcad857b8 # initialize rs2
li x10, 0xed90dd94 # initialize rd,rs1
c.or x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0xf0fa72f1 # initialize rs2
li x11, 0x0f89321a # initialize rd,rs1
c.or x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 236)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0xc0ddf21b # initialize rs2
li x12, 0x5b40a168 # initialize rd,rs1
c.or x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rd (Test destination rd = x13)
li x11, 0x06b481c9 # initialize rs2
li x13, 0xb5de7818 # initialize rd,rs1
c.or x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 244)

# Testcase cp_rd (Test destination rd = x14)
li x10, 0x7f4183c0 # initialize rs2
li x14, 0x2a094a69 # initialize rd,rs1
c.or x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x35036558 # initialize rs2
li x15, 0xcafb6514 # initialize rd,rs1
c.or x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 252)

#.EQU SIGSIZE,256


// ******************
// Tests from: WALLY-COV-c.lw.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x15, 0x795021ad # initialize rs2
la x8, scratch # base address 
addi x8, x8, -68 # sub immediate from rs1 to counter offset
c.sw x15, 68(x8) # store value to put something in memory
c.lw x8, 68(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x13, 0xe692c137 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -40 # sub immediate from rs1 to counter offset
c.sw x13, 40(x9) # store value to put something in memory
c.lw x9, 40(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 4)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x15, 0x8cd94e5e # initialize rs2
la x10, scratch # base address 
addi x10, x10, -64 # sub immediate from rs1 to counter offset
c.sw x15, 64(x10) # store value to put something in memory
c.lw x10, 64(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x14, 0xac129a42 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -48 # sub immediate from rs1 to counter offset
c.sw x14, 48(x11) # store value to put something in memory
c.lw x11, 48(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 12)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x11, 0xbba51373 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -76 # sub immediate from rs1 to counter offset
c.sw x11, 76(x12) # store value to put something in memory
c.lw x12, 76(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x9, 0xd5f8d583 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -12 # sub immediate from rs1 to counter offset
c.sw x9, 12(x13) # store value to put something in memory
c.lw x13, 12(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 20)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x11, 0x4335e572 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -24 # sub immediate from rs1 to counter offset
c.sw x11, 24(x14) # store value to put something in memory
c.lw x14, 24(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x9, 0x9c69b4ee # initialize rs2
la x15, scratch # base address 
addi x15, x15, -4 # sub immediate from rs1 to counter offset
c.sw x9, 4(x15) # store value to put something in memory
c.lw x15, 4(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0x8157d24a # initialize rs2
la x8, scratch # base address 
addi x8, x8, -72 # sub immediate from rs1 to counter offset
c.sw x10, 72(x8) # store value to put something in memory
c.lw x15, 72(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x8e86c509 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -100 # sub immediate from rs1 to counter offset
c.sw x14, 100(x9) # store value to put something in memory
c.lw x12, 100(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0xf97d67a4 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -20 # sub immediate from rs1 to counter offset
c.sw x15, 20(x10) # store value to put something in memory
c.lw x13, 20(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0xc7f165ee # initialize rs2
la x11, scratch # base address 
addi x11, x11, -4 # sub immediate from rs1 to counter offset
c.sw x8, 4(x11) # store value to put something in memory
c.lw x15, 4(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0x51594fa0 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -100 # sub immediate from rs1 to counter offset
c.sw x15, 100(x12) # store value to put something in memory
c.lw x13, 100(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0x12264009 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -56 # sub immediate from rs1 to counter offset
c.sw x11, 56(x13) # store value to put something in memory
c.lw x14, 56(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0xcd61b164 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -104 # sub immediate from rs1 to counter offset
c.sw x11, 104(x14) # store value to put something in memory
c.lw x15, 104(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x8, 0x5fdcd584 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -92 # sub immediate from rs1 to counter offset
c.sw x8, 92(x15) # store value to put something in memory
c.lw x12, 92(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 60)

# Testcase cp_rd (Test destination rd = x8)
li x15, 0xa9175f5a # initialize rs2
la x8, scratch # base address 
addi x8, x8, -60 # sub immediate from rs1 to counter offset
c.sw x15, 60(x8) # store value to put something in memory
c.lw x8, 60(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0x30efd2b8 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -112 # sub immediate from rs1 to counter offset
c.sw x14, 112(x8) # store value to put something in memory
c.lw x9, 112(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rd (Test destination rd = x10)
li x14, 0xb37b8cd2 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -80 # sub immediate from rs1 to counter offset
c.sw x14, 80(x9) # store value to put something in memory
c.lw x10, 80(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0x02fd5886 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -8 # sub immediate from rs1 to counter offset
c.sw x8, 8(x14) # store value to put something in memory
c.lw x11, 8(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 76)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0x968b3ccf # initialize rs2
la x13, scratch # base address 
addi x13, x13, -24 # sub immediate from rs1 to counter offset
c.sw x8, 24(x13) # store value to put something in memory
c.lw x12, 24(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0x067ad6c8 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -120 # sub immediate from rs1 to counter offset
c.sw x10, 120(x13) # store value to put something in memory
c.lw x13, 120(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 84)

# Testcase cp_rd (Test destination rd = x14)
li x10, 0x8e4c1dc7 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -8 # sub immediate from rs1 to counter offset
c.sw x10, 8(x15) # store value to put something in memory
c.lw x14, 8(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cp_rd (Test destination rd = x15)
li x8, 0xc17b373c # initialize rs2
la x9, scratch # base address 
addi x9, x9, -48 # sub immediate from rs1 to counter offset
c.sw x8, 48(x9) # store value to put something in memory
c.lw x15, 48(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 92)

# Testcase cp_imm_mul
li x8, 0x705d33e2 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x9) # store value to put something in memory
c.lw x14, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_imm_mul
li x14, 0x11ed60f4 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -4 # sub immediate from rs1 to counter offset
c.sw x14, 4(x9) # store value to put something in memory
c.lw x10, 4(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 100)

# Testcase cp_imm_mul
li x9, 0x78f4b671 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -8 # sub immediate from rs1 to counter offset
c.sw x9, 8(x12) # store value to put something in memory
c.lw x13, 8(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_imm_mul
li x8, 0x82212267 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -12 # sub immediate from rs1 to counter offset
c.sw x8, 12(x11) # store value to put something in memory
c.lw x12, 12(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 108)

# Testcase cp_imm_mul
li x14, 0xf5da6667 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -16 # sub immediate from rs1 to counter offset
c.sw x14, 16(x15) # store value to put something in memory
c.lw x8, 16(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_imm_mul
li x11, 0x3020354a # initialize rs2
la x13, scratch # base address 
addi x13, x13, -20 # sub immediate from rs1 to counter offset
c.sw x11, 20(x13) # store value to put something in memory
c.lw x12, 20(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 116)

# Testcase cp_imm_mul
li x11, 0x7651e819 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -24 # sub immediate from rs1 to counter offset
c.sw x11, 24(x13) # store value to put something in memory
c.lw x10, 24(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_imm_mul
li x10, 0x4b362114 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -28 # sub immediate from rs1 to counter offset
c.sw x10, 28(x11) # store value to put something in memory
c.lw x9, 28(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 124)

# Testcase cp_imm_mul
li x14, 0x90c276ef # initialize rs2
la x11, scratch # base address 
addi x11, x11, -32 # sub immediate from rs1 to counter offset
c.sw x14, 32(x11) # store value to put something in memory
c.lw x10, 32(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 128)

# Testcase cp_imm_mul
li x10, 0x556d2280 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -36 # sub immediate from rs1 to counter offset
c.sw x10, 36(x9) # store value to put something in memory
c.lw x11, 36(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 132)

# Testcase cp_imm_mul
li x14, 0x9cd6bb7c # initialize rs2
la x9, scratch # base address 
addi x9, x9, -40 # sub immediate from rs1 to counter offset
c.sw x14, 40(x9) # store value to put something in memory
c.lw x12, 40(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 136)

# Testcase cp_imm_mul
li x15, 0xf8a98c26 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -44 # sub immediate from rs1 to counter offset
c.sw x15, 44(x9) # store value to put something in memory
c.lw x10, 44(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 140)

# Testcase cp_imm_mul
li x13, 0xc9a11ccf # initialize rs2
la x15, scratch # base address 
addi x15, x15, -48 # sub immediate from rs1 to counter offset
c.sw x13, 48(x15) # store value to put something in memory
c.lw x14, 48(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cp_imm_mul
li x14, 0x46ff4ac8 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -52 # sub immediate from rs1 to counter offset
c.sw x14, 52(x15) # store value to put something in memory
c.lw x9, 52(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 148)

# Testcase cp_imm_mul
li x8, 0x325a7010 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -56 # sub immediate from rs1 to counter offset
c.sw x8, 56(x14) # store value to put something in memory
c.lw x15, 56(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_imm_mul
li x15, 0xc787b741 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -60 # sub immediate from rs1 to counter offset
c.sw x15, 60(x14) # store value to put something in memory
c.lw x9, 60(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 156)

# Testcase cp_imm_mul
li x11, 0x50794778 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -64 # sub immediate from rs1 to counter offset
c.sw x11, 64(x13) # store value to put something in memory
c.lw x12, 64(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_imm_mul
li x12, 0x56f6c1bf # initialize rs2
la x8, scratch # base address 
addi x8, x8, -68 # sub immediate from rs1 to counter offset
c.sw x12, 68(x8) # store value to put something in memory
c.lw x9, 68(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_imm_mul
li x13, 0x7f03dec2 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -72 # sub immediate from rs1 to counter offset
c.sw x13, 72(x10) # store value to put something in memory
c.lw x8, 72(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_imm_mul
li x15, 0xf3e3894b # initialize rs2
la x12, scratch # base address 
addi x12, x12, -76 # sub immediate from rs1 to counter offset
c.sw x15, 76(x12) # store value to put something in memory
c.lw x10, 76(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 172)

# Testcase cp_imm_mul
li x8, 0xdd8f67a7 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -80 # sub immediate from rs1 to counter offset
c.sw x8, 80(x14) # store value to put something in memory
c.lw x9, 80(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 176)

# Testcase cp_imm_mul
li x13, 0xea5d2aa1 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -84 # sub immediate from rs1 to counter offset
c.sw x13, 84(x14) # store value to put something in memory
c.lw x8, 84(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 180)

# Testcase cp_imm_mul
li x9, 0x25c79935 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -88 # sub immediate from rs1 to counter offset
c.sw x9, 88(x12) # store value to put something in memory
c.lw x13, 88(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_imm_mul
li x12, 0x83394365 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -92 # sub immediate from rs1 to counter offset
c.sw x12, 92(x14) # store value to put something in memory
c.lw x10, 92(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 188)

# Testcase cp_imm_mul
li x15, 0xecfa9327 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -96 # sub immediate from rs1 to counter offset
c.sw x15, 96(x8) # store value to put something in memory
c.lw x9, 96(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_imm_mul
li x9, 0x8932f9f2 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -100 # sub immediate from rs1 to counter offset
c.sw x9, 100(x10) # store value to put something in memory
c.lw x11, 100(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 196)

# Testcase cp_imm_mul
li x12, 0x592d8bfe # initialize rs2
la x8, scratch # base address 
addi x8, x8, -104 # sub immediate from rs1 to counter offset
c.sw x12, 104(x8) # store value to put something in memory
c.lw x11, 104(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cp_imm_mul
li x8, 0x71b499f8 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -108 # sub immediate from rs1 to counter offset
c.sw x8, 108(x11) # store value to put something in memory
c.lw x9, 108(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 204)

# Testcase cp_imm_mul
li x15, 0x71593178 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -112 # sub immediate from rs1 to counter offset
c.sw x15, 112(x14) # store value to put something in memory
c.lw x12, 112(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 208)

# Testcase cp_imm_mul
li x11, 0x5743d921 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -116 # sub immediate from rs1 to counter offset
c.sw x11, 116(x13) # store value to put something in memory
c.lw x15, 116(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 212)

# Testcase cp_imm_mul
li x14, 0xa7744861 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -120 # sub immediate from rs1 to counter offset
c.sw x14, 120(x12) # store value to put something in memory
c.lw x15, 120(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cp_imm_mul
li x10, 0xad181a0c # initialize rs2
la x14, scratch # base address 
addi x14, x14, -124 # sub immediate from rs1 to counter offset
c.sw x10, 124(x14) # store value to put something in memory
c.lw x8, 124(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 220)

#.EQU SIGSIZE,224


// ******************
// Tests from: WALLY-COV-c.beqz.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0x00000000 # initialize rs1
c.beqz x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x00000001 # initialize rs1
c.beqz x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0x00000002 # initialize rs1
c.beqz x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x11, 0x80000000 # initialize rs1
c.beqz x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x11, 0x80000001 # initialize rs1
c.beqz x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x13, 0x7fffffff # initialize rs1
c.beqz x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x14, 0x7ffffffe # initialize rs1
c.beqz x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x10, 0xffffffff # initialize rs1
c.beqz x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x11, 0xfffffffe # initialize rs1
c.beqz x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x10, 0x5bbc8872 # initialize rs1
c.beqz x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x9, 0xaaaaaaaa # initialize rs1
c.beqz x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x13, 0x55555555 # initialize rs1
c.beqz x13, 1f # perform operation
nop
nop
1:

# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: li x8, 0 # initialize rs1 to 0
c.beqz x8,  1b # backward branch
3: nop # done with sequence

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x09045e4b # initialize rs1
c.beqz x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x653b43de # initialize rs1
c.beqz x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xc74a1868 # initialize rs1
c.beqz x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xe6394720 # initialize rs1
c.beqz x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xd69172ca # initialize rs1
c.beqz x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x242a61a9 # initialize rs1
c.beqz x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe7e4139d # initialize rs1
c.beqz x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xdb9065cc # initialize rs1
c.beqz x15, 1f # perform operation
nop
nop
1:

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.addi4spn.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rd (Test destination rd = x8)
li sp, 0x32f9e727 # initialize some value to sp 
c.addi4spn x8, sp, 236 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rd (Test destination rd = x9)
li sp, 0xb077bdb2 # initialize some value to sp 
c.addi4spn x9, sp, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 4)

# Testcase cp_rd (Test destination rd = x10)
li sp, 0xebdd835b # initialize some value to sp 
c.addi4spn x10, sp, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cp_rd (Test destination rd = x11)
li sp, 0xf6a2f9a1 # initialize some value to sp 
c.addi4spn x11, sp, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 12)

# Testcase cp_rd (Test destination rd = x12)
li sp, 0x128b7645 # initialize some value to sp 
c.addi4spn x12, sp, 612 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cp_rd (Test destination rd = x13)
li sp, 0xb70b511e # initialize some value to sp 
c.addi4spn x13, sp, 312 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 20)

# Testcase cp_rd (Test destination rd = x14)
li sp, 0x0d515afd # initialize some value to sp 
c.addi4spn x14, sp, 976 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cp_rd (Test destination rd = x15)
li sp, 0xc8a96449 # initialize some value to sp 
c.addi4spn x15, sp, 956 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_imm_mul
li sp, 0xdbd95358 # initialize some value to sp 
c.addi4spn x8, sp, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_imm_mul
li sp, 0x295d00d1 # initialize some value to sp 
c.addi4spn x9, sp, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_imm_mul
li sp, 0x4f78aa5c # initialize some value to sp 
c.addi4spn x14, sp, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cp_imm_mul
li sp, 0x1a31512d # initialize some value to sp 
c.addi4spn x12, sp, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cp_imm_mul
li sp, 0xe683c471 # initialize some value to sp 
c.addi4spn x10, sp, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 48)

# Testcase cp_imm_mul
li sp, 0xd609369b # initialize some value to sp 
c.addi4spn x14, sp, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 52)

# Testcase cp_imm_mul
li sp, 0x16879103 # initialize some value to sp 
c.addi4spn x11, sp, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_imm_mul
li sp, 0xebdb6651 # initialize some value to sp 
c.addi4spn x8, sp, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 60)

# Testcase cp_imm_mul
li sp, 0x21755bbe # initialize some value to sp 
c.addi4spn x9, sp, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_imm_mul
li sp, 0xd6d93692 # initialize some value to sp 
c.addi4spn x11, sp, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 68)

# Testcase cp_imm_mul
li sp, 0x5c0aa468 # initialize some value to sp 
c.addi4spn x14, sp, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_imm_mul
li sp, 0xecbf04dd # initialize some value to sp 
c.addi4spn x11, sp, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 76)

# Testcase cp_imm_mul
li sp, 0xd331dc28 # initialize some value to sp 
c.addi4spn x13, sp, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_imm_mul
li sp, 0xeb0649d8 # initialize some value to sp 
c.addi4spn x11, sp, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 84)

# Testcase cp_imm_mul
li sp, 0x3f0bfbd8 # initialize some value to sp 
c.addi4spn x12, sp, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_imm_mul
li sp, 0x7533f968 # initialize some value to sp 
c.addi4spn x15, sp, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 92)

# Testcase cp_imm_mul
li sp, 0x36aa1dac # initialize some value to sp 
c.addi4spn x8, sp, 68 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase cp_imm_mul
li sp, 0x48a14d11 # initialize some value to sp 
c.addi4spn x13, sp, 72 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 100)

# Testcase cp_imm_mul
li sp, 0x46fa223e # initialize some value to sp 
c.addi4spn x12, sp, 76 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 104)

# Testcase cp_imm_mul
li sp, 0x83c00f94 # initialize some value to sp 
c.addi4spn x13, sp, 80 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 108)

# Testcase cp_imm_mul
li sp, 0xfa963e9e # initialize some value to sp 
c.addi4spn x15, sp, 84 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_imm_mul
li sp, 0x12e828c9 # initialize some value to sp 
c.addi4spn x10, sp, 88 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 116)

# Testcase cp_imm_mul
li sp, 0x5129740d # initialize some value to sp 
c.addi4spn x14, sp, 92 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_imm_mul
li sp, 0x85c67606 # initialize some value to sp 
c.addi4spn x9, sp, 96 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 124)

# Testcase cp_imm_mul
li sp, 0x23549565 # initialize some value to sp 
c.addi4spn x8, sp, 100 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_imm_mul
li sp, 0x6f6c1fb1 # initialize some value to sp 
c.addi4spn x12, sp, 104 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 132)

# Testcase cp_imm_mul
li sp, 0xa1de0aaf # initialize some value to sp 
c.addi4spn x14, sp, 108 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_imm_mul
li sp, 0x8f5e992f # initialize some value to sp 
c.addi4spn x15, sp, 112 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 140)

# Testcase cp_imm_mul
li sp, 0xe9566890 # initialize some value to sp 
c.addi4spn x10, sp, 116 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_imm_mul
li sp, 0xb4a4d4a1 # initialize some value to sp 
c.addi4spn x8, sp, 120 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 148)

# Testcase cp_imm_mul
li sp, 0xdb3f17d1 # initialize some value to sp 
c.addi4spn x12, sp, 124 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 152)

# Testcase cp_imm_mul
li sp, 0xbe99ed19 # initialize some value to sp 
c.addi4spn x14, sp, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 156)

# Testcase cp_imm_mul
li sp, 0xfac4c673 # initialize some value to sp 
c.addi4spn x8, sp, 132 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_imm_mul
li sp, 0x9ede22f6 # initialize some value to sp 
c.addi4spn x14, sp, 136 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 164)

# Testcase cp_imm_mul
li sp, 0x522bb3ab # initialize some value to sp 
c.addi4spn x12, sp, 140 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_imm_mul
li sp, 0x9ebb65d6 # initialize some value to sp 
c.addi4spn x12, sp, 144 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 172)

# Testcase cp_imm_mul
li sp, 0xb5c1e947 # initialize some value to sp 
c.addi4spn x9, sp, 148 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 176)

# Testcase cp_imm_mul
li sp, 0xa7be7bfe # initialize some value to sp 
c.addi4spn x11, sp, 152 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 180)

# Testcase cp_imm_mul
li sp, 0x1170057c # initialize some value to sp 
c.addi4spn x9, sp, 156 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cp_imm_mul
li sp, 0xb7002596 # initialize some value to sp 
c.addi4spn x13, sp, 160 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 188)

# Testcase cp_imm_mul
li sp, 0xfd427dd4 # initialize some value to sp 
c.addi4spn x15, sp, 164 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 192)

# Testcase cp_imm_mul
li sp, 0x8d64f889 # initialize some value to sp 
c.addi4spn x13, sp, 168 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 196)

# Testcase cp_imm_mul
li sp, 0x54bffb5c # initialize some value to sp 
c.addi4spn x14, sp, 172 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_imm_mul
li sp, 0x4fe35c2a # initialize some value to sp 
c.addi4spn x14, sp, 176 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 204)

# Testcase cp_imm_mul
li sp, 0x3e5e2e4a # initialize some value to sp 
c.addi4spn x13, sp, 180 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cp_imm_mul
li sp, 0x97dcd2c1 # initialize some value to sp 
c.addi4spn x14, sp, 184 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 212)

# Testcase cp_imm_mul
li sp, 0x047d07f3 # initialize some value to sp 
c.addi4spn x8, sp, 188 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cp_imm_mul
li sp, 0xed50fd2d # initialize some value to sp 
c.addi4spn x10, sp, 192 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 220)

# Testcase cp_imm_mul
li sp, 0xc2aba26a # initialize some value to sp 
c.addi4spn x14, sp, 196 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cp_imm_mul
li sp, 0xb2fcd934 # initialize some value to sp 
c.addi4spn x10, sp, 200 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 228)

# Testcase cp_imm_mul
li sp, 0x3d01cf92 # initialize some value to sp 
c.addi4spn x13, sp, 204 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cp_imm_mul
li sp, 0x1221e409 # initialize some value to sp 
c.addi4spn x15, sp, 208 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 236)

# Testcase cp_imm_mul
li sp, 0x4cd0888b # initialize some value to sp 
c.addi4spn x13, sp, 212 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 240)

# Testcase cp_imm_mul
li sp, 0x656f69ae # initialize some value to sp 
c.addi4spn x10, sp, 216 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 244)

# Testcase cp_imm_mul
li sp, 0xe028aeff # initialize some value to sp 
c.addi4spn x12, sp, 220 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cp_imm_mul
li sp, 0x1193083a # initialize some value to sp 
c.addi4spn x12, sp, 224 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 252)

# Testcase cp_imm_mul
li sp, 0x6ad78cce # initialize some value to sp 
c.addi4spn x15, sp, 228 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cp_imm_mul
li sp, 0xa948bc34 # initialize some value to sp 
c.addi4spn x11, sp, 232 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 260)

# Testcase cp_imm_mul
li sp, 0x03888bd0 # initialize some value to sp 
c.addi4spn x9, sp, 236 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 264)

# Testcase cp_imm_mul
li sp, 0xac7c8dc3 # initialize some value to sp 
c.addi4spn x8, sp, 240 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 268)

# Testcase cp_imm_mul
li sp, 0x0048a72f # initialize some value to sp 
c.addi4spn x12, sp, 244 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cp_imm_mul
li sp, 0x24a22628 # initialize some value to sp 
c.addi4spn x13, sp, 248 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 276)

# Testcase cp_imm_mul
li sp, 0x0b1261a9 # initialize some value to sp 
c.addi4spn x12, sp, 252 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 280)

# Testcase cp_imm_mul
li sp, 0x3f0adf3b # initialize some value to sp 
c.addi4spn x15, sp, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 284)

# Testcase cp_imm_mul
li sp, 0x08d2b20a # initialize some value to sp 
c.addi4spn x9, sp, 260 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 288)

# Testcase cp_imm_mul
li sp, 0x6bf0bb8c # initialize some value to sp 
c.addi4spn x12, sp, 264 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 292)

# Testcase cp_imm_mul
li sp, 0xa01c9ef7 # initialize some value to sp 
c.addi4spn x9, sp, 268 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 296)

# Testcase cp_imm_mul
li sp, 0xe00795aa # initialize some value to sp 
c.addi4spn x14, sp, 272 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 300)

# Testcase cp_imm_mul
li sp, 0xb532ffa1 # initialize some value to sp 
c.addi4spn x13, sp, 276 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 304)

# Testcase cp_imm_mul
li sp, 0x9bb307c3 # initialize some value to sp 
c.addi4spn x8, sp, 280 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 308)

# Testcase cp_imm_mul
li sp, 0xb4b2a534 # initialize some value to sp 
c.addi4spn x13, sp, 284 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 312)

# Testcase cp_imm_mul
li sp, 0xcea17f66 # initialize some value to sp 
c.addi4spn x9, sp, 288 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 316)

# Testcase cp_imm_mul
li sp, 0x0ba740c2 # initialize some value to sp 
c.addi4spn x10, sp, 292 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cp_imm_mul
li sp, 0x77ef6e34 # initialize some value to sp 
c.addi4spn x10, sp, 296 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 324)

# Testcase cp_imm_mul
li sp, 0xd3b1a96c # initialize some value to sp 
c.addi4spn x14, sp, 300 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cp_imm_mul
li sp, 0x8bee8be4 # initialize some value to sp 
c.addi4spn x9, sp, 304 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 332)

# Testcase cp_imm_mul
li sp, 0x61ea68c1 # initialize some value to sp 
c.addi4spn x13, sp, 308 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 336)

# Testcase cp_imm_mul
li sp, 0xe206a9d6 # initialize some value to sp 
c.addi4spn x9, sp, 312 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cp_imm_mul
li sp, 0xd800c1f2 # initialize some value to sp 
c.addi4spn x13, sp, 316 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cp_imm_mul
li sp, 0x8d9a32d3 # initialize some value to sp 
c.addi4spn x10, sp, 320 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 348)

# Testcase cp_imm_mul
li sp, 0x9d033142 # initialize some value to sp 
c.addi4spn x12, sp, 324 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_imm_mul
li sp, 0x7d41cc90 # initialize some value to sp 
c.addi4spn x13, sp, 328 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cp_imm_mul
li sp, 0xfd846838 # initialize some value to sp 
c.addi4spn x11, sp, 332 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cp_imm_mul
li sp, 0x263256a4 # initialize some value to sp 
c.addi4spn x12, sp, 336 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 364)

# Testcase cp_imm_mul
li sp, 0x661a55b9 # initialize some value to sp 
c.addi4spn x8, sp, 340 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 368)

# Testcase cp_imm_mul
li sp, 0xac92eaa6 # initialize some value to sp 
c.addi4spn x15, sp, 344 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 372)

# Testcase cp_imm_mul
li sp, 0x485172a2 # initialize some value to sp 
c.addi4spn x15, sp, 348 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_imm_mul
li sp, 0xc90b00e3 # initialize some value to sp 
c.addi4spn x11, sp, 352 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 380)

# Testcase cp_imm_mul
li sp, 0x83b1de28 # initialize some value to sp 
c.addi4spn x10, sp, 356 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cp_imm_mul
li sp, 0xfd453096 # initialize some value to sp 
c.addi4spn x9, sp, 360 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 388)

# Testcase cp_imm_mul
li sp, 0x3a499ece # initialize some value to sp 
c.addi4spn x11, sp, 364 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 392)

# Testcase cp_imm_mul
li sp, 0xac098dd4 # initialize some value to sp 
c.addi4spn x13, sp, 368 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 396)

# Testcase cp_imm_mul
li sp, 0xc81ac724 # initialize some value to sp 
c.addi4spn x8, sp, 372 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 400)

# Testcase cp_imm_mul
li sp, 0xa5b67c24 # initialize some value to sp 
c.addi4spn x8, sp, 376 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 404)

# Testcase cp_imm_mul
li sp, 0x7584f529 # initialize some value to sp 
c.addi4spn x15, sp, 380 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cp_imm_mul
li sp, 0xf1b7d8bf # initialize some value to sp 
c.addi4spn x11, sp, 384 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 412)

# Testcase cp_imm_mul
li sp, 0x3cf8c9b7 # initialize some value to sp 
c.addi4spn x13, sp, 388 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 416)

# Testcase cp_imm_mul
li sp, 0xec4bb247 # initialize some value to sp 
c.addi4spn x13, sp, 392 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 420)

# Testcase cp_imm_mul
li sp, 0x169d5608 # initialize some value to sp 
c.addi4spn x8, sp, 396 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 424)

# Testcase cp_imm_mul
li sp, 0x8573e859 # initialize some value to sp 
c.addi4spn x15, sp, 400 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 428)

# Testcase cp_imm_mul
li sp, 0x246140db # initialize some value to sp 
c.addi4spn x10, sp, 404 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 432)

# Testcase cp_imm_mul
li sp, 0xb6ff29f8 # initialize some value to sp 
c.addi4spn x9, sp, 408 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 436)

# Testcase cp_imm_mul
li sp, 0xfdb8124d # initialize some value to sp 
c.addi4spn x15, sp, 412 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 440)

# Testcase cp_imm_mul
li sp, 0x0c8a6b3a # initialize some value to sp 
c.addi4spn x9, sp, 416 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 444)

# Testcase cp_imm_mul
li sp, 0xf220f125 # initialize some value to sp 
c.addi4spn x11, sp, 420 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 448)

# Testcase cp_imm_mul
li sp, 0x7ba2843c # initialize some value to sp 
c.addi4spn x12, sp, 424 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 452)

# Testcase cp_imm_mul
li sp, 0x3551b50f # initialize some value to sp 
c.addi4spn x12, sp, 428 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 456)

# Testcase cp_imm_mul
li sp, 0x355f4f29 # initialize some value to sp 
c.addi4spn x9, sp, 432 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 460)

# Testcase cp_imm_mul
li sp, 0xc34f94a3 # initialize some value to sp 
c.addi4spn x15, sp, 436 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cp_imm_mul
li sp, 0x4e70f0cc # initialize some value to sp 
c.addi4spn x13, sp, 440 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 468)

# Testcase cp_imm_mul
li sp, 0xa85ff5ec # initialize some value to sp 
c.addi4spn x13, sp, 444 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 472)

# Testcase cp_imm_mul
li sp, 0x818123aa # initialize some value to sp 
c.addi4spn x15, sp, 448 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 476)

# Testcase cp_imm_mul
li sp, 0xe540e76b # initialize some value to sp 
c.addi4spn x12, sp, 452 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 480)

# Testcase cp_imm_mul
li sp, 0x490bc1b1 # initialize some value to sp 
c.addi4spn x11, sp, 456 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 484)

# Testcase cp_imm_mul
li sp, 0x481c91aa # initialize some value to sp 
c.addi4spn x12, sp, 460 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 488)

# Testcase cp_imm_mul
li sp, 0xdfb2e548 # initialize some value to sp 
c.addi4spn x11, sp, 464 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 492)

# Testcase cp_imm_mul
li sp, 0xa8ddf261 # initialize some value to sp 
c.addi4spn x11, sp, 468 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 496)

# Testcase cp_imm_mul
li sp, 0x97ca4922 # initialize some value to sp 
c.addi4spn x8, sp, 472 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 500)

# Testcase cp_imm_mul
li sp, 0xc121a8a2 # initialize some value to sp 
c.addi4spn x12, sp, 476 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cp_imm_mul
li sp, 0x6d08c2a7 # initialize some value to sp 
c.addi4spn x12, sp, 480 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 508)

# Testcase cp_imm_mul
li sp, 0x52bf29d0 # initialize some value to sp 
c.addi4spn x9, sp, 484 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 512)

# Testcase cp_imm_mul
li sp, 0xfa3406f4 # initialize some value to sp 
c.addi4spn x9, sp, 488 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 516)

# Testcase cp_imm_mul
li sp, 0xef1e5b16 # initialize some value to sp 
c.addi4spn x12, sp, 492 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 520)

# Testcase cp_imm_mul
li sp, 0x46fd1c24 # initialize some value to sp 
c.addi4spn x15, sp, 496 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 524)

# Testcase cp_imm_mul
li sp, 0x0a140371 # initialize some value to sp 
c.addi4spn x10, sp, 500 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_imm_mul
li sp, 0x3581853a # initialize some value to sp 
c.addi4spn x12, sp, 504 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 532)

# Testcase cp_imm_mul
li sp, 0x674ca34e # initialize some value to sp 
c.addi4spn x9, sp, 508 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 536)

# Testcase cp_imm_mul
li sp, 0x6079597a # initialize some value to sp 
c.addi4spn x12, sp, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 540)

# Testcase cp_imm_mul
li sp, 0x1144345d # initialize some value to sp 
c.addi4spn x12, sp, 516 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_imm_mul
li sp, 0x0aee6788 # initialize some value to sp 
c.addi4spn x15, sp, 520 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 548)

# Testcase cp_imm_mul
li sp, 0xa8490f10 # initialize some value to sp 
c.addi4spn x8, sp, 524 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 552)

# Testcase cp_imm_mul
li sp, 0xb6b40b61 # initialize some value to sp 
c.addi4spn x15, sp, 528 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 556)

# Testcase cp_imm_mul
li sp, 0x7f615cac # initialize some value to sp 
c.addi4spn x8, sp, 532 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cp_imm_mul
li sp, 0xd394c622 # initialize some value to sp 
c.addi4spn x8, sp, 536 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 564)

# Testcase cp_imm_mul
li sp, 0x9d1ce6f5 # initialize some value to sp 
c.addi4spn x14, sp, 540 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 568)

# Testcase cp_imm_mul
li sp, 0xdbd3f9df # initialize some value to sp 
c.addi4spn x11, sp, 544 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 572)

# Testcase cp_imm_mul
li sp, 0xd17283b4 # initialize some value to sp 
c.addi4spn x13, sp, 548 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 576)

# Testcase cp_imm_mul
li sp, 0x90e136c3 # initialize some value to sp 
c.addi4spn x15, sp, 552 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 580)

# Testcase cp_imm_mul
li sp, 0x23c290ad # initialize some value to sp 
c.addi4spn x15, sp, 556 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 584)

# Testcase cp_imm_mul
li sp, 0x0042eaa6 # initialize some value to sp 
c.addi4spn x8, sp, 560 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 588)

# Testcase cp_imm_mul
li sp, 0x33d9cf84 # initialize some value to sp 
c.addi4spn x8, sp, 564 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 592)

# Testcase cp_imm_mul
li sp, 0x4d47a302 # initialize some value to sp 
c.addi4spn x10, sp, 568 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 596)

# Testcase cp_imm_mul
li sp, 0x8414be33 # initialize some value to sp 
c.addi4spn x10, sp, 572 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 600)

# Testcase cp_imm_mul
li sp, 0x768b5a27 # initialize some value to sp 
c.addi4spn x10, sp, 576 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 604)

# Testcase cp_imm_mul
li sp, 0x88668e7c # initialize some value to sp 
c.addi4spn x13, sp, 580 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 608)

# Testcase cp_imm_mul
li sp, 0x994aeef5 # initialize some value to sp 
c.addi4spn x11, sp, 584 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 612)

# Testcase cp_imm_mul
li sp, 0x8cf4c39a # initialize some value to sp 
c.addi4spn x15, sp, 588 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cp_imm_mul
li sp, 0xcc86ff99 # initialize some value to sp 
c.addi4spn x8, sp, 592 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 620)

# Testcase cp_imm_mul
li sp, 0x6b470e66 # initialize some value to sp 
c.addi4spn x13, sp, 596 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 624)

# Testcase cp_imm_mul
li sp, 0xea50bf61 # initialize some value to sp 
c.addi4spn x11, sp, 600 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 628)

# Testcase cp_imm_mul
li sp, 0x15256116 # initialize some value to sp 
c.addi4spn x9, sp, 604 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 632)

# Testcase cp_imm_mul
li sp, 0x046677b8 # initialize some value to sp 
c.addi4spn x13, sp, 608 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 636)

# Testcase cp_imm_mul
li sp, 0xedc74c21 # initialize some value to sp 
c.addi4spn x10, sp, 612 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cp_imm_mul
li sp, 0xd64787d2 # initialize some value to sp 
c.addi4spn x8, sp, 616 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 644)

# Testcase cp_imm_mul
li sp, 0x48a3d38a # initialize some value to sp 
c.addi4spn x13, sp, 620 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 648)

# Testcase cp_imm_mul
li sp, 0x3243dece # initialize some value to sp 
c.addi4spn x8, sp, 624 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 652)

# Testcase cp_imm_mul
li sp, 0x49fc840d # initialize some value to sp 
c.addi4spn x13, sp, 628 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 656)

# Testcase cp_imm_mul
li sp, 0x9a1ea7c6 # initialize some value to sp 
c.addi4spn x10, sp, 632 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 660)

# Testcase cp_imm_mul
li sp, 0x2773694b # initialize some value to sp 
c.addi4spn x9, sp, 636 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 664)

# Testcase cp_imm_mul
li sp, 0xb5a577b5 # initialize some value to sp 
c.addi4spn x12, sp, 640 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 668)

# Testcase cp_imm_mul
li sp, 0x805e205c # initialize some value to sp 
c.addi4spn x15, sp, 644 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 672)

# Testcase cp_imm_mul
li sp, 0xbc200766 # initialize some value to sp 
c.addi4spn x9, sp, 648 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 676)

# Testcase cp_imm_mul
li sp, 0xdf627989 # initialize some value to sp 
c.addi4spn x15, sp, 652 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 680)

# Testcase cp_imm_mul
li sp, 0x92e36c5c # initialize some value to sp 
c.addi4spn x8, sp, 656 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 684)

# Testcase cp_imm_mul
li sp, 0x6fc03f44 # initialize some value to sp 
c.addi4spn x11, sp, 660 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 688)

# Testcase cp_imm_mul
li sp, 0x3906309d # initialize some value to sp 
c.addi4spn x15, sp, 664 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 692)

# Testcase cp_imm_mul
li sp, 0x37ddc13d # initialize some value to sp 
c.addi4spn x9, sp, 668 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 696)

# Testcase cp_imm_mul
li sp, 0x5753353c # initialize some value to sp 
c.addi4spn x12, sp, 672 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 700)

# Testcase cp_imm_mul
li sp, 0x89c4b192 # initialize some value to sp 
c.addi4spn x13, sp, 676 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 704)

# Testcase cp_imm_mul
li sp, 0x71d5afd4 # initialize some value to sp 
c.addi4spn x13, sp, 680 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 708)

# Testcase cp_imm_mul
li sp, 0x2c449cdd # initialize some value to sp 
c.addi4spn x15, sp, 684 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 712)

# Testcase cp_imm_mul
li sp, 0x63ac6005 # initialize some value to sp 
c.addi4spn x10, sp, 688 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 716)

# Testcase cp_imm_mul
li sp, 0xf93795b7 # initialize some value to sp 
c.addi4spn x11, sp, 692 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 720)

# Testcase cp_imm_mul
li sp, 0xa2ab460f # initialize some value to sp 
c.addi4spn x9, sp, 696 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 724)

# Testcase cp_imm_mul
li sp, 0x3e68bbef # initialize some value to sp 
c.addi4spn x9, sp, 700 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 728)

# Testcase cp_imm_mul
li sp, 0x85d2f4b0 # initialize some value to sp 
c.addi4spn x10, sp, 704 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 732)

# Testcase cp_imm_mul
li sp, 0xa9af7cfe # initialize some value to sp 
c.addi4spn x9, sp, 708 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

# Testcase cp_imm_mul
li sp, 0xae9fb664 # initialize some value to sp 
c.addi4spn x15, sp, 712 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 740)

# Testcase cp_imm_mul
li sp, 0x14769b62 # initialize some value to sp 
c.addi4spn x12, sp, 716 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 744)

# Testcase cp_imm_mul
li sp, 0x41ec62aa # initialize some value to sp 
c.addi4spn x8, sp, 720 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 748)

# Testcase cp_imm_mul
li sp, 0x7956410e # initialize some value to sp 
c.addi4spn x8, sp, 724 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 752)

# Testcase cp_imm_mul
li sp, 0xda93e78d # initialize some value to sp 
c.addi4spn x14, sp, 728 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 756)

# Testcase cp_imm_mul
li sp, 0xfe81ee25 # initialize some value to sp 
c.addi4spn x12, sp, 732 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 760)

# Testcase cp_imm_mul
li sp, 0x2333ff6e # initialize some value to sp 
c.addi4spn x13, sp, 736 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 764)

# Testcase cp_imm_mul
li sp, 0x3aae37d7 # initialize some value to sp 
c.addi4spn x15, sp, 740 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 768)

# Testcase cp_imm_mul
li sp, 0xc17a3729 # initialize some value to sp 
c.addi4spn x12, sp, 744 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 772)

# Testcase cp_imm_mul
li sp, 0xa2755bb0 # initialize some value to sp 
c.addi4spn x8, sp, 748 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 776)

# Testcase cp_imm_mul
li sp, 0x69358ec5 # initialize some value to sp 
c.addi4spn x8, sp, 752 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 780)

# Testcase cp_imm_mul
li sp, 0xa1fd1782 # initialize some value to sp 
c.addi4spn x14, sp, 756 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 784)

# Testcase cp_imm_mul
li sp, 0x7fe23a5c # initialize some value to sp 
c.addi4spn x14, sp, 760 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 788)

# Testcase cp_imm_mul
li sp, 0x1257e85f # initialize some value to sp 
c.addi4spn x9, sp, 764 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 792)

# Testcase cp_imm_mul
li sp, 0x0b038b3b # initialize some value to sp 
c.addi4spn x11, sp, 768 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 796)

# Testcase cp_imm_mul
li sp, 0x8804c407 # initialize some value to sp 
c.addi4spn x11, sp, 772 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cp_imm_mul
li sp, 0x686caf1d # initialize some value to sp 
c.addi4spn x10, sp, 776 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 804)

# Testcase cp_imm_mul
li sp, 0xfd266858 # initialize some value to sp 
c.addi4spn x10, sp, 780 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 808)

# Testcase cp_imm_mul
li sp, 0xd9c11319 # initialize some value to sp 
c.addi4spn x13, sp, 784 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 812)

# Testcase cp_imm_mul
li sp, 0x315b6bed # initialize some value to sp 
c.addi4spn x12, sp, 788 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cp_imm_mul
li sp, 0xc05063cb # initialize some value to sp 
c.addi4spn x14, sp, 792 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 820)

# Testcase cp_imm_mul
li sp, 0xe78945a8 # initialize some value to sp 
c.addi4spn x13, sp, 796 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 824)

# Testcase cp_imm_mul
li sp, 0xbcca54ff # initialize some value to sp 
c.addi4spn x10, sp, 800 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 828)

# Testcase cp_imm_mul
li sp, 0xdb7c4160 # initialize some value to sp 
c.addi4spn x15, sp, 804 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 832)

# Testcase cp_imm_mul
li sp, 0x06034d06 # initialize some value to sp 
c.addi4spn x10, sp, 808 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 836)

# Testcase cp_imm_mul
li sp, 0xb9b0d08f # initialize some value to sp 
c.addi4spn x13, sp, 812 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 840)

# Testcase cp_imm_mul
li sp, 0xb6c8c03b # initialize some value to sp 
c.addi4spn x13, sp, 816 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 844)

# Testcase cp_imm_mul
li sp, 0x47d90a83 # initialize some value to sp 
c.addi4spn x10, sp, 820 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 848)

# Testcase cp_imm_mul
li sp, 0x4fb2f981 # initialize some value to sp 
c.addi4spn x10, sp, 824 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 852)

# Testcase cp_imm_mul
li sp, 0x0172f045 # initialize some value to sp 
c.addi4spn x11, sp, 828 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 856)

# Testcase cp_imm_mul
li sp, 0x5b3bea1e # initialize some value to sp 
c.addi4spn x11, sp, 832 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 860)

# Testcase cp_imm_mul
li sp, 0xa2fc7776 # initialize some value to sp 
c.addi4spn x12, sp, 836 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 864)

# Testcase cp_imm_mul
li sp, 0xf7a3bd0e # initialize some value to sp 
c.addi4spn x14, sp, 840 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 868)

# Testcase cp_imm_mul
li sp, 0x0c8e9ec4 # initialize some value to sp 
c.addi4spn x10, sp, 844 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 872)

# Testcase cp_imm_mul
li sp, 0xf0da4647 # initialize some value to sp 
c.addi4spn x9, sp, 848 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 876)

# Testcase cp_imm_mul
li sp, 0x0525812d # initialize some value to sp 
c.addi4spn x13, sp, 852 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 880)

# Testcase cp_imm_mul
li sp, 0x23d0886c # initialize some value to sp 
c.addi4spn x11, sp, 856 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 884)

# Testcase cp_imm_mul
li sp, 0x1bcb7499 # initialize some value to sp 
c.addi4spn x9, sp, 860 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 888)

# Testcase cp_imm_mul
li sp, 0xa0a090be # initialize some value to sp 
c.addi4spn x12, sp, 864 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 892)

# Testcase cp_imm_mul
li sp, 0x2edc6648 # initialize some value to sp 
c.addi4spn x10, sp, 868 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 896)

# Testcase cp_imm_mul
li sp, 0x1e8509c2 # initialize some value to sp 
c.addi4spn x9, sp, 872 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 900)

# Testcase cp_imm_mul
li sp, 0x6e2ecca2 # initialize some value to sp 
c.addi4spn x8, sp, 876 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 904)

# Testcase cp_imm_mul
li sp, 0xa89187ae # initialize some value to sp 
c.addi4spn x9, sp, 880 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 908)

# Testcase cp_imm_mul
li sp, 0x48d81c1a # initialize some value to sp 
c.addi4spn x8, sp, 884 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 912)

# Testcase cp_imm_mul
li sp, 0x114f587f # initialize some value to sp 
c.addi4spn x11, sp, 888 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 916)

# Testcase cp_imm_mul
li sp, 0x162bc772 # initialize some value to sp 
c.addi4spn x15, sp, 892 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cp_imm_mul
li sp, 0x165fd9ee # initialize some value to sp 
c.addi4spn x15, sp, 896 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 924)

# Testcase cp_imm_mul
li sp, 0x6383a130 # initialize some value to sp 
c.addi4spn x8, sp, 900 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 928)

# Testcase cp_imm_mul
li sp, 0xb70b7d10 # initialize some value to sp 
c.addi4spn x10, sp, 904 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 932)

# Testcase cp_imm_mul
li sp, 0x9b761eb8 # initialize some value to sp 
c.addi4spn x9, sp, 908 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 936)

# Testcase cp_imm_mul
li sp, 0x9ad6752c # initialize some value to sp 
c.addi4spn x12, sp, 912 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 940)

# Testcase cp_imm_mul
li sp, 0x35a67bd7 # initialize some value to sp 
c.addi4spn x8, sp, 916 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 944)

# Testcase cp_imm_mul
li sp, 0xf50f248d # initialize some value to sp 
c.addi4spn x13, sp, 920 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 948)

# Testcase cp_imm_mul
li sp, 0x82c4192b # initialize some value to sp 
c.addi4spn x9, sp, 924 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cp_imm_mul
li sp, 0x034a9f13 # initialize some value to sp 
c.addi4spn x11, sp, 928 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 956)

# Testcase cp_imm_mul
li sp, 0x2cce0b70 # initialize some value to sp 
c.addi4spn x14, sp, 932 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 960)

# Testcase cp_imm_mul
li sp, 0x13dbdd43 # initialize some value to sp 
c.addi4spn x9, sp, 936 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 964)

# Testcase cp_imm_mul
li sp, 0xd3807c1f # initialize some value to sp 
c.addi4spn x9, sp, 940 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 968)

# Testcase cp_imm_mul
li sp, 0x92316af4 # initialize some value to sp 
c.addi4spn x9, sp, 944 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 972)

# Testcase cp_imm_mul
li sp, 0x4a278632 # initialize some value to sp 
c.addi4spn x8, sp, 948 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 976)

# Testcase cp_imm_mul
li sp, 0xcc0c4747 # initialize some value to sp 
c.addi4spn x11, sp, 952 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 980)

# Testcase cp_imm_mul
li sp, 0xa3826361 # initialize some value to sp 
c.addi4spn x11, sp, 956 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 984)

# Testcase cp_imm_mul
li sp, 0xa67113df # initialize some value to sp 
c.addi4spn x12, sp, 960 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 988)

# Testcase cp_imm_mul
li sp, 0x1ef32905 # initialize some value to sp 
c.addi4spn x12, sp, 964 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 992)

# Testcase cp_imm_mul
li sp, 0xbd3833da # initialize some value to sp 
c.addi4spn x12, sp, 968 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 996)

# Testcase cp_imm_mul
li sp, 0x761aaa4d # initialize some value to sp 
c.addi4spn x11, sp, 972 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cp_imm_mul
li sp, 0xe42ceaf8 # initialize some value to sp 
c.addi4spn x12, sp, 976 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1004)

# Testcase cp_imm_mul
li sp, 0x3b57d626 # initialize some value to sp 
c.addi4spn x8, sp, 980 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1008)

# Testcase cp_imm_mul
li sp, 0xd7e37bde # initialize some value to sp 
c.addi4spn x13, sp, 984 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1012)

# Testcase cp_imm_mul
li sp, 0x00e66ed0 # initialize some value to sp 
c.addi4spn x11, sp, 988 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1016)

# Testcase cp_imm_mul
li sp, 0x8ad400cf # initialize some value to sp 
c.addi4spn x9, sp, 992 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1020)

# Testcase cp_imm_mul
li sp, 0xf310f7d3 # initialize some value to sp 
c.addi4spn x14, sp, 996 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1024)

# Testcase cp_imm_mul
li sp, 0x1b1d7cf0 # initialize some value to sp 
c.addi4spn x12, sp, 1000 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1028)

# Testcase cp_imm_mul
li sp, 0x956fcad4 # initialize some value to sp 
c.addi4spn x12, sp, 1004 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1032)

# Testcase cp_imm_mul
li sp, 0xedf656eb # initialize some value to sp 
c.addi4spn x9, sp, 1008 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1036)

# Testcase cp_imm_mul
li sp, 0x8363df9f # initialize some value to sp 
c.addi4spn x10, sp, 1012 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1040)

# Testcase cp_imm_mul
li sp, 0x7f0b216f # initialize some value to sp 
c.addi4spn x9, sp, 1016 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1044)

# Testcase cp_imm_mul
li sp, 0xf9d09f28 # initialize some value to sp 
c.addi4spn x10, sp, 1020 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1048)

#.EQU SIGSIZE,1052


// ******************
// Tests from: WALLY-COV-c.jr.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x1)
la x1, 1f
c.jr x1 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, 1f
c.jr x2 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
la x3, 1f
c.jr x3 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x4, 1f
c.jr x4 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x5, 1f
c.jr x5 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x6, 1f
c.jr x6 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x7, 1f
c.jr x7 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, 1f
c.jr x8 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, 1f
c.jr x9 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, 1f
c.jr x10 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, 1f
c.jr x11 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, 1f
c.jr x12 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, 1f
c.jr x13 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, 1f
c.jr x14 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, 1f
c.jr x15 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
la x16, 1f
c.jr x16 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
la x17, 1f
c.jr x17 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
la x18, 1f
c.jr x18 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
la x19, 1f
c.jr x19 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
la x20, 1f
c.jr x20 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
la x21, 1f
c.jr x21 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
la x22, 1f
c.jr x22 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
la x23, 1f
c.jr x23 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
la x24, 1f
c.jr x24 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
la x25, 1f
c.jr x25 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
la x26, 1f
c.jr x26 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
la x27, 1f
c.jr x27 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
la x28, 1f
c.jr x28 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
la x29, 1f
c.jr x29 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
la x30, 1f
c.jr x30 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
la x31, 1f
c.jr x31 # perform operation
nop
nop
1:

# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: la x26, 1b
c.jr x26 # backward branch
3: nop # done with sequence

# Testcase cp_offset_lsbs
la x3, c.jrlsb00 # load address of label
c.jr x3 # jump to address with bottom two lsbs = 00
c.nop # something to jump over
.align 2
c.jrlsb00: nop
la x3, c.jrlsb01 # load address of label
addi x3, x3, 1 # add 1 to address
c.jr x3 # jump to address with bottom two lsbs = 01
c.nop # something to jump over
.align 2
c.jrlsb01: nop
la x3, c.jrlsb10 # load address of label
addi x3, x3, 2 # add 2 to address
c.jr x3 # jump to address with bottom two lsbs = 10
c.nop # something to jump over
.align 2
c.jrlsb10: nop
la x3, c.jrlsb11 # load address of label
addi x3, x3, 3 # add 3 to address
c.jr x3 # jump to address with bottom two lsbs = 11
c.nop # something to jump over
.align 2
c.jrlsb11: nop

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.swsp.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0xf6947a03 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -184 # offset stack pointer from signature
c.swsp x0, 184(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xd99f5f3f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # offset stack pointer from signature
c.swsp x1, 88(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xc9fc0c2b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.swsp x2, 40(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0xecbdaad0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # offset stack pointer from signature
c.swsp x3, 68(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3987a57c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -12 # offset stack pointer from signature
c.swsp x4, 12(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x12232868 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # offset stack pointer from signature
c.swsp x5, 44(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7a97ab17 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -100 # offset stack pointer from signature
c.swsp x6, 100(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x525e0b76 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -140 # offset stack pointer from signature
c.swsp x7, 140(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x4d357338 # initialize rs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.swsp x8, 0(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x3ada2880 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -196 # offset stack pointer from signature
c.swsp x9, 196(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xe2195e13 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # offset stack pointer from signature
c.swsp x10, 68(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xc68d93bc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.swsp x11, 144(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xbb1c7fa4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.swsp x12, 240(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x3b87065e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.swsp x13, 240(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x314a0608 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -108 # offset stack pointer from signature
c.swsp x14, 108(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x5c824e19 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -92 # offset stack pointer from signature
c.swsp x15, 92(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x315efbdb # initialize rs2
la sp, scratch # base address 
addi sp, sp, -92 # offset stack pointer from signature
c.swsp x16, 92(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x4ea24e35 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -100 # offset stack pointer from signature
c.swsp x17, 100(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x61e31717 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # offset stack pointer from signature
c.swsp x18, 44(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x7e8b92ec # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.swsp x19, 192(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xb90611a6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.swsp x20, 152(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x17334342 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -60 # offset stack pointer from signature
c.swsp x21, 60(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x5fcaea2c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.swsp x22, 80(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x84c3b504 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -12 # offset stack pointer from signature
c.swsp x23, 12(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x95885086 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.swsp x24, 72(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x550cca58 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -180 # offset stack pointer from signature
c.swsp x25, 180(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x07a8a8b0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -120 # offset stack pointer from signature
c.swsp x26, 120(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x1053546a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -140 # offset stack pointer from signature
c.swsp x27, 140(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xa120a1c1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.swsp x28, 224(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x5f20a723 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.swsp x29, 64(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xdb00abff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -28 # offset stack pointer from signature
c.swsp x30, 28(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x11de3362 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.swsp x31, 32(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0x00000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -172 # offset stack pointer from signature
c.swsp x22, 172(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x9, 0x00000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -188 # offset stack pointer from signature
c.swsp x9, 188(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x14, 0x00000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.swsp x14, 128(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x10, 0x80000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.swsp x10, 72(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x21, 0x80000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.swsp x21, 96(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x18, 0x7fffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -196 # offset stack pointer from signature
c.swsp x18, 196(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x25, 0x7ffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # offset stack pointer from signature
c.swsp x25, 4(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x17, 0xffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.swsp x17, 40(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x3, 0xfffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.swsp x3, 128(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x19, 0x5bbc8872 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.swsp x19, 152(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x24, 0xaaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -124 # offset stack pointer from signature
c.swsp x24, 124(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x26, 0x55555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # offset stack pointer from signature
c.swsp x26, 88(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0xe1342779 # initialize rs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.swsp x19, 0(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0xe3ff9a0d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # offset stack pointer from signature
c.swsp x21, 4(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0xcbebb042 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # offset stack pointer from signature
c.swsp x5, 8(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x16dc8f11 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -12 # offset stack pointer from signature
c.swsp x14, 12(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x1c1fee45 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # offset stack pointer from signature
c.swsp x29, 16(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x3cc0102f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -20 # offset stack pointer from signature
c.swsp x10, 20(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xadb624b0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -24 # offset stack pointer from signature
c.swsp x1, 24(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x00dc5f58 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -28 # offset stack pointer from signature
c.swsp x18, 28(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0x3fcd5114 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.swsp x16, 32(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x887a85ad # initialize rs2
la sp, scratch # base address 
addi sp, sp, -36 # offset stack pointer from signature
c.swsp x1, 36(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0xfe22c6d5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.swsp x14, 40(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x9a324e13 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # offset stack pointer from signature
c.swsp x14, 44(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0x81d0e558 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # offset stack pointer from signature
c.swsp x3, 48(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0xb6cf981d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -52 # offset stack pointer from signature
c.swsp x21, 52(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xa49bdaf6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # offset stack pointer from signature
c.swsp x8, 56(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x8b5a9947 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -60 # offset stack pointer from signature
c.swsp x18, 60(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x8ace2b10 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.swsp x24, 64(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x7f34c182 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # offset stack pointer from signature
c.swsp x14, 68(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0xd12855a2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.swsp x25, 72(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x87e58ce2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -76 # offset stack pointer from signature
c.swsp x29, 76(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xd3bafe55 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.swsp x8, 80(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0x94f57c1e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # offset stack pointer from signature
c.swsp x25, 84(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x10229d22 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # offset stack pointer from signature
c.swsp x21, 88(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x713039f7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -92 # offset stack pointer from signature
c.swsp x7, 92(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0x7399ba6d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.swsp x16, 96(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x34d65d9d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -100 # offset stack pointer from signature
c.swsp x7, 100(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x43696300 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -104 # offset stack pointer from signature
c.swsp x20, 104(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0xf31acb30 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -108 # offset stack pointer from signature
c.swsp x19, 108(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x21bfa6f4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # offset stack pointer from signature
c.swsp x14, 112(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0x8fb35ff3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -116 # offset stack pointer from signature
c.swsp x11, 116(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x4cafbae9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -120 # offset stack pointer from signature
c.swsp x8, 120(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0x81e63a05 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -124 # offset stack pointer from signature
c.swsp x11, 124(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0xc9a50d91 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.swsp x27, 128(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x546162b4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -132 # offset stack pointer from signature
c.swsp x8, 132(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x57c2b162 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # offset stack pointer from signature
c.swsp x15, 136(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xcda2de0f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -140 # offset stack pointer from signature
c.swsp x3, 140(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xacf04e39 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.swsp x23, 144(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xd48ce146 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -148 # offset stack pointer from signature
c.swsp x8, 148(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x2908eef3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.swsp x13, 152(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0xcf475178 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -156 # offset stack pointer from signature
c.swsp x29, 156(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0xec7b3328 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -160 # offset stack pointer from signature
c.swsp x14, 160(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0xf82c0d73 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -164 # offset stack pointer from signature
c.swsp x10, 164(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0xfbabe034 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # offset stack pointer from signature
c.swsp x13, 168(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x6db0468d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -172 # offset stack pointer from signature
c.swsp x24, 172(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x072d8049 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.swsp x12, 176(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x3651362a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -180 # offset stack pointer from signature
c.swsp x14, 180(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0xc279049e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -184 # offset stack pointer from signature
c.swsp x9, 184(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0xfee90c55 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -188 # offset stack pointer from signature
c.swsp x7, 188(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0x556af14f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.swsp x25, 192(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x8da24d2a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -196 # offset stack pointer from signature
c.swsp x26, 196(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xb3c7f35c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -200 # offset stack pointer from signature
c.swsp x30, 200(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0x2703860b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -204 # offset stack pointer from signature
c.swsp x16, 204(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0xc678349d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # offset stack pointer from signature
c.swsp x18, 208(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0xf62fa65f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -212 # offset stack pointer from signature
c.swsp x7, 212(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0xc8b1d112 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.swsp x18, 216(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0xe6db574f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # offset stack pointer from signature
c.swsp x25, 220(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x3d9dea1a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.swsp x27, 224(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0x1e6d54cb # initialize rs2
la sp, scratch # base address 
addi sp, sp, -228 # offset stack pointer from signature
c.swsp x23, 228(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x78bef626 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -232 # offset stack pointer from signature
c.swsp x24, 232(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0xb7dbd6bd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -236 # offset stack pointer from signature
c.swsp x21, 236(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0x745c56ea # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.swsp x5, 240(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x00eddfe5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -244 # offset stack pointer from signature
c.swsp x17, 244(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0xf0b732a0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.swsp x29, 248(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x1f3a5916 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # offset stack pointer from signature
c.swsp x17, 252(sp)# perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.nop.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_asm_count
c.nop

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.sw.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
la x9, scratch # base address
li x8, 0x00000000 # initialize rs2 with random value
addi x9, x9, -16 # sub immediate from rs1 to counter offset
c.sw x8, 16(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
la x9, scratch # base address
li x8, 0x00000001 # initialize rs2 with random value
addi x9, x9, -48 # sub immediate from rs1 to counter offset
c.sw x8, 48(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
la x15, scratch # base address
li x11, 0x00000002 # initialize rs2 with random value
addi x15, x15, -4 # sub immediate from rs1 to counter offset
c.sw x11, 4(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
la x13, scratch # base address
li x8, 0x80000000 # initialize rs2 with random value
addi x13, x13, -12 # sub immediate from rs1 to counter offset
c.sw x8, 12(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
la x12, scratch # base address
li x14, 0x80000001 # initialize rs2 with random value
addi x12, x12, -92 # sub immediate from rs1 to counter offset
c.sw x14, 92(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
la x8, scratch # base address
li x15, 0x7fffffff # initialize rs2 with random value
addi x8, x8, -84 # sub immediate from rs1 to counter offset
c.sw x15, 84(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
la x8, scratch # base address
li x14, 0x7ffffffe # initialize rs2 with random value
addi x8, x8, -44 # sub immediate from rs1 to counter offset
c.sw x14, 44(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
la x12, scratch # base address
li x13, 0xffffffff # initialize rs2 with random value
addi x12, x12, -16 # sub immediate from rs1 to counter offset
c.sw x13, 16(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
la x15, scratch # base address
li x9, 0xfffffffe # initialize rs2 with random value
addi x15, x15, -100 # sub immediate from rs1 to counter offset
c.sw x9, 100(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
la x10, scratch # base address
li x8, 0x5bbc8872 # initialize rs2 with random value
addi x10, x10, -116 # sub immediate from rs1 to counter offset
c.sw x8, 116(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
la x11, scratch # base address
li x10, 0xaaaaaaaa # initialize rs2 with random value
addi x11, x11, -12 # sub immediate from rs1 to counter offset
c.sw x10, 12(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
la x14, scratch # base address
li x15, 0x55555555 # initialize rs2 with random value
addi x14, x14, -76 # sub immediate from rs1 to counter offset
c.sw x15, 76(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address
li x14, 0x974113ff # initialize rs2 with random value
addi x8, x8, -88 # sub immediate from rs1 to counter offset
c.sw x14, 88(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address
li x13, 0x28bbf4a2 # initialize rs2 with random value
addi x9, x9, -104 # sub immediate from rs1 to counter offset
c.sw x13, 104(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address
li x14, 0xc4a74fd8 # initialize rs2 with random value
addi x10, x10, -36 # sub immediate from rs1 to counter offset
c.sw x14, 36(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address
li x14, 0xa2d49257 # initialize rs2 with random value
addi x11, x11, -84 # sub immediate from rs1 to counter offset
c.sw x14, 84(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address
li x10, 0xb21fcc2e # initialize rs2 with random value
addi x12, x12, -108 # sub immediate from rs1 to counter offset
c.sw x10, 108(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address
li x8, 0xf9b9aa7b # initialize rs2 with random value
addi x13, x13, -108 # sub immediate from rs1 to counter offset
c.sw x8, 108(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address
li x15, 0x48e0a7b0 # initialize rs2 with random value
addi x14, x14, -36 # sub immediate from rs1 to counter offset
c.sw x15, 36(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address
li x9, 0x24da77ea # initialize rs2 with random value
addi x15, x15, -104 # sub immediate from rs1 to counter offset
c.sw x9, 104(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
la x14, scratch # base address
li x8, 0x7b4e8178 # initialize rs2 with random value
addi x14, x14, -72 # sub immediate from rs1 to counter offset
c.sw x8, 72(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
la x13, scratch # base address
li x9, 0x02838941 # initialize rs2 with random value
addi x13, x13, -116 # sub immediate from rs1 to counter offset
c.sw x9, 116(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
la x9, scratch # base address
li x10, 0x278212ab # initialize rs2 with random value
addi x9, x9, -20 # sub immediate from rs1 to counter offset
c.sw x10, 20(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
la x12, scratch # base address
li x11, 0x3176e340 # initialize rs2 with random value
addi x12, x12, -108 # sub immediate from rs1 to counter offset
c.sw x11, 108(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
la x8, scratch # base address
li x12, 0x1281358e # initialize rs2 with random value
addi x8, x8, -64 # sub immediate from rs1 to counter offset
c.sw x12, 64(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
la x11, scratch # base address
li x13, 0x8c854427 # initialize rs2 with random value
addi x11, x11, -88 # sub immediate from rs1 to counter offset
c.sw x13, 88(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
la x8, scratch # base address
li x14, 0xb637af0f # initialize rs2 with random value
addi x8, x8, -36 # sub immediate from rs1 to counter offset
c.sw x14, 36(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
la x12, scratch # base address
li x15, 0xbeb9d0ea # initialize rs2 with random value
addi x12, x12, -84 # sub immediate from rs1 to counter offset
c.sw x15, 84(x12) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x14, 0xe2816bde # initialize rs2 with random value
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sw x14, 0(x12) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x12, 0x70465a98 # initialize rs2 with random value
addi x9, x9, -4 # sub immediate from rs1 to counter offset
c.sw x12, 4(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x14, 0x2f9651a0 # initialize rs2 with random value
addi x15, x15, -8 # sub immediate from rs1 to counter offset
c.sw x14, 8(x15) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x10, 0x8155c989 # initialize rs2 with random value
addi x9, x9, -12 # sub immediate from rs1 to counter offset
c.sw x10, 12(x9) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x8, 0xd207bd35 # initialize rs2 with random value
addi x12, x12, -16 # sub immediate from rs1 to counter offset
c.sw x8, 16(x12) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x15, 0x6b8cb450 # initialize rs2 with random value
addi x8, x8, -20 # sub immediate from rs1 to counter offset
c.sw x15, 20(x8) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x13, 0x61c5cf35 # initialize rs2 with random value
addi x11, x11, -24 # sub immediate from rs1 to counter offset
c.sw x13, 24(x11) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x11, 0x814e7343 # initialize rs2 with random value
addi x14, x14, -28 # sub immediate from rs1 to counter offset
c.sw x11, 28(x14) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x9, 0x4c024245 # initialize rs2 with random value
addi x8, x8, -32 # sub immediate from rs1 to counter offset
c.sw x9, 32(x8) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x12, 0x089a2b66 # initialize rs2 with random value
addi x8, x8, -36 # sub immediate from rs1 to counter offset
c.sw x12, 36(x8) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x8, 0xe6813e8a # initialize rs2 with random value
addi x12, x12, -40 # sub immediate from rs1 to counter offset
c.sw x8, 40(x12) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x12, 0x3b410b8c # initialize rs2 with random value
addi x11, x11, -44 # sub immediate from rs1 to counter offset
c.sw x12, 44(x11) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x13, 0x27faf4a2 # initialize rs2 with random value
addi x9, x9, -48 # sub immediate from rs1 to counter offset
c.sw x13, 48(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x8, 0x04cdc11c # initialize rs2 with random value
addi x15, x15, -52 # sub immediate from rs1 to counter offset
c.sw x8, 52(x15) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x9, 0x71ef075e # initialize rs2 with random value
addi x12, x12, -56 # sub immediate from rs1 to counter offset
c.sw x9, 56(x12) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x9, 0xf3236aae # initialize rs2 with random value
addi x15, x15, -60 # sub immediate from rs1 to counter offset
c.sw x9, 60(x15) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x15, 0xa10eab28 # initialize rs2 with random value
addi x14, x14, -64 # sub immediate from rs1 to counter offset
c.sw x15, 64(x14) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x14, 0xb729ddc9 # initialize rs2 with random value
addi x12, x12, -68 # sub immediate from rs1 to counter offset
c.sw x14, 68(x12) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x13, 0x1c2c12b9 # initialize rs2 with random value
addi x12, x12, -72 # sub immediate from rs1 to counter offset
c.sw x13, 72(x12) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x15, 0x2aaaa15d # initialize rs2 with random value
addi x13, x13, -76 # sub immediate from rs1 to counter offset
c.sw x15, 76(x13) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x9, 0xd44d8273 # initialize rs2 with random value
addi x8, x8, -80 # sub immediate from rs1 to counter offset
c.sw x9, 80(x8) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x8, 0x05556e5d # initialize rs2 with random value
addi x14, x14, -84 # sub immediate from rs1 to counter offset
c.sw x8, 84(x14) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x12, 0x82cc93d7 # initialize rs2 with random value
addi x8, x8, -88 # sub immediate from rs1 to counter offset
c.sw x12, 88(x8) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x11, 0x1cd2b530 # initialize rs2 with random value
addi x10, x10, -92 # sub immediate from rs1 to counter offset
c.sw x11, 92(x10) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x12, 0x745d2a71 # initialize rs2 with random value
addi x9, x9, -96 # sub immediate from rs1 to counter offset
c.sw x12, 96(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x12, 0xcff270ff # initialize rs2 with random value
addi x15, x15, -100 # sub immediate from rs1 to counter offset
c.sw x12, 100(x15) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x14, 0x6f14ada2 # initialize rs2 with random value
addi x15, x15, -104 # sub immediate from rs1 to counter offset
c.sw x14, 104(x15) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x12, 0x78f88dfd # initialize rs2 with random value
addi x9, x9, -108 # sub immediate from rs1 to counter offset
c.sw x12, 108(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x12, 0x2cc8208d # initialize rs2 with random value
addi x15, x15, -112 # sub immediate from rs1 to counter offset
c.sw x12, 112(x15) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x12, 0xc0f5f071 # initialize rs2 with random value
addi x8, x8, -116 # sub immediate from rs1 to counter offset
c.sw x12, 116(x8) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x10, 0x39532cfe # initialize rs2 with random value
addi x11, x11, -120 # sub immediate from rs1 to counter offset
c.sw x10, 120(x11) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x15, 0x82ccd9ca # initialize rs2 with random value
addi x8, x8, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x8) # perform operation 

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.jalr.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xbf42eb28 # initialize rd (x1) to a random value that should get changed
la x1, 1f
c.jalr x1 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x1, 0x6c39f53d # initialize rd (x1) to a random value that should get changed
la x2, 1f
c.jalr x2 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x1, 0x391dea5f # initialize rd (x1) to a random value that should get changed
la x3, 1f
c.jalr x3 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x1, 0x58fd17e3 # initialize rd (x1) to a random value that should get changed
la x4, 1f
c.jalr x4 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
li x1, 0x6a94bde2 # initialize rd (x1) to a random value that should get changed
la x5, 1f
c.jalr x5 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x7635d1d5 # initialize rd (x1) to a random value that should get changed
la x6, 1f
c.jalr x6 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x35555e65 # initialize rd (x1) to a random value that should get changed
la x7, 1f
c.jalr x7 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x1, 0x60e12fb3 # initialize rd (x1) to a random value that should get changed
la x8, 1f
c.jalr x8 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x1, 0xfc890671 # initialize rd (x1) to a random value that should get changed
la x9, 1f
c.jalr x9 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x1, 0x0e74339a # initialize rd (x1) to a random value that should get changed
la x10, 1f
c.jalr x10 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x1, 0x9b4e2e89 # initialize rd (x1) to a random value that should get changed
la x11, 1f
c.jalr x11 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x1, 0xc7e40bb2 # initialize rd (x1) to a random value that should get changed
la x12, 1f
c.jalr x12 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x1, 0x3701334b # initialize rd (x1) to a random value that should get changed
la x13, 1f
c.jalr x13 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x1, 0xb19432cc # initialize rd (x1) to a random value that should get changed
la x14, 1f
c.jalr x14 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x1, 0x42bccc35 # initialize rd (x1) to a random value that should get changed
la x15, 1f
c.jalr x15 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x1, 0x65adaa2a # initialize rd (x1) to a random value that should get changed
la x16, 1f
c.jalr x16 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x1, 0xc5a9a8e2 # initialize rd (x1) to a random value that should get changed
la x17, 1f
c.jalr x17 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x1, 0x2a06ec08 # initialize rd (x1) to a random value that should get changed
la x18, 1f
c.jalr x18 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x1, 0x2ddb1bbf # initialize rd (x1) to a random value that should get changed
la x19, 1f
c.jalr x19 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x1, 0x3a2c3eae # initialize rd (x1) to a random value that should get changed
la x20, 1f
c.jalr x20 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x1, 0x98056444 # initialize rd (x1) to a random value that should get changed
la x21, 1f
c.jalr x21 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x1, 0x4257d1ee # initialize rd (x1) to a random value that should get changed
la x22, 1f
c.jalr x22 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x1, 0xee99d092 # initialize rd (x1) to a random value that should get changed
la x23, 1f
c.jalr x23 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x1, 0x1a66c686 # initialize rd (x1) to a random value that should get changed
la x24, 1f
c.jalr x24 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x1, 0xd965c664 # initialize rd (x1) to a random value that should get changed
la x25, 1f
c.jalr x25 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x1, 0x7fbfa8eb # initialize rd (x1) to a random value that should get changed
la x26, 1f
c.jalr x26 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x1, 0x7a08f508 # initialize rd (x1) to a random value that should get changed
la x27, 1f
c.jalr x27 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x1, 0x1c4cd1f7 # initialize rd (x1) to a random value that should get changed
la x28, 1f
c.jalr x28 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x1, 0xb56495db # initialize rd (x1) to a random value that should get changed
la x29, 1f
c.jalr x29 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x1, 0x3da9f7a4 # initialize rd (x1) to a random value that should get changed
la x30, 1f
c.jalr x30 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x1, 0x73d424d2 # initialize rd (x1) to a random value that should get changed
la x31, 1f
c.jalr x31 # perform operation
nop
nop
1:

# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: la x24, 1b
c.jalr x24 # backward branch
3: nop # done with sequence

# Testcase cp_offset_lsbs
la x3, c.jalrlsb00 # load address of label
c.jalr x3 # jump to address with bottom two lsbs = 00
c.nop # something to jump over
.align 2
c.jalrlsb00: nop
la x3, c.jalrlsb01 # load address of label
addi x3, x3, 1 # add 1 to address
c.jalr x3 # jump to address with bottom two lsbs = 01
c.nop # something to jump over
.align 2
c.jalrlsb01: nop
la x3, c.jalrlsb10 # load address of label
addi x3, x3, 2 # add 2 to address
c.jalr x3 # jump to address with bottom two lsbs = 10
c.nop # something to jump over
.align 2
c.jalrlsb10: nop
la x3, c.jalrlsb11 # load address of label
addi x3, x3, 3 # add 3 to address
c.jalr x3 # jump to address with bottom two lsbs = 11
c.nop # something to jump over
.align 2
c.jalrlsb11: nop

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.addi.S
// ******************


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

#.EQU SIGSIZE,748


// ******************
// Tests from: WALLY-COV-c.jal.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: nop
c.jal 1b # backward branch
3: nop # done with sequence

.align 2 # Start at an address multiple of 4. Required for covering 2 byte jump.

# Testcase cp_imm_corners_jal 1
.align 13
 # start all tests on a multiple of the largest one
c.jal 1f
1: 
c.jal f2_c.jal

# Testcase cp_imm_corners_jal 2
.align 1
b1_c.jal:
c.jal f3_c.jal # jump to aligned address to stress immediate
.align 1
f2_c.jal:
c.jal b1_c.jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 3
.align 2
b2_c.jal:
c.jal f4_c.jal # jump to aligned address to stress immediate
.align 2
f3_c.jal:
c.jal b2_c.jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 4
.align 3
b3_c.jal:
c.jal f5_c.jal # jump to aligned address to stress immediate
.align 3
f4_c.jal:
c.jal b3_c.jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 5
.align 4
b4_c.jal:
c.jal f6_c.jal # jump to aligned address to stress immediate
.align 4
f5_c.jal:
c.jal b4_c.jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 6
.align 5
b5_c.jal:
c.jal f7_c.jal # jump to aligned address to stress immediate
.align 5
f6_c.jal:
c.jal b5_c.jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 7
.align 6
b6_c.jal:
c.jal f8_c.jal # jump to aligned address to stress immediate
.align 6
f7_c.jal:
c.jal b6_c.jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 8
.align 7
b7_c.jal:
c.jal f9_c.jal # jump to aligned address to stress immediate
.align 7
f8_c.jal:
c.jal b7_c.jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 9
.align 8
b8_c.jal:
c.jal f10_c.jal # jump to aligned address to stress immediate
.align 8
f9_c.jal:
c.jal b8_c.jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 10
.align 9
b9_c.jal:
c.jal f11_c.jal # jump to aligned address to stress immediate
.align 9
f10_c.jal:
c.jal b9_c.jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 11
.align 10
b10_c.jal:
c.jal f12_c.jal # jump to aligned address to stress immediate
.align 10
f11_c.jal:
c.jal b10_c.jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 12
.align 11
b11_c.jal:
c.jal f13_c.jal # jump to aligned address to stress immediate
.align 11
f12_c.jal:
.half 0x3001 # backward jal by -2048 to b12; GCC is not generating this compressed branch properly per https://github.com/riscv-collab/riscv-gnu-toolchain/issues/1647
f13_c.jal:

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.sub.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x9, 0x937c36bf # initialize rs2
li x11, 0x00000000 # initialize rd,rs1
c.sub x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x9, 0xbb99dc3b # initialize rs2
li x12, 0x00000001 # initialize rd,rs1
c.sub x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0xe37ca2a8 # initialize rs2
li x8, 0x00000002 # initialize rd,rs1
c.sub x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x11, 0xc9edfe9e # initialize rs2
li x8, 0x80000000 # initialize rd,rs1
c.sub x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x9, 0x2e505f91 # initialize rs2
li x13, 0x80000001 # initialize rd,rs1
c.sub x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x14, 0xe4607400 # initialize rs2
li x8, 0x7fffffff # initialize rd,rs1
c.sub x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x8, 0x8af80f2c # initialize rs2
li x9, 0x7ffffffe # initialize rd,rs1
c.sub x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0x7c5528a9 # initialize rs2
li x15, 0xffffffff # initialize rd,rs1
c.sub x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0xb94d0091 # initialize rs2
li x9, 0xfffffffe # initialize rd,rs1
c.sub x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x9, 0xca5b34e8 # initialize rs2
li x11, 0x5bbc8872 # initialize rd,rs1
c.sub x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x11, 0xf206fba2 # initialize rs2
li x9, 0xaaaaaaaa # initialize rd,rs1
c.sub x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x11, 0x142723e7 # initialize rs2
li x8, 0x55555555 # initialize rd,rs1
c.sub x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 44)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0x00000000 # initialize rs2
li x14, 0x6663e2b5 # initialize rd,rs1
c.sub x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0x00000001 # initialize rs2
li x15, 0xc543fdf5 # initialize rd,rs1
c.sub x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 52)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x14, 0x00000002 # initialize rs2
li x15, 0x669b6cad # initialize rd,rs1
c.sub x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x9, 0x80000000 # initialize rs2
li x15, 0x305b2ff3 # initialize rd,rs1
c.sub x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x10, 0x80000001 # initialize rs2
li x11, 0x501d5038 # initialize rd,rs1
c.sub x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x8, 0x7fffffff # initialize rs2
li x14, 0x52a01d23 # initialize rd,rs1
c.sub x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 68)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x13, 0x7ffffffe # initialize rs2
li x8, 0x8a07fd0f # initialize rd,rs1
c.sub x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 72)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x9, 0xffffffff # initialize rs2
li x13, 0xb65add60 # initialize rd,rs1
c.sub x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 76)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x12, 0xfffffffe # initialize rs2
li x8, 0xb3deda41 # initialize rd,rs1
c.sub x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x9, 0x5bbc8872 # initialize rs2
li x14, 0xc800d913 # initialize rd,rs1
c.sub x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 84)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x15, 0xaaaaaaaa # initialize rs2
li x11, 0x70722979 # initialize rd,rs1
c.sub x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x14, 0x55555555 # initialize rs2
li x10, 0x8adf2c09 # initialize rd,rs1
c.sub x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 92)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xeec5e9fc # initialize rs2
li x15, 0x4ca53162 # initialize rd,rs1
c.sub x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xe05c13c7 # initialize rs2
li x15, 0x9e61ee13 # initialize rd,rs1
c.sub x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xa54c8854 # initialize rs2
li x9, 0x1d2141c3 # initialize rd,rs1
c.sub x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x11350530 # initialize rs2
li x10, 0x4578a503 # initialize rd,rs1
c.sub x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x0e1c4c50 # initialize rs2
li x10, 0x3b4fa2fe # initialize rd,rs1
c.sub x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xd03e30b6 # initialize rs2
li x9, 0x3aee80b1 # initialize rd,rs1
c.sub x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x9771ae70 # initialize rs2
li x13, 0xea2599c9 # initialize rd,rs1
c.sub x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xaf8cabce # initialize rs2
li x11, 0xbe96db25 # initialize rd,rs1
c.sub x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 124)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x67a15c24 # initialize rs2
li x8, 0x22ed7eae # initialize rd,rs1
c.sub x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xfe6e87f8 # initialize rs2
li x9, 0x07896902 # initialize rd,rs1
c.sub x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 132)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x4c67750b # initialize rs2
li x10, 0xe3a7bca1 # initialize rd,rs1
c.sub x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xd7f38443 # initialize rs2
li x11, 0xfcddf1fe # initialize rd,rs1
c.sub x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 140)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x45b030c4 # initialize rs2
li x12, 0xa6214083 # initialize rd,rs1
c.sub x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x4d9a1a7b # initialize rs2
li x13, 0xdb9fb409 # initialize rd,rs1
c.sub x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 148)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x19e5da23 # initialize rs2
li x14, 0x2e4ea7bf # initialize rd,rs1
c.sub x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xff2c6f67 # initialize rs2
li x15, 0x894dc6af # initialize rd,rs1
c.sub x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 156)

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0xc9b387fa # initialize rs2
li x9, 0x6d29d614 # initialize rd,rs1
c.sub x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0xea32a723 # initialize rs2
li x11, 0x99fab9a3 # initialize rd,rs1
c.sub x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 164)

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0xe7c94b37 # initialize rs2
li x12, 0xe002ff9d # initialize rd,rs1
c.sub x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x22871b48 # initialize rs2
li x12, 0x634f3230 # initialize rd,rs1
c.sub x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 172)

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0x6f06b959 # initialize rs2
li x15, 0x0afb5213 # initialize rd,rs1
c.sub x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 176)

# Testcase cp_rs1 (Test source rs1 = x13)
li x9, 0x9df793f6 # initialize rs2
li x10, 0x82e87f82 # initialize rd,rs1
c.sub x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 180)

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0xc549f63e # initialize rs2
li x13, 0x8f6160fd # initialize rd,rs1
c.sub x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x02ce0085 # initialize rs2
li x10, 0xf62ed646 # initialize rd,rs1
c.sub x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 188)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xfa4c0bab # initialize rs2
li x13, 0xa38a409c # initialize rd,rs1
c.sub x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 192)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x8381c0a4 # initialize rs2
li x13, 0x0ce6041f # initialize rd,rs1
c.sub x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 196)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x4cba77ca # initialize rs2
li x14, 0xd53fd6c0 # initialize rd,rs1
c.sub x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xab1f0b94 # initialize rs2
li x13, 0x560f860f # initialize rd,rs1
c.sub x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 204)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x8bef0c4c # initialize rs2
li x11, 0x1a8ea863 # initialize rd,rs1
c.sub x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 208)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x50f66e9a # initialize rs2
li x11, 0x78112064 # initialize rd,rs1
c.sub x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 212)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x3aaf7a10 # initialize rs2
li x13, 0x803ba8e0 # initialize rd,rs1
c.sub x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x068756e6 # initialize rs2
li x8, 0x85c9efb9 # initialize rd,rs1
c.sub x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 220)

# Testcase cp_rd (Test destination rd = x8)
li x11, 0xa55156b9 # initialize rs2
li x8, 0xab2b7e30 # initialize rd,rs1
c.sub x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0xae70e855 # initialize rs2
li x9, 0x3e25814c # initialize rd,rs1
c.sub x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 228)

# Testcase cp_rd (Test destination rd = x10)
li x11, 0xebad5f00 # initialize rs2
li x10, 0x93072a78 # initialize rd,rs1
c.sub x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0xbde72341 # initialize rs2
li x11, 0x1787e5d6 # initialize rd,rs1
c.sub x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 236)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x780b88e4 # initialize rs2
li x12, 0xa3f5914d # initialize rd,rs1
c.sub x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0x182d823d # initialize rs2
li x13, 0xa45e7736 # initialize rd,rs1
c.sub x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 244)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0x98a2a2ff # initialize rs2
li x14, 0x4a5e8912 # initialize rd,rs1
c.sub x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rd (Test destination rd = x15)
li x8, 0x2d049250 # initialize rs2
li x15, 0x207f0d1d # initialize rd,rs1
c.sub x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 252)

#.EQU SIGSIZE,256


// ******************
// Tests from: WALLY-COV-c.lui.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0xda245f74 # initialize rs1
c.lui x1, 0xffffd # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x9, 0x41244b11 # initialize rs1
c.lui x9, 0x1b # perform operation
RVTEST_SIGUPD(x4, x0, x9, 4)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xe973945f # initialize rs1
c.lui x3, 0xd # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xefc2eba4 # initialize rs1
c.lui x4, 0xfffe9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 12)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4cf1adbc # initialize rs1
c.lui x5, 0xfffe1 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 16)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x33ac48c4 # initialize rs1
c.lui x6, 0xffffb # perform operation
RVTEST_SIGUPD(x7, x0, x6, 20)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3e71ad54 # initialize rs1
c.lui x7, 0xe # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xa5751256 # initialize rs1
c.lui x8, 0xffffa # perform operation
RVTEST_SIGUPD(x4, x0, x8, 28)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6883504b # initialize rs1
c.lui x9, 0xffff1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xe91906ec # initialize rs1
c.lui x10, 0xfffe6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 36)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x81eb48e8 # initialize rs1
c.lui x11, 0xffff5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xd2d497ca # initialize rs1
c.lui x12, 0xffff4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x5cf515e6 # initialize rs1
c.lui x13, 0x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x6536b834 # initialize rs1
c.lui x14, 0x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 52)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x25327d27 # initialize rs1
c.lui x15, 0xfffe6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xaa066881 # initialize rs1
c.lui x16, 0xfffea # perform operation
RVTEST_SIGUPD(x4, x0, x16, 60)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x53c9aac2 # initialize rs1
c.lui x17, 0xfffea # perform operation
RVTEST_SIGUPD(x4, x0, x17, 64)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x2839f082 # initialize rs1
c.lui x18, 0xffff3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 68)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xd900d7bc # initialize rs1
c.lui x19, 0xffff6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 72)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xb4409a21 # initialize rs1
c.lui x20, 0xffff3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 76)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xc09822e8 # initialize rs1
c.lui x21, 0x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 80)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x11cfbcb4 # initialize rs1
c.lui x22, 0xfffe7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 84)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x6dcb75bc # initialize rs1
c.lui x23, 0xfffe7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xb9269ba3 # initialize rs1
c.lui x24, 0x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 92)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x038c3be3 # initialize rs1
c.lui x25, 0xfffe7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xf3fefb5f # initialize rs1
c.lui x26, 0x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 100)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x47adeba7 # initialize rs1
c.lui x27, 0xfffe3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x05706670 # initialize rs1
c.lui x28, 0xffff0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 108)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x293f3dc4 # initialize rs1
c.lui x29, 0x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x6a1b428b # initialize rs1
c.lui x30, 0xfffe1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 116)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x06a4f3cc # initialize rs1
c.lui x31, 0xfffff # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_imm_corners
li x28, 0x26767077 # initialize rs1
c.lui x28, 0x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 124)

# Testcase cp_imm_corners
li x30, 0x779013b6 # initialize rs1
c.lui x30, 0x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 128)

# Testcase cp_imm_corners
li x26, 0x3ded0aa2 # initialize rs1
c.lui x26, 0x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 132)

# Testcase cp_imm_corners
li x30, 0x85ff0d15 # initialize rs1
c.lui x30, 0x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 136)

# Testcase cp_imm_corners
li x13, 0xa8a62a54 # initialize rs1
c.lui x13, 0x4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 140)

# Testcase cp_imm_corners
li x11, 0x2d242132 # initialize rs1
c.lui x11, 0x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cp_imm_corners
li x14, 0xac378820 # initialize rs1
c.lui x14, 0x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 148)

# Testcase cp_imm_corners
li x24, 0xce22d6ca # initialize rs1
c.lui x24, 0x1e # perform operation
RVTEST_SIGUPD(x4, x0, x24, 152)

# Testcase cp_imm_corners
li x19, 0x40442262 # initialize rs1
c.lui x19, 0x1f # perform operation
RVTEST_SIGUPD(x4, x0, x19, 156)

# Testcase cp_imm_corners
li x11, 0xa295e4a7 # initialize rs1
c.lui x11, 0xfffe0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_imm_corners
li x5, 0x7bfa7748 # initialize rs1
c.lui x5, 0xfffe1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 164)

# Testcase cp_imm_corners
li x9, 0x91909575 # initialize rs1
c.lui x9, 0xffffe # perform operation
RVTEST_SIGUPD(x4, x0, x9, 168)

# Testcase cp_imm_corners
li x9, 0x0f18b388 # initialize rs1
c.lui x9, 0xfffff # perform operation
RVTEST_SIGUPD(x4, x0, x9, 172)

#.EQU SIGSIZE,176


// ******************
// Tests from: WALLY-COV-c.lwsp.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0xa9b00890 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.swsp x14, 80(sp)   # store value to put something in memory
c.lwsp x1, 80(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x57145fc6 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x7, 72(sp)   # store value to put something in memory
c.lwsp x2, 72(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 4)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xb65233e4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -204 # sub immediate from rs1 to counter offset
c.swsp x11, 204(sp)   # store value to put something in memory
c.lwsp x3, 204(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8930da60 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -172 # sub immediate from rs1 to counter offset
c.swsp x10, 172(sp)   # store value to put something in memory
c.lwsp x4, 172(sp) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 12)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x75533601 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
c.swsp x26, 64(sp)   # store value to put something in memory
c.lwsp x5, 64(sp) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 16)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb1dd325e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x10, 168(sp)   # store value to put something in memory
c.lwsp x6, 168(sp) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 20)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdd6f8b6d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.swsp x25, 112(sp)   # store value to put something in memory
c.lwsp x7, 112(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xbef6664e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
c.swsp x23, 92(sp)   # store value to put something in memory
c.lwsp x8, 92(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 28)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x47c416cb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -52 # sub immediate from rs1 to counter offset
c.swsp x20, 52(sp)   # store value to put something in memory
c.lwsp x9, 52(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x33effd0a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.swsp x29, 208(sp)   # store value to put something in memory
c.lwsp x10, 208(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 36)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xbe56ef1f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.swsp x15, 88(sp)   # store value to put something in memory
c.lwsp x11, 88(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xf898ffbd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
c.swsp x16, 68(sp)   # store value to put something in memory
c.lwsp x12, 68(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x96c38307 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.swsp x25, 144(sp)   # store value to put something in memory
c.lwsp x13, 144(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x6b529966 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -60 # sub immediate from rs1 to counter offset
c.swsp x14, 60(sp)   # store value to put something in memory
c.lwsp x14, 60(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 52)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x612b8458 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x26, 0(sp)   # store value to put something in memory
c.lwsp x15, 0(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x9a94fd97 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -172 # sub immediate from rs1 to counter offset
c.swsp x27, 172(sp)   # store value to put something in memory
c.lwsp x16, 172(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 60)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xc001f167 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -28 # sub immediate from rs1 to counter offset
c.swsp x24, 28(sp)   # store value to put something in memory
c.lwsp x17, 28(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 64)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x44a7e04b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.swsp x28, 56(sp)   # store value to put something in memory
c.lwsp x18, 56(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 68)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xfa03e10d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -172 # sub immediate from rs1 to counter offset
c.swsp x17, 172(sp)   # store value to put something in memory
c.lwsp x19, 172(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 72)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xe9985a3c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -52 # sub immediate from rs1 to counter offset
c.swsp x23, 52(sp)   # store value to put something in memory
c.lwsp x20, 52(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 76)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x21908a1d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
c.swsp x7, 68(sp)   # store value to put something in memory
c.lwsp x21, 68(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 80)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xba44622e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
c.swsp x31, 36(sp)   # store value to put something in memory
c.lwsp x22, 36(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 84)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xf00e1fd2 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.swsp x13, 48(sp)   # store value to put something in memory
c.lwsp x23, 48(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x0ac22985 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.swsp x19, 200(sp)   # store value to put something in memory
c.lwsp x24, 200(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 92)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x38d21d18 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.swsp x15, 200(sp)   # store value to put something in memory
c.lwsp x25, 200(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x0d17a617 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.swsp x8, 240(sp)   # store value to put something in memory
c.lwsp x26, 240(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 100)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xb0c97d0c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -236 # sub immediate from rs1 to counter offset
c.swsp x1, 236(sp)   # store value to put something in memory
c.lwsp x27, 236(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x6f74bb4f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.swsp x29, 200(sp)   # store value to put something in memory
c.lwsp x28, 200(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 108)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x55db42f1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.swsp x9, 56(sp)   # store value to put something in memory
c.lwsp x29, 56(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xc8776607 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -156 # sub immediate from rs1 to counter offset
c.swsp x5, 156(sp)   # store value to put something in memory
c.lwsp x30, 156(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 116)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x1ee3aa99 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
c.swsp x3, 40(sp)   # store value to put something in memory
c.lwsp x31, 40(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_imm_mul
li x30, 0xb99f3830 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x19, 0(sp)   # store value to put something in memory
c.lwsp x30, 0(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 124)

# Testcase cp_imm_mul
li x22, 0xd1f1e569 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -4 # sub immediate from rs1 to counter offset
c.swsp x1, 4(sp)   # store value to put something in memory
c.lwsp x22, 4(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 128)

# Testcase cp_imm_mul
li x26, 0x7b70dc13 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.swsp x3, 8(sp)   # store value to put something in memory
c.lwsp x26, 8(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 132)

# Testcase cp_imm_mul
li x6, 0x1dc979a9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -12 # sub immediate from rs1 to counter offset
c.swsp x11, 12(sp)   # store value to put something in memory
c.lwsp x6, 12(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 136)

# Testcase cp_imm_mul
li x1, 0x38c5a964 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.swsp x30, 16(sp)   # store value to put something in memory
c.lwsp x1, 16(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 140)

# Testcase cp_imm_mul
li x30, 0x1352e213 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -20 # sub immediate from rs1 to counter offset
c.swsp x28, 20(sp)   # store value to put something in memory
c.lwsp x30, 20(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 144)

# Testcase cp_imm_mul
li x24, 0xde9819a0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.swsp x16, 24(sp)   # store value to put something in memory
c.lwsp x24, 24(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 148)

# Testcase cp_imm_mul
li x13, 0x36256a97 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -28 # sub immediate from rs1 to counter offset
c.swsp x8, 28(sp)   # store value to put something in memory
c.lwsp x13, 28(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 152)

# Testcase cp_imm_mul
li x5, 0x4bdc695a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.swsp x10, 32(sp)   # store value to put something in memory
c.lwsp x5, 32(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 156)

# Testcase cp_imm_mul
li x24, 0x8d6d6265 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
c.swsp x22, 36(sp)   # store value to put something in memory
c.lwsp x24, 36(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cp_imm_mul
li x13, 0x117627e9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
c.swsp x26, 40(sp)   # store value to put something in memory
c.lwsp x13, 40(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 164)

# Testcase cp_imm_mul
li x24, 0x828f00d4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -44 # sub immediate from rs1 to counter offset
c.swsp x20, 44(sp)   # store value to put something in memory
c.lwsp x24, 44(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 168)

# Testcase cp_imm_mul
li x10, 0x03bb81bd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.swsp x27, 48(sp)   # store value to put something in memory
c.lwsp x10, 48(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 172)

# Testcase cp_imm_mul
li x11, 0x9a836368 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -52 # sub immediate from rs1 to counter offset
c.swsp x12, 52(sp)   # store value to put something in memory
c.lwsp x11, 52(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 176)

# Testcase cp_imm_mul
li x19, 0xffe8ed9c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.swsp x11, 56(sp)   # store value to put something in memory
c.lwsp x19, 56(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 180)

# Testcase cp_imm_mul
li x27, 0xd33ae7be # initialize rs1
la sp, scratch # base address 
addi sp, sp, -60 # sub immediate from rs1 to counter offset
c.swsp x21, 60(sp)   # store value to put something in memory
c.lwsp x27, 60(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 184)

# Testcase cp_imm_mul
li x19, 0x0d50d3db # initialize rs1
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
c.swsp x5, 64(sp)   # store value to put something in memory
c.lwsp x19, 64(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 188)

# Testcase cp_imm_mul
li x17, 0xd8deb24b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
c.swsp x14, 68(sp)   # store value to put something in memory
c.lwsp x17, 68(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_imm_mul
li x28, 0x2aa0fbcd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x18, 72(sp)   # store value to put something in memory
c.lwsp x28, 72(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 196)

# Testcase cp_imm_mul
li x20, 0x244e318e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -76 # sub immediate from rs1 to counter offset
c.swsp x24, 76(sp)   # store value to put something in memory
c.lwsp x20, 76(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cp_imm_mul
li x30, 0x4a14c1ac # initialize rs1
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.swsp x7, 80(sp)   # store value to put something in memory
c.lwsp x30, 80(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 204)

# Testcase cp_imm_mul
li x1, 0x251d7dd0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -84 # sub immediate from rs1 to counter offset
c.swsp x2, 84(sp)   # store value to put something in memory
c.lwsp x1, 84(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cp_imm_mul
li x31, 0xd616ba3d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.swsp x27, 88(sp)   # store value to put something in memory
c.lwsp x31, 88(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 212)

# Testcase cp_imm_mul
li x2, 0xba022e4d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
c.swsp x26, 92(sp)   # store value to put something in memory
c.lwsp x2, 92(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cp_imm_mul
li x15, 0x511c6222 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.swsp x11, 96(sp)   # store value to put something in memory
c.lwsp x15, 96(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 220)

# Testcase cp_imm_mul
li x17, 0x51eeed3f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -100 # sub immediate from rs1 to counter offset
c.swsp x19, 100(sp)   # store value to put something in memory
c.lwsp x17, 100(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 224)

# Testcase cp_imm_mul
li x24, 0x26ddef1a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
c.swsp x2, 104(sp)   # store value to put something in memory
c.lwsp x24, 104(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 228)

# Testcase cp_imm_mul
li x14, 0x397a4beb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -108 # sub immediate from rs1 to counter offset
c.swsp x21, 108(sp)   # store value to put something in memory
c.lwsp x14, 108(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 232)

# Testcase cp_imm_mul
li x22, 0x6897f40e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.swsp x15, 112(sp)   # store value to put something in memory
c.lwsp x22, 112(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 236)

# Testcase cp_imm_mul
li x6, 0xa527711a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -116 # sub immediate from rs1 to counter offset
c.swsp x1, 116(sp)   # store value to put something in memory
c.lwsp x6, 116(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 240)

# Testcase cp_imm_mul
li x19, 0x38c5ab9d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -120 # sub immediate from rs1 to counter offset
c.swsp x11, 120(sp)   # store value to put something in memory
c.lwsp x19, 120(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 244)

# Testcase cp_imm_mul
li x2, 0x82f18ffe # initialize rs1
la sp, scratch # base address 
addi sp, sp, -124 # sub immediate from rs1 to counter offset
c.swsp x21, 124(sp)   # store value to put something in memory
c.lwsp x2, 124(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 248)

# Testcase cp_imm_mul
li x28, 0xae803a4e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
c.swsp x20, 128(sp)   # store value to put something in memory
c.lwsp x28, 128(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 252)

# Testcase cp_imm_mul
li x25, 0x5c3a8dc5 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -132 # sub immediate from rs1 to counter offset
c.swsp x17, 132(sp)   # store value to put something in memory
c.lwsp x25, 132(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 256)

# Testcase cp_imm_mul
li x2, 0xb8c41bd6 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.swsp x11, 136(sp)   # store value to put something in memory
c.lwsp x2, 136(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 260)

# Testcase cp_imm_mul
li x17, 0x26b73749 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -140 # sub immediate from rs1 to counter offset
c.swsp x10, 140(sp)   # store value to put something in memory
c.lwsp x17, 140(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 264)

# Testcase cp_imm_mul
li x22, 0x7ef6d2ee # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.swsp x1, 144(sp)   # store value to put something in memory
c.lwsp x22, 144(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 268)

# Testcase cp_imm_mul
li x12, 0xcb942fc6 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -148 # sub immediate from rs1 to counter offset
c.swsp x7, 148(sp)   # store value to put something in memory
c.lwsp x12, 148(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cp_imm_mul
li x2, 0xc5082ea4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
c.swsp x24, 152(sp)   # store value to put something in memory
c.lwsp x2, 152(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 276)

# Testcase cp_imm_mul
li x6, 0x3e618302 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -156 # sub immediate from rs1 to counter offset
c.swsp x26, 156(sp)   # store value to put something in memory
c.lwsp x6, 156(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 280)

# Testcase cp_imm_mul
li x7, 0xed586c83 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
c.swsp x31, 160(sp)   # store value to put something in memory
c.lwsp x7, 160(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_imm_mul
li x7, 0x1575eb09 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -164 # sub immediate from rs1 to counter offset
c.swsp x1, 164(sp)   # store value to put something in memory
c.lwsp x7, 164(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 288)

# Testcase cp_imm_mul
li x18, 0xca2ca40b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x17, 168(sp)   # store value to put something in memory
c.lwsp x18, 168(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 292)

# Testcase cp_imm_mul
li x1, 0x34ba8b87 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -172 # sub immediate from rs1 to counter offset
c.swsp x26, 172(sp)   # store value to put something in memory
c.lwsp x1, 172(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 296)

# Testcase cp_imm_mul
li x27, 0x5b92e671 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
c.swsp x24, 176(sp)   # store value to put something in memory
c.lwsp x27, 176(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 300)

# Testcase cp_imm_mul
li x6, 0xa7331746 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -180 # sub immediate from rs1 to counter offset
c.swsp x9, 180(sp)   # store value to put something in memory
c.lwsp x6, 180(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 304)

# Testcase cp_imm_mul
li x19, 0xf7dd332d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
c.swsp x2, 184(sp)   # store value to put something in memory
c.lwsp x19, 184(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 308)

# Testcase cp_imm_mul
li x26, 0x1775d153 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -188 # sub immediate from rs1 to counter offset
c.swsp x15, 188(sp)   # store value to put something in memory
c.lwsp x26, 188(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 312)

# Testcase cp_imm_mul
li x20, 0xdbf12199 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.swsp x19, 192(sp)   # store value to put something in memory
c.lwsp x20, 192(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 316)

# Testcase cp_imm_mul
li x17, 0xa6f914d7 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -196 # sub immediate from rs1 to counter offset
c.swsp x30, 196(sp)   # store value to put something in memory
c.lwsp x17, 196(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 320)

# Testcase cp_imm_mul
li x20, 0x7c0bccbb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.swsp x9, 200(sp)   # store value to put something in memory
c.lwsp x20, 200(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 324)

# Testcase cp_imm_mul
li x28, 0x9f8edf46 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -204 # sub immediate from rs1 to counter offset
c.swsp x29, 204(sp)   # store value to put something in memory
c.lwsp x28, 204(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 328)

# Testcase cp_imm_mul
li x5, 0x6a234067 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.swsp x12, 208(sp)   # store value to put something in memory
c.lwsp x5, 208(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 332)

# Testcase cp_imm_mul
li x28, 0x3a8ea5d4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -212 # sub immediate from rs1 to counter offset
c.swsp x15, 212(sp)   # store value to put something in memory
c.lwsp x28, 212(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 336)

# Testcase cp_imm_mul
li x28, 0x03fe4194 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.swsp x31, 216(sp)   # store value to put something in memory
c.lwsp x28, 216(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 340)

# Testcase cp_imm_mul
li x27, 0xa100e5ee # initialize rs1
la sp, scratch # base address 
addi sp, sp, -220 # sub immediate from rs1 to counter offset
c.swsp x16, 220(sp)   # store value to put something in memory
c.lwsp x27, 220(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 344)

# Testcase cp_imm_mul
li x18, 0x6b481060 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
c.swsp x15, 224(sp)   # store value to put something in memory
c.lwsp x18, 224(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 348)

# Testcase cp_imm_mul
li x8, 0xe63cdeda # initialize rs1
la sp, scratch # base address 
addi sp, sp, -228 # sub immediate from rs1 to counter offset
c.swsp x6, 228(sp)   # store value to put something in memory
c.lwsp x8, 228(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 352)

# Testcase cp_imm_mul
li x11, 0x1024fc97 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
c.swsp x13, 232(sp)   # store value to put something in memory
c.lwsp x11, 232(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 356)

# Testcase cp_imm_mul
li x2, 0x5cd934a1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -236 # sub immediate from rs1 to counter offset
c.swsp x16, 236(sp)   # store value to put something in memory
c.lwsp x2, 236(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 360)

# Testcase cp_imm_mul
li x3, 0xcab71460 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.swsp x12, 240(sp)   # store value to put something in memory
c.lwsp x3, 240(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 364)

# Testcase cp_imm_mul
li x15, 0x22d94f02 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -244 # sub immediate from rs1 to counter offset
c.swsp x21, 244(sp)   # store value to put something in memory
c.lwsp x15, 244(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 368)

# Testcase cp_imm_mul
li x2, 0x9f328011 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.swsp x18, 248(sp)   # store value to put something in memory
c.lwsp x2, 248(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 372)

# Testcase cp_imm_mul
li x17, 0xceef18fd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x8, 252(sp)   # store value to put something in memory
c.lwsp x17, 252(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

#.EQU SIGSIZE,380


// ******************
// Tests from: WALLY-COV-c.addi16sp.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_imm_mul
li x8, 0x15088dd7 # initialize rs1
c.addi16sp sp, -512 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cp_imm_mul
li x17, 0x10248b27 # initialize rs1
c.addi16sp sp, -496 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 4)

# Testcase cp_imm_mul
li x9, 0x466d55d0 # initialize rs1
c.addi16sp sp, -480 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_imm_mul
li x18, 0x035721e2 # initialize rs1
c.addi16sp sp, -464 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 12)

# Testcase cp_imm_mul
li x6, 0x4630457e # initialize rs1
c.addi16sp sp, -448 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_imm_mul
li x3, 0xa20aa328 # initialize rs1
c.addi16sp sp, -432 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 20)

# Testcase cp_imm_mul
li x18, 0x5b71ae40 # initialize rs1
c.addi16sp sp, -416 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 24)

# Testcase cp_imm_mul
li x15, 0xa1e9bb60 # initialize rs1
c.addi16sp sp, -400 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 28)

# Testcase cp_imm_mul
li x21, 0xfd903db2 # initialize rs1
c.addi16sp sp, -384 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 32)

# Testcase cp_imm_mul
li x20, 0x191eabf8 # initialize rs1
c.addi16sp sp, -368 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 36)

# Testcase cp_imm_mul
li x24, 0xc7a26f58 # initialize rs1
c.addi16sp sp, -352 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 40)

# Testcase cp_imm_mul
li x24, 0x0262f918 # initialize rs1
c.addi16sp sp, -336 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 44)

# Testcase cp_imm_mul
li x23, 0xd1877d13 # initialize rs1
c.addi16sp sp, -320 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 48)

# Testcase cp_imm_mul
li x16, 0x5befa036 # initialize rs1
c.addi16sp sp, -304 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 52)

# Testcase cp_imm_mul
li x28, 0x41175f47 # initialize rs1
c.addi16sp sp, -288 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 56)

# Testcase cp_imm_mul
li x21, 0x0bfd8394 # initialize rs1
c.addi16sp sp, -272 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 60)

# Testcase cp_imm_mul
li x19, 0xa55893ed # initialize rs1
c.addi16sp sp, -256 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 64)

# Testcase cp_imm_mul
li x29, 0x21d1c94d # initialize rs1
c.addi16sp sp, -240 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 68)

# Testcase cp_imm_mul
li x11, 0x19cc9700 # initialize rs1
c.addi16sp sp, -224 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 72)

# Testcase cp_imm_mul
li x8, 0xb9ba5144 # initialize rs1
c.addi16sp sp, -208 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 76)

# Testcase cp_imm_mul
li x1, 0x741af798 # initialize rs1
c.addi16sp sp, -192 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 80)

# Testcase cp_imm_mul
li x24, 0xa9bbdefe # initialize rs1
c.addi16sp sp, -176 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 84)

# Testcase cp_imm_mul
li x5, 0xb2d0951c # initialize rs1
c.addi16sp sp, -160 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_imm_mul
li x17, 0xc021ce64 # initialize rs1
c.addi16sp sp, -144 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 92)

# Testcase cp_imm_mul
li x9, 0xf4139ce6 # initialize rs1
c.addi16sp sp, -128 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 96)

# Testcase cp_imm_mul
li x9, 0x85dab7f4 # initialize rs1
c.addi16sp sp, -112 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 100)

# Testcase cp_imm_mul
li x30, 0xefd05eda # initialize rs1
c.addi16sp sp, -96 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 104)

# Testcase cp_imm_mul
li x16, 0x9609962d # initialize rs1
c.addi16sp sp, -80 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 108)

# Testcase cp_imm_mul
li x12, 0x3c204007 # initialize rs1
c.addi16sp sp, -64 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_imm_mul
li x7, 0x55ca6f88 # initialize rs1
c.addi16sp sp, -48 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_imm_mul
li x5, 0x6e5e97f1 # initialize rs1
c.addi16sp sp, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 120)

# Testcase cp_imm_mul
li x12, 0xd5f7fead # initialize rs1
c.addi16sp sp, -16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 124)

# Testcase cp_imm_mul
li x8, 0x4106a67c # initialize rs1
c.addi16sp sp, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_imm_mul
li x27, 0x28c7d986 # initialize rs1
c.addi16sp sp, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 132)

# Testcase cp_imm_mul
li x25, 0x3310447c # initialize rs1
c.addi16sp sp, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_imm_mul
li x11, 0xa622a2f2 # initialize rs1
c.addi16sp sp, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 140)

# Testcase cp_imm_mul
li x29, 0x6db321cf # initialize rs1
c.addi16sp sp, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 144)

# Testcase cp_imm_mul
li x13, 0x95bf085d # initialize rs1
c.addi16sp sp, 80 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 148)

# Testcase cp_imm_mul
li x11, 0x7ded6149 # initialize rs1
c.addi16sp sp, 96 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 152)

# Testcase cp_imm_mul
li x18, 0xadee526e # initialize rs1
c.addi16sp sp, 112 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 156)

# Testcase cp_imm_mul
li x17, 0xdfd1c6d2 # initialize rs1
c.addi16sp sp, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cp_imm_mul
li x2, 0x0354ed85 # initialize rs1
c.addi16sp sp, 144 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 164)

# Testcase cp_imm_mul
li x13, 0x5267e99f # initialize rs1
c.addi16sp sp, 160 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase cp_imm_mul
li x16, 0x91ae58d0 # initialize rs1
c.addi16sp sp, 176 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 172)

# Testcase cp_imm_mul
li x11, 0x7c02204a # initialize rs1
c.addi16sp sp, 192 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 176)

# Testcase cp_imm_mul
li x25, 0x200065f1 # initialize rs1
c.addi16sp sp, 208 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 180)

# Testcase cp_imm_mul
li x21, 0x4b7939ef # initialize rs1
c.addi16sp sp, 224 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_imm_mul
li x27, 0x171bee0b # initialize rs1
c.addi16sp sp, 240 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 188)

# Testcase cp_imm_mul
li x13, 0xd709ef7c # initialize rs1
c.addi16sp sp, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 192)

# Testcase cp_imm_mul
li x10, 0xab26f180 # initialize rs1
c.addi16sp sp, 272 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 196)

# Testcase cp_imm_mul
li x30, 0x8ce0a3e5 # initialize rs1
c.addi16sp sp, 288 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 200)

# Testcase cp_imm_mul
li x3, 0x4abad0a6 # initialize rs1
c.addi16sp sp, 304 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 204)

# Testcase cp_imm_mul
li x22, 0xf8dab8cd # initialize rs1
c.addi16sp sp, 320 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 208)

# Testcase cp_imm_mul
li x8, 0xa22c9c56 # initialize rs1
c.addi16sp sp, 336 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 212)

# Testcase cp_imm_mul
li x15, 0xdc89928e # initialize rs1
c.addi16sp sp, 352 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cp_imm_mul
li x24, 0xac741839 # initialize rs1
c.addi16sp sp, 368 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 220)

# Testcase cp_imm_mul
li x25, 0x863a13c6 # initialize rs1
c.addi16sp sp, 384 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 224)

# Testcase cp_imm_mul
li x28, 0x54390d05 # initialize rs1
c.addi16sp sp, 400 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 228)

# Testcase cp_imm_mul
li x17, 0x7261d04f # initialize rs1
c.addi16sp sp, 416 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 232)

# Testcase cp_imm_mul
li x8, 0x9d4ec8a1 # initialize rs1
c.addi16sp sp, 432 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 236)

# Testcase cp_imm_mul
li x17, 0xf5033302 # initialize rs1
c.addi16sp sp, 448 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cp_imm_mul
li x13, 0xf296a4ef # initialize rs1
c.addi16sp sp, 464 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 244)

# Testcase cp_imm_mul
li x7, 0x9e202551 # initialize rs1
c.addi16sp sp, 480 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 248)

# Testcase cp_imm_mul
li x17, 0x19f85a4e # initialize rs1
c.addi16sp sp, 496 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 252)

#.EQU SIGSIZE,256


// ******************
// Tests from: WALLY-COV-c.srli.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x13, 0x00000000
c.srli x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x00000001
c.srli x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x00000002
c.srli x8, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x10, 0x80000000
c.srli x10, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x13, 0x80000001
c.srli x13, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x13, 0x7fffffff
c.srli x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x10, 0x7ffffffe
c.srli x10, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0xffffffff
c.srli x15, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0xfffffffe
c.srli x15, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x12, 0x5bbc8872
c.srli x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x11, 0xaaaaaaaa
c.srli x11, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x12, 0x55555555
c.srli x12, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000
c.srli x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 48)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000
c.srli x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 52)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000
c.srli x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000
c.srli x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 60)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000
c.srli x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000
c.srli x8, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 68)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000
c.srli x9, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000
c.srli x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 76)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000
c.srli x12, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000
c.srli x12, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 84)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000
c.srli x10, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cr_rs1_imm_corners
li x12, 0x00000001
c.srli x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 92)

# Testcase cr_rs1_imm_corners
li x8, 0x00000001
c.srli x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase cr_rs1_imm_corners
li x11, 0x00000001
c.srli x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 100)

# Testcase cr_rs1_imm_corners
li x8, 0x00000001
c.srli x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cr_rs1_imm_corners
li x15, 0x00000001
c.srli x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 108)

# Testcase cr_rs1_imm_corners
li x11, 0x00000001
c.srli x11, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cr_rs1_imm_corners
li x9, 0x00000001
c.srli x9, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 116)

# Testcase cr_rs1_imm_corners
li x12, 0x00000001
c.srli x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cr_rs1_imm_corners
li x12, 0x00000001
c.srli x12, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 124)

# Testcase cr_rs1_imm_corners
li x9, 0x00000001
c.srli x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 128)

# Testcase cr_rs1_imm_corners
li x15, 0x00000001
c.srli x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 132)

# Testcase cr_rs1_imm_corners
li x14, 0x00000002
c.srli x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cr_rs1_imm_corners
li x8, 0x00000002
c.srli x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 140)

# Testcase cr_rs1_imm_corners
li x13, 0x00000002
c.srli x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cr_rs1_imm_corners
li x10, 0x00000002
c.srli x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 148)

# Testcase cr_rs1_imm_corners
li x15, 0x00000002
c.srli x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cr_rs1_imm_corners
li x14, 0x00000002
c.srli x14, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 156)

# Testcase cr_rs1_imm_corners
li x9, 0x00000002
c.srli x9, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cr_rs1_imm_corners
li x15, 0x00000002
c.srli x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 164)

# Testcase cr_rs1_imm_corners
li x14, 0x00000002
c.srli x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 168)

# Testcase cr_rs1_imm_corners
li x11, 0x00000002
c.srli x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cr_rs1_imm_corners
li x13, 0x00000002
c.srli x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cr_rs1_imm_corners
li x8, 0x80000000
c.srli x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 180)

# Testcase cr_rs1_imm_corners
li x13, 0x80000000
c.srli x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cr_rs1_imm_corners
li x14, 0x80000000
c.srli x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 188)

# Testcase cr_rs1_imm_corners
li x8, 0x80000000
c.srli x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cr_rs1_imm_corners
li x11, 0x80000000
c.srli x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 196)

# Testcase cr_rs1_imm_corners
li x13, 0x80000000
c.srli x13, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 200)

# Testcase cr_rs1_imm_corners
li x10, 0x80000000
c.srli x10, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 204)

# Testcase cr_rs1_imm_corners
li x13, 0x80000000
c.srli x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cr_rs1_imm_corners
li x14, 0x80000000
c.srli x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 212)

# Testcase cr_rs1_imm_corners
li x11, 0x80000000
c.srli x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cr_rs1_imm_corners
li x13, 0x80000000
c.srli x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 220)

# Testcase cr_rs1_imm_corners
li x9, 0x80000001
c.srli x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 224)

# Testcase cr_rs1_imm_corners
li x12, 0x80000001
c.srli x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 228)

# Testcase cr_rs1_imm_corners
li x13, 0x80000001
c.srli x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cr_rs1_imm_corners
li x9, 0x80000001
c.srli x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 236)

# Testcase cr_rs1_imm_corners
li x10, 0x80000001
c.srli x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cr_rs1_imm_corners
li x13, 0x80000001
c.srli x13, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 244)

# Testcase cr_rs1_imm_corners
li x13, 0x80000001
c.srli x13, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cr_rs1_imm_corners
li x10, 0x80000001
c.srli x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 252)

# Testcase cr_rs1_imm_corners
li x10, 0x80000001
c.srli x10, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 256)

# Testcase cr_rs1_imm_corners
li x12, 0x80000001
c.srli x12, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 260)

# Testcase cr_rs1_imm_corners
li x11, 0x80000001
c.srli x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 264)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffff
c.srli x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 268)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff
c.srli x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 272)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffff
c.srli x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 276)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff
c.srli x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 280)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffff
c.srli x9, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 284)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffff
c.srli x12, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 288)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffff
c.srli x14, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 292)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff
c.srli x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 296)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffff
c.srli x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 300)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffff
c.srli x14, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 304)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffff
c.srli x12, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 308)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffe
c.srli x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 312)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffe
c.srli x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 316)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffe
c.srli x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 320)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffe
c.srli x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 324)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffe
c.srli x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffe
c.srli x9, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 332)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffe
c.srli x10, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffe
c.srli x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 340)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffe
c.srli x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 344)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffe
c.srli x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffe
c.srli x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 352)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffff
c.srli x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 356)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff
c.srli x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 360)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffff
c.srli x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 364)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffff
c.srli x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffff
c.srli x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 372)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff
c.srli x12, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 376)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffff
c.srli x14, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 380)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff
c.srli x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 384)

# Testcase cr_rs1_imm_corners
li x15, 0xffffffff
c.srli x15, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 388)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffff
c.srli x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 392)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffff
c.srli x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 396)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffe
c.srli x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 400)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffe
c.srli x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 404)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffe
c.srli x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 408)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffe
c.srli x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 412)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffe
c.srli x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 416)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffe
c.srli x11, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 420)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffe
c.srli x15, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 424)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffe
c.srli x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 428)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffe
c.srli x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffe
c.srli x12, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 436)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffe
c.srli x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc8872
c.srli x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 444)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc8872
c.srli x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 448)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc8872
c.srli x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 452)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8872
c.srli x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc8872
c.srli x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 460)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc8872
c.srli x10, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 464)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc8872
c.srli x14, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 468)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc8872
c.srli x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 472)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc8872
c.srli x15, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 476)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc8872
c.srli x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 480)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc8872
c.srli x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 484)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaa
c.srli x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaa
c.srli x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 492)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaa
c.srli x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 496)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaa
c.srli x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 500)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaa
c.srli x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 504)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaa
c.srli x10, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 508)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaa
c.srli x14, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 512)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaa
c.srli x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 516)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaa
c.srli x12, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 520)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaa
c.srli x8, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 524)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaa
c.srli x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 528)

# Testcase cr_rs1_imm_corners
li x14, 0x55555555
c.srli x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 532)

# Testcase cr_rs1_imm_corners
li x10, 0x55555555
c.srli x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 536)

# Testcase cr_rs1_imm_corners
li x15, 0x55555555
c.srli x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 540)

# Testcase cr_rs1_imm_corners
li x15, 0x55555555
c.srli x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 544)

# Testcase cr_rs1_imm_corners
li x13, 0x55555555
c.srli x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 548)

# Testcase cr_rs1_imm_corners
li x11, 0x55555555
c.srli x11, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 552)

# Testcase cr_rs1_imm_corners
li x13, 0x55555555
c.srli x13, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 556)

# Testcase cr_rs1_imm_corners
li x14, 0x55555555
c.srli x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cr_rs1_imm_corners
li x14, 0x55555555
c.srli x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 564)

# Testcase cr_rs1_imm_corners
li x15, 0x55555555
c.srli x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 568)

# Testcase cr_rs1_imm_corners
li x15, 0x55555555
c.srli x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 572)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x89a4c72a
c.srli x8, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc8d93288
c.srli x9, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 580)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x0505178d
c.srli x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x9f41a44d
c.srli x11, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 588)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x6d53e6c6
c.srli x12, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xdf069d2f
c.srli x13, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 596)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x23a95fe1
c.srli x14, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x9040d4d4
c.srli x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 604)

# Testcase cp_uimm (Test bit = 0)
li x8, 0x95f8d5bd
c.srli x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 608)

# Testcase cp_uimm (Test bit = 1)
li x8, 0xcd09dab7
c.srli x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 612)

# Testcase cp_uimm (Test bit = 2)
li x8, 0x314844f6
c.srli x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 616)

# Testcase cp_uimm (Test bit = 3)
li x14, 0x410ca435
c.srli x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 620)

# Testcase cp_uimm (Test bit = 4)
li x13, 0x9b5199f6
c.srli x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 624)

# Testcase cp_uimm (Test bit = 5)
li x14, 0x7d3368c4
c.srli x14, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 628)

# Testcase cp_uimm (Test bit = 6)
li x10, 0x9707b0cf
c.srli x10, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 632)

# Testcase cp_uimm (Test bit = 7)
li x12, 0x8be600d8
c.srli x12, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 636)

# Testcase cp_uimm (Test bit = 8)
li x13, 0xe21e55d6
c.srli x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 640)

# Testcase cp_uimm (Test bit = 9)
li x12, 0xdf3161a0
c.srli x12, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 644)

# Testcase cp_uimm (Test bit = 10)
li x12, 0x0eda52a6
c.srli x12, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 648)

# Testcase cp_uimm (Test bit = 11)
li x9, 0xd751be21
c.srli x9, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 652)

# Testcase cp_uimm (Test bit = 12)
li x13, 0x92fe63c5
c.srli x13, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 656)

# Testcase cp_uimm (Test bit = 13)
li x9, 0xde5a8435
c.srli x9, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 660)

# Testcase cp_uimm (Test bit = 14)
li x13, 0x909a4369
c.srli x13, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 664)

# Testcase cp_uimm (Test bit = 15)
li x10, 0x351c8fea
c.srli x10, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 668)

# Testcase cp_uimm (Test bit = 16)
li x11, 0x7543c10a
c.srli x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 672)

# Testcase cp_uimm (Test bit = 17)
li x9, 0x07c1438c
c.srli x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 676)

# Testcase cp_uimm (Test bit = 18)
li x14, 0x6cb0c5aa
c.srli x14, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 680)

# Testcase cp_uimm (Test bit = 19)
li x11, 0x633f30ef
c.srli x11, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 684)

# Testcase cp_uimm (Test bit = 20)
li x14, 0x9efa108f
c.srli x14, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 688)

# Testcase cp_uimm (Test bit = 21)
li x15, 0xe4f7e783
c.srli x15, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 692)

# Testcase cp_uimm (Test bit = 22)
li x8, 0x5714ce9f
c.srli x8, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 696)

# Testcase cp_uimm (Test bit = 23)
li x8, 0x1c3e3e48
c.srli x8, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 700)

# Testcase cp_uimm (Test bit = 24)
li x10, 0x9489dff6
c.srli x10, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 704)

# Testcase cp_uimm (Test bit = 25)
li x12, 0xf0552899
c.srli x12, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 708)

# Testcase cp_uimm (Test bit = 26)
li x13, 0x17269ef0
c.srli x13, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 712)

# Testcase cp_uimm (Test bit = 27)
li x8, 0x424c3246
c.srli x8, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 716)

# Testcase cp_uimm (Test bit = 28)
li x13, 0x91ee0203
c.srli x13, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 720)

# Testcase cp_uimm (Test bit = 29)
li x8, 0x1a042b32
c.srli x8, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 724)

# Testcase cp_uimm (Test bit = 30)
li x10, 0x0d658f2f
c.srli x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 728)

# Testcase cp_uimm (Test bit = 31)
li x8, 0x25f1fe00
c.srli x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 732)

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0x3161a39c
c.srli x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 736)

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0xf54b3c7a
c.srli x10, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 740)

# Testcase cp_rs1 (Test source rs1 = x10)
li x12, 0xf42bf70d
c.srli x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 744)

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x7b9f2fe1
c.srli x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 748)

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0xc4bf9fbb
c.srli x11, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 752)

# Testcase cp_rs1 (Test source rs1 = x13)
li x9, 0x27f272d8
c.srli x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 756)

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0x5003ba5c
c.srli x9, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 760)

# Testcase cp_rs1 (Test source rs1 = x15)
li x11, 0x12b6a5b3
c.srli x11, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 764)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xed74ec98
c.srli x8, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 768)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xf00c1961
c.srli x9, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 772)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x8a63209a
c.srli x10, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 776)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xe0d6b5de
c.srli x11, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 780)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x8252609a
c.srli x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 784)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xf2bd6940
c.srli x13, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 788)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x53fe7c9c
c.srli x14, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 792)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf6cfdfd0
c.srli x15, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 796)

#.EQU SIGSIZE,800


// ******************
// Tests from: WALLY-COV-c.li.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0xcc8476e3 # initialize rs1
c.li x1, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x98882cd4 # initialize rs1
c.li x2, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 4)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xe20282b1 # initialize rs1
c.li x3, -16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x08a38b41 # initialize rs1
c.li x4, -9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 12)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0f172459 # initialize rs1
c.li x5, -18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 16)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2d8ad694 # initialize rs1
c.li x6, -19 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 20)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6d955bfa # initialize rs1
c.li x7, -26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xdaf24f1a # initialize rs1
c.li x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 28)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xb2644d81 # initialize rs1
c.li x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x56fe7b60 # initialize rs1
c.li x10, -5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 36)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x23abef8d # initialize rs1
c.li x11, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x466b243f # initialize rs1
c.li x12, -28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xdf700926 # initialize rs1
c.li x13, -12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x5b2d266f # initialize rs1
c.li x14, -26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 52)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xbda889bc # initialize rs1
c.li x15, -10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xeb53ce4d # initialize rs1
c.li x16, -3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 60)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x3a8cb846 # initialize rs1
c.li x17, -10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 64)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xe4e5f3db # initialize rs1
c.li x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 68)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x04a5a7f2 # initialize rs1
c.li x19, -16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 72)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x113a376c # initialize rs1
c.li x20, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 76)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xa09f8b91 # initialize rs1
c.li x21, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 80)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x0228e9bf # initialize rs1
c.li x22, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 84)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x97b1bdaf # initialize rs1
c.li x23, -20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x6bf7209c # initialize rs1
c.li x24, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 92)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x3d02a307 # initialize rs1
c.li x25, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x2716e8ad # initialize rs1
c.li x26, -28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 100)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x0bbc8396 # initialize rs1
c.li x27, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x6f9972f2 # initialize rs1
c.li x28, -26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 108)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x14b603b1 # initialize rs1
c.li x29, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x167c3444 # initialize rs1
c.li x30, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 116)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x04738b8a # initialize rs1
c.li x31, -15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_imm_corners
li x13, 0xeb69b4a0 # initialize rs1
c.li x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 124)

# Testcase cp_imm_corners
li x21, 0x44ab52d1 # initialize rs1
c.li x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 128)

# Testcase cp_imm_corners
li x20, 0x20b50721 # initialize rs1
c.li x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 132)

# Testcase cp_imm_corners
li x31, 0x4adc87d7 # initialize rs1
c.li x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 136)

# Testcase cp_imm_corners
li x10, 0x560b9f20 # initialize rs1
c.li x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 140)

# Testcase cp_imm_corners
li x29, 0xcd233317 # initialize rs1
c.li x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 144)

# Testcase cp_imm_corners
li x9, 0xf9e62369 # initialize rs1
c.li x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 148)

# Testcase cp_imm_corners
li x19, 0xc1f96e9b # initialize rs1
c.li x19, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_imm_corners
li x7, 0x4d226b91 # initialize rs1
c.li x7, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_imm_corners
li x19, 0x558e4ab9 # initialize rs1
c.li x19, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 160)

# Testcase cp_imm_corners
li x10, 0x22361def # initialize rs1
c.li x10, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 164)

# Testcase cp_imm_corners
li x23, 0x570447f9 # initialize rs1
c.li x23, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cp_imm_corners
li x12, 0x5dea7472 # initialize rs1
c.li x12, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 172)

#.EQU SIGSIZE,176


// ******************
// Tests from: WALLY-COV-c.andi.S
// ******************


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

#.EQU SIGSIZE,820


// ******************
// Tests from: WALLY-COV-c.j.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: nop
c.j 1b # backward branch
3: nop # done with sequence

.align 2 # Start at an address multiple of 4. Required for covering 2 byte jump.

# Testcase cp_imm_corners_jal 1
.align 13
 # start all tests on a multiple of the largest one
c.j 1f
1: 
c.j f2_c.j

# Testcase cp_imm_corners_jal 2
.align 1
b1_c.j:
c.j f3_c.j # jump to aligned address to stress immediate
.align 1
f2_c.j:
c.j b1_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 3
.align 2
b2_c.j:
c.j f4_c.j # jump to aligned address to stress immediate
.align 2
f3_c.j:
c.j b2_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 4
.align 3
b3_c.j:
c.j f5_c.j # jump to aligned address to stress immediate
.align 3
f4_c.j:
c.j b3_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 5
.align 4
b4_c.j:
c.j f6_c.j # jump to aligned address to stress immediate
.align 4
f5_c.j:
c.j b4_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 6
.align 5
b5_c.j:
c.j f7_c.j # jump to aligned address to stress immediate
.align 5
f6_c.j:
c.j b5_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 7
.align 6
b6_c.j:
c.j f8_c.j # jump to aligned address to stress immediate
.align 6
f7_c.j:
c.j b6_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 8
.align 7
b7_c.j:
c.j f9_c.j # jump to aligned address to stress immediate
.align 7
f8_c.j:
c.j b7_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 9
.align 8
b8_c.j:
c.j f10_c.j # jump to aligned address to stress immediate
.align 8
f9_c.j:
c.j b8_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 10
.align 9
b9_c.j:
c.j f11_c.j # jump to aligned address to stress immediate
.align 9
f10_c.j:
c.j b9_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 11
.align 10
b10_c.j:
c.j f12_c.j # jump to aligned address to stress immediate
.align 10
f11_c.j:
c.j b10_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 12
.align 11
b11_c.j:
c.j f13_c.j # jump to aligned address to stress immediate
.align 11
f12_c.j:
.half 0xB001 # backward j by -2048 to b12; GCC is not generating this compressed branch properly per https://github.com/riscv-collab/riscv-gnu-toolchain/issues/1647
f13_c.j:

#.EQU SIGSIZE,0
.EQU SIGSIZE,8748 #combined


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
