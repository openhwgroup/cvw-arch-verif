///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.srli.S
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
