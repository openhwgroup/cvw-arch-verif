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
li x12, 0x0000000000000000
c.srai x12, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x0000000000000001
c.srai x8, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x0000000000000002
c.srai x8, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x13, 0x8000000000000000
c.srai x13, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x11, 0x8000000000000001
c.srai x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x15, 0x7fffffffffffffff
c.srai x15, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x11, 0x7ffffffffffffffe
c.srai x11, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x13, 0xffffffffffffffff
c.srai x13, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x13, 0xfffffffffffffffe
c.srai x13, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x14, 0x5bbc887763ae86f2
c.srai x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xaaaaaaaaaaaaaaaa
c.srai x12, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x8, 0x5555555555555555
c.srai x8, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0x00000000ffffffff
c.srai x15, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0x00000000fffffffe
c.srai x15, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x13, 0x0000000100000000
c.srai x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x14, 0x0000000100000001
c.srai x14, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000
c.srai x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 128)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000000
c.srai x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000000
c.srai x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000
c.srai x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000000
c.srai x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000000
c.srai x9, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 168)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000000
c.srai x11, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 176)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000000
c.srai x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000
c.srai x15, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 192)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000000
c.srai x8, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000000
c.srai x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 208)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000000
c.srai x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000000
c.srai x12, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000000
c.srai x13, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000000
c.srai x9, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 240)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000
c.srai x15, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000001
c.srai x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 256)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001
c.srai x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 264)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000001
c.srai x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 272)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000001
c.srai x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 280)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001
c.srai x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000001
c.srai x13, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 296)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000001
c.srai x15, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 304)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000001
c.srai x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001
c.srai x10, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000001
c.srai x12, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 328)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000001
c.srai x12, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000001
c.srai x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 344)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001
c.srai x10, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000001
c.srai x11, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000001
c.srai x8, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 368)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000001
c.srai x15, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000002
c.srai x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 384)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000002
c.srai x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000002
c.srai x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 400)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000002
c.srai x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 408)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000002
c.srai x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 416)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002
c.srai x8, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 424)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000002
c.srai x11, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 432)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000002
c.srai x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 440)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000002
c.srai x12, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 448)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000002
c.srai x12, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 456)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002
c.srai x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002
c.srai x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 472)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002
c.srai x13, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 480)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000002
c.srai x11, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000002
c.srai x11, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 496)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000002
c.srai x15, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 504)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000000
c.srai x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 512)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000000
c.srai x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 520)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000000
c.srai x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 528)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000000
c.srai x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 536)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000000
c.srai x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 544)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000000
c.srai x8, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 552)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000000
c.srai x9, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 560)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000000
c.srai x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000000
c.srai x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 576)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000000
c.srai x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000000
c.srai x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 592)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000000
c.srai x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 600)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000000
c.srai x11, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000000
c.srai x14, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 616)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000000
c.srai x10, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 624)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000000
c.srai x11, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 632)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000001
c.srai x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 640)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000001
c.srai x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 648)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000001
c.srai x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 656)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000001
c.srai x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 664)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000001
c.srai x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 672)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000001
c.srai x10, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 680)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000001
c.srai x8, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 688)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000001
c.srai x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 696)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000001
c.srai x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 704)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000001
c.srai x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 712)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000001
c.srai x12, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 720)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000001
c.srai x10, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 728)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000001
c.srai x12, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000001
c.srai x14, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 744)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000001
c.srai x10, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 752)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000001
c.srai x15, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffffffffffff
c.srai x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 768)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffffffffffff
c.srai x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 776)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffffffffffff
c.srai x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 784)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffffffffffff
c.srai x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 792)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff
c.srai x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 800)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffffffffffff
c.srai x10, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 808)

# Testcase cr_rs1_imm_corners
li x11, 0x7fffffffffffffff
c.srai x11, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 816)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffffffffffff
c.srai x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 824)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffffffffffff
c.srai x8, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 832)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffffffffffff
c.srai x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 840)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffffffffffff
c.srai x9, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 848)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffffffffffff
c.srai x12, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 856)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffffffffffff
c.srai x12, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 864)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff
c.srai x14, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 872)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffffffffffff
c.srai x15, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 880)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff
c.srai x14, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 888)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffffffffffe
c.srai x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 896)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffffffffffe
c.srai x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 904)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe
c.srai x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 912)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffffffffffe
c.srai x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffffffffffe
c.srai x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 928)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffffffffffe
c.srai x15, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 936)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe
c.srai x13, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 944)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffffffffffe
c.srai x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 952)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffffffffffe
c.srai x15, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 960)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffffffffffe
c.srai x14, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 968)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe
c.srai x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 976)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe
c.srai x13, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 984)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffffffffffe
c.srai x8, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 992)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffffffffffe
c.srai x8, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1000)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffffffffffe
c.srai x14, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1008)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe
c.srai x13, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1016)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffffffffffff
c.srai x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1024)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff
c.srai x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1032)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff
c.srai x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1040)

# Testcase cr_rs1_imm_corners
li x15, 0xffffffffffffffff
c.srai x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1048)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffffffffffff
c.srai x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1056)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffffffffffff
c.srai x13, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1064)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffffffffffff
c.srai x13, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1072)

# Testcase cr_rs1_imm_corners
li x15, 0xffffffffffffffff
c.srai x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1080)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffffffffffff
c.srai x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1088)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffffffffffff
c.srai x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1096)

# Testcase cr_rs1_imm_corners
li x15, 0xffffffffffffffff
c.srai x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1104)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffffffffffff
c.srai x13, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1112)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff
c.srai x9, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1120)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffffffffffff
c.srai x8, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1128)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffffffffffff
c.srai x13, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1136)

# Testcase cr_rs1_imm_corners
li x15, 0xffffffffffffffff
c.srai x15, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1144)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffffffffffe
c.srai x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1152)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffffffffffe
c.srai x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1160)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffffffffffe
c.srai x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1168)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffffffffffe
c.srai x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1176)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffffffffffe
c.srai x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1184)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffffffffffe
c.srai x14, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1192)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffffffffffe
c.srai x10, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1200)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffffffffffe
c.srai x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1208)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffffffffffe
c.srai x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1216)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffffffffffe
c.srai x14, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1224)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffffffffffe
c.srai x12, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffffffffffe
c.srai x10, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1240)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffffffffffe
c.srai x14, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1248)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffffffffffe
c.srai x11, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1256)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffffffffffe
c.srai x8, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1264)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffffffffffe
c.srai x15, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1272)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc887763ae86f2
c.srai x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1280)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc887763ae86f2
c.srai x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1288)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc887763ae86f2
c.srai x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1296)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc887763ae86f2
c.srai x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1304)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc887763ae86f2
c.srai x9, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1312)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc887763ae86f2
c.srai x11, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1320)

# Testcase cr_rs1_imm_corners
li x12, 0x5bbc887763ae86f2
c.srai x12, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1328)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc887763ae86f2
c.srai x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1336)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc887763ae86f2
c.srai x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1344)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc887763ae86f2
c.srai x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1352)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc887763ae86f2
c.srai x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1360)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc887763ae86f2
c.srai x11, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1368)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc887763ae86f2
c.srai x10, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1376)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc887763ae86f2
c.srai x15, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1384)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc887763ae86f2
c.srai x9, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1392)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc887763ae86f2
c.srai x9, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1400)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa
c.srai x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1408)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaaaaaaaaaa
c.srai x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1416)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaaaaaaaaaa
c.srai x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1424)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaaaaaaaaaa
c.srai x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1432)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaaaaaaaaaa
c.srai x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1440)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa
c.srai x15, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1448)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa
c.srai x15, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1456)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaaaaaaaaaa
c.srai x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaaaaaaaaaa
c.srai x8, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaaaaaaaaaa
c.srai x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1480)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaaaaaaaaaa
c.srai x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1488)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa
c.srai x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1496)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaaaaaaaaaa
c.srai x12, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1504)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaaaaaaaaaa
c.srai x13, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1512)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaaaaaaaaaa
c.srai x13, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1520)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaaaaaaaaaa
c.srai x14, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1528)

# Testcase cr_rs1_imm_corners
li x10, 0x5555555555555555
c.srai x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1536)

# Testcase cr_rs1_imm_corners
li x9, 0x5555555555555555
c.srai x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1544)

# Testcase cr_rs1_imm_corners
li x10, 0x5555555555555555
c.srai x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1552)

# Testcase cr_rs1_imm_corners
li x13, 0x5555555555555555
c.srai x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1560)

# Testcase cr_rs1_imm_corners
li x10, 0x5555555555555555
c.srai x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1568)

# Testcase cr_rs1_imm_corners
li x10, 0x5555555555555555
c.srai x10, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1576)

# Testcase cr_rs1_imm_corners
li x12, 0x5555555555555555
c.srai x12, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1584)

# Testcase cr_rs1_imm_corners
li x14, 0x5555555555555555
c.srai x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1592)

# Testcase cr_rs1_imm_corners
li x12, 0x5555555555555555
c.srai x12, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1600)

# Testcase cr_rs1_imm_corners
li x10, 0x5555555555555555
c.srai x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cr_rs1_imm_corners
li x8, 0x5555555555555555
c.srai x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1616)

# Testcase cr_rs1_imm_corners
li x14, 0x5555555555555555
c.srai x14, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1624)

# Testcase cr_rs1_imm_corners
li x11, 0x5555555555555555
c.srai x11, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1632)

# Testcase cr_rs1_imm_corners
li x14, 0x5555555555555555
c.srai x14, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cr_rs1_imm_corners
li x13, 0x5555555555555555
c.srai x13, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1648)

# Testcase cr_rs1_imm_corners
li x12, 0x5555555555555555
c.srai x12, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1656)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000ffffffff
c.srai x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1664)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000ffffffff
c.srai x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1672)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000ffffffff
c.srai x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1680)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000ffffffff
c.srai x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1688)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000ffffffff
c.srai x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1696)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000ffffffff
c.srai x10, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1704)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000ffffffff
c.srai x11, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1712)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000ffffffff
c.srai x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1720)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000ffffffff
c.srai x8, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1728)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000ffffffff
c.srai x8, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1736)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000ffffffff
c.srai x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1744)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000ffffffff
c.srai x12, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1752)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000ffffffff
c.srai x12, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1760)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000ffffffff
c.srai x11, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1768)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000ffffffff
c.srai x12, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1776)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000ffffffff
c.srai x12, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1784)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000fffffffe
c.srai x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_imm_corners
li x8, 0x00000000fffffffe
c.srai x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000fffffffe
c.srai x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000fffffffe
c.srai x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000fffffffe
c.srai x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 24)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000fffffffe
c.srai x9, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000fffffffe
c.srai x14, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000fffffffe
c.srai x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000fffffffe
c.srai x8, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000fffffffe
c.srai x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000fffffffe
c.srai x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000fffffffe
c.srai x13, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000fffffffe
c.srai x9, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe
c.srai x11, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000fffffffe
c.srai x8, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000fffffffe
c.srai x13, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000000
c.srai x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000000
c.srai x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000
c.srai x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000000
c.srai x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000000
c.srai x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 152)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000000
c.srai x15, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000000
c.srai x11, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000000
c.srai x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 176)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000000
c.srai x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000000
c.srai x12, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 192)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000
c.srai x10, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 200)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000000
c.srai x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 208)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000000
c.srai x15, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000000
c.srai x8, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000000
c.srai x11, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 232)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000000
c.srai x15, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 240)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000001
c.srai x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 248)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000001
c.srai x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 256)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000001
c.srai x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 264)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001
c.srai x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 272)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000100000001
c.srai x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 280)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001
c.srai x12, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 288)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001
c.srai x15, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 296)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000001
c.srai x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 304)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000001
c.srai x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000001
c.srai x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000001
c.srai x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 328)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000001
c.srai x9, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 336)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000001
c.srai x8, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 344)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001
c.srai x15, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 352)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000001
c.srai x11, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000001
c.srai x8, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x5f799d3715347770
c.srai x8, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xd34a265ab5f059e5
c.srai x9, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x56a576d17787ac62
c.srai x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x160e2aca35c76cc1
c.srai x11, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x36fa7f68508f5c83
c.srai x12, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x820dc4c4a2ef0d70
c.srai x13, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x1fd18c03739487b6
c.srai x14, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x0fd0bb2b0d5d5e75
c.srai x15, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 432)

# Testcase cp_uimm (Test bit = 0)
li x14, 0xa58d03d04d8af41c
c.srai x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 440)

# Testcase cp_uimm (Test bit = 1)
li x14, 0xf6373dd72eab1844
c.srai x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 448)

# Testcase cp_uimm (Test bit = 2)
li x9, 0x58781a0da448ed37
c.srai x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 456)

# Testcase cp_uimm (Test bit = 3)
li x8, 0x0cc0898b48a4df92
c.srai x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 464)

# Testcase cp_uimm (Test bit = 4)
li x13, 0xe011310a6814ea4e
c.srai x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 472)

# Testcase cp_uimm (Test bit = 5)
li x13, 0x14347570efa80b18
c.srai x13, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 480)

# Testcase cp_uimm (Test bit = 6)
li x11, 0x54b78446cb1b32e6
c.srai x11, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cp_uimm (Test bit = 7)
li x14, 0xcb4fdfbb859701d0
c.srai x14, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

# Testcase cp_uimm (Test bit = 8)
li x13, 0xf3d2d6a055ee5871
c.srai x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 504)

# Testcase cp_uimm (Test bit = 9)
li x15, 0xe0641796afb65d2d
c.srai x15, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 512)

# Testcase cp_uimm (Test bit = 10)
li x9, 0xc44d0d5fccaabbf3
c.srai x9, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cp_uimm (Test bit = 11)
li x10, 0x967e3643c54f5f39
c.srai x10, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_uimm (Test bit = 12)
li x13, 0x6b085327595fb787
c.srai x13, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 536)

# Testcase cp_uimm (Test bit = 13)
li x8, 0x78784e3d7818b2b5
c.srai x8, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 544)

# Testcase cp_uimm (Test bit = 14)
li x11, 0x00c0e0339bd419f9
c.srai x11, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 552)

# Testcase cp_uimm (Test bit = 15)
li x10, 0x7b475e089d17c47c
c.srai x10, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 560)

# Testcase cp_uimm (Test bit = 16)
li x15, 0x88b8687d2f55cee6
c.srai x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 568)

# Testcase cp_uimm (Test bit = 17)
li x14, 0x590ab6c230228d72
c.srai x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 576)

# Testcase cp_uimm (Test bit = 18)
li x13, 0x8fa278bdc23262c5
c.srai x13, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 584)

# Testcase cp_uimm (Test bit = 19)
li x14, 0xa9c24eaf0754ffa0
c.srai x14, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cp_uimm (Test bit = 20)
li x13, 0x886c983a5e5f6aeb
c.srai x13, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cp_uimm (Test bit = 21)
li x15, 0xc9b748c797f32252
c.srai x15, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 608)

# Testcase cp_uimm (Test bit = 22)
li x8, 0x3951275e18d51742
c.srai x8, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 616)

# Testcase cp_uimm (Test bit = 23)
li x8, 0x1128485014a7fa07
c.srai x8, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 624)

# Testcase cp_uimm (Test bit = 24)
li x12, 0xe8c885168a4c84fe
c.srai x12, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 632)

# Testcase cp_uimm (Test bit = 25)
li x12, 0x3824391844755a88
c.srai x12, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 640)

# Testcase cp_uimm (Test bit = 26)
li x9, 0xb832fb16a773ec5b
c.srai x9, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 648)

# Testcase cp_uimm (Test bit = 27)
li x12, 0xce0ec94454a3d54b
c.srai x12, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 656)

# Testcase cp_uimm (Test bit = 28)
li x8, 0xb9500698fd41d39c
c.srai x8, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 664)

# Testcase cp_uimm (Test bit = 29)
li x13, 0xf360164b502d1fe3
c.srai x13, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 672)

# Testcase cp_uimm (Test bit = 30)
li x11, 0x95a4b01839da3f4a
c.srai x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 680)

# Testcase cp_uimm (Test bit = 31)
li x15, 0xd505c8d41edf3dd5
c.srai x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 688)

# Testcase cp_uimm (Test bit = 32)
li x14, 0x8714fe012c8c54f4
c.srai x14, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 696)

# Testcase cp_uimm (Test bit = 33)
li x12, 0xb94d697b178abb84
c.srai x12, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 704)

# Testcase cp_uimm (Test bit = 34)
li x8, 0x52aa4b2453b4acea
c.srai x8, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 712)

# Testcase cp_uimm (Test bit = 35)
li x8, 0xd6a816e977031e60
c.srai x8, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 720)

# Testcase cp_uimm (Test bit = 36)
li x12, 0x5168af028cec42e7
c.srai x12, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 728)

# Testcase cp_uimm (Test bit = 37)
li x8, 0x6f4a9c8f4ba99748
c.srai x8, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 736)

# Testcase cp_uimm (Test bit = 38)
li x11, 0x7b4d753184328fe7
c.srai x11, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 744)

# Testcase cp_uimm (Test bit = 39)
li x14, 0x5d88677ecad774b4
c.srai x14, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cp_uimm (Test bit = 40)
li x9, 0x2910d08a498f792b
c.srai x9, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 760)

# Testcase cp_uimm (Test bit = 41)
li x9, 0xe821c33a49e8f153
c.srai x9, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 768)

# Testcase cp_uimm (Test bit = 42)
li x11, 0xe44a038ebb0a3d48
c.srai x11, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 776)

# Testcase cp_uimm (Test bit = 43)
li x9, 0x011e84fad40289a6
c.srai x9, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 784)

# Testcase cp_uimm (Test bit = 44)
li x11, 0x11dd642d1d5515fe
c.srai x11, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 792)

# Testcase cp_uimm (Test bit = 45)
li x13, 0xf9faf1305528f73a
c.srai x13, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 800)

# Testcase cp_uimm (Test bit = 46)
li x9, 0x880af00314de3a3e
c.srai x9, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 808)

# Testcase cp_uimm (Test bit = 47)
li x9, 0x49126c7adc613f70
c.srai x9, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 816)

# Testcase cp_uimm (Test bit = 48)
li x14, 0x65d8e7af86b4d2a4
c.srai x14, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 824)

# Testcase cp_uimm (Test bit = 49)
li x8, 0xebca0ecd443f09eb
c.srai x8, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 832)

# Testcase cp_uimm (Test bit = 50)
li x11, 0xb96603ef06cdbef4
c.srai x11, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 840)

# Testcase cp_uimm (Test bit = 51)
li x14, 0xd2af0f088448ed9b
c.srai x14, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cp_uimm (Test bit = 52)
li x10, 0x9e10229824d72168
c.srai x10, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 856)

# Testcase cp_uimm (Test bit = 53)
li x12, 0x052a4d6b5ba8ac4c
c.srai x12, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 864)

# Testcase cp_uimm (Test bit = 54)
li x14, 0xdea0bebaa8da69f4
c.srai x14, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 872)

# Testcase cp_uimm (Test bit = 55)
li x10, 0xa6a77ec3b6188e4a
c.srai x10, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 880)

# Testcase cp_uimm (Test bit = 56)
li x11, 0x352f1c16b1a3f15a
c.srai x11, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 888)

# Testcase cp_uimm (Test bit = 57)
li x10, 0x73e975e37c034eee
c.srai x10, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 896)

# Testcase cp_uimm (Test bit = 58)
li x15, 0xf3186aa81ca210de
c.srai x15, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 904)

# Testcase cp_uimm (Test bit = 59)
li x10, 0xac5b582ea93b3cb0
c.srai x10, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 912)

# Testcase cp_uimm (Test bit = 60)
li x9, 0x25160dd0dbe973b8
c.srai x9, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 920)

# Testcase cp_uimm (Test bit = 61)
li x11, 0x19b19cd36a4b898a
c.srai x11, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 928)

# Testcase cp_uimm (Test bit = 62)
li x15, 0x9ac2527573588cc2
c.srai x15, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 936)

# Testcase cp_uimm (Test bit = 63)
li x11, 0xb4fc1a3448c50d50
c.srai x11, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 944)

# Testcase cp_rs1 (Test source rs1 = x8)
li x15, 0xf0501e8be27cd0d8
c.srai x15, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 952)

# Testcase cp_rs1 (Test source rs1 = x9)
li x13, 0x91b6182b66023b04
c.srai x13, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 960)

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0x19c6961d1f458471
c.srai x15, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 968)

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0x4815d98c0060ffc1
c.srai x10, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 976)

# Testcase cp_rs1 (Test source rs1 = x12)
li x10, 0xc3fd9ae744cb2c92
c.srai x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 984)

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0xadf3386450af78e5
c.srai x8, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 992)

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0xb9bbcbedbf3b5f3b
c.srai x13, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1000)

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0xb94b84071551eb33
c.srai x14, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1008)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xa1f496ab9f4d9ead
c.srai x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1016)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x030c1c2cbde3fdc1
c.srai x9, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1024)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xea5d7af0a7650d2a
c.srai x10, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1032)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x2fcb069daf441aa0
c.srai x11, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xadea0b1d5925172a
c.srai x12, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1048)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x3104f726994888da
c.srai x13, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1056)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x265849eff1bec634
c.srai x14, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1064)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x2135bc58b842f69a
c.srai x15, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1072)

#.EQU SIGSIZE,2880


// ******************
// Tests from: WALLY-COV-c.ld.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x13, 0x9a9c6fa13fa3faa2 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -168 # sub immediate from rs1 to counter offset
c.sd x13, 168(x8) # store value to put something in memory
c.ld x8, 168(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x11, 0x3b001c17b1d63af9 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -96 # sub immediate from rs1 to counter offset
c.sd x11, 96(x9) # store value to put something in memory
c.ld x9, 96(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x12, 0x144a753ff79d67b6 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -64 # sub immediate from rs1 to counter offset
c.sd x12, 64(x10) # store value to put something in memory
c.ld x10, 64(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x10, 0xce0ee41b11daedae # initialize rs2
la x11, scratch # base address 
addi x11, x11, -88 # sub immediate from rs1 to counter offset
c.sd x10, 88(x11) # store value to put something in memory
c.ld x11, 88(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x11, 0x43c01db5ae02d598 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -80 # sub immediate from rs1 to counter offset
c.sd x11, 80(x12) # store value to put something in memory
c.ld x12, 80(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x11, 0x25a5f5b3f672ff9f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -96 # sub immediate from rs1 to counter offset
c.sd x11, 96(x13) # store value to put something in memory
c.ld x13, 96(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x13, 0xba8181ea87e34ec5 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -72 # sub immediate from rs1 to counter offset
c.sd x13, 72(x14) # store value to put something in memory
c.ld x14, 72(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x13, 0x492cf20296258aaa # initialize rs2
la x15, scratch # base address 
addi x15, x15, -88 # sub immediate from rs1 to counter offset
c.sd x13, 88(x15) # store value to put something in memory
c.ld x15, 88(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0xcba0c9a8d3747e86 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -120 # sub immediate from rs1 to counter offset
c.sd x10, 120(x8) # store value to put something in memory
c.ld x9, 120(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x8, 0xbd0d96f9314afe94 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -136 # sub immediate from rs1 to counter offset
c.sd x8, 136(x9) # store value to put something in memory
c.ld x12, 136(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0x82c768f41ec5c9ef # initialize rs2
la x10, scratch # base address 
addi x10, x10, -40 # sub immediate from rs1 to counter offset
c.sd x8, 40(x10) # store value to put something in memory
c.ld x14, 40(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0xc6c4d3e92d389d2a # initialize rs2
la x11, scratch # base address 
addi x11, x11, -240 # sub immediate from rs1 to counter offset
c.sd x8, 240(x11) # store value to put something in memory
c.ld x15, 240(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x8, 0x92beda5b39dd8e28 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -24 # sub immediate from rs1 to counter offset
c.sd x8, 24(x12) # store value to put something in memory
c.ld x11, 24(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0x655b8ba64bf12f5d # initialize rs2
la x13, scratch # base address 
addi x13, x13, -8 # sub immediate from rs1 to counter offset
c.sd x10, 8(x13) # store value to put something in memory
c.ld x14, 8(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0x464222a7946a6b8a # initialize rs2
la x14, scratch # base address 
addi x14, x14, -160 # sub immediate from rs1 to counter offset
c.sd x10, 160(x14) # store value to put something in memory
c.ld x15, 160(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0xf40bd7af12960c92 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -48 # sub immediate from rs1 to counter offset
c.sd x14, 48(x15) # store value to put something in memory
c.ld x10, 48(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rd (Test destination rd = x8)
li x9, 0x372ec8d877417a4b # initialize rs2
la x11, scratch # base address 
addi x11, x11, -112 # sub immediate from rs1 to counter offset
c.sd x9, 112(x11) # store value to put something in memory
c.ld x8, 112(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rd (Test destination rd = x9)
li x11, 0x01c35f108ecfd9cf # initialize rs2
la x12, scratch # base address 
addi x12, x12, -8 # sub immediate from rs1 to counter offset
c.sd x11, 8(x12) # store value to put something in memory
c.ld x9, 8(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xf3f77db5a8cf8c90 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -120 # sub immediate from rs1 to counter offset
c.sd x10, 120(x9) # store value to put something in memory
c.ld x10, 120(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_rd (Test destination rd = x11)
li x12, 0xd9ea9799e84ad632 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -48 # sub immediate from rs1 to counter offset
c.sd x12, 48(x13) # store value to put something in memory
c.ld x11, 48(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cp_rd (Test destination rd = x12)
li x15, 0xfb3c1ac122821655 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -16 # sub immediate from rs1 to counter offset
c.sd x15, 16(x10) # store value to put something in memory
c.ld x12, 16(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rd (Test destination rd = x13)
li x14, 0x06e7a18953599032 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -192 # sub immediate from rs1 to counter offset
c.sd x14, 192(x9) # store value to put something in memory
c.ld x13, 192(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0xfc665396b7440845 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -64 # sub immediate from rs1 to counter offset
c.sd x13, 64(x12) # store value to put something in memory
c.ld x14, 64(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0xcb2e82cee37bf35d # initialize rs2
la x15, scratch # base address 
addi x15, x15, -104 # sub immediate from rs1 to counter offset
c.sd x11, 104(x15) # store value to put something in memory
c.ld x15, 104(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_imm_mul
li x14, 0x0040bee658dfe8be # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sd x14, 0(x8) # store value to put something in memory
c.ld x12, 0(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 192)

# Testcase cp_imm_mul
li x12, 0x093e2e62f68e7441 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -8 # sub immediate from rs1 to counter offset
c.sd x12, 8(x13) # store value to put something in memory
c.ld x8, 8(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cp_imm_mul
li x8, 0x5a22c05d01999eaf # initialize rs2
la x9, scratch # base address 
addi x9, x9, -16 # sub immediate from rs1 to counter offset
c.sd x8, 16(x9) # store value to put something in memory
c.ld x14, 16(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 208)

# Testcase cp_imm_mul
li x13, 0x46e60f2d0d3cf2a2 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -24 # sub immediate from rs1 to counter offset
c.sd x13, 24(x12) # store value to put something in memory
c.ld x11, 24(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_imm_mul
li x11, 0x722320982c866866 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -32 # sub immediate from rs1 to counter offset
c.sd x11, 32(x9) # store value to put something in memory
c.ld x14, 32(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cp_imm_mul
li x8, 0xa573331776d6fe14 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -40 # sub immediate from rs1 to counter offset
c.sd x8, 40(x9) # store value to put something in memory
c.ld x13, 40(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cp_imm_mul
li x13, 0xd16cf9f3d4092bda # initialize rs2
la x9, scratch # base address 
addi x9, x9, -48 # sub immediate from rs1 to counter offset
c.sd x13, 48(x9) # store value to put something in memory
c.ld x12, 48(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_imm_mul
li x10, 0xb757c729ef12575f # initialize rs2
la x15, scratch # base address 
addi x15, x15, -56 # sub immediate from rs1 to counter offset
c.sd x10, 56(x15) # store value to put something in memory
c.ld x12, 56(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cp_imm_mul
li x9, 0xb64072969f95d5f0 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -64 # sub immediate from rs1 to counter offset
c.sd x9, 64(x12) # store value to put something in memory
c.ld x14, 64(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 256)

# Testcase cp_imm_mul
li x9, 0x5a8ed9d72aa6588f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -72 # sub immediate from rs1 to counter offset
c.sd x9, 72(x13) # store value to put something in memory
c.ld x11, 72(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 264)

# Testcase cp_imm_mul
li x10, 0x19350a21765205df # initialize rs2
la x8, scratch # base address 
addi x8, x8, -80 # sub immediate from rs1 to counter offset
c.sd x10, 80(x8) # store value to put something in memory
c.ld x15, 80(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 272)

# Testcase cp_imm_mul
li x11, 0xf13e0b26d41e8ba7 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -88 # sub immediate from rs1 to counter offset
c.sd x11, 88(x8) # store value to put something in memory
c.ld x12, 88(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 280)

# Testcase cp_imm_mul
li x13, 0x3f756786392bfc0c # initialize rs2
la x8, scratch # base address 
addi x8, x8, -96 # sub immediate from rs1 to counter offset
c.sd x13, 96(x8) # store value to put something in memory
c.ld x10, 96(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cp_imm_mul
li x12, 0x6023195f48dde874 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -104 # sub immediate from rs1 to counter offset
c.sd x12, 104(x11) # store value to put something in memory
c.ld x14, 104(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 296)

# Testcase cp_imm_mul
li x14, 0xda01695daa4005e3 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -112 # sub immediate from rs1 to counter offset
c.sd x14, 112(x12) # store value to put something in memory
c.ld x15, 112(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 304)

# Testcase cp_imm_mul
li x15, 0xb1ee6fd5e6227530 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -120 # sub immediate from rs1 to counter offset
c.sd x15, 120(x9) # store value to put something in memory
c.ld x12, 120(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 312)

# Testcase cp_imm_mul
li x9, 0x47a0c19e32638eda # initialize rs2
la x14, scratch # base address 
addi x14, x14, -128 # sub immediate from rs1 to counter offset
c.sd x9, 128(x14) # store value to put something in memory
c.ld x10, 128(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cp_imm_mul
li x10, 0x0a87b6ed4cf676b5 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -136 # sub immediate from rs1 to counter offset
c.sd x10, 136(x8) # store value to put something in memory
c.ld x14, 136(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cp_imm_mul
li x11, 0x2e56830a5c94363a # initialize rs2
la x9, scratch # base address 
addi x9, x9, -144 # sub immediate from rs1 to counter offset
c.sd x11, 144(x9) # store value to put something in memory
c.ld x12, 144(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cp_imm_mul
li x8, 0xca3c79d38622cd54 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -152 # sub immediate from rs1 to counter offset
c.sd x8, 152(x13) # store value to put something in memory
c.ld x10, 152(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cp_imm_mul
li x15, 0x4d5c3dddad6c8725 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -160 # sub immediate from rs1 to counter offset
c.sd x15, 160(x13) # store value to put something in memory
c.ld x11, 160(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 352)

# Testcase cp_imm_mul
li x8, 0xc6f919eaf7250e19 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -168 # sub immediate from rs1 to counter offset
c.sd x8, 168(x11) # store value to put something in memory
c.ld x10, 168(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 360)

# Testcase cp_imm_mul
li x10, 0xa3be383ab0e1b1a5 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -176 # sub immediate from rs1 to counter offset
c.sd x10, 176(x12) # store value to put something in memory
c.ld x13, 176(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 368)

# Testcase cp_imm_mul
li x14, 0xbcb459bcb2e51aab # initialize rs2
la x11, scratch # base address 
addi x11, x11, -184 # sub immediate from rs1 to counter offset
c.sd x14, 184(x11) # store value to put something in memory
c.ld x12, 184(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 376)

# Testcase cp_imm_mul
li x14, 0x4a17914bb62117f3 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -192 # sub immediate from rs1 to counter offset
c.sd x14, 192(x13) # store value to put something in memory
c.ld x15, 192(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 384)

# Testcase cp_imm_mul
li x13, 0x9129335fc4ca427d # initialize rs2
la x11, scratch # base address 
addi x11, x11, -200 # sub immediate from rs1 to counter offset
c.sd x13, 200(x11) # store value to put something in memory
c.ld x8, 200(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 392)

# Testcase cp_imm_mul
li x14, 0x4d23fc409764493e # initialize rs2
la x13, scratch # base address 
addi x13, x13, -208 # sub immediate from rs1 to counter offset
c.sd x14, 208(x13) # store value to put something in memory
c.ld x12, 208(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 400)

# Testcase cp_imm_mul
li x11, 0x42808b554f3db437 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -216 # sub immediate from rs1 to counter offset
c.sd x11, 216(x12) # store value to put something in memory
c.ld x13, 216(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cp_imm_mul
li x13, 0x1835f40f1e2c572e # initialize rs2
la x8, scratch # base address 
addi x8, x8, -224 # sub immediate from rs1 to counter offset
c.sd x13, 224(x8) # store value to put something in memory
c.ld x15, 224(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 416)

# Testcase cp_imm_mul
li x10, 0x1831bed5bbc8c239 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -232 # sub immediate from rs1 to counter offset
c.sd x10, 232(x15) # store value to put something in memory
c.ld x8, 232(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 424)

# Testcase cp_imm_mul
li x9, 0x5d5be7fdd784e023 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -240 # sub immediate from rs1 to counter offset
c.sd x9, 240(x14) # store value to put something in memory
c.ld x12, 240(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 432)

# Testcase cp_imm_mul
li x8, 0x2ffbf5b73391b878 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -248 # sub immediate from rs1 to counter offset
c.sd x8, 248(x11) # store value to put something in memory
c.ld x10, 248(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 440)

#.EQU SIGSIZE,448


// ******************
// Tests from: WALLY-COV-c.slli.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0xb464d7315e259883
c.slli x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x76bbc93bf477a736
c.slli x2, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x6bc576a3a11b7ea3
c.slli x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x17a4761bde6e3705
c.slli x4, 10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 24)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8fdcac67b920abe5
c.slli x5, 33 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 32)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x873b0b2d887ba403
c.slli x6, 22 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9f6d0592c72e3955
c.slli x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x04327e39a35e571a
c.slli x8, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x62cba00e5563bc3e
c.slli x9, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xaf7e20fef241cc91
c.slli x10, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x96d18540159f6fc1
c.slli x11, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xa9aa4ebc3a01e53b
c.slli x12, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xc0325d2aa522b2a3
c.slli x13, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x357c47ad8abeff58
c.slli x14, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x35384374e790451e
c.slli x15, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x3dcfd74b507133d5
c.slli x16, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x22b3d47cab278b44
c.slli x17, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x4b0d5758ebfdc4cd
c.slli x18, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x88af13bf309ed5d7
c.slli x19, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xd59a3b046f1c6a14
c.slli x20, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xa51610e5900d7e9f
c.slli x21, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xbad5ff5e42f8b42d
c.slli x22, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x5e0adfa452c6a277
c.slli x23, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xbe131d3747f3d5e2
c.slli x24, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xee45a764caf5ceb5
c.slli x25, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 192)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xa14553fe3c719ed2
c.slli x26, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xed3ce8885c7d6440
c.slli x27, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xc16ccace657b3116
c.slli x28, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x539acd4d0aa6172f
c.slli x29, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 224)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xd1313e57afdbf6a8
c.slli x30, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x2e6b63afa87c7db4
c.slli x31, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x31, 0x0000000000000000
c.slli x31, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x0000000000000001
c.slli x21, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0x0000000000000002
c.slli x31, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x6, 0x8000000000000000
c.slli x6, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x13, 0x8000000000000001
c.slli x13, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x25, 0x7fffffffffffffff
c.slli x25, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x15, 0x7ffffffffffffffe
c.slli x15, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x20, 0xffffffffffffffff
c.slli x20, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 304)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x30, 0xfffffffffffffffe
c.slli x30, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 312)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x23, 0x5bbc887763ae86f2
c.slli x23, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 320)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x5, 0xaaaaaaaaaaaaaaaa
c.slli x5, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 328)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x8, 0x5555555555555555
c.slli x8, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x5, 0x00000000ffffffff
c.slli x5, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 344)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0x00000000fffffffe
c.slli x13, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x26, 0x0000000100000000
c.slli x26, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x5, 0x0000000100000001
c.slli x5, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 368)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000000
c.slli x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000000000000
c.slli x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 384)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000000
c.slli x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000
c.slli x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000000
c.slli x1, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 408)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000
c.slli x27, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 416)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000000
c.slli x31, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 424)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000000
c.slli x17, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 432)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000000
c.slli x19, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 440)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000000
c.slli x1, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 448)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000000
c.slli x22, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 456)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000000000000
c.slli x28, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000000
c.slli x31, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 472)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000000
c.slli x25, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 480)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000000
c.slli x8, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 488)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000000
c.slli x26, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 496)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000001
c.slli x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 504)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000001
c.slli x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 512)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000001
c.slli x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 520)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000001
c.slli x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 528)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000001
c.slli x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001
c.slli x3, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 544)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000001
c.slli x18, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 552)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000001
c.slli x29, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 560)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000001
c.slli x16, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 568)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000000000001
c.slli x23, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 576)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000001
c.slli x5, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 584)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001
c.slli x27, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 592)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000001
c.slli x22, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 600)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000001
c.slli x12, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000001
c.slli x24, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 616)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000001
c.slli x8, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 624)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000002
c.slli x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 632)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000002
c.slli x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 640)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000002
c.slli x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000002
c.slli x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 656)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002
c.slli x27, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 664)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000002
c.slli x20, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000002
c.slli x18, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 680)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000002
c.slli x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 688)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002
c.slli x13, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 696)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000002
c.slli x17, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 704)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000002
c.slli x16, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 712)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000002
c.slli x22, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 720)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000002
c.slli x17, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 728)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000002
c.slli x15, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000002
c.slli x1, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 744)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002
c.slli x13, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 752)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000000
c.slli x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 760)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000000
c.slli x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 768)

# Testcase cr_rs1_imm_corners
li x1, 0x8000000000000000
c.slli x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 776)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000000
c.slli x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 784)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000000
c.slli x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 792)

# Testcase cr_rs1_imm_corners
li x16, 0x8000000000000000
c.slli x16, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 800)

# Testcase cr_rs1_imm_corners
li x22, 0x8000000000000000
c.slli x22, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 808)

# Testcase cr_rs1_imm_corners
li x26, 0x8000000000000000
c.slli x26, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 816)

# Testcase cr_rs1_imm_corners
li x28, 0x8000000000000000
c.slli x28, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 824)

# Testcase cr_rs1_imm_corners
li x26, 0x8000000000000000
c.slli x26, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 832)

# Testcase cr_rs1_imm_corners
li x22, 0x8000000000000000
c.slli x22, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 840)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000000
c.slli x9, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 848)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000000
c.slli x15, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 856)

# Testcase cr_rs1_imm_corners
li x29, 0x8000000000000000
c.slli x29, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 864)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000
c.slli x27, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 872)

# Testcase cr_rs1_imm_corners
li x30, 0x8000000000000000
c.slli x30, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000001
c.slli x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 888)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000001
c.slli x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 896)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000001
c.slli x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 904)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001
c.slli x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 912)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001
c.slli x3, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 920)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001
c.slli x27, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 928)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000001
c.slli x7, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 936)

# Testcase cr_rs1_imm_corners
li x31, 0x8000000000000001
c.slli x31, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 944)

# Testcase cr_rs1_imm_corners
li x21, 0x8000000000000001
c.slli x21, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 952)

# Testcase cr_rs1_imm_corners
li x1, 0x8000000000000001
c.slli x1, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 960)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000001
c.slli x24, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 968)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001
c.slli x27, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

# Testcase cr_rs1_imm_corners
li x22, 0x8000000000000001
c.slli x22, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 984)

# Testcase cr_rs1_imm_corners
li x1, 0x8000000000000001
c.slli x1, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 992)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000001
c.slli x9, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cr_rs1_imm_corners
li x21, 0x8000000000000001
c.slli x21, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1008)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffffffffffff
c.slli x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1016)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffffffffffff
c.slli x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1024)

# Testcase cr_rs1_imm_corners
li x7, 0x7fffffffffffffff
c.slli x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1032)

# Testcase cr_rs1_imm_corners
li x7, 0x7fffffffffffffff
c.slli x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1040)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffffffffffff
c.slli x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1048)

# Testcase cr_rs1_imm_corners
li x20, 0x7fffffffffffffff
c.slli x20, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cr_rs1_imm_corners
li x21, 0x7fffffffffffffff
c.slli x21, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1064)

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff
c.slli x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1072)

# Testcase cr_rs1_imm_corners
li x11, 0x7fffffffffffffff
c.slli x11, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1080)

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff
c.slli x3, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1088)

# Testcase cr_rs1_imm_corners
li x29, 0x7fffffffffffffff
c.slli x29, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1096)

# Testcase cr_rs1_imm_corners
li x16, 0x7fffffffffffffff
c.slli x16, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1104)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffffffffffff
c.slli x12, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1112)

# Testcase cr_rs1_imm_corners
li x25, 0x7fffffffffffffff
c.slli x25, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1120)

# Testcase cr_rs1_imm_corners
li x20, 0x7fffffffffffffff
c.slli x20, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1128)

# Testcase cr_rs1_imm_corners
li x31, 0x7fffffffffffffff
c.slli x31, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1136)

# Testcase cr_rs1_imm_corners
li x31, 0x7ffffffffffffffe
c.slli x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1144)

# Testcase cr_rs1_imm_corners
li x18, 0x7ffffffffffffffe
c.slli x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1152)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffffffffffe
c.slli x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1160)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffffffffffe
c.slli x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1168)

# Testcase cr_rs1_imm_corners
li x20, 0x7ffffffffffffffe
c.slli x20, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1176)

# Testcase cr_rs1_imm_corners
li x20, 0x7ffffffffffffffe
c.slli x20, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1184)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffffffffffe
c.slli x16, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1192)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe
c.slli x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1200)

# Testcase cr_rs1_imm_corners
li x21, 0x7ffffffffffffffe
c.slli x21, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1208)

# Testcase cr_rs1_imm_corners
li x26, 0x7ffffffffffffffe
c.slli x26, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1216)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffffffffffe
c.slli x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1224)

# Testcase cr_rs1_imm_corners
li x5, 0x7ffffffffffffffe
c.slli x5, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1232)

# Testcase cr_rs1_imm_corners
li x20, 0x7ffffffffffffffe
c.slli x20, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1240)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffffffffffe
c.slli x9, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1248)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe
c.slli x13, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1256)

# Testcase cr_rs1_imm_corners
li x2, 0x7ffffffffffffffe
c.slli x2, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1264)

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff
c.slli x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1272)

# Testcase cr_rs1_imm_corners
li x15, 0xffffffffffffffff
c.slli x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1280)

# Testcase cr_rs1_imm_corners
li x5, 0xffffffffffffffff
c.slli x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1288)

# Testcase cr_rs1_imm_corners
li x29, 0xffffffffffffffff
c.slli x29, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1296)

# Testcase cr_rs1_imm_corners
li x11, 0xffffffffffffffff
c.slli x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1304)

# Testcase cr_rs1_imm_corners
li x16, 0xffffffffffffffff
c.slli x16, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1312)

# Testcase cr_rs1_imm_corners
li x19, 0xffffffffffffffff
c.slli x19, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1320)

# Testcase cr_rs1_imm_corners
li x19, 0xffffffffffffffff
c.slli x19, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1328)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffffffffffff
c.slli x26, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1336)

# Testcase cr_rs1_imm_corners
li x25, 0xffffffffffffffff
c.slli x25, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1344)

# Testcase cr_rs1_imm_corners
li x30, 0xffffffffffffffff
c.slli x30, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1352)

# Testcase cr_rs1_imm_corners
li x20, 0xffffffffffffffff
c.slli x20, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffffffffffff
c.slli x26, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1368)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffffffffffff
c.slli x10, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1376)

# Testcase cr_rs1_imm_corners
li x28, 0xffffffffffffffff
c.slli x28, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1384)

# Testcase cr_rs1_imm_corners
li x30, 0xffffffffffffffff
c.slli x30, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1392)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffffffffffe
c.slli x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1400)

# Testcase cr_rs1_imm_corners
li x22, 0xfffffffffffffffe
c.slli x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1408)

# Testcase cr_rs1_imm_corners
li x17, 0xfffffffffffffffe
c.slli x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1416)

# Testcase cr_rs1_imm_corners
li x5, 0xfffffffffffffffe
c.slli x5, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1424)

# Testcase cr_rs1_imm_corners
li x30, 0xfffffffffffffffe
c.slli x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cr_rs1_imm_corners
li x19, 0xfffffffffffffffe
c.slli x19, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1440)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffffffffffe
c.slli x10, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1448)

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffffffffffe
c.slli x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1456)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffffffffffe
c.slli x24, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1464)

# Testcase cr_rs1_imm_corners
li x28, 0xfffffffffffffffe
c.slli x28, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1472)

# Testcase cr_rs1_imm_corners
li x30, 0xfffffffffffffffe
c.slli x30, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1480)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffffffffffe
c.slli x9, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1488)

# Testcase cr_rs1_imm_corners
li x31, 0xfffffffffffffffe
c.slli x31, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1496)

# Testcase cr_rs1_imm_corners
li x18, 0xfffffffffffffffe
c.slli x18, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1504)

# Testcase cr_rs1_imm_corners
li x26, 0xfffffffffffffffe
c.slli x26, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1512)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffffffffffe
c.slli x15, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2
c.slli x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1528)

# Testcase cr_rs1_imm_corners
li x25, 0x5bbc887763ae86f2
c.slli x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1536)

# Testcase cr_rs1_imm_corners
li x7, 0x5bbc887763ae86f2
c.slli x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1544)

# Testcase cr_rs1_imm_corners
li x24, 0x5bbc887763ae86f2
c.slli x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1552)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc887763ae86f2
c.slli x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1560)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2
c.slli x1, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1568)

# Testcase cr_rs1_imm_corners
li x16, 0x5bbc887763ae86f2
c.slli x16, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1576)

# Testcase cr_rs1_imm_corners
li x22, 0x5bbc887763ae86f2
c.slli x22, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1584)

# Testcase cr_rs1_imm_corners
li x6, 0x5bbc887763ae86f2
c.slli x6, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1592)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc887763ae86f2
c.slli x14, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1600)

# Testcase cr_rs1_imm_corners
li x31, 0x5bbc887763ae86f2
c.slli x31, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1608)

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f2
c.slli x27, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1616)

# Testcase cr_rs1_imm_corners
li x6, 0x5bbc887763ae86f2
c.slli x6, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1624)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc887763ae86f2
c.slli x15, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1632)

# Testcase cr_rs1_imm_corners
li x12, 0x5bbc887763ae86f2
c.slli x12, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1640)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc887763ae86f2
c.slli x9, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1648)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaaaaaaaaaa
c.slli x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1656)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaaaaaaaaaa
c.slli x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1664)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaaaaaaaaaa
c.slli x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1672)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaaaaaaaaaa
c.slli x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1680)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaaaaaaaaaa
c.slli x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1688)

# Testcase cr_rs1_imm_corners
li x24, 0xaaaaaaaaaaaaaaaa
c.slli x24, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1696)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaaaaaaaaaa
c.slli x25, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1704)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaaaaaaaaaa
c.slli x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1712)

# Testcase cr_rs1_imm_corners
li x1, 0xaaaaaaaaaaaaaaaa
c.slli x1, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1720)

# Testcase cr_rs1_imm_corners
li x31, 0xaaaaaaaaaaaaaaaa
c.slli x31, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1728)

# Testcase cr_rs1_imm_corners
li x21, 0xaaaaaaaaaaaaaaaa
c.slli x21, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1736)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaaaaaaaaaa
c.slli x14, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1744)

# Testcase cr_rs1_imm_corners
li x20, 0xaaaaaaaaaaaaaaaa
c.slli x20, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1752)

# Testcase cr_rs1_imm_corners
li x29, 0xaaaaaaaaaaaaaaaa
c.slli x29, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cr_rs1_imm_corners
li x6, 0xaaaaaaaaaaaaaaaa
c.slli x6, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1768)

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa
c.slli x3, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1776)

# Testcase cr_rs1_imm_corners
li x14, 0x5555555555555555
c.slli x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1784)

# Testcase cr_rs1_imm_corners
li x8, 0x5555555555555555
c.slli x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555
c.slli x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cr_rs1_imm_corners
li x31, 0x5555555555555555
c.slli x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cr_rs1_imm_corners
li x23, 0x5555555555555555
c.slli x23, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 16)

# Testcase cr_rs1_imm_corners
li x28, 0x5555555555555555
c.slli x28, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 24)

# Testcase cr_rs1_imm_corners
li x18, 0x5555555555555555
c.slli x18, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 32)

# Testcase cr_rs1_imm_corners
li x6, 0x5555555555555555
c.slli x6, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 40)

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555
c.slli x27, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 48)

# Testcase cr_rs1_imm_corners
li x16, 0x5555555555555555
c.slli x16, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 56)

# Testcase cr_rs1_imm_corners
li x16, 0x5555555555555555
c.slli x16, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cr_rs1_imm_corners
li x26, 0x5555555555555555
c.slli x26, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

# Testcase cr_rs1_imm_corners
li x1, 0x5555555555555555
c.slli x1, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cr_rs1_imm_corners
li x21, 0x5555555555555555
c.slli x21, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 88)

# Testcase cr_rs1_imm_corners
li x2, 0x5555555555555555
c.slli x2, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 96)

# Testcase cr_rs1_imm_corners
li x23, 0x5555555555555555
c.slli x23, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 104)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000ffffffff
c.slli x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 112)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000ffffffff
c.slli x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 120)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000ffffffff
c.slli x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 128)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000ffffffff
c.slli x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 136)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000ffffffff
c.slli x5, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 144)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000ffffffff
c.slli x21, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000ffffffff
c.slli x17, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 160)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000ffffffff
c.slli x21, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000ffffffff
c.slli x10, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 176)

# Testcase cr_rs1_imm_corners
li x19, 0x00000000ffffffff
c.slli x19, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000ffffffff
c.slli x6, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000ffffffff
c.slli x2, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 200)

# Testcase cr_rs1_imm_corners
li x25, 0x00000000ffffffff
c.slli x25, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 208)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000ffffffff
c.slli x9, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000ffffffff
c.slli x21, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000ffffffff
c.slli x6, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 232)

# Testcase cr_rs1_imm_corners
li x25, 0x00000000fffffffe
c.slli x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe
c.slli x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 248)

# Testcase cr_rs1_imm_corners
li x26, 0x00000000fffffffe
c.slli x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 256)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe
c.slli x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000fffffffe
c.slli x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000fffffffe
c.slli x2, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 280)

# Testcase cr_rs1_imm_corners
li x26, 0x00000000fffffffe
c.slli x26, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 288)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe
c.slli x22, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 296)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000fffffffe
c.slli x24, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 304)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe
c.slli x22, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 312)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000fffffffe
c.slli x21, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 320)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000fffffffe
c.slli x24, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 328)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000fffffffe
c.slli x9, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 336)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000fffffffe
c.slli x30, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 344)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000fffffffe
c.slli x7, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 352)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000fffffffe
c.slli x9, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 360)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000100000000
c.slli x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 368)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000100000000
c.slli x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000000
c.slli x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 384)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000
c.slli x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 392)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000100000000
c.slli x17, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 400)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000100000000
c.slli x19, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000000
c.slli x24, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 416)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000100000000
c.slli x26, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 424)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000
c.slli x10, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 432)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000000
c.slli x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 440)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000100000000
c.slli x5, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 448)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000100000000
c.slli x26, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000
c.slli x3, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 464)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000
c.slli x27, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000100000000
c.slli x30, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000100000000
c.slli x25, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 488)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001
c.slli x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 496)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001
c.slli x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 504)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000100000001
c.slli x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 512)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000100000001
c.slli x22, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 520)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000001
c.slli x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000001
c.slli x10, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 536)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000001
c.slli x28, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001
c.slli x27, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 552)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000001
c.slli x10, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 560)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000100000001
c.slli x22, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 568)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000001
c.slli x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000001
c.slli x16, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 584)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000100000001
c.slli x19, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 592)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000001
c.slli x31, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 600)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000001
c.slli x10, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 608)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000001
c.slli x7, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 616)

# Testcase cp_uimm (Test bit = 0)
li x25, 0x7f6155787150b4f5
c.slli x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 624)

# Testcase cp_uimm (Test bit = 1)
li x9, 0x8e56d3cf63df6829
c.slli x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 632)

# Testcase cp_uimm (Test bit = 2)
li x5, 0x17f8142862615b80
c.slli x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 640)

# Testcase cp_uimm (Test bit = 3)
li x17, 0x9c6c843b60a1d4e9
c.slli x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_uimm (Test bit = 4)
li x26, 0xe4c556367fe53d44
c.slli x26, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 656)

# Testcase cp_uimm (Test bit = 5)
li x8, 0xcf4443f9a4d0a4f6
c.slli x8, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 664)

# Testcase cp_uimm (Test bit = 6)
li x12, 0x93d42b60bb730dc5
c.slli x12, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 672)

# Testcase cp_uimm (Test bit = 7)
li x20, 0x07c0d9ffe1fdca75
c.slli x20, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 680)

# Testcase cp_uimm (Test bit = 8)
li x10, 0xf2af074945a74589
c.slli x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 688)

# Testcase cp_uimm (Test bit = 9)
li x27, 0x9f159bb6b5f708bb
c.slli x27, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 696)

# Testcase cp_uimm (Test bit = 10)
li x3, 0x2656e03b700e1d0b
c.slli x3, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 704)

# Testcase cp_uimm (Test bit = 11)
li x29, 0x67f9f042c5d8e26a
c.slli x29, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 712)

# Testcase cp_uimm (Test bit = 12)
li x11, 0x36277e0eb48d584c
c.slli x11, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 720)

# Testcase cp_uimm (Test bit = 13)
li x23, 0xed9c100e6abb7785
c.slli x23, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 728)

# Testcase cp_uimm (Test bit = 14)
li x9, 0x2a3e34229bbdd52e
c.slli x9, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

# Testcase cp_uimm (Test bit = 15)
li x25, 0x12d36be0c0299b19
c.slli x25, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 744)

# Testcase cp_uimm (Test bit = 16)
li x9, 0x7701fb6c9c163220
c.slli x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 752)

# Testcase cp_uimm (Test bit = 17)
li x5, 0x6d002bd6ac0a316d
c.slli x5, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 760)

# Testcase cp_uimm (Test bit = 18)
li x24, 0x4b4aef3155c98358
c.slli x24, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 768)

# Testcase cp_uimm (Test bit = 19)
li x16, 0x41c24d0b888dbb48
c.slli x16, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 776)

# Testcase cp_uimm (Test bit = 20)
li x21, 0x36d792fa1bf71972
c.slli x21, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 784)

# Testcase cp_uimm (Test bit = 21)
li x26, 0xabb6aa595093640a
c.slli x26, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 792)

# Testcase cp_uimm (Test bit = 22)
li x3, 0x9d95e6ce7de81ba7
c.slli x3, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 800)

# Testcase cp_uimm (Test bit = 23)
li x16, 0x4a9a91039c6efc97
c.slli x16, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 808)

# Testcase cp_uimm (Test bit = 24)
li x25, 0x6564d1038fb411a2
c.slli x25, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cp_uimm (Test bit = 25)
li x15, 0x42ae8d35f8a4a300
c.slli x15, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 824)

# Testcase cp_uimm (Test bit = 26)
li x28, 0xc7302686b05b08d2
c.slli x28, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cp_uimm (Test bit = 27)
li x27, 0xc029b3c72276e0dc
c.slli x27, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 840)

# Testcase cp_uimm (Test bit = 28)
li x23, 0x7bca9493d6174ba9
c.slli x23, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 848)

# Testcase cp_uimm (Test bit = 29)
li x1, 0x8ef0312b2d73d7b0
c.slli x1, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 856)

# Testcase cp_uimm (Test bit = 30)
li x29, 0xd0afa2c0e6fff5c6
c.slli x29, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 864)

# Testcase cp_uimm (Test bit = 31)
li x10, 0xe9d7a5c50783f9cc
c.slli x10, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 872)

# Testcase cp_uimm (Test bit = 32)
li x24, 0x684967c447bf5b21
c.slli x24, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 880)

# Testcase cp_uimm (Test bit = 33)
li x21, 0x494d3e4d8584d476
c.slli x21, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 888)

# Testcase cp_uimm (Test bit = 34)
li x23, 0xb220b2446b7ea4f1
c.slli x23, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 896)

# Testcase cp_uimm (Test bit = 35)
li x14, 0x077d6aae7b6c69c4
c.slli x14, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 904)

# Testcase cp_uimm (Test bit = 36)
li x29, 0x3bff85193de1bcc3
c.slli x29, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 912)

# Testcase cp_uimm (Test bit = 37)
li x13, 0xa4e70c50095a2c96
c.slli x13, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cp_uimm (Test bit = 38)
li x13, 0x60a42f78dfe30fb8
c.slli x13, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 928)

# Testcase cp_uimm (Test bit = 39)
li x2, 0x08260758ccb0753a
c.slli x2, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 936)

# Testcase cp_uimm (Test bit = 40)
li x2, 0xdf18d03eb15acb61
c.slli x2, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 944)

# Testcase cp_uimm (Test bit = 41)
li x16, 0xbe1302a4ecaa556a
c.slli x16, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 952)

# Testcase cp_uimm (Test bit = 42)
li x7, 0xb9b657a927c58a3f
c.slli x7, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 960)

# Testcase cp_uimm (Test bit = 43)
li x3, 0xcc7b9b98a50b42f5
c.slli x3, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 968)

# Testcase cp_uimm (Test bit = 44)
li x26, 0x46149a8dff172f48
c.slli x26, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 976)

# Testcase cp_uimm (Test bit = 45)
li x19, 0x01cfabeecb82b775
c.slli x19, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 984)

# Testcase cp_uimm (Test bit = 46)
li x22, 0x958ec4b231be178e
c.slli x22, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 992)

# Testcase cp_uimm (Test bit = 47)
li x27, 0x0d62a23e36365c9f
c.slli x27, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1000)

# Testcase cp_uimm (Test bit = 48)
li x28, 0x0ff1aa936eb64ebd
c.slli x28, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1008)

# Testcase cp_uimm (Test bit = 49)
li x21, 0x8533273687845592
c.slli x21, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1016)

# Testcase cp_uimm (Test bit = 50)
li x13, 0x16e7a6ea5c734967
c.slli x13, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1024)

# Testcase cp_uimm (Test bit = 51)
li x1, 0xdb8b1ba9028dc93f
c.slli x1, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1032)

# Testcase cp_uimm (Test bit = 52)
li x22, 0xa5bb28c4041e9ba7
c.slli x22, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1040)

# Testcase cp_uimm (Test bit = 53)
li x16, 0x541c1a52464c3c3e
c.slli x16, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1048)

# Testcase cp_uimm (Test bit = 54)
li x20, 0x4dd9be26f78e7f05
c.slli x20, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cp_uimm (Test bit = 55)
li x6, 0x0bdddce102011ee7
c.slli x6, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1064)

# Testcase cp_uimm (Test bit = 56)
li x3, 0x28aef75965d120a2
c.slli x3, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1072)

# Testcase cp_uimm (Test bit = 57)
li x6, 0x31e1da1ff1cd8371
c.slli x6, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1080)

# Testcase cp_uimm (Test bit = 58)
li x5, 0x41fdee900c9d96a1
c.slli x5, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1088)

# Testcase cp_uimm (Test bit = 59)
li x17, 0x076fb91921cf0f55
c.slli x17, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1096)

# Testcase cp_uimm (Test bit = 60)
li x29, 0x57ec215a2d048ca3
c.slli x29, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cp_uimm (Test bit = 61)
li x21, 0xc4ec598c217ad485
c.slli x21, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

# Testcase cp_uimm (Test bit = 62)
li x11, 0xa29334690cfc9c5c
c.slli x11, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1120)

# Testcase cp_uimm (Test bit = 63)
li x14, 0x102791b7a1fb6f8f
c.slli x14, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

#.EQU SIGSIZE,2936


// ******************
// Tests from: WALLY-COV-c.addiw.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0xf467b7881fa49c75 # initialize rs1
c.addiw x1, -17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xcdbc2a371b75abce # initialize rs1
c.addiw x2, -18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xcad648ea320dc6ff # initialize rs1
c.addiw x3, -18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5e94eae0004eec51 # initialize rs1
c.addiw x4, 31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 24)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xec7ccbff43ffcb64 # initialize rs1
c.addiw x5, -21 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 32)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcc272e9ce6dbf225 # initialize rs1
c.addiw x6, 14 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe58ace75ac468c08 # initialize rs1
c.addiw x7, -24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2a5aafa4434978f4 # initialize rs1
c.addiw x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xdeec8d9bc707f1d9 # initialize rs1
c.addiw x9, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x8dffae89438aecb5 # initialize rs1
c.addiw x10, -4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xd00822b43d88bb61 # initialize rs1
c.addiw x11, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x5120b6c709660687 # initialize rs1
c.addiw x12, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x159bc0b2c2e4e746 # initialize rs1
c.addiw x13, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x41e69df20450155f # initialize rs1
c.addiw x14, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xe6590f7fb553c3a6 # initialize rs1
c.addiw x15, -10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xa48400c10400df8e # initialize rs1
c.addiw x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x722789f1c02c25a3 # initialize rs1
c.addiw x17, -17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x1d8b53547870ccca # initialize rs1
c.addiw x18, -8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x607bb471e087221a # initialize rs1
c.addiw x19, -3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xd4455d025595c874 # initialize rs1
c.addiw x20, -19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xf499f2e3d999dc94 # initialize rs1
c.addiw x21, -18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x7900f22e8ac46b28 # initialize rs1
c.addiw x22, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xf36eff252872f99e # initialize rs1
c.addiw x23, -27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x5ff83e0ee8c2357c # initialize rs1
c.addiw x24, -17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x71f499a684b790ba # initialize rs1
c.addiw x25, -7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 192)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x9fdee88e3d604e3e # initialize rs1
c.addiw x26, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x7a30c585c4222c0a # initialize rs1
c.addiw x27, -29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xbeec70d18d4b6186 # initialize rs1
c.addiw x28, -3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xa357253651f40b42 # initialize rs1
c.addiw x29, -28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 224)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xddfae98ca73e2717 # initialize rs1
c.addiw x30, -20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x8d1bbcc83c3a6144 # initialize rs1
c.addiw x31, -15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x29, 0x0000000000000000 # initialize rs1
c.addiw x29, -19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 248)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0x0000000000000001 # initialize rs1
c.addiw x18, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x13, 0x0000000000000002 # initialize rs1
c.addiw x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x30, 0x8000000000000000 # initialize rs1
c.addiw x30, -22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x14, 0x8000000000000001 # initialize rs1
c.addiw x14, -21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
c.addiw x7, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
c.addiw x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
c.addiw x19, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 304)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
c.addiw x23, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 312)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x7, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 320)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x2, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 328)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x5, 0x5555555555555555 # initialize rs1
c.addiw x5, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 336)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x00000000ffffffff # initialize rs1
c.addiw x7, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 344)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0x00000000fffffffe # initialize rs1
c.addiw x21, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 352)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x23, 0x0000000100000000 # initialize rs1
c.addiw x23, -19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 360)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x26, 0x0000000100000001 # initialize rs1
c.addiw x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 368)

# Testcase cp_imm_corners
li x29, 0x96b133d88e4970f7 # initialize rs1
c.addiw x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 376)

# Testcase cp_imm_corners
li x22, 0xa2af6d53eb7a383c # initialize rs1
c.addiw x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 384)

# Testcase cp_imm_corners
li x1, 0xfb1552c46d4c4bcb # initialize rs1
c.addiw x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 392)

# Testcase cp_imm_corners
li x17, 0xf0b2415fc31c8404 # initialize rs1
c.addiw x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 400)

# Testcase cp_imm_corners
li x3, 0xedb980ffcf933e78 # initialize rs1
c.addiw x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 408)

# Testcase cp_imm_corners
li x25, 0xef43de6082780a42 # initialize rs1
c.addiw x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cp_imm_corners
li x29, 0xc56b2d3d134df12e # initialize rs1
c.addiw x29, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 424)

# Testcase cp_imm_corners
li x29, 0x5b84f566c7b64ba1 # initialize rs1
c.addiw x29, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 432)

# Testcase cp_imm_corners
li x2, 0xdb46df2ed398cff3 # initialize rs1
c.addiw x2, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 440)

# Testcase cp_imm_corners
li x7, 0x4b80d3d3aec5e3e4 # initialize rs1
c.addiw x7, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 448)

# Testcase cp_imm_corners
li x16, 0x8bbc1757afaa89b6 # initialize rs1
c.addiw x16, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 456)

# Testcase cp_imm_corners
li x6, 0x056dc8cd290e6c6c # initialize rs1
c.addiw x6, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 464)

# Testcase cp_imm_corners
li x20, 0x768d667ac9a8d92d # initialize rs1
c.addiw x20, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 472)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000000 # initialize rs1
c.addiw x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000000 # initialize rs1
c.addiw x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000000 # initialize rs1
c.addiw x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000000 # initialize rs1
c.addiw x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 504)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000000 # initialize rs1
c.addiw x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 512)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000000 # initialize rs1
c.addiw x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 520)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000000 # initialize rs1
c.addiw x30, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000000 # initialize rs1
c.addiw x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 536)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000000 # initialize rs1
c.addiw x22, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 544)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000000 # initialize rs1
c.addiw x8, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 552)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000000 # initialize rs1
c.addiw x7, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 560)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000000 # initialize rs1
c.addiw x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000000 # initialize rs1
c.addiw x14, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 576)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000001 # initialize rs1
c.addiw x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 584)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001 # initialize rs1
c.addiw x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000001 # initialize rs1
c.addiw x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 600)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000001 # initialize rs1
c.addiw x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 608)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000001 # initialize rs1
c.addiw x30, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 616)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000001 # initialize rs1
c.addiw x31, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 624)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000001 # initialize rs1
c.addiw x24, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 632)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000001 # initialize rs1
c.addiw x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 640)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000001 # initialize rs1
c.addiw x25, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 648)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000001 # initialize rs1
c.addiw x25, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 656)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000001 # initialize rs1
c.addiw x2, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 664)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000001 # initialize rs1
c.addiw x25, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 672)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000001 # initialize rs1
c.addiw x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 680)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002 # initialize rs1
c.addiw x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 688)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000002 # initialize rs1
c.addiw x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 696)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000002 # initialize rs1
c.addiw x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 704)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000002 # initialize rs1
c.addiw x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 712)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000002 # initialize rs1
c.addiw x25, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 720)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002 # initialize rs1
c.addiw x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 728)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rs1
c.addiw x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 736)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000002 # initialize rs1
c.addiw x20, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 744)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000002 # initialize rs1
c.addiw x5, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 752)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000002 # initialize rs1
c.addiw x7, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 760)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000002 # initialize rs1
c.addiw x5, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 768)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000002 # initialize rs1
c.addiw x31, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 776)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000002 # initialize rs1
c.addiw x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 784)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000000 # initialize rs1
c.addiw x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 792)

# Testcase cr_rs1_imm_corners
li x19, 0x8000000000000000 # initialize rs1
c.addiw x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 800)

# Testcase cr_rs1_imm_corners
li x23, 0x8000000000000000 # initialize rs1
c.addiw x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 808)

# Testcase cr_rs1_imm_corners
li x6, 0x8000000000000000 # initialize rs1
c.addiw x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rs1
c.addiw x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 824)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000000 # initialize rs1
c.addiw x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 832)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rs1
c.addiw x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 840)

# Testcase cr_rs1_imm_corners
li x30, 0x8000000000000000 # initialize rs1
c.addiw x30, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 848)

# Testcase cr_rs1_imm_corners
li x28, 0x8000000000000000 # initialize rs1
c.addiw x28, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 856)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rs1
c.addiw x3, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 864)

# Testcase cr_rs1_imm_corners
li x17, 0x8000000000000000 # initialize rs1
c.addiw x17, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 872)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000000 # initialize rs1
c.addiw x7, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 880)

# Testcase cr_rs1_imm_corners
li x6, 0x8000000000000000 # initialize rs1
c.addiw x6, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 888)

# Testcase cr_rs1_imm_corners
li x23, 0x8000000000000001 # initialize rs1
c.addiw x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 896)

# Testcase cr_rs1_imm_corners
li x30, 0x8000000000000001 # initialize rs1
c.addiw x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 904)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000001 # initialize rs1
c.addiw x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 912)

# Testcase cr_rs1_imm_corners
li x17, 0x8000000000000001 # initialize rs1
c.addiw x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 920)

# Testcase cr_rs1_imm_corners
li x1, 0x8000000000000001 # initialize rs1
c.addiw x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 928)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rs1
c.addiw x27, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cr_rs1_imm_corners
li x5, 0x8000000000000001 # initialize rs1
c.addiw x5, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cr_rs1_imm_corners
li x21, 0x8000000000000001 # initialize rs1
c.addiw x21, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 952)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000001 # initialize rs1
c.addiw x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 960)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000001 # initialize rs1
c.addiw x15, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 968)

# Testcase cr_rs1_imm_corners
li x2, 0x8000000000000001 # initialize rs1
c.addiw x2, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000001 # initialize rs1
c.addiw x7, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 984)

# Testcase cr_rs1_imm_corners
li x25, 0x8000000000000001 # initialize rs1
c.addiw x25, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 992)

# Testcase cr_rs1_imm_corners
li x17, 0x7fffffffffffffff # initialize rs1
c.addiw x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1000)

# Testcase cr_rs1_imm_corners
li x1, 0x7fffffffffffffff # initialize rs1
c.addiw x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffffffffffff # initialize rs1
c.addiw x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1016)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffffffffffff # initialize rs1
c.addiw x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1024)

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rs1
c.addiw x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1032)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffffffffffff # initialize rs1
c.addiw x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1040)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffffffffffff # initialize rs1
c.addiw x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1048)

# Testcase cr_rs1_imm_corners
li x26, 0x7fffffffffffffff # initialize rs1
c.addiw x26, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1056)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffffffffffff # initialize rs1
c.addiw x10, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1064)

# Testcase cr_rs1_imm_corners
li x31, 0x7fffffffffffffff # initialize rs1
c.addiw x31, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1072)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffffffffffff # initialize rs1
c.addiw x12, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1080)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffffffffffff # initialize rs1
c.addiw x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1088)

# Testcase cr_rs1_imm_corners
li x29, 0x7fffffffffffffff # initialize rs1
c.addiw x29, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1096)

# Testcase cr_rs1_imm_corners
li x1, 0x7ffffffffffffffe # initialize rs1
c.addiw x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1104)

# Testcase cr_rs1_imm_corners
li x21, 0x7ffffffffffffffe # initialize rs1
c.addiw x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffffffffffe # initialize rs1
c.addiw x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1120)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffffffffffe # initialize rs1
c.addiw x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1128)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffffffffffe # initialize rs1
c.addiw x16, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1136)

# Testcase cr_rs1_imm_corners
li x30, 0x7ffffffffffffffe # initialize rs1
c.addiw x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

# Testcase cr_rs1_imm_corners
li x31, 0x7ffffffffffffffe # initialize rs1
c.addiw x31, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1152)

# Testcase cr_rs1_imm_corners
li x6, 0x7ffffffffffffffe # initialize rs1
c.addiw x6, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1160)

# Testcase cr_rs1_imm_corners
li x24, 0x7ffffffffffffffe # initialize rs1
c.addiw x24, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1168)

# Testcase cr_rs1_imm_corners
li x24, 0x7ffffffffffffffe # initialize rs1
c.addiw x24, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1176)

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rs1
c.addiw x27, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1184)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffffffffffe # initialize rs1
c.addiw x14, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1192)

# Testcase cr_rs1_imm_corners
li x25, 0x7ffffffffffffffe # initialize rs1
c.addiw x25, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1200)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffffffffffff # initialize rs1
c.addiw x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1208)

# Testcase cr_rs1_imm_corners
li x20, 0xffffffffffffffff # initialize rs1
c.addiw x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1216)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffffffffffff # initialize rs1
c.addiw x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1224)

# Testcase cr_rs1_imm_corners
li x25, 0xffffffffffffffff # initialize rs1
c.addiw x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1232)

# Testcase cr_rs1_imm_corners
li x18, 0xffffffffffffffff # initialize rs1
c.addiw x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1240)

# Testcase cr_rs1_imm_corners
li x18, 0xffffffffffffffff # initialize rs1
c.addiw x18, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1248)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff # initialize rs1
c.addiw x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1256)

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rs1
c.addiw x3, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1264)

# Testcase cr_rs1_imm_corners
li x6, 0xffffffffffffffff # initialize rs1
c.addiw x6, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1272)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff # initialize rs1
c.addiw x9, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1280)

# Testcase cr_rs1_imm_corners
li x17, 0xffffffffffffffff # initialize rs1
c.addiw x17, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1288)

# Testcase cr_rs1_imm_corners
li x17, 0xffffffffffffffff # initialize rs1
c.addiw x17, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1296)

# Testcase cr_rs1_imm_corners
li x29, 0xffffffffffffffff # initialize rs1
c.addiw x29, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1304)

# Testcase cr_rs1_imm_corners
li x7, 0xfffffffffffffffe # initialize rs1
c.addiw x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1312)

# Testcase cr_rs1_imm_corners
li x20, 0xfffffffffffffffe # initialize rs1
c.addiw x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1320)

# Testcase cr_rs1_imm_corners
li x29, 0xfffffffffffffffe # initialize rs1
c.addiw x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1328)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffffffffffe # initialize rs1
c.addiw x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1336)

# Testcase cr_rs1_imm_corners
li x1, 0xfffffffffffffffe # initialize rs1
c.addiw x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1344)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffffffffffe # initialize rs1
c.addiw x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cr_rs1_imm_corners
li x6, 0xfffffffffffffffe # initialize rs1
c.addiw x6, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1360)

# Testcase cr_rs1_imm_corners
li x25, 0xfffffffffffffffe # initialize rs1
c.addiw x25, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1368)

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rs1
c.addiw x27, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1376)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffffffffffe # initialize rs1
c.addiw x12, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1384)

# Testcase cr_rs1_imm_corners
li x19, 0xfffffffffffffffe # initialize rs1
c.addiw x19, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1392)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffffffffffe # initialize rs1
c.addiw x12, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1400)

# Testcase cr_rs1_imm_corners
li x23, 0xfffffffffffffffe # initialize rs1
c.addiw x23, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1408)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1416)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1424)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1432)

# Testcase cr_rs1_imm_corners
li x20, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1440)

# Testcase cr_rs1_imm_corners
li x7, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1448)

# Testcase cr_rs1_imm_corners
li x30, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1456)

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x27, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1464)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1472)

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x3, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1480)

# Testcase cr_rs1_imm_corners
li x31, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x31, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1488)

# Testcase cr_rs1_imm_corners
li x6, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x6, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1496)

# Testcase cr_rs1_imm_corners
li x21, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x21, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1504)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x13, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1512)

# Testcase cr_rs1_imm_corners
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1520)

# Testcase cr_rs1_imm_corners
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1528)

# Testcase cr_rs1_imm_corners
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1536)

# Testcase cr_rs1_imm_corners
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1544)

# Testcase cr_rs1_imm_corners
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x2, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1552)

# Testcase cr_rs1_imm_corners
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1568)

# Testcase cr_rs1_imm_corners
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x24, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1576)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x9, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1584)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x25, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1592)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x25, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1600)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x18, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1608)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1616)

# Testcase cr_rs1_imm_corners
li x7, 0x5555555555555555 # initialize rs1
c.addiw x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1624)

# Testcase cr_rs1_imm_corners
li x29, 0x5555555555555555 # initialize rs1
c.addiw x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1632)

# Testcase cr_rs1_imm_corners
li x25, 0x5555555555555555 # initialize rs1
c.addiw x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1640)

# Testcase cr_rs1_imm_corners
li x26, 0x5555555555555555 # initialize rs1
c.addiw x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1648)

# Testcase cr_rs1_imm_corners
li x7, 0x5555555555555555 # initialize rs1
c.addiw x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1656)

# Testcase cr_rs1_imm_corners
li x25, 0x5555555555555555 # initialize rs1
c.addiw x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1664)

# Testcase cr_rs1_imm_corners
li x13, 0x5555555555555555 # initialize rs1
c.addiw x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1672)

# Testcase cr_rs1_imm_corners
li x29, 0x5555555555555555 # initialize rs1
c.addiw x29, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1680)

# Testcase cr_rs1_imm_corners
li x20, 0x5555555555555555 # initialize rs1
c.addiw x20, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cr_rs1_imm_corners
li x16, 0x5555555555555555 # initialize rs1
c.addiw x16, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1696)

# Testcase cr_rs1_imm_corners
li x29, 0x5555555555555555 # initialize rs1
c.addiw x29, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1704)

# Testcase cr_rs1_imm_corners
li x9, 0x5555555555555555 # initialize rs1
c.addiw x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1712)

# Testcase cr_rs1_imm_corners
li x26, 0x5555555555555555 # initialize rs1
c.addiw x26, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1720)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000ffffffff # initialize rs1
c.addiw x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1728)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000ffffffff # initialize rs1
c.addiw x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1736)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rs1
c.addiw x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1744)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000ffffffff # initialize rs1
c.addiw x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1752)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000ffffffff # initialize rs1
c.addiw x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1760)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rs1
c.addiw x3, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1768)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000ffffffff # initialize rs1
c.addiw x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1776)

# Testcase cr_rs1_imm_corners
li x18, 0x00000000ffffffff # initialize rs1
c.addiw x18, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1784)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000ffffffff # initialize rs1
c.addiw x5, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rs1
c.addiw x3, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000ffffffff # initialize rs1
c.addiw x9, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000ffffffff # initialize rs1
c.addiw x13, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000ffffffff # initialize rs1
c.addiw x6, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 24)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000fffffffe # initialize rs1
c.addiw x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe # initialize rs1
c.addiw x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 40)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000fffffffe # initialize rs1
c.addiw x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000fffffffe # initialize rs1
c.addiw x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 56)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe # initialize rs1
c.addiw x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cr_rs1_imm_corners
li x26, 0x00000000fffffffe # initialize rs1
c.addiw x26, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe # initialize rs1
c.addiw x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe # initialize rs1
c.addiw x22, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe # initialize rs1
c.addiw x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000fffffffe # initialize rs1
c.addiw x29, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 104)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe # initialize rs1
c.addiw x11, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000fffffffe # initialize rs1
c.addiw x14, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000fffffffe # initialize rs1
c.addiw x15, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 128)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000000 # initialize rs1
c.addiw x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 136)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000000 # initialize rs1
c.addiw x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 144)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rs1
c.addiw x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 152)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000000 # initialize rs1
c.addiw x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 160)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000000 # initialize rs1
c.addiw x28, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 168)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000 # initialize rs1
c.addiw x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 176)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000 # initialize rs1
c.addiw x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000000 # initialize rs1
c.addiw x16, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000100000000 # initialize rs1
c.addiw x20, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000000 # initialize rs1
c.addiw x31, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000100000000 # initialize rs1
c.addiw x19, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000100000000 # initialize rs1
c.addiw x5, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 224)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000000 # initialize rs1
c.addiw x31, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rs1
c.addiw x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 240)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000001 # initialize rs1
c.addiw x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 248)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000001 # initialize rs1
c.addiw x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 256)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000001 # initialize rs1
c.addiw x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 264)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000001 # initialize rs1
c.addiw x16, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 272)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rs1
c.addiw x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 280)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000001 # initialize rs1
c.addiw x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 288)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000001 # initialize rs1
c.addiw x7, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000100000001 # initialize rs1
c.addiw x17, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 304)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000100000001 # initialize rs1
c.addiw x29, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 312)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000001 # initialize rs1
c.addiw x28, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 320)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rs1
c.addiw x27, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 328)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rs1
c.addiw x15, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 336)

#.EQU SIGSIZE,2144


// ******************
// Tests from: WALLY-COV-c.bnez.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x0000000000000000 # initialize rs1
c.bnez x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x0000000000000001 # initialize rs1
c.bnez x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x0000000000000002 # initialize rs1
c.bnez x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x13, 0x8000000000000000 # initialize rs1
c.bnez x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs1
c.bnez x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rs1
c.bnez x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x15, 0x7ffffffffffffffe # initialize rs1
c.bnez x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x8, 0xffffffffffffffff # initialize rs1
c.bnez x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs1
c.bnez x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x10, 0x5bbc887763ae86f2 # initialize rs1
c.bnez x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.bnez x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x8, 0x5555555555555555 # initialize rs1
c.bnez x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0x00000000ffffffff # initialize rs1
c.bnez x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0x00000000fffffffe # initialize rs1
c.bnez x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x8, 0x0000000100000000 # initialize rs1
c.bnez x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x13, 0x0000000100000001 # initialize rs1
c.bnez x13, 1f # perform operation
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
li x8, 0x018c1e507261d534 # initialize rs1
c.bnez x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x1c7fae3334824e50 # initialize rs1
c.bnez x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x86a9e2adb00417c3 # initialize rs1
c.bnez x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xfee0cd5aef235110 # initialize rs1
c.bnez x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x70c22d6439988824 # initialize rs1
c.bnez x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x05273f8945a01fcd # initialize rs1
c.bnez x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xf1131136930d3935 # initialize rs1
c.bnez x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x9a5a7594f93511dc # initialize rs1
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
li x1, 0x25cb867c5f7cb9a7
c.mv x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x418f17a8eca4fe6c
c.mv x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x0f619deb0ca12fa4
c.mv x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x815b5ad8c43701d6
c.mv x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 24)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd601f67decaee562
c.mv x15, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 32)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x61c06041dce354bb
c.mv x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cp_rs2 (Test source rs2 = x7)
li x7, 0xf8e4ab17d0c20d5d
c.mv x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 48)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xf1048aee32c271bd
c.mv x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x264ad7d5e7c98a12
c.mv x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 64)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x183e8199d7772310
c.mv x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 72)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x01430e509bef24c1
c.mv x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xda7f03fa7c0eba2e
c.mv x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x90466b023323ebee
c.mv x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xcdbbe06af40ff1ef
c.mv x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x2e24671170c5900a
c.mv x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 112)

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x454dd7c010b991eb
c.mv x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0xafdc609673732f16
c.mv x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x0b368f16d23e2728
c.mv x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x2cfc443507dfbea0
c.mv x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xcbd3e39f741a4d7c
c.mv x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x64b9cf1ebede8cdf
c.mv x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 160)

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x4554795efd8e7859
c.mv x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x1b6895741afbec17
c.mv x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0xe05942fe31b7eaf3
c.mv x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xb01a757f76feb355
c.mv x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x875fddc71f066a91
c.mv x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0xfb8cf98277bc8e2c
c.mv x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x45b34f735287b750
c.mv x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x9fb2885e8dd69a31
c.mv x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xb5676a927889b1ae
c.mv x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 232)

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x7634dc8c3205625e
c.mv x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 240)

# Testcase cp_rd (Test destination rd = x1)
li x7, 0xede4a79960484348
c.mv x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cp_rd (Test destination rd = x2)
li x18, 0x9aa72df34482de1b
c.mv x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cp_rd (Test destination rd = x3)
li x21, 0x8e8df87663b8d93f
c.mv x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0xc260f149ed400e90
c.mv x4, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x07a7d08d9541f96e
c.mv x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x11, 0x96ad1ea3ac36e153
c.mv x6, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x6d0520f961a6b20e
c.mv x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xe10f5cb7ebfcf7cf
c.mv x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0xe15cffbfcfdf3636
c.mv x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cp_rd (Test destination rd = x10)
li x24, 0x9dd663c28c2d390e
c.mv x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cp_rd (Test destination rd = x11)
li x10, 0xf0b662469ca653ea
c.mv x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cp_rd (Test destination rd = x12)
li x15, 0x338c303c41edae8f
c.mv x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cp_rd (Test destination rd = x13)
li x27, 0xdb23c730a539f8b5
c.mv x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cp_rd (Test destination rd = x14)
li x10, 0x267f235b454dc325
c.mv x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cp_rd (Test destination rd = x15)
li x1, 0x1e97fb0ce3328376
c.mv x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cp_rd (Test destination rd = x16)
li x12, 0x9de2fe4136a188a5
c.mv x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cp_rd (Test destination rd = x17)
li x3, 0xf69126070522ee02
c.mv x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cp_rd (Test destination rd = x18)
li x31, 0x4afce4e9088f66cb
c.mv x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cp_rd (Test destination rd = x19)
li x17, 0xced4d5293c3a27d0
c.mv x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cp_rd (Test destination rd = x20)
li x9, 0x6899086033febed7
c.mv x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cp_rd (Test destination rd = x21)
li x1, 0xc354fca3d621a73f
c.mv x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cp_rd (Test destination rd = x22)
li x30, 0x4ed3c86d5179dfdd
c.mv x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cp_rd (Test destination rd = x23)
li x22, 0x79637700958be8b0
c.mv x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cp_rd (Test destination rd = x24)
li x26, 0xd2ebaba2ac4d1c29
c.mv x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cp_rd (Test destination rd = x25)
li x1, 0x7e126b5d055d4d24
c.mv x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cp_rd (Test destination rd = x26)
li x31, 0x82764938c3640d66
c.mv x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cp_rd (Test destination rd = x27)
li x10, 0xd22548e2ae330957
c.mv x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cp_rd (Test destination rd = x28)
li x2, 0xaef775b82eb0e330
c.mv x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0xa4b1e132d29fc57d
c.mv x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cp_rd (Test destination rd = x30)
li x13, 0xa0d0357c4c22bd7f
c.mv x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cp_rd (Test destination rd = x31)
li x11, 0x5260bb97861c6582
c.mv x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0x0000000000000000
c.mv x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0x0000000000000001
c.mv x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 504)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x18, 0x0000000000000002
c.mv x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 512)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x22, 0x8000000000000000
c.mv x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 520)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x21, 0x8000000000000001
c.mv x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x2, 0x7fffffffffffffff
c.mv x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 536)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x14, 0x7ffffffffffffffe
c.mv x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 544)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x29, 0xffffffffffffffff
c.mv x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 552)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x6, 0xfffffffffffffffe
c.mv x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 560)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x21, 0x5bbc887763ae86f2
c.mv x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 568)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x18, 0xaaaaaaaaaaaaaaaa
c.mv x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 576)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x27, 0x5555555555555555
c.mv x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 584)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0x00000000ffffffff
c.mv x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0x00000000fffffffe
c.mv x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 600)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x7, 0x0000000100000000
c.mv x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 608)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x1, 0x0000000100000001
c.mv x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 616)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0xd1f1702c1b4ee425
c.mv x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 624)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0xf2716b58f4d4079f
c.mv x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xb3db4d5a37868ffa
c.mv x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 640)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xaf47a1174e4c0b01
c.mv x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 648)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc64eb02be5a74439
c.mv x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 656)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7412c4bcb085d3c0
c.mv x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 664)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x29dd1341d776f57b
c.mv x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 672)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x2981c7f648c82250
c.mv x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 680)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x5f8017b0b8c42203
c.mv x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 688)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xfc6f9658a4c2691a
c.mv x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 696)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xa9096844f557eca7
c.mv x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 704)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x809f941b15489080
c.mv x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 712)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xa330f4ecc60f3664
c.mv x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 720)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x808ea4f89afcb76a
c.mv x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 728)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xb2a411a1d67496e9
c.mv x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xec72c5b7d8c6a337
c.mv x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 744)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0xf6d6dcd947cee1e8
c.mv x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 752)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x065999f67e569489
c.mv x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 760)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x1e37d1fd143156da
c.mv x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 768)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x275d6e2baa92fc33
c.mv x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x982841eeebd1704e
c.mv x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x60c364c93c1a6b27
c.mv x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 792)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x20b57fb5f1633f37
c.mv x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 800)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x5c139da748239e45
c.mv x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 808)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x7804470e7f9d533c
c.mv x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x1e539e2faf231fe8
c.mv x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 824)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xcba810330ece95cb
c.mv x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 832)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x6732afc2d6a45cdc
c.mv x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 840)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0xe235eeca3a211ee0
c.mv x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x3ad9aee33b3b4c26
c.mv x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 856)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0xdf4a6d8f9eb4ae37
c.mv x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 864)

#.EQU SIGSIZE,872


// ******************
// Tests from: WALLY-COV-c.sd.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
la x11, scratch # base address
li x10, 0x0000000000000000 # initialize rs2 with random value
addi x11, x11, -160 # sub immediate from rs1 to counter offset
c.sd x10, 160(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
la x11, scratch # base address
li x13, 0x0000000000000001 # initialize rs2 with random value
addi x11, x11, -64 # sub immediate from rs1 to counter offset
c.sd x13, 64(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
la x11, scratch # base address
li x14, 0x0000000000000002 # initialize rs2 with random value
addi x11, x11, -16 # sub immediate from rs1 to counter offset
c.sd x14, 16(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
la x8, scratch # base address
li x14, 0x8000000000000000 # initialize rs2 with random value
addi x8, x8, -184 # sub immediate from rs1 to counter offset
c.sd x14, 184(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
la x11, scratch # base address
li x8, 0x8000000000000001 # initialize rs2 with random value
addi x11, x11, -128 # sub immediate from rs1 to counter offset
c.sd x8, 128(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
la x12, scratch # base address
li x9, 0x7fffffffffffffff # initialize rs2 with random value
addi x12, x12, -72 # sub immediate from rs1 to counter offset
c.sd x9, 72(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
la x12, scratch # base address
li x14, 0x7ffffffffffffffe # initialize rs2 with random value
addi x12, x12, -8 # sub immediate from rs1 to counter offset
c.sd x14, 8(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
la x8, scratch # base address
li x9, 0xffffffffffffffff # initialize rs2 with random value
addi x8, x8, -80 # sub immediate from rs1 to counter offset
c.sd x9, 80(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
la x8, scratch # base address
li x13, 0xfffffffffffffffe # initialize rs2 with random value
addi x8, x8, -216 # sub immediate from rs1 to counter offset
c.sd x13, 216(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
la x12, scratch # base address
li x8, 0x5bbc887763ae86f2 # initialize rs2 with random value
addi x12, x12, -16 # sub immediate from rs1 to counter offset
c.sd x8, 16(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
la x10, scratch # base address
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2 with random value
addi x10, x10, -8 # sub immediate from rs1 to counter offset
c.sd x12, 8(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
la x13, scratch # base address
li x9, 0x5555555555555555 # initialize rs2 with random value
addi x13, x13, -8 # sub immediate from rs1 to counter offset
c.sd x9, 8(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
la x11, scratch # base address
li x8, 0x00000000ffffffff # initialize rs2 with random value
addi x11, x11, -32 # sub immediate from rs1 to counter offset
c.sd x8, 32(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
la x8, scratch # base address
li x15, 0x00000000fffffffe # initialize rs2 with random value
addi x8, x8, -48 # sub immediate from rs1 to counter offset
c.sd x15, 48(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
la x13, scratch # base address
li x10, 0x0000000100000000 # initialize rs2 with random value
addi x13, x13, -88 # sub immediate from rs1 to counter offset
c.sd x10, 88(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
la x10, scratch # base address
li x13, 0x0000000100000001 # initialize rs2 with random value
addi x10, x10, -224 # sub immediate from rs1 to counter offset
c.sd x13, 224(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address
li x9, 0x80cde7249fb2d1c6 # initialize rs2 with random value
addi x8, x8, -168 # sub immediate from rs1 to counter offset
c.sd x9, 168(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address
li x11, 0x03a2e6e9e8bbe4bd # initialize rs2 with random value
addi x9, x9, -248 # sub immediate from rs1 to counter offset
c.sd x11, 248(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address
li x13, 0x79b9bb9570363c0e # initialize rs2 with random value
addi x10, x10, -232 # sub immediate from rs1 to counter offset
c.sd x13, 232(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address
li x8, 0x6fc7497f9fee02c9 # initialize rs2 with random value
addi x11, x11, -64 # sub immediate from rs1 to counter offset
c.sd x8, 64(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address
li x8, 0x643c78735fa90bc1 # initialize rs2 with random value
addi x12, x12, -24 # sub immediate from rs1 to counter offset
c.sd x8, 24(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address
li x14, 0x02ce02bc3e7596a4 # initialize rs2 with random value
addi x13, x13, -224 # sub immediate from rs1 to counter offset
c.sd x14, 224(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address
li x15, 0xfc0ca9ce2b4d1a3c # initialize rs2 with random value
addi x14, x14, -176 # sub immediate from rs1 to counter offset
c.sd x15, 176(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address
li x9, 0xe82f2587345980da # initialize rs2 with random value
addi x15, x15, -192 # sub immediate from rs1 to counter offset
c.sd x9, 192(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
la x10, scratch # base address
li x8, 0xf8d9354d0b54bf44 # initialize rs2 with random value
addi x10, x10, -64 # sub immediate from rs1 to counter offset
c.sd x8, 64(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
la x15, scratch # base address
li x9, 0xcccfc2cdc79804c8 # initialize rs2 with random value
addi x15, x15, -184 # sub immediate from rs1 to counter offset
c.sd x9, 184(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
la x11, scratch # base address
li x10, 0x852fa905ae60f279 # initialize rs2 with random value
addi x11, x11, -208 # sub immediate from rs1 to counter offset
c.sd x10, 208(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
la x9, scratch # base address
li x11, 0xa6efbeba229ef420 # initialize rs2 with random value
addi x9, x9, -144 # sub immediate from rs1 to counter offset
c.sd x11, 144(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
la x8, scratch # base address
li x12, 0xe13016c3bcec8ff7 # initialize rs2 with random value
addi x8, x8, -16 # sub immediate from rs1 to counter offset
c.sd x12, 16(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
la x10, scratch # base address
li x13, 0x0137be7d30dc57dd # initialize rs2 with random value
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sd x13, 0(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
la x9, scratch # base address
li x14, 0x8a3cb5e8af98d63d # initialize rs2 with random value
addi x9, x9, -16 # sub immediate from rs1 to counter offset
c.sd x14, 16(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
la x12, scratch # base address
li x15, 0xd74b7ba4c0edbd07 # initialize rs2 with random value
addi x12, x12, -56 # sub immediate from rs1 to counter offset
c.sd x15, 56(x12) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x9, 0x40e852d1b518692c # initialize rs2 with random value
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sd x9, 0(x10) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x14, 0x6dee3bae9145db2d # initialize rs2 with random value
addi x10, x10, -8 # sub immediate from rs1 to counter offset
c.sd x14, 8(x10) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x15, 0x2a628164bb877179 # initialize rs2 with random value
addi x9, x9, -16 # sub immediate from rs1 to counter offset
c.sd x15, 16(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x11, 0xf8e07a9bc8b0fda9 # initialize rs2 with random value
addi x15, x15, -24 # sub immediate from rs1 to counter offset
c.sd x11, 24(x15) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x9, 0x0b1823fb0d3c7d5b # initialize rs2 with random value
addi x8, x8, -32 # sub immediate from rs1 to counter offset
c.sd x9, 32(x8) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x9, 0x28d712e5649ad709 # initialize rs2 with random value
addi x8, x8, -40 # sub immediate from rs1 to counter offset
c.sd x9, 40(x8) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x11, 0x0a99b534b8a2a461 # initialize rs2 with random value
addi x10, x10, -48 # sub immediate from rs1 to counter offset
c.sd x11, 48(x10) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x10, 0x95b20728da0c5e17 # initialize rs2 with random value
addi x15, x15, -56 # sub immediate from rs1 to counter offset
c.sd x10, 56(x15) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x12, 0x5430d8b7e4a8137d # initialize rs2 with random value
addi x8, x8, -64 # sub immediate from rs1 to counter offset
c.sd x12, 64(x8) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x10, 0xdbd343bdecc5bda3 # initialize rs2 with random value
addi x15, x15, -72 # sub immediate from rs1 to counter offset
c.sd x10, 72(x15) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x12, 0xdad4b6ebc6550926 # initialize rs2 with random value
addi x9, x9, -80 # sub immediate from rs1 to counter offset
c.sd x12, 80(x9) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x11, 0xfb28aeb3b79ca559 # initialize rs2 with random value
addi x10, x10, -88 # sub immediate from rs1 to counter offset
c.sd x11, 88(x10) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x15, 0x8f80c1f05cb84caf # initialize rs2 with random value
addi x13, x13, -96 # sub immediate from rs1 to counter offset
c.sd x15, 96(x13) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x15, 0x945d30a1ccd3498b # initialize rs2 with random value
addi x9, x9, -104 # sub immediate from rs1 to counter offset
c.sd x15, 104(x9) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x15, 0xb478aaab4e8741c0 # initialize rs2 with random value
addi x10, x10, -112 # sub immediate from rs1 to counter offset
c.sd x15, 112(x10) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x15, 0x41414bf4606e3009 # initialize rs2 with random value
addi x11, x11, -120 # sub immediate from rs1 to counter offset
c.sd x15, 120(x11) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x10, 0x918f27ae0219f64f # initialize rs2 with random value
addi x13, x13, -128 # sub immediate from rs1 to counter offset
c.sd x10, 128(x13) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x12, 0x62df87c3ec771abd # initialize rs2 with random value
addi x9, x9, -136 # sub immediate from rs1 to counter offset
c.sd x12, 136(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x9, 0x75c6d52ee1e06511 # initialize rs2 with random value
addi x15, x15, -144 # sub immediate from rs1 to counter offset
c.sd x9, 144(x15) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x11, 0x72abe209df1e76ca # initialize rs2 with random value
addi x13, x13, -152 # sub immediate from rs1 to counter offset
c.sd x11, 152(x13) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x12, 0xae043403d4ae851f # initialize rs2 with random value
addi x9, x9, -160 # sub immediate from rs1 to counter offset
c.sd x12, 160(x9) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x13, 0xf35da39e145150d5 # initialize rs2 with random value
addi x9, x9, -168 # sub immediate from rs1 to counter offset
c.sd x13, 168(x9) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x13, 0xbfbfac7dc4415e7d # initialize rs2 with random value
addi x12, x12, -176 # sub immediate from rs1 to counter offset
c.sd x13, 176(x12) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x12, 0x2a3d2f0a4d1ca754 # initialize rs2 with random value
addi x8, x8, -184 # sub immediate from rs1 to counter offset
c.sd x12, 184(x8) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x15, 0xef92311b27b713cd # initialize rs2 with random value
addi x11, x11, -192 # sub immediate from rs1 to counter offset
c.sd x15, 192(x11) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x12, 0x6881380aec30f256 # initialize rs2 with random value
addi x13, x13, -200 # sub immediate from rs1 to counter offset
c.sd x12, 200(x13) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x15, 0xff12d479d0d02c34 # initialize rs2 with random value
addi x9, x9, -208 # sub immediate from rs1 to counter offset
c.sd x15, 208(x9) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x12, 0x6a9e2617b21eac49 # initialize rs2 with random value
addi x14, x14, -216 # sub immediate from rs1 to counter offset
c.sd x12, 216(x14) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x14, 0xbb08675dfacd4c3b # initialize rs2 with random value
addi x12, x12, -224 # sub immediate from rs1 to counter offset
c.sd x14, 224(x12) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x13, 0xb11bd933115950d9 # initialize rs2 with random value
addi x15, x15, -232 # sub immediate from rs1 to counter offset
c.sd x13, 232(x15) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x11, 0x249e67001dffbe03 # initialize rs2 with random value
addi x9, x9, -240 # sub immediate from rs1 to counter offset
c.sd x11, 240(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x11, 0x42d69f5cbc08e50b # initialize rs2 with random value
addi x15, x15, -248 # sub immediate from rs1 to counter offset
c.sd x11, 248(x15) # perform operation 

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.addw.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x11, 0x44b2e978a7fbef01 # initialize rs2
li x12, 0x0000000000000000 # initialize rd,rs1
c.addw x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0x37f8abb62833b214 # initialize rs2
li x12, 0x0000000000000001 # initialize rd,rs1
c.addw x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x9, 0xef3d6aad7ecd5506 # initialize rs2
li x8, 0x0000000000000002 # initialize rd,rs1
c.addw x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x15, 0xcb9ecca6316b6bbd # initialize rs2
li x9, 0x8000000000000000 # initialize rd,rs1
c.addw x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x14, 0xbf837410d36e2bc7 # initialize rs2
li x11, 0x8000000000000001 # initialize rd,rs1
c.addw x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x10, 0x14bbf09d45b9f4b5 # initialize rs2
li x15, 0x7fffffffffffffff # initialize rd,rs1
c.addw x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x15, 0xb4c706b97a4ed4aa # initialize rs2
li x8, 0x7ffffffffffffffe # initialize rd,rs1
c.addw x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x10, 0x276d3bf013a97157 # initialize rs2
li x8, 0xffffffffffffffff # initialize rd,rs1
c.addw x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x8, 0xa4ee84dd9eec66df # initialize rs2
li x15, 0xfffffffffffffffe # initialize rd,rs1
c.addw x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x11, 0xe6c9873d222f4d79 # initialize rs2
li x15, 0x5bbc887763ae86f2 # initialize rd,rs1
c.addw x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x13, 0x06fb02f57705f011 # initialize rs2
li x15, 0xaaaaaaaaaaaaaaaa # initialize rd,rs1
c.addw x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x9, 0x952b850d71a4f0e2 # initialize rs2
li x14, 0x5555555555555555 # initialize rd,rs1
c.addw x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x50d423949eed3863 # initialize rs2
li x13, 0x00000000ffffffff # initialize rd,rs1
c.addw x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0xaa350e6a8b34e9fb # initialize rs2
li x9, 0x00000000fffffffe # initialize rd,rs1
c.addw x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x8, 0x121f89e52171e302 # initialize rs2
li x15, 0x0000000100000000 # initialize rd,rs1
c.addw x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x8, 0xf6bfcafd94143d3e # initialize rs2
li x15, 0x0000000100000001 # initialize rd,rs1
c.addw x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0x0000000000000000 # initialize rs2
li x8, 0x75f603f4af81b1a3 # initialize rd,rs1
c.addw x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0x0000000000000001 # initialize rs2
li x10, 0x2a1164d11a720fb7 # initialize rd,rs1
c.addw x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x12, 0x0000000000000002 # initialize rs2
li x13, 0x0b16c673e5991b4b # initialize rd,rs1
c.addw x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs2
li x15, 0xe98db2c9e3ae3a88 # initialize rd,rs1
c.addw x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs2
li x12, 0x636acf66c666ea73 # initialize rd,rs1
c.addw x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs2
li x13, 0x0463b8fe15c36a14 # initialize rd,rs1
c.addw x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x14, 0x7ffffffffffffffe # initialize rs2
li x12, 0x957587b92baddb92 # initialize rd,rs1
c.addw x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs2
li x14, 0xf5b83db8b3be82ef # initialize rd,rs1
c.addw x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs2
li x8, 0x711d8ccb2a2a9dfe # initialize rd,rs1
c.addw x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x12, 0x5bbc887763ae86f2 # initialize rs2
li x15, 0x87cbd68b4ff2ba0d # initialize rd,rs1
c.addw x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
li x13, 0x694859a4aed7b7c8 # initialize rd,rs1
c.addw x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x14, 0x5555555555555555 # initialize rs2
li x9, 0x3ac88a9d3014be59 # initialize rd,rs1
c.addw x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs2
li x15, 0xde3fcd8f1b4a63e9 # initialize rd,rs1
c.addw x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 224)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x9, 0x00000000fffffffe # initialize rs2
li x8, 0x2dbfe11fd3f64fa6 # initialize rd,rs1
c.addw x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x8, 0x0000000100000000 # initialize rs2
li x12, 0x5c52d158fa0dade2 # initialize rd,rs1
c.addw x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x14, 0x0000000100000001 # initialize rs2
li x15, 0xd256a482fd2d1031 # initialize rd,rs1
c.addw x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xc209662667c5299b # initialize rs2
li x10, 0x01fe22b7d365810a # initialize rd,rs1
c.addw x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 256)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xd557ff7002406337 # initialize rs2
li x9, 0x7710aa2ec9c25066 # initialize rd,rs1
c.addw x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x64364a493962de0e # initialize rs2
li x9, 0x7c7034a9b9bc394e # initialize rd,rs1
c.addw x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xd1431c42688930bc # initialize rs2
li x15, 0xd57af9e6ecfc673d # initialize rd,rs1
c.addw x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xb14df29bb3f1463a # initialize rs2
li x13, 0xbf48903695ca02ba # initialize rd,rs1
c.addw x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xc959ad4be0a557b6 # initialize rs2
li x13, 0x33066f115d5fa209 # initialize rd,rs1
c.addw x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x2993754322d5207a # initialize rs2
li x15, 0xa1e01b72b3efab44 # initialize rd,rs1
c.addw x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x8bb058c5c0700e43 # initialize rs2
li x14, 0xf196901aa715781e # initialize rd,rs1
c.addw x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x1e5b14b88ac49230 # initialize rs2
li x8, 0xf7f5d12396a47b64 # initialize rd,rs1
c.addw x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xf09b21ad2eb4e968 # initialize rs2
li x9, 0x47561433abba65ee # initialize rd,rs1
c.addw x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x4204300306108db6 # initialize rs2
li x10, 0x8386f28e1959eef9 # initialize rd,rs1
c.addw x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xebf88f633ed70dc7 # initialize rs2
li x11, 0x10390afa777d2ff6 # initialize rd,rs1
c.addw x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x29b23e9f391c88ac # initialize rs2
li x12, 0x1def9855595f106d # initialize rd,rs1
c.addw x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xfb3d8cef95867ffd # initialize rs2
li x13, 0xea63279aa4fcffd1 # initialize rd,rs1
c.addw x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x15e4148aeb23ed98 # initialize rs2
li x14, 0x3fec6f67361fd41d # initialize rd,rs1
c.addw x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xfd054802199a2f7e # initialize rs2
li x15, 0xa316797a823aad8c # initialize rd,rs1
c.addw x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rs1 (Test source rs1 = x8)
li x14, 0xc366bc079a44d2e6 # initialize rs2
li x9, 0x0a1fda71976d21a8 # initialize rd,rs1
c.addw x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 384)

# Testcase cp_rs1 (Test source rs1 = x9)
li x15, 0x156cdfe0e33c8edd # initialize rs2
li x8, 0xe4a5950a447fda25 # initialize rd,rs1
c.addw x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 392)

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0x664ca2a8a93d2628 # initialize rs2
li x12, 0x4451c7a487b6beaa # initialize rd,rs1
c.addw x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 400)

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0x7550d0a057e0a334 # initialize rs2
li x13, 0x8abc94bd6ec1c873 # initialize rd,rs1
c.addw x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0x330272fa7e2e24ab # initialize rs2
li x14, 0x204f50031e2f3f46 # initialize rd,rs1
c.addw x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 416)

# Testcase cp_rs1 (Test source rs1 = x13)
li x9, 0x9e63febfd0e807d7 # initialize rs2
li x14, 0x30b7be4901558524 # initialize rd,rs1
c.addw x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0xc167959b0f189678 # initialize rs2
li x8, 0xec7533478564a77b # initialize rd,rs1
c.addw x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 432)

# Testcase cp_rs1 (Test source rs1 = x15)
li x12, 0x01b956bd53830ba5 # initialize rs2
li x9, 0xb01f1bf52223eb95 # initialize rd,rs1
c.addw x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 440)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xd86f21779aff949e # initialize rs2
li x12, 0x028fd9caebea56c3 # initialize rd,rs1
c.addw x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 448)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x63d150f07c0a1df1 # initialize rs2
li x8, 0xe829e6728a2a1727 # initialize rd,rs1
c.addw x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 456)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x474527995c42f152 # initialize rs2
li x13, 0xa7e64c854048cbb9 # initialize rd,rs1
c.addw x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x14c5c46c02525d83 # initialize rs2
li x10, 0xd601b9fffcbe1aa7 # initialize rd,rs1
c.addw x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x3b3608cd29d1777e # initialize rs2
li x14, 0x8a02bbadacb0875b # initialize rd,rs1
c.addw x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xe50fadc26b69ddfe # initialize rs2
li x14, 0xe37e3c3e26a9ab0b # initialize rd,rs1
c.addw x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 488)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xfac82562af05bd89 # initialize rs2
li x12, 0x77a96451ed312dd0 # initialize rd,rs1
c.addw x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 496)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x48a77175086b85d3 # initialize rs2
li x8, 0x4392d247f8f7b720 # initialize rd,rs1
c.addw x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 504)

# Testcase cp_rd (Test destination rd = x8)
li x10, 0xa6b249576f537ff9 # initialize rs2
li x8, 0xb9e8957554e18246 # initialize rd,rs1
c.addw x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cp_rd (Test destination rd = x9)
li x11, 0xdfa2ac4466f18e9c # initialize rs2
li x9, 0x49409f8059cc5586 # initialize rd,rs1
c.addw x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cp_rd (Test destination rd = x10)
li x15, 0x3b870a011fd426e0 # initialize rs2
li x10, 0x1d0016f8b1aeccc2 # initialize rd,rs1
c.addw x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0x033082d32a7c6748 # initialize rs2
li x11, 0x0709eca4d7d3081e # initialize rd,rs1
c.addw x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cp_rd (Test destination rd = x12)
li x15, 0x8b7e7a9e9ffd58b5 # initialize rs2
li x12, 0xdfbfa44824c99378 # initialize rd,rs1
c.addw x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0x0f0f03716f75331c # initialize rs2
li x13, 0xc782a65aea9fd903 # initialize rd,rs1
c.addw x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cp_rd (Test destination rd = x14)
li x11, 0x7aeaf327bb05f643 # initialize rs2
li x14, 0x4735af72e637ebac # initialize rd,rs1
c.addw x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cp_rd (Test destination rd = x15)
li x13, 0xaa5094e33f49e243 # initialize rs2
li x15, 0x86871f9686bce8f6 # initialize rd,rs1
c.addw x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 568)

#.EQU SIGSIZE,576


// ******************
// Tests from: WALLY-COV-c.subw.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x3ca0bc4dee4b5f85 # initialize rs2
li x15, 0x0000000000000000 # initialize rd,rs1
c.subw x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0xf3dc287606a6702d # initialize rs2
li x8, 0x0000000000000001 # initialize rd,rs1
c.subw x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x5305bf8bb7f6ab11 # initialize rs2
li x14, 0x0000000000000002 # initialize rd,rs1
c.subw x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x8, 0x69bcdf96193cf472 # initialize rs2
li x10, 0x8000000000000000 # initialize rd,rs1
c.subw x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0x5526419038395ab8 # initialize rs2
li x8, 0x8000000000000001 # initialize rd,rs1
c.subw x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x11, 0x14982eac2d0fbaa8 # initialize rs2
li x13, 0x7fffffffffffffff # initialize rd,rs1
c.subw x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0x8121e63edf8546c9 # initialize rs2
li x14, 0x7ffffffffffffffe # initialize rd,rs1
c.subw x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x15, 0xbb05ab6cd998a3f1 # initialize rs2
li x8, 0xffffffffffffffff # initialize rd,rs1
c.subw x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x10, 0x8a0b4ea7be45ac06 # initialize rs2
li x13, 0xfffffffffffffffe # initialize rd,rs1
c.subw x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x12, 0x6ea866d43e9e3184 # initialize rs2
li x13, 0x5bbc887763ae86f2 # initialize rd,rs1
c.subw x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0x1f2a886a9cf51cd3 # initialize rs2
li x15, 0xaaaaaaaaaaaaaaaa # initialize rd,rs1
c.subw x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x9, 0xd908ddff2d61033e # initialize rs2
li x13, 0x5555555555555555 # initialize rd,rs1
c.subw x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0xb52282ceb15850e0 # initialize rs2
li x12, 0x00000000ffffffff # initialize rd,rs1
c.subw x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0xffcdb76d3fce7c83 # initialize rs2
li x10, 0x00000000fffffffe # initialize rd,rs1
c.subw x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x13, 0xd68207e4333d3196 # initialize rs2
li x15, 0x0000000100000000 # initialize rd,rs1
c.subw x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0x696f9370fae38966 # initialize rs2
li x12, 0x0000000100000001 # initialize rd,rs1
c.subw x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0x0000000000000000 # initialize rs2
li x12, 0xdbec4eda436053db # initialize rd,rs1
c.subw x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x11, 0x0000000000000001 # initialize rs2
li x14, 0xee1c35b0a5155c7c # initialize rd,rs1
c.subw x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x12, 0x0000000000000002 # initialize rs2
li x9, 0x565b4c2f7a4011ff # initialize rd,rs1
c.subw x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 144)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x10, 0x8000000000000000 # initialize rs2
li x12, 0x028df2991f30339f # initialize rd,rs1
c.subw x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 152)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x13, 0x8000000000000001 # initialize rs2
li x10, 0xee07f01360d1168d # initialize rd,rs1
c.subw x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x11, 0x7fffffffffffffff # initialize rs2
li x12, 0xf4bcd4aa00e1dd2e # initialize rd,rs1
c.subw x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x14, 0x7ffffffffffffffe # initialize rs2
li x15, 0x23332d7ac8656f01 # initialize rd,rs1
c.subw x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 176)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x12, 0xffffffffffffffff # initialize rs2
li x14, 0x37139fae569dee1e # initialize rd,rs1
c.subw x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rs2
li x10, 0xabfef39cd538e756 # initialize rd,rs1
c.subw x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 192)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x13, 0x5bbc887763ae86f2 # initialize rs2
li x12, 0x486b4fd24201098f # initialize rd,rs1
c.subw x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
li x9, 0xd9a8656e972c947b # initialize rd,rs1
c.subw x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 208)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x13, 0x5555555555555555 # initialize rs2
li x14, 0xb9b264b09d99e983 # initialize rd,rs1
c.subw x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs2
li x8, 0x19a612d7f684a7ae # initialize rd,rs1
c.subw x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0x00000000fffffffe # initialize rs2
li x12, 0xfdfd4a29c54273f1 # initialize rd,rs1
c.subw x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x14, 0x0000000100000000 # initialize rs2
li x8, 0xd3017dc386c46930 # initialize rd,rs1
c.subw x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 240)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x11, 0x0000000100000001 # initialize rs2
li x15, 0x430073b4302239fc # initialize rd,rs1
c.subw x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xfcc0577907660750 # initialize rs2
li x15, 0xa0abf88ebf1884c0 # initialize rd,rs1
c.subw x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xe0b0ff3e1692228f # initialize rs2
li x8, 0x2c48b876c69aad4d # initialize rd,rs1
c.subw x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x2e7579231a827548 # initialize rs2
li x15, 0x09c97714ad749823 # initialize rd,rs1
c.subw x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xe5875d6e0cfbc199 # initialize rs2
li x9, 0xec642eef7ecd1556 # initialize rd,rs1
c.subw x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x106580813c9da2f7 # initialize rs2
li x13, 0x5de496580bb29fb7 # initialize rd,rs1
c.subw x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xef6a0dbec8c2c001 # initialize rs2
li x10, 0x38f1c236430a5a82 # initialize rd,rs1
c.subw x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x6227f34e954ef25f # initialize rs2
li x10, 0xb8129bc24e779315 # initialize rd,rs1
c.subw x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xb6de40e26b2aebbe # initialize rs2
li x10, 0x6cc8ce9d91e2034a # initialize rd,rs1
c.subw x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x16c4a36e39e291c9 # initialize rs2
li x8, 0x1375a9b66b38e307 # initialize rd,rs1
c.subw x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x9ccd4a3943ba8102 # initialize rs2
li x9, 0xf9228576cb7cc3e4 # initialize rd,rs1
c.subw x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x4057d57c7a7f17e2 # initialize rs2
li x10, 0x743881491d46a995 # initialize rd,rs1
c.subw x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x75a3551e29870ae7 # initialize rs2
li x11, 0x9877b5aadb54c651 # initialize rd,rs1
c.subw x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xba5a795bc9c0e76b # initialize rs2
li x12, 0x1d518510e6d30da7 # initialize rd,rs1
c.subw x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x99fa4c78893c2c19 # initialize rs2
li x13, 0x1086a6207a373f7e # initialize rd,rs1
c.subw x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x07bc9cfc027e71da # initialize rs2
li x14, 0x3acb25eeca85281d # initialize rd,rs1
c.subw x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xa3c34379bf6ebf13 # initialize rs2
li x15, 0x98dc761684e38a2d # initialize rd,rs1
c.subw x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rs1 (Test source rs1 = x8)
li x15, 0xda6033e625561dad # initialize rs2
li x10, 0xdc42be58fe17ae20 # initialize rd,rs1
c.subw x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0x747ef647aab4836a # initialize rs2
li x8, 0xce1ccbde5483a3eb # initialize rd,rs1
c.subw x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 392)

# Testcase cp_rs1 (Test source rs1 = x10)
li x12, 0x114411bc0d0eae71 # initialize rs2
li x11, 0xbce20f03b48aa605 # initialize rd,rs1
c.subw x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 400)

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x23c77f49bed7b4c2 # initialize rs2
li x8, 0x5421eaf30ab2a2ca # initialize rd,rs1
c.subw x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0xd1516005c9df0a57 # initialize rs2
li x15, 0xec4c2caf7cc04757 # initialize rd,rs1
c.subw x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 416)

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0x2cdaed8b12de32ac # initialize rs2
li x11, 0x1183d09e74d882b8 # initialize rd,rs1
c.subw x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 424)

# Testcase cp_rs1 (Test source rs1 = x14)
li x12, 0x0a7ce8df8f97a081 # initialize rs2
li x13, 0xf445b2dd53568cc9 # initialize rd,rs1
c.subw x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 432)

# Testcase cp_rs1 (Test source rs1 = x15)
li x13, 0xa3385c0e64ff8c61 # initialize rs2
li x8, 0x51bc6f83ea3172a3 # initialize rd,rs1
c.subw x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x8ae430595df48805 # initialize rs2
li x10, 0x5fdb8e7c618adef4 # initialize rd,rs1
c.subw x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xd06b55416dfe17b2 # initialize rs2
li x15, 0xb4bd85b95f761b20 # initialize rd,rs1
c.subw x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xfebfbba178250a3b # initialize rs2
li x11, 0x294d2d114081bfcd # initialize rd,rs1
c.subw x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 464)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x104d3cc199b74d5d # initialize rs2
li x14, 0x2c8d8a47593ae495 # initialize rd,rs1
c.subw x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 472)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x03a70859c6e5d45a # initialize rs2
li x8, 0x41f0a85ce73ed781 # initialize rd,rs1
c.subw x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 480)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x94c0b42e8a8ee571 # initialize rs2
li x8, 0xade0052ca9fd79cc # initialize rd,rs1
c.subw x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 488)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x2d11c4ec8c76db10 # initialize rs2
li x10, 0x87263a6d6a086500 # initialize rd,rs1
c.subw x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 496)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x6337e1c59486f392 # initialize rs2
li x9, 0x9471bf67929b60d4 # initialize rd,rs1
c.subw x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 504)

# Testcase cp_rd (Test destination rd = x8)
li x11, 0x70623487cac9696c # initialize rs2
li x8, 0x1bbe736efe244a11 # initialize rd,rs1
c.subw x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0xd57004546328af55 # initialize rs2
li x9, 0x3f0be258a821f00d # initialize rd,rs1
c.subw x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cp_rd (Test destination rd = x10)
li x9, 0x364c3c5fc1659ed6 # initialize rs2
li x10, 0xd15176747010c81a # initialize rd,rs1
c.subw x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0x900ea862c0bec58e # initialize rs2
li x11, 0xd4fde71ebafcf10c # initialize rd,rs1
c.subw x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0x0fa22efc74ca88ce # initialize rs2
li x12, 0x26bc875c260d7872 # initialize rd,rs1
c.subw x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_rd (Test destination rd = x13)
li x12, 0xb4b884bda4c87e74 # initialize rs2
li x13, 0x011360609aa15d56 # initialize rd,rs1
c.subw x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cp_rd (Test destination rd = x14)
li x12, 0xbcc2b81600c4f6a7 # initialize rs2
li x14, 0xb811fcb4d0d7f8d8 # initialize rd,rs1
c.subw x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0xf1d93e5eda904e47 # initialize rs2
li x15, 0x27e7365b229eada1 # initialize rd,rs1
c.subw x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 568)

#.EQU SIGSIZE,576


// ******************
// Tests from: WALLY-COV-c.sdsp.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x33d18f574d12ac4f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -496 # offset stack pointer from signature
c.sdsp x0, 496(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x851a436ac48f3abe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -472 # offset stack pointer from signature
c.sdsp x1, 472(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xd83eb1116e24d8d0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.sdsp x2, 248(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x71aa106d7cc54f1a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -480 # offset stack pointer from signature
c.sdsp x3, 480(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x536ff75e341b0401 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.sdsp x4, 72(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x105f6a17a9affd80 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -264 # offset stack pointer from signature
c.sdsp x5, 264(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x6, 0x5a5c58429944785a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # offset stack pointer from signature
c.sdsp x6, 168(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb1563cdb4ef94706 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.sdsp x7, 152(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x07982c757b123657 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.sdsp x8, 64(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x015ec218317cfbfa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -472 # offset stack pointer from signature
c.sdsp x9, 472(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x1f79898e8467d8eb # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.sdsp x10, 504(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x5068fa58b132372a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.sdsp x11, 504(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x4ceabd718d93af81 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # offset stack pointer from signature
c.sdsp x12, 8(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x7488ca424fdc804b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -376 # offset stack pointer from signature
c.sdsp x13, 376(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x58ef53fff5cbc3b8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -496 # offset stack pointer from signature
c.sdsp x14, 496(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xe5699adc6850740c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -288 # offset stack pointer from signature
c.sdsp x15, 288(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x4039140e75d9fa94 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -272 # offset stack pointer from signature
c.sdsp x16, 272(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x2ae1870915bf6b7f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.sdsp x17, 144(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x1d03bb2d5c8fc3a9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -280 # offset stack pointer from signature
c.sdsp x18, 280(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x15023a441ebba8b5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -296 # offset stack pointer from signature
c.sdsp x19, 296(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x38cdb6a45bf81221 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -352 # offset stack pointer from signature
c.sdsp x20, 352(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x5236a80aa02f0ff2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -280 # offset stack pointer from signature
c.sdsp x21, 280(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0xe895d83b56a27d0c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -328 # offset stack pointer from signature
c.sdsp x22, 328(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x1c7c1ab56ab70fa3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.sdsp x23, 0(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0xfba31a73b5c8c2c1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -272 # offset stack pointer from signature
c.sdsp x24, 272(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x0ae982e16b31d215 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.sdsp x25, 64(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x89dbf7e38e10d5d1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -384 # offset stack pointer from signature
c.sdsp x26, 384(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x5e8db7176617f784 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -264 # offset stack pointer from signature
c.sdsp x27, 264(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x3997f834c9dcb8ca # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.sdsp x28, 32(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x0efdd3a7075490d2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.sdsp x29, 32(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xeb2f85a4e4135964 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # offset stack pointer from signature
c.sdsp x30, 56(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x75f02519f817c05a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.sdsp x31, 128(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0x0000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.sdsp x19, 176(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0x0000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.sdsp x10, 224(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0x0000000000000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # offset stack pointer from signature
c.sdsp x24, 112(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x11, 0x8000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.sdsp x11, 128(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x31, 0x8000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -320 # offset stack pointer from signature
c.sdsp x31, 320(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.sdsp x12, 240(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x5, 0x7ffffffffffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.sdsp x5, 64(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x28, 0xffffffffffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -264 # offset stack pointer from signature
c.sdsp x28, 264(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x21, 0xfffffffffffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # offset stack pointer from signature
c.sdsp x21, 8(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x16, 0x5bbc887763ae86f2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -384 # offset stack pointer from signature
c.sdsp x16, 384(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # offset stack pointer from signature
c.sdsp x7, 136(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x11, 0x5555555555555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -360 # offset stack pointer from signature
c.sdsp x11, 360(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x17, 0x00000000ffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -104 # offset stack pointer from signature
c.sdsp x17, 104(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x13, 0x00000000fffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -256 # offset stack pointer from signature
c.sdsp x13, 256(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x30, 0x0000000100000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -408 # offset stack pointer from signature
c.sdsp x30, 408(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x23, 0x0000000100000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # offset stack pointer from signature
c.sdsp x23, 88(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0xa9b9c372e974cbc1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.sdsp x29, 0(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0xbb4f259ed7494ac8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # offset stack pointer from signature
c.sdsp x12, 8(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x842f8949e41fbaf7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # offset stack pointer from signature
c.sdsp x14, 16(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0xc89a4340dbdf2615 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -24 # offset stack pointer from signature
c.sdsp x27, 24(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0xc2a631e63f18b79c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.sdsp x20, 32(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0xf778c66053aabcbd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.sdsp x9, 40(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0xb0197b6fc331663e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # offset stack pointer from signature
c.sdsp x5, 48(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x19434aba1d3c740c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # offset stack pointer from signature
c.sdsp x22, 56(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0xf1eb79a68484acb6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.sdsp x2, 64(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x51b7f0d2e348544b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.sdsp x28, 72(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0x44c3dd45bffa094b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.sdsp x11, 80(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x1f975e9bc65a5d7e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # offset stack pointer from signature
c.sdsp x17, 88(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0xf7dd8daa14088161 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.sdsp x18, 96(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x49318d4129857e9d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -104 # offset stack pointer from signature
c.sdsp x15, 104(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0xb053ebc7a656231f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # offset stack pointer from signature
c.sdsp x18, 112(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x314be2d69bfa1eb0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -120 # offset stack pointer from signature
c.sdsp x21, 120(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x701a53d49cb6d0b4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.sdsp x8, 128(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x6429acbb65619efe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # offset stack pointer from signature
c.sdsp x18, 136(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x756378fc732c51a3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.sdsp x13, 144(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x98018b9845bfa117 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.sdsp x26, 152(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xc0e8ab2b8766b985 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -160 # offset stack pointer from signature
c.sdsp x30, 160(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x5883a246cd38fb1f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # offset stack pointer from signature
c.sdsp x8, 168(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x29e80d9422f6a841 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.sdsp x29, 176(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xd80a26c6b80c2a41 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -184 # offset stack pointer from signature
c.sdsp x23, 184(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0x8ad3c4d3e27c7703 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.sdsp x5, 192(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x68df72c64b74797c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -200 # offset stack pointer from signature
c.sdsp x15, 200(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x5bbf91b1ea0f3981 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # offset stack pointer from signature
c.sdsp x20, 208(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x510df04cd1d6a0b2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.sdsp x14, 216(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x93373b080d3327e3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.sdsp x14, 224(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0xeebbc72fca812037 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -232 # offset stack pointer from signature
c.sdsp x31, 232(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x20b8765f8aed2265 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.sdsp x29, 240(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x9573414a6252bb1a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.sdsp x9, 248(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0x5ca283eff9f3b0e0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -256 # offset stack pointer from signature
c.sdsp x3, 256(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x780437f12f33790c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -264 # offset stack pointer from signature
c.sdsp x20, 264(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x4a0210fa24dd8b6b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -272 # offset stack pointer from signature
c.sdsp x22, 272(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x9c213184085db342 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -280 # offset stack pointer from signature
c.sdsp x29, 280(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x64c1076f5cf5a6e9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -288 # offset stack pointer from signature
c.sdsp x22, 288(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xa99c5bdef21f6b1f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -296 # offset stack pointer from signature
c.sdsp x8, 296(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0xa12e66e0aedbb92d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -304 # offset stack pointer from signature
c.sdsp x25, 304(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xa68fcb150a1f766e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -312 # offset stack pointer from signature
c.sdsp x26, 312(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0xd53662e3d4928bae # initialize rs2
la sp, scratch # base address 
addi sp, sp, -320 # offset stack pointer from signature
c.sdsp x13, 320(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x1adc6a816120b0c3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -328 # offset stack pointer from signature
c.sdsp x14, 328(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x6f4a78fec05e253b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -336 # offset stack pointer from signature
c.sdsp x10, 336(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0xe3ace52dcda87901 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -344 # offset stack pointer from signature
c.sdsp x16, 344(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x33130f224306f7a6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -352 # offset stack pointer from signature
c.sdsp x29, 352(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0xf561a618756ff5c3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -360 # offset stack pointer from signature
c.sdsp x7, 360(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x73628cd2f55677cc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -368 # offset stack pointer from signature
c.sdsp x27, 368(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x5628f2143bcb6140 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -376 # offset stack pointer from signature
c.sdsp x13, 376(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x3b4a5f30a9be925c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -384 # offset stack pointer from signature
c.sdsp x22, 384(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x01f1e810f351662d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -392 # offset stack pointer from signature
c.sdsp x15, 392(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x00660c9f30c9f667 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -400 # offset stack pointer from signature
c.sdsp x31, 400(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x9d098df191a29a4a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -408 # offset stack pointer from signature
c.sdsp x31, 408(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x30db00400f2d373c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -416 # offset stack pointer from signature
c.sdsp x31, 416(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x9423fffa425fecee # initialize rs2
la sp, scratch # base address 
addi sp, sp, -424 # offset stack pointer from signature
c.sdsp x21, 424(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0x9b026fafeed79674 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -432 # offset stack pointer from signature
c.sdsp x6, 432(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0xeb978e32bc4c98d3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -440 # offset stack pointer from signature
c.sdsp x31, 440(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0xf8784b502c782cbf # initialize rs2
la sp, scratch # base address 
addi sp, sp, -448 # offset stack pointer from signature
c.sdsp x11, 448(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x7f0c917071084226 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -456 # offset stack pointer from signature
c.sdsp x8, 456(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x403d1f8df0e5f71e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -464 # offset stack pointer from signature
c.sdsp x1, 464(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xeac0c8842b481fb1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -472 # offset stack pointer from signature
c.sdsp x8, 472(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xc8080ef6c19e9bad # initialize rs2
la sp, scratch # base address 
addi sp, sp, -480 # offset stack pointer from signature
c.sdsp x8, 480(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x44c21f52f3e12df8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -488 # offset stack pointer from signature
c.sdsp x18, 488(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0x652a7df8fec70290 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -496 # offset stack pointer from signature
c.sdsp x25, 496(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xf33747db9ed27fac # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.sdsp x1, 504(sp)# perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.and.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x11, 0x34b6d67a3496b95e # initialize rs2
li x15, 0x0000000000000000 # initialize rd,rs1
c.and x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x27654e26ba96deff # initialize rs2
li x14, 0x0000000000000001 # initialize rd,rs1
c.and x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0xfe8558cb9380634e # initialize rs2
li x8, 0x0000000000000002 # initialize rd,rs1
c.and x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x13, 0x348f685fe03d6009 # initialize rs2
li x15, 0x8000000000000000 # initialize rd,rs1
c.and x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x11, 0x03b9b8a3837b8c0c # initialize rs2
li x12, 0x8000000000000001 # initialize rd,rs1
c.and x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x8, 0xdd91875751c31fd8 # initialize rs2
li x9, 0x7fffffffffffffff # initialize rd,rs1
c.and x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x9, 0x5e164a4d1aaf1f4b # initialize rs2
li x10, 0x7ffffffffffffffe # initialize rd,rs1
c.and x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x15, 0x5ee52d6683978631 # initialize rs2
li x14, 0xffffffffffffffff # initialize rd,rs1
c.and x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x13, 0x39c885ac7392a344 # initialize rs2
li x11, 0xfffffffffffffffe # initialize rd,rs1
c.and x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x10, 0x09a17933eb46efa6 # initialize rs2
li x15, 0x5bbc887763ae86f2 # initialize rd,rs1
c.and x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0x65f6d999adc780f3 # initialize rs2
li x9, 0xaaaaaaaaaaaaaaaa # initialize rd,rs1
c.and x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x13, 0xa7fb6691f2e26c72 # initialize rs2
li x8, 0x5555555555555555 # initialize rd,rs1
c.and x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0xeacf13ffd340f69a # initialize rs2
li x8, 0x00000000ffffffff # initialize rd,rs1
c.and x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x10, 0x02367ad9bea8d4dc # initialize rs2
li x11, 0x00000000fffffffe # initialize rd,rs1
c.and x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0x7b36cdebeb466b5b # initialize rs2
li x13, 0x0000000100000000 # initialize rd,rs1
c.and x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x10, 0xe1882a6e2bd6a03e # initialize rs2
li x15, 0x0000000100000001 # initialize rd,rs1
c.and x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x13, 0x0000000000000000 # initialize rs2
li x14, 0x86de01b1ac327186 # initialize rd,rs1
c.and x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 128)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x13, 0x0000000000000001 # initialize rs2
li x9, 0x94c77af0f6e9f4bd # initialize rd,rs1
c.and x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0x0000000000000002 # initialize rs2
li x11, 0x68edd520a1456d3a # initialize rd,rs1
c.and x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x9, 0x8000000000000000 # initialize rs2
li x15, 0xd569ef54380ea4c9 # initialize rd,rs1
c.and x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x9, 0x8000000000000001 # initialize rs2
li x15, 0xcd2a9fc99f53084b # initialize rd,rs1
c.and x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x9, 0x7fffffffffffffff # initialize rs2
li x15, 0x4ffb535a1b15236b # initialize rd,rs1
c.and x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 168)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x14, 0x7ffffffffffffffe # initialize rs2
li x8, 0xb9a094179e2329d1 # initialize rd,rs1
c.and x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 176)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs2
li x15, 0x10ac5172ce8a1659 # initialize rd,rs1
c.and x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs2
li x9, 0xff69f4c180b7eed0 # initialize rd,rs1
c.and x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x14, 0x5bbc887763ae86f2 # initialize rs2
li x8, 0x965ee3c24d032d14 # initialize rd,rs1
c.and x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
li x10, 0x15d08d5d7c7ce840 # initialize rd,rs1
c.and x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x10, 0x5555555555555555 # initialize rs2
li x13, 0x3536ad20d4e63687 # initialize rd,rs1
c.and x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x12, 0x00000000ffffffff # initialize rs2
li x8, 0x76549e5d65d377ef # initialize rd,rs1
c.and x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x9, 0x00000000fffffffe # initialize rs2
li x12, 0x53771236dae9549b # initialize rd,rs1
c.and x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x10, 0x0000000100000000 # initialize rs2
li x13, 0xf0ed1f98ab0eba06 # initialize rd,rs1
c.and x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 240)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x15, 0x0000000100000001 # initialize rs2
li x9, 0xe06a50e88fdb2bfb # initialize rd,rs1
c.and x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 248)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xc2d2dac2fa7200cd # initialize rs2
li x11, 0x922e56509b374750 # initialize rd,rs1
c.and x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x1b6a9150b1eed7c4 # initialize rs2
li x15, 0x26780de47361224f # initialize rd,rs1
c.and x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x571ca5f20e90c7ff # initialize rs2
li x8, 0xdacb54b4be21266f # initialize rd,rs1
c.and x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x269e5d66a7be35b7 # initialize rs2
li x8, 0xcd4befcdee2106c0 # initialize rd,rs1
c.and x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xdee4b9cf76e3d3cb # initialize rs2
li x11, 0x77ff8b7e314b06f5 # initialize rd,rs1
c.and x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xf5ecf5d43fbc9cf5 # initialize rs2
li x12, 0xb9e240468a36c7c8 # initialize rd,rs1
c.and x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xe43b57e5627870da # initialize rs2
li x12, 0x472d47e2f9af6be4 # initialize rd,rs1
c.and x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xee1e7b692dc77652 # initialize rs2
li x15, 0xb01f17c6aae29407 # initialize rd,rs1
c.and x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x996bcad0a13b0b68 # initialize rs2
li x8, 0x184dd24e628a07b7 # initialize rd,rs1
c.and x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x2ebbe0153d075bc4 # initialize rs2
li x9, 0x9b0ad8b8c122c159 # initialize rd,rs1
c.and x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x2d54f530ce0f1174 # initialize rs2
li x10, 0x9a31c05c93fe0800 # initialize rd,rs1
c.and x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x56f6af290552af37 # initialize rs2
li x11, 0x1a7ba159ca459724 # initialize rd,rs1
c.and x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xbc236a13c7063f98 # initialize rs2
li x12, 0x68f27f3ecd7dda21 # initialize rd,rs1
c.and x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xce132fdedb761464 # initialize rs2
li x13, 0x3bb679fa9900d8c8 # initialize rd,rs1
c.and x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x79fb929684c7f476 # initialize rs2
li x14, 0xd0901b8fc73c846f # initialize rd,rs1
c.and x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x530325de7d6f7e79 # initialize rs2
li x15, 0x8f925e948e539867 # initialize rd,rs1
c.and x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0x3ebf002a2a6ebd95 # initialize rs2
li x15, 0xc3bb867bfdb62c6b # initialize rd,rs1
c.and x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 384)

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0xbd0f3a1b6491dc6d # initialize rs2
li x11, 0xe26a96e06932fe03 # initialize rd,rs1
c.and x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 392)

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0xa431b24b7d7ce383 # initialize rs2
li x12, 0x44c6e6ffab2454ee # initialize rd,rs1
c.and x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 400)

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0x0b0af85b922019cd # initialize rs2
li x12, 0xb45ec5d82908d9d8 # initialize rd,rs1
c.and x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 408)

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0xb2b80f13b3f9d520 # initialize rs2
li x14, 0x69d6d4139fcc1d79 # initialize rd,rs1
c.and x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 416)

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0xc93d3ea6f799d8b9 # initialize rs2
li x14, 0x2cee59c1b00c82f2 # initialize rd,rs1
c.and x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0x62e90d7d399fc96b # initialize rs2
li x15, 0xea82002add94140e # initialize rd,rs1
c.and x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 432)

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x1d2573b232330262 # initialize rs2
li x9, 0x435eb2f720c3e544 # initialize rd,rs1
c.and x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 440)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xcdc79f9ac7b7af4e # initialize rs2
li x10, 0x1cee4bb3953fc89f # initialize rd,rs1
c.and x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x3c55d79e1c1527c8 # initialize rs2
li x12, 0x5ac4c1a65f330646 # initialize rd,rs1
c.and x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 456)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xa1a9026b6157b3f1 # initialize rs2
li x15, 0xbd8a8665d61da14f # initialize rd,rs1
c.and x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x1dac9983eb74affd # initialize rs2
li x10, 0x520082691ccd4a83 # initialize rd,rs1
c.and x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x215f251248ac2ff3 # initialize rs2
li x10, 0x58903137e3f13a59 # initialize rd,rs1
c.and x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 480)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x314acb1671ea8556 # initialize rs2
li x9, 0xafd70d581c6c1832 # initialize rd,rs1
c.and x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 488)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x448741547ace6636 # initialize rs2
li x10, 0x465bfe606892c6c2 # initialize rd,rs1
c.and x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 496)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x84da245900bcdce2 # initialize rs2
li x13, 0xb32a72f6788c0443 # initialize rd,rs1
c.and x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 504)

# Testcase cp_rd (Test destination rd = x8)
li x12, 0x8f34ee814cd4e8e3 # initialize rs2
li x8, 0xf664ffa23b216d06 # initialize rd,rs1
c.and x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0x6ade2aff4f64fab9 # initialize rs2
li x9, 0x4d1b49d3a228dfa5 # initialize rd,rs1
c.and x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cp_rd (Test destination rd = x10)
li x8, 0x309394fed72d6cca # initialize rs2
li x10, 0x94243882db660bbb # initialize rd,rs1
c.and x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_rd (Test destination rd = x11)
li x15, 0xb9a335a84e90c6c1 # initialize rs2
li x11, 0xbc23520916c7382f # initialize rd,rs1
c.and x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0x27d89ecbdff71518 # initialize rs2
li x12, 0xd5934c4b4c9305c9 # initialize rd,rs1
c.and x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0x27c10bbf9021bbb6 # initialize rs2
li x13, 0xdf37f2390b966821 # initialize rd,rs1
c.and x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cp_rd (Test destination rd = x14)
li x12, 0xafbbe286fb81c43f # initialize rs2
li x14, 0x92986c65c7b2af76 # initialize rd,rs1
c.and x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cp_rd (Test destination rd = x15)
li x14, 0x9f004941f4c1f37e # initialize rs2
li x15, 0x0710374b1c63ae75 # initialize rd,rs1
c.and x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 568)

#.EQU SIGSIZE,576


// ******************
// Tests from: WALLY-COV-c.xor.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x9, 0xa1e40e4351f5380a # initialize rs2
li x10, 0x0000000000000000 # initialize rd,rs1
c.xor x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x78d8d813c2548355 # initialize rs2
li x11, 0x0000000000000001 # initialize rd,rs1
c.xor x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0xea6c1d5c5daadadb # initialize rs2
li x13, 0x0000000000000002 # initialize rd,rs1
c.xor x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x12, 0xa196313c51e81d2d # initialize rs2
li x14, 0x8000000000000000 # initialize rd,rs1
c.xor x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x11, 0x097534f2c5293d04 # initialize rs2
li x13, 0x8000000000000001 # initialize rd,rs1
c.xor x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x15, 0xe8229e0f18635253 # initialize rs2
li x11, 0x7fffffffffffffff # initialize rd,rs1
c.xor x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x13, 0x3f90e8092edb9591 # initialize rs2
li x12, 0x7ffffffffffffffe # initialize rd,rs1
c.xor x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x15, 0x6e73cf0bb02f224a # initialize rs2
li x12, 0xffffffffffffffff # initialize rd,rs1
c.xor x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x8, 0x6a179338100a9247 # initialize rs2
li x13, 0xfffffffffffffffe # initialize rd,rs1
c.xor x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x8, 0x8f382179057584d5 # initialize rs2
li x9, 0x5bbc887763ae86f2 # initialize rd,rs1
c.xor x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0xe88d2bad0a01d3a2 # initialize rs2
li x15, 0xaaaaaaaaaaaaaaaa # initialize rd,rs1
c.xor x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x11, 0x7e959f661539a9c7 # initialize rs2
li x12, 0x5555555555555555 # initialize rd,rs1
c.xor x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0x81527b87527995f8 # initialize rs2
li x10, 0x00000000ffffffff # initialize rd,rs1
c.xor x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0x56f75818fdb4dc71 # initialize rs2
li x10, 0x00000000fffffffe # initialize rd,rs1
c.xor x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x13, 0x62c9264544fb0967 # initialize rs2
li x9, 0x0000000100000000 # initialize rd,rs1
c.xor x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0xda684a0259718d79 # initialize rs2
li x13, 0x0000000100000001 # initialize rd,rs1
c.xor x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x9, 0x0000000000000000 # initialize rs2
li x8, 0xb21481689e213139 # initialize rd,rs1
c.xor x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x12, 0x0000000000000001 # initialize rs2
li x15, 0x53ef8e951c7a26be # initialize rd,rs1
c.xor x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 136)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0x0000000000000002 # initialize rs2
li x15, 0x4f85702a8a477699 # initialize rd,rs1
c.xor x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x10, 0x8000000000000000 # initialize rs2
li x15, 0x7d6b3f4954a663c5 # initialize rd,rs1
c.xor x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs2
li x9, 0xce1f032da24f0217 # initialize rd,rs1
c.xor x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rs2
li x10, 0x0060ffea5d393361 # initialize rd,rs1
c.xor x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x12, 0x7ffffffffffffffe # initialize rs2
li x11, 0x08b220fe77a5f86c # initialize rd,rs1
c.xor x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 176)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs2
li x8, 0xf00105afdb570500 # initialize rd,rs1
c.xor x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 184)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x15, 0xfffffffffffffffe # initialize rs2
li x11, 0x086a7690d575157f # initialize rd,rs1
c.xor x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x11, 0x5bbc887763ae86f2 # initialize rs2
li x9, 0x29c742a503a23163 # initialize rd,rs1
c.xor x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
li x9, 0xcbacf16ea3ca8826 # initialize rd,rs1
c.xor x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 208)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x12, 0x5555555555555555 # initialize rs2
li x13, 0x6aeee934e772b90c # initialize rd,rs1
c.xor x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs2
li x13, 0xcfc3262e5caa2299 # initialize rd,rs1
c.xor x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 224)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0x00000000fffffffe # initialize rs2
li x8, 0xc146a75c7289fc76 # initialize rd,rs1
c.xor x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x14, 0x0000000100000000 # initialize rs2
li x8, 0xe5c4a5058127e474 # initialize rd,rs1
c.xor x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 240)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x15, 0x0000000100000001 # initialize rs2
li x13, 0x6c71a9b8aee363a8 # initialize rd,rs1
c.xor x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xb162d0b9d1264249 # initialize rs2
li x11, 0x3f8bc790c4b7ab4e # initialize rd,rs1
c.xor x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x8b8fea4761cf7947 # initialize rs2
li x13, 0x3542c8577c89d24f # initialize rd,rs1
c.xor x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xcfd54d292378d5c2 # initialize rs2
li x10, 0x2a476dba09c4264f # initialize rd,rs1
c.xor x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xccdcc0b4c54b6050 # initialize rs2
li x10, 0xcf9dcf774baacab9 # initialize rd,rs1
c.xor x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x9489ddffc297f7f8 # initialize rs2
li x8, 0xed8b8117e23db5a0 # initialize rd,rs1
c.xor x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x52540f4eaa5aa1ec # initialize rs2
li x11, 0x632408c110726e13 # initialize rd,rs1
c.xor x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xf25276dd00b01e0e # initialize rs2
li x12, 0xcb4579f194139f9e # initialize rd,rs1
c.xor x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x1ca81e141155cd09 # initialize rs2
li x13, 0xff3947d260c9d172 # initialize rd,rs1
c.xor x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x97f964f173430732 # initialize rs2
li x8, 0xba1561d3fcae90a2 # initialize rd,rs1
c.xor x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x3b2dfc35bb674c2a # initialize rs2
li x9, 0xb22df48b7cec756f # initialize rd,rs1
c.xor x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x011541d5099da7c0 # initialize rs2
li x10, 0x7846991a754bcdd5 # initialize rd,rs1
c.xor x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x89050fc11f9657e3 # initialize rs2
li x11, 0x70b936111ccf6f1b # initialize rd,rs1
c.xor x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x349f1ae1ba7dabb3 # initialize rs2
li x12, 0x7c9a1fd130f932a5 # initialize rd,rs1
c.xor x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x325e693c35bfdf7a # initialize rs2
li x13, 0x5acce6630a311b96 # initialize rd,rs1
c.xor x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xd6feefc5b8468272 # initialize rs2
li x14, 0x3ef943ef05af6ebf # initialize rd,rs1
c.xor x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x929dc5e6ad0b7cbd # initialize rs2
li x15, 0x37aa60c5ab256ccd # initialize rd,rs1
c.xor x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0x33c83a9fa8c67e8d # initialize rs2
li x13, 0xd06ee797d430c934 # initialize rd,rs1
c.xor x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 384)

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0x8079a52f7c67d57f # initialize rs2
li x15, 0xd44137a5b743ae9e # initialize rd,rs1
c.xor x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0x268322146fab3925 # initialize rs2
li x11, 0x6118aa0318965078 # initialize rd,rs1
c.xor x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 400)

# Testcase cp_rs1 (Test source rs1 = x11)
li x14, 0x6d617e8d81e2231d # initialize rs2
li x8, 0xeb03ee2b7629d260 # initialize rd,rs1
c.xor x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0xaf4e6a9bd7a419d7 # initialize rs2
li x13, 0x101e80f6c4f4bd32 # initialize rd,rs1
c.xor x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 416)

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0x60319bbf11887dbb # initialize rs2
li x14, 0x2952ce05333793d4 # initialize rd,rs1
c.xor x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0x325ef5cc6ce24540 # initialize rs2
li x9, 0xd73b2222c3d9116f # initialize rd,rs1
c.xor x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x1561062751127a59 # initialize rs2
li x11, 0xc8a8af91292a025e # initialize rd,rs1
c.xor x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 440)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xf991bf5f0167d94c # initialize rs2
li x10, 0x578cf6f18eb390e8 # initialize rd,rs1
c.xor x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xfbd5549e89b79c8a # initialize rs2
li x15, 0xcab50005fdfacbc6 # initialize rd,rs1
c.xor x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x79e6dd956044a0c1 # initialize rs2
li x15, 0xf7c3b82799e6ee3d # initialize rd,rs1
c.xor x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x1f82dca0a8ac639b # initialize rs2
li x12, 0x25c48dec3361614b # initialize rd,rs1
c.xor x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 472)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x4bcd5f6bfc5094f3 # initialize rs2
li x8, 0xef99c0514a7d6c6e # initialize rd,rs1
c.xor x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 480)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xdb77d814348fcf63 # initialize rs2
li x12, 0x6c36b67b24255099 # initialize rd,rs1
c.xor x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 488)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xe047b70758d5990b # initialize rs2
li x15, 0xee6660e459164d95 # initialize rd,rs1
c.xor x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x635a23885e5357fa # initialize rs2
li x13, 0x50e1662f625d2a44 # initialize rd,rs1
c.xor x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 504)

# Testcase cp_rd (Test destination rd = x8)
li x13, 0x62cc614a8e45f64f # initialize rs2
li x8, 0xec2a8cbb2bb006cf # initialize rd,rs1
c.xor x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cp_rd (Test destination rd = x9)
li x12, 0x1c53308d1a0714eb # initialize rs2
li x9, 0x3f79e8d6c9465643 # initialize rd,rs1
c.xor x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cp_rd (Test destination rd = x10)
li x14, 0xf45e2a4f6c9f1fad # initialize rs2
li x10, 0x279f03da3732734d # initialize rd,rs1
c.xor x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x9e148f95485fd7b4 # initialize rs2
li x11, 0x07f7f225d5b110da # initialize rd,rs1
c.xor x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cp_rd (Test destination rd = x12)
li x15, 0x57c4a166e70aa406 # initialize rs2
li x12, 0x504c5e5878773e05 # initialize rd,rs1
c.xor x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_rd (Test destination rd = x13)
li x11, 0x3096c55a089ca4c6 # initialize rs2
li x13, 0x6914eda242ece260 # initialize rd,rs1
c.xor x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0x7eb72bbfc85b945f # initialize rs2
li x14, 0x5ef9bca12c13d7cc # initialize rd,rs1
c.xor x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0xc2c20306b220dbfd # initialize rs2
li x15, 0x4eb307ca467e1f33 # initialize rd,rs1
c.xor x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 568)

#.EQU SIGSIZE,576


// ******************
// Tests from: WALLY-COV-c.add.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs2 (Test source rs2 = x1)
li x5, 0xdc9badde1fca33f1
li x1, 0x793630538cb347f5
c.add x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 0)

# Testcase cp_rs2 (Test source rs2 = x2)
li x22, 0x3aa15b05f5700be4
li x2, 0xaf0d16612b615e56
c.add x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cp_rs2 (Test source rs2 = x3)
li x14, 0xb0f4b620b885de84
li x3, 0xc0afd8d808099193
c.add x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0x08a8384ecc5ac485
li x4, 0xde4dd455a32c011c
c.add x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 24)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0xce80e5f0376b070e
li x5, 0xa4162923e2a5b8d5
c.add x13, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 32)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0xc00e25a69534b485
li x6, 0x143c8e64def89e62
c.add x18, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 40)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x4fbc5b7cb420b066
li x7, 0x393a004ab3ac4782
c.add x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 48)

# Testcase cp_rs2 (Test source rs2 = x8)
li x14, 0xb61638dea9402b48
li x8, 0xbbd8a0a5f7a2e900
c.add x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rs2 (Test source rs2 = x9)
li x6, 0x6536e1d025b0337f
li x9, 0xde3c49f26034f842
c.add x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase cp_rs2 (Test source rs2 = x10)
li x18, 0x76d40b00f158cf94
li x10, 0x6a93b63a884bad5b
c.add x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rs2 (Test source rs2 = x11)
li x1, 0x84f428f242a9fb97
li x11, 0x8def443ea93dd7ba
c.add x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs2 (Test source rs2 = x12)
li x11, 0xa9ec752532fd17d6
li x12, 0x74f8aca0ee9fb82a
c.add x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rs2 (Test source rs2 = x13)
li x31, 0x54be64790617b794
li x13, 0xcc5c6d21cd973f6b
c.add x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 96)

# Testcase cp_rs2 (Test source rs2 = x14)
li x16, 0x6e2dff56e3090dfc
li x14, 0xe1d7e59ff914831a
c.add x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cp_rs2 (Test source rs2 = x15)
li x12, 0x97c43b5c1774207b
li x15, 0x61985a81d34858e2
c.add x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 112)

# Testcase cp_rs2 (Test source rs2 = x16)
li x24, 0xf0ddd68b2cf666de
li x16, 0x022306181cef7d25
c.add x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cp_rs2 (Test source rs2 = x17)
li x29, 0xced5e2b4e1ae0675
li x17, 0x5ea9395b06cee80d
c.add x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 128)

# Testcase cp_rs2 (Test source rs2 = x18)
li x14, 0xc82321b1b63e071e
li x18, 0x56a0fe21a88b9b16
c.add x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_rs2 (Test source rs2 = x19)
li x11, 0xc831fd2fcbc1ca8a
li x19, 0x60c13b15fe5375c6
c.add x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cp_rs2 (Test source rs2 = x20)
li x31, 0x94d07cad4c95135c
li x20, 0x7f123d306226ab9a
c.add x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 152)

# Testcase cp_rs2 (Test source rs2 = x21)
li x14, 0xe09f4a24df755d64
li x21, 0xa4c23516a53a5eac
c.add x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 160)

# Testcase cp_rs2 (Test source rs2 = x22)
li x2, 0x523c5a2b4f08a8a0
li x22, 0xf0039211fc1bfcc7
c.add x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase cp_rs2 (Test source rs2 = x23)
li x15, 0xdb749c2929e4e002
li x23, 0x07c0078d0708aaad
c.add x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 176)

# Testcase cp_rs2 (Test source rs2 = x24)
li x13, 0x19e3b14343ab1f7c
li x24, 0x3a274460071add0a
c.add x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_rs2 (Test source rs2 = x25)
li x29, 0x54a019d0eea7cb29
li x25, 0x8bf19f9b0c1e13e0
c.add x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 192)

# Testcase cp_rs2 (Test source rs2 = x26)
li x11, 0x16b789dc1aa0fead
li x26, 0xcde1c0b669c3e2f0
c.add x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cp_rs2 (Test source rs2 = x27)
li x22, 0xc878c5f5b6a7e2c4
li x27, 0x4b7554cf22f2272f
c.add x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 208)

# Testcase cp_rs2 (Test source rs2 = x28)
li x9, 0x398e63375e5a1fee
li x28, 0xb32314a3b262d969
c.add x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cp_rs2 (Test source rs2 = x29)
li x26, 0x89467f650ac67905
li x29, 0x072411339e5c36b5
c.add x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs2 (Test source rs2 = x30)
li x18, 0x6372fb28b687f561
li x30, 0xbfa29c838e99aa0a
c.add x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 232)

# Testcase cp_rs2 (Test source rs2 = x31)
li x21, 0x2a60b340c9ca5c48
li x31, 0x5bbf69c9b2205bed
c.add x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 240)

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x24f7d85f225b3095
li x8, 0xff14984819180359
c.add x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x3f6daf81cd9e0293
li x21, 0xe10916b1cfc17e1b
c.add x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xf73f03e9fb0861d0
li x28, 0xc908d455367782bb
c.add x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xca6de027320e4a59
li x9, 0x05ace7b06357d995
c.add x4, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3a824ec0635cfc2f
li x22, 0x6ee518403facb70d
c.add x5, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe044884f8c7dbcba
li x4, 0x489d6f13a82e9834
c.add x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x82efcaa6859bd8da
li x21, 0x824527b6a0dee814
c.add x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x9a6e66c03cd4a00b
li x29, 0xa5705a6545c23870
c.add x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xf6b521a5b35c7e33
li x5, 0xb8731f6028b53bdb
c.add x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb114179097cdeb62
li x6, 0xc6da40c4e8d64cde
c.add x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xa8a5ec9e346c3105
li x22, 0xda029555997a38fc
c.add x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x4b22d0bf04f989d3
li x18, 0x4377dd0c9198c680
c.add x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xc792585dfc5e2508
li x16, 0x4926254bb0f51450
c.add x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x9ac2f71093edb517
li x2, 0x87b490a959883e58
c.add x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x4bd5efe2a1907dcf
li x27, 0x943e74e78fd13d33
c.add x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x5ae75967a3d94088
li x25, 0x791b49cde346167c
c.add x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x9e8e90d0e4842370
li x26, 0xcf08cc21fe27cd7d
c.add x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xb0a74de290e9ec5f
li x21, 0xd0014446eb6ec01f
c.add x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x135c305e8f7a1cc8
li x20, 0x64540ab2572de4c7
c.add x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xac0112d3cbd7d896
li x25, 0xdaea0792cb681699
c.add x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xc08ee1bfb5990510
li x16, 0xb04d6f6694accaf4
c.add x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xaeba8cfc9121b8e7
li x21, 0x2b65b2ef240563c0
c.add x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xa15195f7f72443bc
li x5, 0x3c599eda28c73d9d
c.add x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x26f218430e50d89a
li x22, 0x4eeacaa920df146c
c.add x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xdae23ed583a9e353
li x3, 0x22cfa62ed9a6d84f
c.add x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xe456bb527b941f7c
li x26, 0xbd67881fd0914c8e
c.add x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x830dca4b65e32e5e
li x2, 0x0a4b2760fe856ef5
c.add x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x66b4fb9b880fecb1
li x11, 0x51873babced633cf
c.add x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x0cdef44a9435c160
li x3, 0x08783362516e3703
c.add x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xd83d2bde3ecb1b9c
li x19, 0xeaeca930ee3dee44
c.add x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x38a84cf07e97b7f8
li x3, 0xf343298a7e925f7e
c.add x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x0000000000000000
li x30, 0xfbf0c0b2dd6a8347
c.add x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0x0000000000000001
li x20, 0x625256a5a4c64aac
c.add x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x20, 0x0000000000000002
li x27, 0x4b65bf15e1550f66
c.add x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x25, 0x8000000000000000
li x9, 0xc1aa9f7dc5a0b608
c.add x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x1, 0x8000000000000001
li x9, 0xf625ed1a9a30ed71
c.add x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x26, 0x7fffffffffffffff
li x25, 0x430d08525335905e
c.add x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x9, 0x7ffffffffffffffe
li x23, 0x9cd22c18b1c972d3
c.add x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x3, 0xffffffffffffffff
li x10, 0x00c2df7b10835de1
c.add x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x11, 0xfffffffffffffffe
li x1, 0x8d2b89db20cd876b
c.add x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x20, 0x5bbc887763ae86f2
li x2, 0x02ebfdb6ce9d899b
c.add x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x23, 0xaaaaaaaaaaaaaaaa
li x12, 0xf0c815d15d3a7ed1
c.add x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x25, 0x5555555555555555
li x15, 0x0ffd407805ee6e08
c.add x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0x00000000ffffffff
li x8, 0xb42a569afcdff281
c.add x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0x00000000fffffffe
li x22, 0x8fe1fbdf753d21fa
c.add x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x17, 0x0000000100000000
li x26, 0x47f9941e2c00225d
c.add x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x1, 0x0000000100000001
li x8, 0xa4c51c7ac01c5bd2
c.add x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 616)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x10, 0xd8e19d9a4c13fe26
li x1, 0x0000000000000000
c.add x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 624)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x3, 0x20461fdf93f415fc
li x28, 0x0000000000000001
c.add x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 632)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x3fcfbb4faddfed47
li x30, 0x0000000000000002
c.add x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 640)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x30, 0x4ef63f0a5ae2a3d8
li x7, 0x8000000000000000
c.add x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 648)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x16, 0xd89a5c409cf19bdc
li x8, 0x8000000000000001
c.add x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 656)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x1, 0x4148ce56500ce3c9
li x6, 0x7fffffffffffffff
c.add x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 664)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x16, 0x5b77a28524b99923
li x14, 0x7ffffffffffffffe
c.add x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 672)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x24, 0xf14a849b6686dfe7
li x29, 0xffffffffffffffff
c.add x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 680)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x24, 0x3d5812923af1f4a4
li x18, 0xfffffffffffffffe
c.add x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x16, 0xeda946f317c4c1e9
li x21, 0x5bbc887763ae86f2
c.add x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 696)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x27, 0xff0e29db448548f4
li x19, 0xaaaaaaaaaaaaaaaa
c.add x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 704)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x11, 0x67501128c645585a
li x16, 0x5555555555555555
c.add x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 712)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x17, 0x1e8b4e77b532d551
li x2, 0x00000000ffffffff
c.add x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 720)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x3, 0x8938532046d6a384
li x31, 0x00000000fffffffe
c.add x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 728)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x2, 0x6ad5d5c68f297a35
li x14, 0x0000000100000000
c.add x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 736)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x31, 0x9a00019d0af21960
li x3, 0x0000000100000001
c.add x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x22, 0x0000000000000000
li x6, 0x0000000000000000
c.add x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x28, 0x0000000000000000
li x9, 0x0000000000000001
c.add x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x8, 0x0000000000000000
li x13, 0x0000000000000002
c.add x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x12, 0x0000000000000000
li x8, 0x8000000000000000
c.add x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x28, 0x0000000000000000
li x17, 0x8000000000000001
c.add x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x17, 0x0000000000000000
li x6, 0x7fffffffffffffff
c.add x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000000000000
li x21, 0x7ffffffffffffffe
c.add x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x22, 0x0000000000000000
li x20, 0xffffffffffffffff
c.add x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000000000000
li x21, 0xfffffffffffffffe
c.add x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x16, 0x0000000000000000
li x8, 0x5bbc887763ae86f2
c.add x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000000000000
li x26, 0xaaaaaaaaaaaaaaaa
c.add x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x16, 0x0000000000000000
li x6, 0x5555555555555555
c.add x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x12, 0x0000000000000000
li x29, 0x00000000ffffffff
c.add x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x9, 0x0000000000000000
li x28, 0x00000000fffffffe
c.add x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x18, 0x0000000000000000
li x10, 0x0000000100000000
c.add x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x14, 0x0000000000000000
li x17, 0x0000000100000001
c.add x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x23, 0x0000000000000001
li x31, 0x0000000000000000
c.add x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x30, 0x0000000000000001
li x16, 0x0000000000000001
c.add x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x5, 0x0000000000000001
li x9, 0x0000000000000002
c.add x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x30, 0x0000000000000001
li x29, 0x8000000000000000
c.add x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x10, 0x0000000000000001
li x14, 0x8000000000000001
c.add x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000000000001
li x24, 0x7fffffffffffffff
c.add x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x7, 0x0000000000000001
li x27, 0x7ffffffffffffffe
c.add x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000001
li x18, 0xffffffffffffffff
c.add x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x27, 0x0000000000000001
li x26, 0xfffffffffffffffe
c.add x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x15, 0x0000000000000001
li x24, 0x5bbc887763ae86f2
c.add x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000000000001
li x16, 0xaaaaaaaaaaaaaaaa
c.add x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x6, 0x0000000000000001
li x14, 0x5555555555555555
c.add x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x14, 0x0000000000000001
li x18, 0x00000000ffffffff
c.add x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x19, 0x0000000000000001
li x13, 0x00000000fffffffe
c.add x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x7, 0x0000000000000001
li x21, 0x0000000100000000
c.add x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x16, 0x0000000000000001
li x18, 0x0000000100000001
c.add x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x1, 0x0000000000000002
li x7, 0x0000000000000000
c.add x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x22, 0x0000000000000002
li x1, 0x0000000000000001
c.add x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x22, 0x0000000000000002
li x24, 0x0000000000000002
c.add x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x20, 0x0000000000000002
li x7, 0x8000000000000000
c.add x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x28, 0x0000000000000002
li x24, 0x8000000000000001
c.add x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x2, 0x0000000000000002
li x3, 0x7fffffffffffffff
c.add x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x30, 0x0000000000000002
li x18, 0x7ffffffffffffffe
c.add x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x1, 0x0000000000000002
li x7, 0xffffffffffffffff
c.add x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000000000002
li x12, 0xfffffffffffffffe
c.add x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000000000002
li x3, 0x5bbc887763ae86f2
c.add x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x0000000000000002
li x28, 0xaaaaaaaaaaaaaaaa
c.add x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x31, 0x0000000000000002
li x15, 0x5555555555555555
c.add x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x30, 0x0000000000000002
li x29, 0x00000000ffffffff
c.add x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x2, 0x0000000000000002
li x5, 0x00000000fffffffe
c.add x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x8, 0x0000000000000002
li x26, 0x0000000100000000
c.add x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x25, 0x0000000000000002
li x17, 0x0000000100000001
c.add x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x15, 0x8000000000000000
li x19, 0x0000000000000000
c.add x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x23, 0x8000000000000000
li x8, 0x0000000000000001
c.add x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x24, 0x8000000000000000
li x1, 0x0000000000000002
c.add x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x24, 0x8000000000000000
li x26, 0x8000000000000000
c.add x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x6, 0x8000000000000000
li x7, 0x8000000000000001
c.add x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x20, 0x8000000000000000
li x21, 0x7fffffffffffffff
c.add x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x12, 0x8000000000000000
li x16, 0x7ffffffffffffffe
c.add x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x6, 0x8000000000000000
li x7, 0xffffffffffffffff
c.add x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x28, 0x8000000000000000
li x8, 0xfffffffffffffffe
c.add x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x17, 0x8000000000000000
li x16, 0x5bbc887763ae86f2
c.add x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x8000000000000000
li x18, 0xaaaaaaaaaaaaaaaa
c.add x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x11, 0x8000000000000000
li x27, 0x5555555555555555
c.add x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x2, 0x8000000000000000
li x7, 0x00000000ffffffff
c.add x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x9, 0x8000000000000000
li x16, 0x00000000fffffffe
c.add x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x26, 0x8000000000000000
li x16, 0x0000000100000000
c.add x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x31, 0x8000000000000000
li x23, 0x0000000100000001
c.add x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x3, 0x8000000000000001
li x25, 0x0000000000000000
c.add x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x3, 0x8000000000000001
li x30, 0x0000000000000001
c.add x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x20, 0x8000000000000001
li x19, 0x0000000000000002
c.add x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x25, 0x8000000000000001
li x12, 0x8000000000000000
c.add x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x23, 0x8000000000000001
li x27, 0x8000000000000001
c.add x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x15, 0x8000000000000001
li x26, 0x7fffffffffffffff
c.add x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x10, 0x8000000000000001
li x15, 0x7ffffffffffffffe
c.add x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x25, 0x8000000000000001
li x11, 0xffffffffffffffff
c.add x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x5, 0x8000000000000001
li x15, 0xfffffffffffffffe
c.add x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x1, 0x8000000000000001
li x24, 0x5bbc887763ae86f2
c.add x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x8000000000000001
li x24, 0xaaaaaaaaaaaaaaaa
c.add x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x29, 0x8000000000000001
li x18, 0x5555555555555555
c.add x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x5, 0x8000000000000001
li x30, 0x00000000ffffffff
c.add x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x3, 0x8000000000000001
li x16, 0x00000000fffffffe
c.add x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x13, 0x8000000000000001
li x31, 0x0000000100000000
c.add x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x17, 0x8000000000000001
li x13, 0x0000000100000001
c.add x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x28, 0x7fffffffffffffff
li x12, 0x0000000000000000
c.add x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x15, 0x7fffffffffffffff
li x3, 0x0000000000000001
c.add x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x26, 0x7fffffffffffffff
li x6, 0x0000000000000002
c.add x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x13, 0x7fffffffffffffff
li x23, 0x8000000000000000
c.add x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x25, 0x7fffffffffffffff
li x24, 0x8000000000000001
c.add x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x13, 0x7fffffffffffffff
li x8, 0x7fffffffffffffff
c.add x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x20, 0x7fffffffffffffff
li x8, 0x7ffffffffffffffe
c.add x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x17, 0x7fffffffffffffff
li x26, 0xffffffffffffffff
c.add x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x10, 0x7fffffffffffffff
li x25, 0xfffffffffffffffe
c.add x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x11, 0x7fffffffffffffff
li x17, 0x5bbc887763ae86f2
c.add x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x7fffffffffffffff
li x6, 0xaaaaaaaaaaaaaaaa
c.add x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x12, 0x7fffffffffffffff
li x20, 0x5555555555555555
c.add x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x8, 0x7fffffffffffffff
li x27, 0x00000000ffffffff
c.add x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x17, 0x7fffffffffffffff
li x12, 0x00000000fffffffe
c.add x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x5, 0x7fffffffffffffff
li x31, 0x0000000100000000
c.add x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x22, 0x7fffffffffffffff
li x30, 0x0000000100000001
c.add x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x1, 0x7ffffffffffffffe
li x17, 0x0000000000000000
c.add x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x18, 0x7ffffffffffffffe
li x2, 0x0000000000000001
c.add x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x29, 0x7ffffffffffffffe
li x8, 0x0000000000000002
c.add x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x30, 0x7ffffffffffffffe
li x20, 0x8000000000000000
c.add x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x20, 0x7ffffffffffffffe
li x31, 0x8000000000000001
c.add x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x25, 0x7ffffffffffffffe
li x3, 0x7fffffffffffffff
c.add x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x9, 0x7ffffffffffffffe
li x5, 0x7ffffffffffffffe
c.add x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x31, 0x7ffffffffffffffe
li x11, 0xffffffffffffffff
c.add x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x6, 0x7ffffffffffffffe
li x1, 0xfffffffffffffffe
c.add x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x3, 0x7ffffffffffffffe
li x23, 0x5bbc887763ae86f2
c.add x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x7ffffffffffffffe
li x6, 0xaaaaaaaaaaaaaaaa
c.add x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x14, 0x7ffffffffffffffe
li x25, 0x5555555555555555
c.add x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x25, 0x7ffffffffffffffe
li x10, 0x00000000ffffffff
c.add x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x1, 0x7ffffffffffffffe
li x20, 0x00000000fffffffe
c.add x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x7, 0x7ffffffffffffffe
li x2, 0x0000000100000000
c.add x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x20, 0x7ffffffffffffffe
li x11, 0x0000000100000001
c.add x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x28, 0xffffffffffffffff
li x31, 0x0000000000000000
c.add x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x1, 0xffffffffffffffff
li x14, 0x0000000000000001
c.add x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x31, 0xffffffffffffffff
li x15, 0x0000000000000002
c.add x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x6, 0xffffffffffffffff
li x7, 0x8000000000000000
c.add x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x21, 0xffffffffffffffff
li x31, 0x8000000000000001
c.add x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x3, 0xffffffffffffffff
li x6, 0x7fffffffffffffff
c.add x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0xffffffffffffffff
li x2, 0x7ffffffffffffffe
c.add x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x19, 0xffffffffffffffff
li x18, 0xffffffffffffffff
c.add x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x13, 0xffffffffffffffff
li x19, 0xfffffffffffffffe
c.add x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x10, 0xffffffffffffffff
li x6, 0x5bbc887763ae86f2
c.add x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0xffffffffffffffff
li x26, 0xaaaaaaaaaaaaaaaa
c.add x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x27, 0xffffffffffffffff
li x3, 0x5555555555555555
c.add x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x1, 0xffffffffffffffff
li x7, 0x00000000ffffffff
c.add x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x30, 0xffffffffffffffff
li x9, 0x00000000fffffffe
c.add x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x10, 0xffffffffffffffff
li x17, 0x0000000100000000
c.add x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x22, 0xffffffffffffffff
li x11, 0x0000000100000001
c.add x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x18, 0xfffffffffffffffe
li x21, 0x0000000000000000
c.add x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x13, 0xfffffffffffffffe
li x24, 0x0000000000000001
c.add x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x22, 0xfffffffffffffffe
li x13, 0x0000000000000002
c.add x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x20, 0xfffffffffffffffe
li x3, 0x8000000000000000
c.add x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x1, 0xfffffffffffffffe
li x14, 0x8000000000000001
c.add x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x21, 0xfffffffffffffffe
li x12, 0x7fffffffffffffff
c.add x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0xfffffffffffffffe
li x3, 0x7ffffffffffffffe
c.add x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x18, 0xfffffffffffffffe
li x8, 0xffffffffffffffff
c.add x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x13, 0xfffffffffffffffe
li x10, 0xfffffffffffffffe
c.add x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x6, 0xfffffffffffffffe
li x13, 0x5bbc887763ae86f2
c.add x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0xfffffffffffffffe
li x13, 0xaaaaaaaaaaaaaaaa
c.add x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x9, 0xfffffffffffffffe
li x13, 0x5555555555555555
c.add x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x6, 0xfffffffffffffffe
li x22, 0x00000000ffffffff
c.add x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x7, 0xfffffffffffffffe
li x13, 0x00000000fffffffe
c.add x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x30, 0xfffffffffffffffe
li x19, 0x0000000100000000
c.add x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x25, 0xfffffffffffffffe
li x31, 0x0000000100000001
c.add x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x10, 0x5bbc887763ae86f2
li x30, 0x0000000000000000
c.add x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x25, 0x5bbc887763ae86f2
li x24, 0x0000000000000001
c.add x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x26, 0x5bbc887763ae86f2
li x21, 0x0000000000000002
c.add x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x6, 0x5bbc887763ae86f2
li x18, 0x8000000000000000
c.add x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x27, 0x5bbc887763ae86f2
li x29, 0x8000000000000001
c.add x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x9, 0x5bbc887763ae86f2
li x5, 0x7fffffffffffffff
c.add x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x13, 0x5bbc887763ae86f2
li x10, 0x7ffffffffffffffe
c.add x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x31, 0x5bbc887763ae86f2
li x10, 0xffffffffffffffff
c.add x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x21, 0x5bbc887763ae86f2
li x11, 0xfffffffffffffffe
c.add x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2
li x30, 0x5bbc887763ae86f2
c.add x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x5bbc887763ae86f2
li x10, 0xaaaaaaaaaaaaaaaa
c.add x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x29, 0x5bbc887763ae86f2
li x9, 0x5555555555555555
c.add x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x16, 0x5bbc887763ae86f2
li x25, 0x00000000ffffffff
c.add x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x16, 0x5bbc887763ae86f2
li x2, 0x00000000fffffffe
c.add x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x30, 0x5bbc887763ae86f2
li x29, 0x0000000100000000
c.add x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x12, 0x5bbc887763ae86f2
li x13, 0x0000000100000001
c.add x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x13, 0xaaaaaaaaaaaaaaaa
li x21, 0x0000000000000000
c.add x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x26, 0xaaaaaaaaaaaaaaaa
li x7, 0x0000000000000001
c.add x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x16, 0xaaaaaaaaaaaaaaaa
li x22, 0x0000000000000002
c.add x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x12, 0xaaaaaaaaaaaaaaaa
li x30, 0x8000000000000000
c.add x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x18, 0xaaaaaaaaaaaaaaaa
li x21, 0x8000000000000001
c.add x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x9, 0xaaaaaaaaaaaaaaaa
li x12, 0x7fffffffffffffff
c.add x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x28, 0xaaaaaaaaaaaaaaaa
li x8, 0x7ffffffffffffffe
c.add x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x19, 0xaaaaaaaaaaaaaaaa
li x11, 0xffffffffffffffff
c.add x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x16, 0xaaaaaaaaaaaaaaaa
li x21, 0xfffffffffffffffe
c.add x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x17, 0xaaaaaaaaaaaaaaaa
li x15, 0x5bbc887763ae86f2
c.add x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0xaaaaaaaaaaaaaaaa
li x12, 0xaaaaaaaaaaaaaaaa
c.add x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x19, 0xaaaaaaaaaaaaaaaa
li x24, 0x5555555555555555
c.add x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x31, 0xaaaaaaaaaaaaaaaa
li x26, 0x00000000ffffffff
c.add x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x21, 0xaaaaaaaaaaaaaaaa
li x16, 0x00000000fffffffe
c.add x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x30, 0xaaaaaaaaaaaaaaaa
li x17, 0x0000000100000000
c.add x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x11, 0xaaaaaaaaaaaaaaaa
li x17, 0x0000000100000001
c.add x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x9, 0x5555555555555555
li x27, 0x0000000000000000
c.add x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x19, 0x5555555555555555
li x14, 0x0000000000000001
c.add x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x31, 0x5555555555555555
li x30, 0x0000000000000002
c.add x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x24, 0x5555555555555555
li x3, 0x8000000000000000
c.add x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x3, 0x5555555555555555
li x5, 0x8000000000000001
c.add x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x26, 0x5555555555555555
li x19, 0x7fffffffffffffff
c.add x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x2, 0x5555555555555555
li x8, 0x7ffffffffffffffe
c.add x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x28, 0x5555555555555555
li x30, 0xffffffffffffffff
c.add x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x7, 0x5555555555555555
li x15, 0xfffffffffffffffe
c.add x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x9, 0x5555555555555555
li x17, 0x5bbc887763ae86f2
c.add x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x5555555555555555
li x18, 0xaaaaaaaaaaaaaaaa
c.add x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x18, 0x5555555555555555
li x7, 0x5555555555555555
c.add x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x30, 0x5555555555555555
li x26, 0x00000000ffffffff
c.add x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x31, 0x5555555555555555
li x17, 0x00000000fffffffe
c.add x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x24, 0x5555555555555555
li x5, 0x0000000100000000
c.add x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x29, 0x5555555555555555
li x9, 0x0000000100000001
c.add x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x7, 0x00000000ffffffff
li x23, 0x0000000000000000
c.add x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x17, 0x00000000ffffffff
li x22, 0x0000000000000001
c.add x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x24, 0x00000000ffffffff
li x21, 0x0000000000000002
c.add x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x1, 0x00000000ffffffff
li x13, 0x8000000000000000
c.add x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x9, 0x00000000ffffffff
li x20, 0x8000000000000001
c.add x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x8, 0x00000000ffffffff
li x1, 0x7fffffffffffffff
c.add x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x19, 0x00000000ffffffff
li x31, 0x7ffffffffffffffe
c.add x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x20, 0x00000000ffffffff
li x15, 0xffffffffffffffff
c.add x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x29, 0x00000000ffffffff
li x10, 0xfffffffffffffffe
c.add x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x8, 0x00000000ffffffff
li x3, 0x5bbc887763ae86f2
c.add x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x00000000ffffffff
li x23, 0xaaaaaaaaaaaaaaaa
c.add x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x15, 0x00000000ffffffff
li x30, 0x5555555555555555
c.add x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x10, 0x00000000ffffffff
li x22, 0x00000000ffffffff
c.add x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x5, 0x00000000ffffffff
li x18, 0x00000000fffffffe
c.add x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x30, 0x00000000ffffffff
li x8, 0x0000000100000000
c.add x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x26, 0x00000000ffffffff
li x2, 0x0000000100000001
c.add x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x14, 0x00000000fffffffe
li x11, 0x0000000000000000
c.add x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x21, 0x00000000fffffffe
li x6, 0x0000000000000001
c.add x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x14, 0x00000000fffffffe
li x31, 0x0000000000000002
c.add x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x18, 0x00000000fffffffe
li x8, 0x8000000000000000
c.add x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x9, 0x00000000fffffffe
li x28, 0x8000000000000001
c.add x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x23, 0x00000000fffffffe
li x27, 0x7fffffffffffffff
c.add x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x30, 0x00000000fffffffe
li x3, 0x7ffffffffffffffe
c.add x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x23, 0x00000000fffffffe
li x26, 0xffffffffffffffff
c.add x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x28, 0x00000000fffffffe
li x26, 0xfffffffffffffffe
c.add x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x1, 0x00000000fffffffe
li x5, 0x5bbc887763ae86f2
c.add x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x00000000fffffffe
li x22, 0xaaaaaaaaaaaaaaaa
c.add x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x31, 0x00000000fffffffe
li x28, 0x5555555555555555
c.add x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x18, 0x00000000fffffffe
li x17, 0x00000000ffffffff
c.add x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x1, 0x00000000fffffffe
li x10, 0x00000000fffffffe
c.add x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x30, 0x00000000fffffffe
li x22, 0x0000000100000000
c.add x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x19, 0x00000000fffffffe
li x2, 0x0000000100000001
c.add x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x7, 0x0000000100000000
li x10, 0x0000000000000000
c.add x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x20, 0x0000000100000000
li x10, 0x0000000000000001
c.add x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x16, 0x0000000100000000
li x23, 0x0000000000000002
c.add x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x16, 0x0000000100000000
li x24, 0x8000000000000000
c.add x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x29, 0x0000000100000000
li x28, 0x8000000000000001
c.add x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x13, 0x0000000100000000
li x19, 0x7fffffffffffffff
c.add x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000100000000
li x6, 0x7ffffffffffffffe
c.add x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x2, 0x0000000100000000
li x11, 0xffffffffffffffff
c.add x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000100000000
li x28, 0xfffffffffffffffe
c.add x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000100000000
li x2, 0x5bbc887763ae86f2
c.add x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000100000000
li x20, 0xaaaaaaaaaaaaaaaa
c.add x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x24, 0x0000000100000000
li x18, 0x5555555555555555
c.add x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x9, 0x0000000100000000
li x21, 0x00000000ffffffff
c.add x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x31, 0x0000000100000000
li x26, 0x00000000fffffffe
c.add x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x7, 0x0000000100000000
li x22, 0x0000000100000000
c.add x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x14, 0x0000000100000000
li x7, 0x0000000100000001
c.add x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x16, 0x0000000100000001
li x27, 0x0000000000000000
c.add x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x7, 0x0000000100000001
li x30, 0x0000000000000001
c.add x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x3, 0x0000000100000001
li x8, 0x0000000000000002
c.add x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x29, 0x0000000100000001
li x14, 0x8000000000000000
c.add x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x24, 0x0000000100000001
li x29, 0x8000000000000001
c.add x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x23, 0x0000000100000001
li x31, 0x7fffffffffffffff
c.add x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000100000001
li x31, 0x7ffffffffffffffe
c.add x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x9, 0x0000000100000001
li x17, 0xffffffffffffffff
c.add x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000100000001
li x27, 0xfffffffffffffffe
c.add x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000100000001
li x14, 0x5bbc887763ae86f2
c.add x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x0000000100000001
li x14, 0xaaaaaaaaaaaaaaaa
c.add x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x8, 0x0000000100000001
li x6, 0x5555555555555555
c.add x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x30, 0x0000000100000001
li x27, 0x00000000ffffffff
c.add x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x9, 0x0000000100000001
li x15, 0x00000000fffffffe
c.add x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x12, 0x0000000100000001
li x23, 0x0000000100000000
c.add x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x15, 0x0000000100000001
li x9, 0x0000000100000001
c.add x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 992)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0xf8ed0bd39e419c76
li x1, 0xd013df27c023aa33
c.add x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1000)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0xc9830032acd2b777
li x2, 0x6b4dc24ce36ebd19
c.add x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1008)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x9534135858283b6e
li x3, 0xd24f6d5e906e3477
c.add x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1016)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2e9b646e534ddf3a
li x4, 0x5ef9d7d87d1fec6c
c.add x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1024)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7b50f87004d42263
li x5, 0x1c0a57228b3eaa9f
c.add x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1032)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8d19bf73fb5a7b8f
li x6, 0x8b7486c7e23eacd7
c.add x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1040)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xab549f1f3022c2a3
li x7, 0x46331f9c27aa2967
c.add x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1048)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x094471aedd55844b
li x8, 0x57a2d41179806fcd
c.add x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xadd819ec047dbccc
li x9, 0xa1b04dc6d547f972
c.add x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1064)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x48a742a226859d91
li x10, 0x352a5c2100e412d9
c.add x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1072)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x05bb9ec0094bc239
li x11, 0x17eb45afc662409c
c.add x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1080)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xa052204a45694fa9
li x12, 0x8560ff7df1973587
c.add x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1088)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x1cb744e1e9946d01
li x13, 0x5c73a7f0412fe33c
c.add x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1096)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x3b1ee36ccfbf6d38
li x14, 0xe3edea6208ace4a0
c.add x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x14111f82b294f8fd
li x15, 0xa646887379a00368
c.add x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x430864d04d097d35
li x16, 0x93595f0937f53f8d
c.add x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0xa4ee3e1327e041c9
li x17, 0xcb1ac877fcc7b4e4
c.add x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0xb930bfa0dc4a4e54
li x18, 0xbc2aae94b7da8808
c.add x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0xcfe2887ffcce22bd
li x19, 0x651c4b946f43f707
c.add x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x9a6043626b6346ce
li x20, 0x5c13f9b9a92090f0
c.add x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x4b3268779fc2982f
li x21, 0xd970e69610589fff
c.add x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x9dad66918c8050c8
li x22, 0xf4bcb196acd081cd
c.add x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xfe4ccb40ba797802
li x23, 0x78ef1bf272b1eb1c
c.add x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x5dd3fc83285c1a74
li x24, 0x4c3df73f0899aebd
c.add x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x58e35bb75e257057
li x25, 0x1f4dd7c228e440a6
c.add x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x7f0b90bca861e22e
li x26, 0x3099fb438b7086f2
c.add x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xe8059f212d92d7d1
li x27, 0x057a4d8943734710
c.add x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0xd83289a7598e22ad
li x28, 0x8fa44a5fed161724
c.add x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x1a26b28fc85ea2a7
li x29, 0x938a4da9b94d48c0
c.add x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x3fefaa8a2594652b
li x30, 0x6d25c96100f6d69b
c.add x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1232)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0xa7a2497cb865e8fa
li x31, 0x912689a68e5ebba7
c.add x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1240)

#.EQU SIGSIZE,3048


// ******************
// Tests from: WALLY-COV-c.or.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x13, 0xfab7b55ed23ec69d # initialize rs2
li x8, 0x0000000000000000 # initialize rd,rs1
c.or x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x7c0f0a9053e4e286 # initialize rs2
li x10, 0x0000000000000001 # initialize rd,rs1
c.or x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0xfe76f06bf8961842 # initialize rs2
li x15, 0x0000000000000002 # initialize rd,rs1
c.or x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x13, 0xb1d3e0cdc810ebd7 # initialize rs2
li x12, 0x8000000000000000 # initialize rd,rs1
c.or x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0xb25ae772f1d983c4 # initialize rs2
li x11, 0x8000000000000001 # initialize rd,rs1
c.or x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x8, 0xe88eb174b5dcdf35 # initialize rs2
li x10, 0x7fffffffffffffff # initialize rd,rs1
c.or x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x10, 0x1acf003443602c46 # initialize rs2
li x13, 0x7ffffffffffffffe # initialize rd,rs1
c.or x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x12, 0x707d9c43034565c8 # initialize rs2
li x9, 0xffffffffffffffff # initialize rd,rs1
c.or x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x11, 0xd9a6c4023ded483b # initialize rs2
li x9, 0xfffffffffffffffe # initialize rd,rs1
c.or x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x11, 0x8b067bab949db2a3 # initialize rs2
li x9, 0x5bbc887763ae86f2 # initialize rd,rs1
c.or x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0x6f3279821373c7a2 # initialize rs2
li x14, 0xaaaaaaaaaaaaaaaa # initialize rd,rs1
c.or x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x15, 0xa00517fef4f917dc # initialize rs2
li x12, 0x5555555555555555 # initialize rd,rs1
c.or x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x9c1ac5088ed9ab60 # initialize rs2
li x12, 0x00000000ffffffff # initialize rd,rs1
c.or x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x11, 0xafb4bc3bcd653079 # initialize rs2
li x8, 0x00000000fffffffe # initialize rd,rs1
c.or x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x8, 0x541b3eedae27af6f # initialize rs2
li x13, 0x0000000100000000 # initialize rd,rs1
c.or x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x13, 0x7c06d97ece13a8be # initialize rs2
li x10, 0x0000000100000001 # initialize rd,rs1
c.or x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0x0000000000000000 # initialize rs2
li x8, 0xe9ce6cd829ab5f67 # initialize rd,rs1
c.or x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x11, 0x0000000000000001 # initialize rs2
li x8, 0xd01ffe20def322a7 # initialize rd,rs1
c.or x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 136)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0x0000000000000002 # initialize rs2
li x10, 0xd1ad6812d258baac # initialize rd,rs1
c.or x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x13, 0x8000000000000000 # initialize rs2
li x8, 0x26aff30248998952 # initialize rd,rs1
c.or x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 152)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs2
li x14, 0xd2a07b1f9b292951 # initialize rd,rs1
c.or x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 160)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rs2
li x11, 0xefcd9363794224a0 # initialize rd,rs1
c.or x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs2
li x8, 0x27fe7f2bb70595c4 # initialize rd,rs1
c.or x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 176)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs2
li x11, 0x1d480abdb429d968 # initialize rd,rs1
c.or x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs2
li x13, 0x30e7b8b8206dea52 # initialize rd,rs1
c.or x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 192)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x8, 0x5bbc887763ae86f2 # initialize rs2
li x14, 0x4caafb3830e70047 # initialize rd,rs1
c.or x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
li x13, 0x5be81392d74b691e # initialize rd,rs1
c.or x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x8, 0x5555555555555555 # initialize rs2
li x11, 0x3d966bc3dfcf87b0 # initialize rd,rs1
c.or x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x10, 0x00000000ffffffff # initialize rs2
li x14, 0x518769770a58e9db # initialize rd,rs1
c.or x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x11, 0x00000000fffffffe # initialize rs2
li x8, 0x55098c6f3cc03768 # initialize rd,rs1
c.or x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x11, 0x0000000100000000 # initialize rs2
li x9, 0x9839622b54e1fb1d # initialize rd,rs1
c.or x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 240)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x11, 0x0000000100000001 # initialize rs2
li x8, 0x755906d79cb302c4 # initialize rd,rs1
c.or x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 248)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x616489ce69d84442 # initialize rs2
li x11, 0x7e9a681fdd2947e2 # initialize rd,rs1
c.or x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x2647b3202479f43e # initialize rs2
li x12, 0x87bcc5416fd8cc1b # initialize rd,rs1
c.or x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xba11da519a983710 # initialize rs2
li x14, 0x80e961a2d2391160 # initialize rd,rs1
c.or x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x266a498e0c1b9229 # initialize rs2
li x10, 0x2b8d3a8fc0502a89 # initialize rd,rs1
c.or x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x0b3fa9f9bcb6c397 # initialize rs2
li x13, 0xef6ef214b537c777 # initialize rd,rs1
c.or x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x259d0a5aad4d807b # initialize rs2
li x11, 0x108c370b56a4324d # initialize rd,rs1
c.or x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x9154e8e0cd85cc60 # initialize rs2
li x10, 0xd3b005e04766dee7 # initialize rd,rs1
c.or x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x214da2e5196f83ba # initialize rs2
li x13, 0x64fb8f32fa9dcda8 # initialize rd,rs1
c.or x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xa140a14f7f13fab6 # initialize rs2
li x8, 0x2aa648163f8c9e33 # initialize rd,rs1
c.or x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xfe97061d0116efe1 # initialize rs2
li x9, 0xdd5b5294ae0840b9 # initialize rd,rs1
c.or x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x98ce72302e2c003d # initialize rs2
li x10, 0x367083399ddd2bf7 # initialize rd,rs1
c.or x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x65dd85de61a5101d # initialize rs2
li x11, 0x2443021d7483d919 # initialize rd,rs1
c.or x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x76fae12d91560848 # initialize rs2
li x12, 0xd5e497a9e85a184f # initialize rd,rs1
c.or x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xed442072b2c81cf8 # initialize rs2
li x13, 0x5aa78267ff7cf144 # initialize rd,rs1
c.or x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xe3d39c9d0e7ab51e # initialize rs2
li x14, 0x1ea43142d2bfa5ce # initialize rd,rs1
c.or x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xf6ac2d978be6164c # initialize rs2
li x15, 0x1a614b27cdd16d2e # initialize rd,rs1
c.or x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0xaef983d4f6cb5fff # initialize rs2
li x11, 0xd0a88c7d311a2415 # initialize rd,rs1
c.or x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 384)

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0xecd2c791b3a40223 # initialize rs2
li x13, 0x80b53ff0d90dd768 # initialize rd,rs1
c.or x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 392)

# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0x74c1e2823cc59447 # initialize rs2
li x8, 0xeed1af8ca036c01b # initialize rd,rs1
c.or x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 400)

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0x367a235662d28a14 # initialize rs2
li x13, 0x74b427126363ef00 # initialize rd,rs1
c.or x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0x88bddd0e10bb0b6f # initialize rs2
li x10, 0x4aee5542eb60facf # initialize rd,rs1
c.or x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 416)

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0x6bcba4ace3d1f599 # initialize rs2
li x10, 0xa14a4d04eaa3a58e # initialize rd,rs1
c.or x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 424)

# Testcase cp_rs1 (Test source rs1 = x14)
li x15, 0xcfd8e0a009a60646 # initialize rs2
li x13, 0x3819e166771338c9 # initialize rd,rs1
c.or x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 432)

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0xc245e89d7ebc4168 # initialize rs2
li x12, 0xde33a213596867c7 # initialize rd,rs1
c.or x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 440)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xa86128b024c7e090 # initialize rs2
li x14, 0xaea61a32ce4326b0 # initialize rd,rs1
c.or x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 448)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x8ce291dd4da4bcb2 # initialize rs2
li x11, 0x3e9f2d7c5c36dea4 # initialize rd,rs1
c.or x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 456)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x75c3aa8544820e8c # initialize rs2
li x13, 0xf70daa3d745d661f # initialize rd,rs1
c.or x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xde6312a48cfaa3a3 # initialize rs2
li x8, 0x4848d4e2d1f69c2a # initialize rd,rs1
c.or x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 472)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x1617a3a8ed91768e # initialize rs2
li x14, 0x9e517eed601fba4c # initialize rd,rs1
c.or x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xedcb2c624b28dac9 # initialize rs2
li x8, 0x02c1089e966b6592 # initialize rd,rs1
c.or x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 488)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x84c9167c42eec905 # initialize rs2
li x8, 0xe18bb2742e405ba1 # initialize rd,rs1
c.or x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x65ba5da9dffe6e6c # initialize rs2
li x8, 0x5e34ea9415266884 # initialize rd,rs1
c.or x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 504)

# Testcase cp_rd (Test destination rd = x8)
li x10, 0xacd8fbfa7353fb7b # initialize rs2
li x8, 0x164b5430d90e2ef0 # initialize rd,rs1
c.or x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0xa68fe2cab1d2df0d # initialize rs2
li x9, 0xfe0edad06cd730d6 # initialize rd,rs1
c.or x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cp_rd (Test destination rd = x10)
li x11, 0xfa6f08dfdd464467 # initialize rs2
li x10, 0x83e4a15b6ceae413 # initialize rd,rs1
c.or x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0xc0ddf21bae9b4083 # initialize rs2
li x11, 0x52fee1135b40a168 # initialize rd,rs1
c.or x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cp_rd (Test destination rd = x12)
li x11, 0x686910762a094a69 # initialize rs2
li x12, 0x26ce5dfe048c5868 # initialize rd,rs1
c.or x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_rd (Test destination rd = x13)
li x15, 0xbbf8e77b13633cda # initialize rs2
li x13, 0x0d96d14bcafb6514 # initialize rd,rs1
c.or x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cp_rd (Test destination rd = x14)
li x11, 0x79de14e2af1bf51f # initialize rs2
li x14, 0xfd33fe2b364777f7 # initialize rd,rs1
c.or x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0x69b328bf8139f7af # initialize rs2
li x15, 0xc4ecc343f6940e0c # initialize rd,rs1
c.or x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 568)

#.EQU SIGSIZE,576


// ******************
// Tests from: WALLY-COV-c.lw.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x15, 0xd0ca87ba7aa042e4 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -68 # sub immediate from rs1 to counter offset
c.sw x15, 68(x8) # store value to put something in memory
c.lw x8, 68(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x13, 0x5b4e7dd0447ee6d6 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -84 # sub immediate from rs1 to counter offset
c.sw x13, 84(x9) # store value to put something in memory
c.lw x9, 84(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x14, 0x1fd037699d8c6bd2 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -92 # sub immediate from rs1 to counter offset
c.sw x14, 92(x10) # store value to put something in memory
c.lw x10, 92(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x14, 0xa62dfdd74daaa81d # initialize rs2
la x11, scratch # base address 
addi x11, x11, -44 # sub immediate from rs1 to counter offset
c.sw x14, 44(x11) # store value to put something in memory
c.lw x11, 44(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x9, 0x859211e96430b991 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -28 # sub immediate from rs1 to counter offset
c.sw x9, 28(x12) # store value to put something in memory
c.lw x12, 28(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x15, 0x26a9b5fe07fc58fd # initialize rs2
la x13, scratch # base address 
addi x13, x13, -56 # sub immediate from rs1 to counter offset
c.sw x15, 56(x13) # store value to put something in memory
c.lw x13, 56(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x12, 0x9b1d6fe991d937e3 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -56 # sub immediate from rs1 to counter offset
c.sw x12, 56(x14) # store value to put something in memory
c.lw x14, 56(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x11, 0x9dcbcb536bb236ec # initialize rs2
la x15, scratch # base address 
addi x15, x15, -120 # sub immediate from rs1 to counter offset
c.sw x11, 120(x15) # store value to put something in memory
c.lw x15, 120(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0xc346229951df206f # initialize rs2
la x8, scratch # base address 
addi x8, x8, -96 # sub immediate from rs1 to counter offset
c.sw x10, 96(x8) # store value to put something in memory
c.lw x15, 96(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x7459eb462f2ad2e5 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -120 # sub immediate from rs1 to counter offset
c.sw x14, 120(x9) # store value to put something in memory
c.lw x12, 120(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x11, 0xdaf2fdc35ca0726a # initialize rs2
la x10, scratch # base address 
addi x10, x10, -56 # sub immediate from rs1 to counter offset
c.sw x11, 56(x10) # store value to put something in memory
c.lw x8, 56(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x14, 0x08c4b68eab54b9e1 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -88 # sub immediate from rs1 to counter offset
c.sw x14, 88(x11) # store value to put something in memory
c.lw x12, 88(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0xb741789acb69d9a3 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -92 # sub immediate from rs1 to counter offset
c.sw x15, 92(x12) # store value to put something in memory
c.lw x11, 92(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0x43028b5d7f8574d7 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -12 # sub immediate from rs1 to counter offset
c.sw x10, 12(x13) # store value to put something in memory
c.lw x14, 12(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0xd000d8aadee3fdc4 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -84 # sub immediate from rs1 to counter offset
c.sw x13, 84(x14) # store value to put something in memory
c.lw x10, 84(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x9, 0x381358fff287d11c # initialize rs2
la x15, scratch # base address 
addi x15, x15, -108 # sub immediate from rs1 to counter offset
c.sw x9, 108(x15) # store value to put something in memory
c.lw x10, 108(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rd (Test destination rd = x8)
li x15, 0x416d9ce304d5fab5 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -92 # sub immediate from rs1 to counter offset
c.sw x15, 92(x8) # store value to put something in memory
c.lw x8, 92(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0xf73b5e3946719070 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -92 # sub immediate from rs1 to counter offset
c.sw x15, 92(x12) # store value to put something in memory
c.lw x9, 92(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rd (Test destination rd = x10)
li x8, 0x02fd5886f773fe85 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -56 # sub immediate from rs1 to counter offset
c.sw x8, 56(x12) # store value to put something in memory
c.lw x10, 56(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x6041a50a268afd4d # initialize rs2
la x14, scratch # base address 
addi x14, x14, -16 # sub immediate from rs1 to counter offset
c.sw x11, 16(x14) # store value to put something in memory
c.lw x11, 16(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cp_rd (Test destination rd = x12)
li x14, 0x820a120f871f5a26 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -40 # sub immediate from rs1 to counter offset
c.sw x14, 40(x12) # store value to put something in memory
c.lw x12, 40(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0xc5b831a554d3d5a7 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -112 # sub immediate from rs1 to counter offset
c.sw x10, 112(x8) # store value to put something in memory
c.lw x13, 112(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x03dc3c73b324674f # initialize rs2
la x8, scratch # base address 
addi x8, x8, -12 # sub immediate from rs1 to counter offset
c.sw x14, 12(x8) # store value to put something in memory
c.lw x14, 12(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rd (Test destination rd = x15)
li x14, 0x6d0c5f94ad2446b5 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -68 # sub immediate from rs1 to counter offset
c.sw x14, 68(x8) # store value to put something in memory
c.lw x15, 68(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_imm_mul
li x8, 0x3a7d5799265fda75 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x9) # store value to put something in memory
c.lw x14, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_imm_mul
li x9, 0x461d5d355b861e8e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -4 # sub immediate from rs1 to counter offset
c.sw x9, 4(x11) # store value to put something in memory
c.lw x13, 4(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 200)

# Testcase cp_imm_mul
li x8, 0x3680c03fe7b682f1 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -8 # sub immediate from rs1 to counter offset
c.sw x8, 8(x15) # store value to put something in memory
c.lw x11, 8(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 208)

# Testcase cp_imm_mul
li x9, 0x8db016c75c0ac93a # initialize rs2
la x8, scratch # base address 
addi x8, x8, -12 # sub immediate from rs1 to counter offset
c.sw x9, 12(x8) # store value to put something in memory
c.lw x12, 12(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 216)

# Testcase cp_imm_mul
li x10, 0xdbbeb47c33b01b88 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -16 # sub immediate from rs1 to counter offset
c.sw x10, 16(x11) # store value to put something in memory
c.lw x15, 16(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 224)

# Testcase cp_imm_mul
li x10, 0x4b3621147c797c6e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -20 # sub immediate from rs1 to counter offset
c.sw x10, 20(x11) # store value to put something in memory
c.lw x9, 20(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 232)

# Testcase cp_imm_mul
li x14, 0x90c276efdff4cbf5 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -24 # sub immediate from rs1 to counter offset
c.sw x14, 24(x11) # store value to put something in memory
c.lw x10, 24(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cp_imm_mul
li x11, 0xc66bb9418ec636ac # initialize rs2
la x13, scratch # base address 
addi x13, x13, -28 # sub immediate from rs1 to counter offset
c.sw x11, 28(x13) # store value to put something in memory
c.lw x9, 28(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 248)

# Testcase cp_imm_mul
li x12, 0xfdf7f788760e3a29 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -32 # sub immediate from rs1 to counter offset
c.sw x12, 32(x14) # store value to put something in memory
c.lw x10, 32(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 256)

# Testcase cp_imm_mul
li x9, 0xaa3cfa541cfc48fb # initialize rs2
la x13, scratch # base address 
addi x13, x13, -36 # sub immediate from rs1 to counter offset
c.sw x9, 36(x13) # store value to put something in memory
c.lw x14, 36(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 264)

# Testcase cp_imm_mul
li x9, 0x744b247e4c43e18b # initialize rs2
la x14, scratch # base address 
addi x14, x14, -40 # sub immediate from rs1 to counter offset
c.sw x9, 40(x14) # store value to put something in memory
c.lw x10, 40(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 272)

# Testcase cp_imm_mul
li x11, 0x324d4bbc1bece548 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -44 # sub immediate from rs1 to counter offset
c.sw x11, 44(x13) # store value to put something in memory
c.lw x8, 44(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 280)

# Testcase cp_imm_mul
li x10, 0x6a6977ca50794778 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -48 # sub immediate from rs1 to counter offset
c.sw x10, 48(x14) # store value to put something in memory
c.lw x13, 48(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 288)

# Testcase cp_imm_mul
li x14, 0xb2b7b982edbb8e84 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -52 # sub immediate from rs1 to counter offset
c.sw x14, 52(x12) # store value to put something in memory
c.lw x13, 52(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 296)

# Testcase cp_imm_mul
li x9, 0xd8dbe2eff29b0dbc # initialize rs2
la x11, scratch # base address 
addi x11, x11, -56 # sub immediate from rs1 to counter offset
c.sw x9, 56(x11) # store value to put something in memory
c.lw x12, 56(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_imm_mul
li x14, 0x5811e0afe3a824d2 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -60 # sub immediate from rs1 to counter offset
c.sw x14, 60(x9) # store value to put something in memory
c.lw x11, 60(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 312)

# Testcase cp_imm_mul
li x10, 0x815d906ee28943b6 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -64 # sub immediate from rs1 to counter offset
c.sw x10, 64(x13) # store value to put something in memory
c.lw x12, 64(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 320)

# Testcase cp_imm_mul
li x11, 0xcddf94df8f287834 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -68 # sub immediate from rs1 to counter offset
c.sw x11, 68(x12) # store value to put something in memory
c.lw x14, 68(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cp_imm_mul
li x9, 0xe978a7027d229ed5 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -72 # sub immediate from rs1 to counter offset
c.sw x9, 72(x15) # store value to put something in memory
c.lw x14, 72(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 336)

# Testcase cp_imm_mul
li x12, 0x247dac6aaa19ec07 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -76 # sub immediate from rs1 to counter offset
c.sw x12, 76(x11) # store value to put something in memory
c.lw x8, 76(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 344)

# Testcase cp_imm_mul
li x13, 0x6281fa69ac96af10 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -80 # sub immediate from rs1 to counter offset
c.sw x13, 80(x12) # store value to put something in memory
c.lw x11, 80(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 352)

# Testcase cp_imm_mul
li x11, 0xa869e9b866a6ded9 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -84 # sub immediate from rs1 to counter offset
c.sw x11, 84(x9) # store value to put something in memory
c.lw x13, 84(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_imm_mul
li x14, 0x2c9c2641ad181a0c # initialize rs2
la x8, scratch # base address 
addi x8, x8, -88 # sub immediate from rs1 to counter offset
c.sw x14, 88(x8) # store value to put something in memory
c.lw x11, 88(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 368)

# Testcase cp_imm_mul
li x10, 0xf867c4c5d0523f22 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -92 # sub immediate from rs1 to counter offset
c.sw x10, 92(x15) # store value to put something in memory
c.lw x14, 92(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 376)

# Testcase cp_imm_mul
li x10, 0x01cd1bdaebf93b07 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -96 # sub immediate from rs1 to counter offset
c.sw x10, 96(x14) # store value to put something in memory
c.lw x9, 96(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 384)

# Testcase cp_imm_mul
li x15, 0xecb27fefd6b981ff # initialize rs2
la x10, scratch # base address 
addi x10, x10, -100 # sub immediate from rs1 to counter offset
c.sw x15, 100(x10) # store value to put something in memory
c.lw x8, 100(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 392)

# Testcase cp_imm_mul
li x8, 0xb608c7186d705d6c # initialize rs2
la x11, scratch # base address 
addi x11, x11, -104 # sub immediate from rs1 to counter offset
c.sw x8, 104(x11) # store value to put something in memory
c.lw x13, 104(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cp_imm_mul
li x8, 0xdacf5bd834f402ab # initialize rs2
la x9, scratch # base address 
addi x9, x9, -108 # sub immediate from rs1 to counter offset
c.sw x8, 108(x9) # store value to put something in memory
c.lw x15, 108(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cp_imm_mul
li x8, 0x8d0ac7597573a64a # initialize rs2
la x14, scratch # base address 
addi x14, x14, -112 # sub immediate from rs1 to counter offset
c.sw x8, 112(x14) # store value to put something in memory
c.lw x10, 112(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 416)

# Testcase cp_imm_mul
li x13, 0xa8c5b4ca06a3a6a4 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -116 # sub immediate from rs1 to counter offset
c.sw x13, 116(x12) # store value to put something in memory
c.lw x11, 116(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 424)

# Testcase cp_imm_mul
li x11, 0x03307d2b9efa846c # initialize rs2
la x13, scratch # base address 
addi x13, x13, -120 # sub immediate from rs1 to counter offset
c.sw x11, 120(x13) # store value to put something in memory
c.lw x9, 120(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cp_imm_mul
li x14, 0xc36d0263a0f7d2e3 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -124 # sub immediate from rs1 to counter offset
c.sw x14, 124(x8) # store value to put something in memory
c.lw x10, 124(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 440)

#.EQU SIGSIZE,448


// ******************
// Tests from: WALLY-COV-c.beqz.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0x0000000000000000 # initialize rs1
c.beqz x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0x0000000000000001 # initialize rs1
c.beqz x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x0000000000000002 # initialize rs1
c.beqz x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x9, 0x8000000000000000 # initialize rs1
c.beqz x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs1
c.beqz x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rs1
c.beqz x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x9, 0x7ffffffffffffffe # initialize rs1
c.beqz x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x11, 0xffffffffffffffff # initialize rs1
c.beqz x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
c.beqz x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x8, 0x5bbc887763ae86f2 # initialize rs1
c.beqz x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.beqz x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x15, 0x5555555555555555 # initialize rs1
c.beqz x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x10, 0x00000000ffffffff # initialize rs1
c.beqz x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x11, 0x00000000fffffffe # initialize rs1
c.beqz x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x9, 0x0000000100000000 # initialize rs1
c.beqz x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x8, 0x0000000100000001 # initialize rs1
c.beqz x8, 1f # perform operation
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
li x8, 0xc179d0e066421ba9 # initialize rs1
c.beqz x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x1dc706b249ea7410 # initialize rs1
c.beqz x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xbeba1fb2afa3feb1 # initialize rs1
c.beqz x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x56aaf0856a797681 # initialize rs1
c.beqz x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x43f85ca9a75933f4 # initialize rs1
c.beqz x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xe8beb12a08354885 # initialize rs1
c.beqz x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xa3469c1b8967115c # initialize rs1
c.beqz x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x2c0a9a7fad285136 # initialize rs1
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
li sp, 0xca3ea34bd455149b # initialize some value to sp 
c.addi4spn x8, sp, 236 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rd (Test destination rd = x9)
li sp, 0x37c0d084a0dbda4c # initialize some value to sp 
c.addi4spn x9, sp, 144 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cp_rd (Test destination rd = x10)
li sp, 0xc257383031129188 # initialize some value to sp 
c.addi4spn x10, sp, 376 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cp_rd (Test destination rd = x11)
li sp, 0x3d00d399431b68eb # initialize some value to sp 
c.addi4spn x11, sp, 120 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cp_rd (Test destination rd = x12)
li sp, 0x232dfb690d515afd # initialize some value to sp 
c.addi4spn x12, sp, 252 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cp_rd (Test destination rd = x13)
li sp, 0xc8a96449e65c85af # initialize some value to sp 
c.addi4spn x13, sp, 816 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rd (Test destination rd = x14)
li sp, 0x2ad93134d31fea68 # initialize some value to sp 
c.addi4spn x14, sp, 568 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cp_rd (Test destination rd = x15)
li sp, 0x11e685d5a2050714 # initialize some value to sp 
c.addi4spn x15, sp, 96 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_imm_mul
li sp, 0xa41577fc33cd5c3f # initialize some value to sp 
c.addi4spn x8, sp, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_imm_mul
li sp, 0xcd68da7a2177a39b # initialize some value to sp 
c.addi4spn x11, sp, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cp_imm_mul
li sp, 0x47a7380461ba0c70 # initialize some value to sp 
c.addi4spn x10, sp, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_imm_mul
li sp, 0xf88299b3aee11f40 # initialize some value to sp 
c.addi4spn x13, sp, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_imm_mul
li sp, 0x3dff78ea2bcd455f # initialize some value to sp 
c.addi4spn x13, sp, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_imm_mul
li sp, 0x26312a46ed02f0d8 # initialize some value to sp 
c.addi4spn x11, sp, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 104)

# Testcase cp_imm_mul
li sp, 0x21755bbeb22e564f # initialize some value to sp 
c.addi4spn x9, sp, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cp_imm_mul
li sp, 0x547c2dde23c774b3 # initialize some value to sp 
c.addi4spn x14, sp, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_imm_mul
li sp, 0xf2e48331ed8a09a2 # initialize some value to sp 
c.addi4spn x11, sp, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 128)

# Testcase cp_imm_mul
li sp, 0x6d3356e88f2fb192 # initialize some value to sp 
c.addi4spn x14, sp, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_imm_mul
li sp, 0xfe6ced0246c5ae88 # initialize some value to sp 
c.addi4spn x14, sp, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cp_imm_mul
li sp, 0xc9aa7b5ee3c85272 # initialize some value to sp 
c.addi4spn x10, sp, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 152)

# Testcase cp_imm_mul
li sp, 0x096e1f8746e0e88b # initialize some value to sp 
c.addi4spn x13, sp, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 160)

# Testcase cp_imm_mul
li sp, 0x3e92bee548a14d11 # initialize some value to sp 
c.addi4spn x13, sp, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_imm_mul
li sp, 0xa3d535b3b971b958 # initialize some value to sp 
c.addi4spn x13, sp, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_imm_mul
li sp, 0xc122a9d1791c56b7 # initialize some value to sp 
c.addi4spn x12, sp, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 184)

# Testcase cp_imm_mul
li sp, 0x628d33b6e8402dc0 # initialize some value to sp 
c.addi4spn x14, sp, 68 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_imm_mul
li sp, 0x811403ff64981df1 # initialize some value to sp 
c.addi4spn x11, sp, 72 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cp_imm_mul
li sp, 0x14743ff1aad8afff # initialize some value to sp 
c.addi4spn x11, sp, 76 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 208)

# Testcase cp_imm_mul
li sp, 0xc1e68568ecd1f065 # initialize some value to sp 
c.addi4spn x8, sp, 80 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cp_imm_mul
li sp, 0xe9b0c74b4f4d14ed # initialize some value to sp 
c.addi4spn x8, sp, 84 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_imm_mul
li sp, 0x17432676380b7672 # initialize some value to sp 
c.addi4spn x8, sp, 88 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cp_imm_mul
li sp, 0xd51edc3008f8c164 # initialize some value to sp 
c.addi4spn x12, sp, 92 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_imm_mul
li sp, 0x1c0316ad001dd697 # initialize some value to sp 
c.addi4spn x8, sp, 96 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 248)

# Testcase cp_imm_mul
li sp, 0x48bb97a51abd173a # initialize some value to sp 
c.addi4spn x12, sp, 100 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 256)

# Testcase cp_imm_mul
li sp, 0xf6b7222435218092 # initialize some value to sp 
c.addi4spn x12, sp, 104 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 264)

# Testcase cp_imm_mul
li sp, 0xfa75abf1c8fbc87c # initialize some value to sp 
c.addi4spn x10, sp, 108 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 272)

# Testcase cp_imm_mul
li sp, 0x212f78addd9fea5d # initialize some value to sp 
c.addi4spn x14, sp, 112 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 280)

# Testcase cp_imm_mul
li sp, 0x522bb3abb10f8186 # initialize some value to sp 
c.addi4spn x14, sp, 116 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 288)

# Testcase cp_imm_mul
li sp, 0xfb1f5e723824c0bf # initialize some value to sp 
c.addi4spn x11, sp, 120 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cp_imm_mul
li sp, 0xd54c9020ee5d3325 # initialize some value to sp 
c.addi4spn x10, sp, 124 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 304)

# Testcase cp_imm_mul
li sp, 0xa5ee3f0cf7135971 # initialize some value to sp 
c.addi4spn x13, sp, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 312)

# Testcase cp_imm_mul
li sp, 0xa2c48c54f9f54b58 # initialize some value to sp 
c.addi4spn x13, sp, 132 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 320)

# Testcase cp_imm_mul
li sp, 0x251128c35eb0793f # initialize some value to sp 
c.addi4spn x13, sp, 136 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 328)

# Testcase cp_imm_mul
li sp, 0x8d2c4e214936c18d # initialize some value to sp 
c.addi4spn x11, sp, 140 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cp_imm_mul
li sp, 0x253bc3de183ca2a1 # initialize some value to sp 
c.addi4spn x14, sp, 144 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 344)

# Testcase cp_imm_mul
li sp, 0xb2a9f58b2606cb8a # initialize some value to sp 
c.addi4spn x15, sp, 148 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 352)

# Testcase cp_imm_mul
li sp, 0x8a0aba47336a4566 # initialize some value to sp 
c.addi4spn x8, sp, 152 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 360)

# Testcase cp_imm_mul
li sp, 0x2ac353bf0cc5d0ea # initialize some value to sp 
c.addi4spn x14, sp, 156 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_imm_mul
li sp, 0xe83fa9ac38f880c8 # initialize some value to sp 
c.addi4spn x8, sp, 160 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 376)

# Testcase cp_imm_mul
li sp, 0xac1be4cd7e19bfac # initialize some value to sp 
c.addi4spn x11, sp, 164 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 384)

# Testcase cp_imm_mul
li sp, 0x1631ceefeb53ffc2 # initialize some value to sp 
c.addi4spn x14, sp, 168 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 392)

# Testcase cp_imm_mul
li sp, 0xfafbdbb71023f00b # initialize some value to sp 
c.addi4spn x10, sp, 172 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 400)

# Testcase cp_imm_mul
li sp, 0xd7838481ef52e0e6 # initialize some value to sp 
c.addi4spn x13, sp, 176 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cp_imm_mul
li sp, 0x29cb38aae6f9f5f1 # initialize some value to sp 
c.addi4spn x9, sp, 180 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cp_imm_mul
li sp, 0x6c43340c59aa299e # initialize some value to sp 
c.addi4spn x15, sp, 184 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 424)

# Testcase cp_imm_mul
li sp, 0x770f0bd56c040b6d # initialize some value to sp 
c.addi4spn x9, sp, 188 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cp_imm_mul
li sp, 0xfaeeba8e581f5ae2 # initialize some value to sp 
c.addi4spn x11, sp, 192 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 440)

# Testcase cp_imm_mul
li sp, 0xb58a63b0eec3ac5f # initialize some value to sp 
c.addi4spn x14, sp, 196 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 448)

# Testcase cp_imm_mul
li sp, 0xa0ed90d187018a7b # initialize some value to sp 
c.addi4spn x10, sp, 200 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cp_imm_mul
li sp, 0xa8028915b8d286b7 # initialize some value to sp 
c.addi4spn x13, sp, 204 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cp_imm_mul
li sp, 0xf09ef6e98d8b6e17 # initialize some value to sp 
c.addi4spn x10, sp, 208 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cp_imm_mul
li sp, 0x1e1b3be633340bcf # initialize some value to sp 
c.addi4spn x12, sp, 212 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 480)

# Testcase cp_imm_mul
li sp, 0x0d25e484e1ad3f1f # initialize some value to sp 
c.addi4spn x13, sp, 216 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 488)

# Testcase cp_imm_mul
li sp, 0xce2f296f5eb7933c # initialize some value to sp 
c.addi4spn x10, sp, 220 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 496)

# Testcase cp_imm_mul
li sp, 0xcdff9557da54f24d # initialize some value to sp 
c.addi4spn x10, sp, 224 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 504)

# Testcase cp_imm_mul
li sp, 0x903acfdeb2f193a5 # initialize some value to sp 
c.addi4spn x15, sp, 228 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 512)

# Testcase cp_imm_mul
li sp, 0xe2becca6ac867e61 # initialize some value to sp 
c.addi4spn x10, sp, 232 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 520)

# Testcase cp_imm_mul
li sp, 0x6e12f376eecdaf9c # initialize some value to sp 
c.addi4spn x15, sp, 236 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 528)

# Testcase cp_imm_mul
li sp, 0xe6bbb591a91c55aa # initialize some value to sp 
c.addi4spn x15, sp, 240 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 536)

# Testcase cp_imm_mul
li sp, 0xe206a9d619332560 # initialize some value to sp 
c.addi4spn x15, sp, 244 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 544)

# Testcase cp_imm_mul
li sp, 0xe70aca640af06980 # initialize some value to sp 
c.addi4spn x10, sp, 248 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 552)

# Testcase cp_imm_mul
li sp, 0x6385ce4da6b74384 # initialize some value to sp 
c.addi4spn x13, sp, 252 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 560)

# Testcase cp_imm_mul
li sp, 0x90f84de384e9a268 # initialize some value to sp 
c.addi4spn x10, sp, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 568)

# Testcase cp_imm_mul
li sp, 0xd68581f84c20a4ef # initialize some value to sp 
c.addi4spn x8, sp, 260 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_imm_mul
li sp, 0x80308e5256ed1d27 # initialize some value to sp 
c.addi4spn x12, sp, 264 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 584)

# Testcase cp_imm_mul
li sp, 0x9840b3956cf4ebc4 # initialize some value to sp 
c.addi4spn x12, sp, 268 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 592)

# Testcase cp_imm_mul
li sp, 0xd74b06c33d6a7993 # initialize some value to sp 
c.addi4spn x10, sp, 272 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 600)

# Testcase cp_imm_mul
li sp, 0x2c62d8a1fe6b7f09 # initialize some value to sp 
c.addi4spn x10, sp, 276 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 608)

# Testcase cp_imm_mul
li sp, 0xab19a9c50fdd1c28 # initialize some value to sp 
c.addi4spn x9, sp, 280 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 616)

# Testcase cp_imm_mul
li sp, 0x26b209567f1288af # initialize some value to sp 
c.addi4spn x8, sp, 284 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 624)

# Testcase cp_imm_mul
li sp, 0xf2cb7c2fafa1ce02 # initialize some value to sp 
c.addi4spn x15, sp, 288 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_imm_mul
li sp, 0x0acd32d549d332cd # initialize some value to sp 
c.addi4spn x13, sp, 292 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 640)

# Testcase cp_imm_mul
li sp, 0x8da19f8b497809cf # initialize some value to sp 
c.addi4spn x8, sp, 296 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 648)

# Testcase cp_imm_mul
li sp, 0x871a710d644e560c # initialize some value to sp 
c.addi4spn x8, sp, 300 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 656)

# Testcase cp_imm_mul
li sp, 0xa94911edf1238c55 # initialize some value to sp 
c.addi4spn x8, sp, 304 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 664)

# Testcase cp_imm_mul
li sp, 0x64c61e11e9b1d414 # initialize some value to sp 
c.addi4spn x12, sp, 308 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 672)

# Testcase cp_imm_mul
li sp, 0x861cee63418423c1 # initialize some value to sp 
c.addi4spn x11, sp, 312 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 680)

# Testcase cp_imm_mul
li sp, 0xce17ac0cfb450a08 # initialize some value to sp 
c.addi4spn x10, sp, 316 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 688)

# Testcase cp_imm_mul
li sp, 0xa83986199d072b1d # initialize some value to sp 
c.addi4spn x12, sp, 320 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 696)

# Testcase cp_imm_mul
li sp, 0x6e7df16575c1a373 # initialize some value to sp 
c.addi4spn x9, sp, 324 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 704)

# Testcase cp_imm_mul
li sp, 0x56503bb42f93e68b # initialize some value to sp 
c.addi4spn x12, sp, 328 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 712)

# Testcase cp_imm_mul
li sp, 0xae376bea4ee97c69 # initialize some value to sp 
c.addi4spn x12, sp, 332 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 720)

# Testcase cp_imm_mul
li sp, 0xd76df16be0b1cf6a # initialize some value to sp 
c.addi4spn x15, sp, 336 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 728)

# Testcase cp_imm_mul
li sp, 0xef281ffbdd1e2835 # initialize some value to sp 
c.addi4spn x10, sp, 340 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 736)

# Testcase cp_imm_mul
li sp, 0xacb85c1109d596ab # initialize some value to sp 
c.addi4spn x11, sp, 344 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 744)

# Testcase cp_imm_mul
li sp, 0xb359d81d47c4b021 # initialize some value to sp 
c.addi4spn x14, sp, 348 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cp_imm_mul
li sp, 0xe81374dc7ca6b234 # initialize some value to sp 
c.addi4spn x10, sp, 352 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 760)

# Testcase cp_imm_mul
li sp, 0xbd3390ea765a721c # initialize some value to sp 
c.addi4spn x8, sp, 356 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 768)

# Testcase cp_imm_mul
li sp, 0x442778c6e1a1d239 # initialize some value to sp 
c.addi4spn x14, sp, 360 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 776)

# Testcase cp_imm_mul
li sp, 0xb2fa032a4af5fd31 # initialize some value to sp 
c.addi4spn x9, sp, 364 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 784)

# Testcase cp_imm_mul
li sp, 0x62936e992a4062e4 # initialize some value to sp 
c.addi4spn x10, sp, 368 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 792)

# Testcase cp_imm_mul
li sp, 0x320b10b76826b774 # initialize some value to sp 
c.addi4spn x11, sp, 372 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cp_imm_mul
li sp, 0x0a140371237d4cad # initialize some value to sp 
c.addi4spn x8, sp, 376 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 808)

# Testcase cp_imm_mul
li sp, 0xc7a7256c00425342 # initialize some value to sp 
c.addi4spn x12, sp, 380 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cp_imm_mul
li sp, 0x4da5dca4f9a02ac6 # initialize some value to sp 
c.addi4spn x12, sp, 384 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cp_imm_mul
li sp, 0xa642833a214fee2f # initialize some value to sp 
c.addi4spn x9, sp, 388 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 832)

# Testcase cp_imm_mul
li sp, 0x185777940aee6788 # initialize some value to sp 
c.addi4spn x10, sp, 392 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 840)

# Testcase cp_imm_mul
li sp, 0xb5da72d7c5b0d996 # initialize some value to sp 
c.addi4spn x10, sp, 396 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 848)

# Testcase cp_imm_mul
li sp, 0x8b2ec8649daccf99 # initialize some value to sp 
c.addi4spn x12, sp, 400 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 856)

# Testcase cp_imm_mul
li sp, 0x4de796112a010880 # initialize some value to sp 
c.addi4spn x13, sp, 404 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 864)

# Testcase cp_imm_mul
li sp, 0xdbd3f9df331be277 # initialize some value to sp 
c.addi4spn x15, sp, 408 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 872)

# Testcase cp_imm_mul
li sp, 0xa84ec834679d8311 # initialize some value to sp 
c.addi4spn x8, sp, 412 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 880)

# Testcase cp_imm_mul
li sp, 0x7143a2c12dc292da # initialize some value to sp 
c.addi4spn x8, sp, 416 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 888)

# Testcase cp_imm_mul
li sp, 0xab046c7cc528afcd # initialize some value to sp 
c.addi4spn x11, sp, 420 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 896)

# Testcase cp_imm_mul
li sp, 0xc84ebb86ce943458 # initialize some value to sp 
c.addi4spn x10, sp, 424 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 904)

# Testcase cp_imm_mul
li sp, 0xde19bf058dc22886 # initialize some value to sp 
c.addi4spn x8, sp, 428 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 912)

# Testcase cp_imm_mul
li sp, 0x0644f96341f25cc5 # initialize some value to sp 
c.addi4spn x12, sp, 432 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 920)

# Testcase cp_imm_mul
li sp, 0x211b1637ce3edfdb # initialize some value to sp 
c.addi4spn x9, sp, 436 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cp_imm_mul
li sp, 0x4395cdca994aeef5 # initialize some value to sp 
c.addi4spn x11, sp, 440 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 936)

# Testcase cp_imm_mul
li sp, 0x5af4902d6dea5359 # initialize some value to sp 
c.addi4spn x15, sp, 444 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 944)

# Testcase cp_imm_mul
li sp, 0x8f50fd1c94e17f05 # initialize some value to sp 
c.addi4spn x13, sp, 448 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 952)

# Testcase cp_imm_mul
li sp, 0x6981bd0c4463ea9c # initialize some value to sp 
c.addi4spn x14, sp, 452 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 960)

# Testcase cp_imm_mul
li sp, 0xc278dead14b536b4 # initialize some value to sp 
c.addi4spn x15, sp, 456 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 968)

# Testcase cp_imm_mul
li sp, 0xedc74c212d00d875 # initialize some value to sp 
c.addi4spn x12, sp, 460 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 976)

# Testcase cp_imm_mul
li sp, 0x2163e9c5a775db86 # initialize some value to sp 
c.addi4spn x8, sp, 464 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 984)

# Testcase cp_imm_mul
li sp, 0xb54877b916f5537a # initialize some value to sp 
c.addi4spn x8, sp, 468 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 992)

# Testcase cp_imm_mul
li sp, 0xd0b8c47dcae69fad # initialize some value to sp 
c.addi4spn x9, sp, 472 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cp_imm_mul
li sp, 0x4cf56662e6b28286 # initialize some value to sp 
c.addi4spn x13, sp, 476 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1008)

# Testcase cp_imm_mul
li sp, 0xf4f1ece5b6c52475 # initialize some value to sp 
c.addi4spn x9, sp, 480 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1016)

# Testcase cp_imm_mul
li sp, 0x88b0507e839aea5b # initialize some value to sp 
c.addi4spn x14, sp, 484 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1024)

# Testcase cp_imm_mul
li sp, 0xe9e04695205810f6 # initialize some value to sp 
c.addi4spn x10, sp, 488 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1032)

# Testcase cp_imm_mul
li sp, 0xa9d699f551d8782d # initialize some value to sp 
c.addi4spn x14, sp, 492 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1040)

# Testcase cp_imm_mul
li sp, 0x34111482c3410839 # initialize some value to sp 
c.addi4spn x15, sp, 496 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1048)

# Testcase cp_imm_mul
li sp, 0x9b0a9a40c1e2174a # initialize some value to sp 
c.addi4spn x12, sp, 500 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1056)

# Testcase cp_imm_mul
li sp, 0x810eb5154c47a342 # initialize some value to sp 
c.addi4spn x15, sp, 504 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1064)

# Testcase cp_imm_mul
li sp, 0xec1b58bb60d3b0b8 # initialize some value to sp 
c.addi4spn x9, sp, 508 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1072)

# Testcase cp_imm_mul
li sp, 0xc6a78bf9c1044c64 # initialize some value to sp 
c.addi4spn x15, sp, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1080)

# Testcase cp_imm_mul
li sp, 0xed50eb130858ef18 # initialize some value to sp 
c.addi4spn x11, sp, 516 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1088)

# Testcase cp_imm_mul
li sp, 0xd95d220a100f6331 # initialize some value to sp 
c.addi4spn x9, sp, 520 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1096)

# Testcase cp_imm_mul
li sp, 0x90a1938f3ff8ce8d # initialize some value to sp 
c.addi4spn x12, sp, 524 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1104)

# Testcase cp_imm_mul
li sp, 0xe0deee50f983ed68 # initialize some value to sp 
c.addi4spn x8, sp, 528 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1112)

# Testcase cp_imm_mul
li sp, 0xae9fb6647ab73a77 # initialize some value to sp 
c.addi4spn x11, sp, 532 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1120)

# Testcase cp_imm_mul
li sp, 0x41ec62aac5c2e5ce # initialize some value to sp 
c.addi4spn x15, sp, 536 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1128)

# Testcase cp_imm_mul
li sp, 0xd6e582171c2f09fe # initialize some value to sp 
c.addi4spn x14, sp, 540 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1136)

# Testcase cp_imm_mul
li sp, 0xa4a577692eab5093 # initialize some value to sp 
c.addi4spn x12, sp, 544 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cp_imm_mul
li sp, 0xc6edd6a189ce7741 # initialize some value to sp 
c.addi4spn x15, sp, 548 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1152)

# Testcase cp_imm_mul
li sp, 0xbdab47523d5a970b # initialize some value to sp 
c.addi4spn x15, sp, 552 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cp_imm_mul
li sp, 0xb69a21cf6ad4cbbd # initialize some value to sp 
c.addi4spn x8, sp, 556 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1168)

# Testcase cp_imm_mul
li sp, 0x3028fb32fbda4a88 # initialize some value to sp 
c.addi4spn x12, sp, 560 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1176)

# Testcase cp_imm_mul
li sp, 0x85c83de41d629518 # initialize some value to sp 
c.addi4spn x11, sp, 564 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1184)

# Testcase cp_imm_mul
li sp, 0x7fe23a5c679e330c # initialize some value to sp 
c.addi4spn x12, sp, 568 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1192)

# Testcase cp_imm_mul
li sp, 0xb994687cceda1af8 # initialize some value to sp 
c.addi4spn x12, sp, 572 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1200)

# Testcase cp_imm_mul
li sp, 0xf4e9404295b3eedb # initialize some value to sp 
c.addi4spn x12, sp, 576 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1208)

# Testcase cp_imm_mul
li sp, 0x6a7d21c4b065e677 # initialize some value to sp 
c.addi4spn x9, sp, 580 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1216)

# Testcase cp_imm_mul
li sp, 0x686caf1d28028c43 # initialize some value to sp 
c.addi4spn x11, sp, 584 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1224)

# Testcase cp_imm_mul
li sp, 0x1788b27b50660ddf # initialize some value to sp 
c.addi4spn x10, sp, 588 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1232)

# Testcase cp_imm_mul
li sp, 0x8721706e52293bd1 # initialize some value to sp 
c.addi4spn x14, sp, 592 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cp_imm_mul
li sp, 0x5e68e8c05d347153 # initialize some value to sp 
c.addi4spn x10, sp, 596 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1248)

# Testcase cp_imm_mul
li sp, 0xf67ad0331d87cf57 # initialize some value to sp 
c.addi4spn x9, sp, 600 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1256)

# Testcase cp_imm_mul
li sp, 0xbcfc4000c53ad715 # initialize some value to sp 
c.addi4spn x15, sp, 604 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1264)

# Testcase cp_imm_mul
li sp, 0x0621eaf25cdc8c57 # initialize some value to sp 
c.addi4spn x15, sp, 608 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1272)

# Testcase cp_imm_mul
li sp, 0x9eb5c17ddc59ba0f # initialize some value to sp 
c.addi4spn x11, sp, 612 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1280)

# Testcase cp_imm_mul
li sp, 0x88e73410743a17df # initialize some value to sp 
c.addi4spn x15, sp, 616 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1288)

# Testcase cp_imm_mul
li sp, 0x0172f0459729c4ea # initialize some value to sp 
c.addi4spn x8, sp, 620 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1296)

# Testcase cp_imm_mul
li sp, 0x25ca265d5d89514d # initialize some value to sp 
c.addi4spn x13, sp, 624 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1304)

# Testcase cp_imm_mul
li sp, 0x31c4c29eb6c8b3ae # initialize some value to sp 
c.addi4spn x14, sp, 628 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1312)

# Testcase cp_imm_mul
li sp, 0xbe6e70634ca73339 # initialize some value to sp 
c.addi4spn x10, sp, 632 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1320)

# Testcase cp_imm_mul
li sp, 0x54be57d70a5aa9c0 # initialize some value to sp 
c.addi4spn x15, sp, 636 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1328)

# Testcase cp_imm_mul
li sp, 0xea90ec6d2cddd913 # initialize some value to sp 
c.addi4spn x11, sp, 640 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1336)

# Testcase cp_imm_mul
li sp, 0xb70edc7653bff227 # initialize some value to sp 
c.addi4spn x8, sp, 644 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cp_imm_mul
li sp, 0x7082756ae525da1d # initialize some value to sp 
c.addi4spn x14, sp, 648 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1352)

# Testcase cp_imm_mul
li sp, 0xf9aaea420c6c8475 # initialize some value to sp 
c.addi4spn x9, sp, 652 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1360)

# Testcase cp_imm_mul
li sp, 0x3c30f2ad336c59d9 # initialize some value to sp 
c.addi4spn x14, sp, 656 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cp_imm_mul
li sp, 0x9c490bda422184d0 # initialize some value to sp 
c.addi4spn x9, sp, 660 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1376)

# Testcase cp_imm_mul
li sp, 0xee4e2c336767dd64 # initialize some value to sp 
c.addi4spn x8, sp, 664 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1384)

# Testcase cp_imm_mul
li sp, 0x069e799bf932dd92 # initialize some value to sp 
c.addi4spn x14, sp, 668 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1392)

# Testcase cp_imm_mul
li sp, 0xbfcdf1b999bb32a8 # initialize some value to sp 
c.addi4spn x14, sp, 672 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1400)

# Testcase cp_imm_mul
li sp, 0x6b7cf411e55fdd35 # initialize some value to sp 
c.addi4spn x9, sp, 676 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1408)

# Testcase cp_imm_mul
li sp, 0xda71edbd97b090fe # initialize some value to sp 
c.addi4spn x8, sp, 680 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1416)

# Testcase cp_imm_mul
li sp, 0x9b761eb8e79b07ca # initialize some value to sp 
c.addi4spn x14, sp, 684 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1424)

# Testcase cp_imm_mul
li sp, 0x282fb970c78407c7 # initialize some value to sp 
c.addi4spn x12, sp, 688 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1432)

# Testcase cp_imm_mul
li sp, 0x8f2228068b406152 # initialize some value to sp 
c.addi4spn x14, sp, 692 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1440)

# Testcase cp_imm_mul
li sp, 0x9e147445001df264 # initialize some value to sp 
c.addi4spn x15, sp, 696 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1448)

# Testcase cp_imm_mul
li sp, 0x38e7458c4b20c1af # initialize some value to sp 
c.addi4spn x10, sp, 700 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1456)

# Testcase cp_imm_mul
li sp, 0x188fc11c0c43a14f # initialize some value to sp 
c.addi4spn x15, sp, 704 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1464)

# Testcase cp_imm_mul
li sp, 0x8e5592a4237e5756 # initialize some value to sp 
c.addi4spn x13, sp, 708 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1472)

# Testcase cp_imm_mul
li sp, 0xafb9c1999e1dbf4c # initialize some value to sp 
c.addi4spn x8, sp, 712 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1480)

# Testcase cp_imm_mul
li sp, 0xcc0c474734f501ab # initialize some value to sp 
c.addi4spn x13, sp, 716 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1488)

# Testcase cp_imm_mul
li sp, 0xd8696a7a684ae2fa # initialize some value to sp 
c.addi4spn x14, sp, 720 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cp_imm_mul
li sp, 0x836a3bb19462e654 # initialize some value to sp 
c.addi4spn x15, sp, 724 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1504)

# Testcase cp_imm_mul
li sp, 0xf89e92273a224d75 # initialize some value to sp 
c.addi4spn x9, sp, 728 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1512)

# Testcase cp_imm_mul
li sp, 0xc670a6e84f1781f2 # initialize some value to sp 
c.addi4spn x15, sp, 732 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cp_imm_mul
li sp, 0x00e66ed0d44926ed # initialize some value to sp 
c.addi4spn x10, sp, 736 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1528)

# Testcase cp_imm_mul
li sp, 0x5de9421fd9713ba8 # initialize some value to sp 
c.addi4spn x15, sp, 740 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1536)

# Testcase cp_imm_mul
li sp, 0x05d17cba9645a341 # initialize some value to sp 
c.addi4spn x14, sp, 744 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1544)

# Testcase cp_imm_mul
li sp, 0x4a02a741e6d50d2e # initialize some value to sp 
c.addi4spn x9, sp, 748 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1552)

# Testcase cp_imm_mul
li sp, 0xc475f4d2ffd5358a # initialize some value to sp 
c.addi4spn x15, sp, 752 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1560)

# Testcase cp_imm_mul
li sp, 0x52f647ffa849e9b4 # initialize some value to sp 
c.addi4spn x11, sp, 756 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1568)

# Testcase cp_imm_mul
li sp, 0x6ed1d73a89d08d4e # initialize some value to sp 
c.addi4spn x10, sp, 760 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1576)

# Testcase cp_imm_mul
li sp, 0x8c98f63f7fca7cf5 # initialize some value to sp 
c.addi4spn x9, sp, 764 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1584)

# Testcase cp_imm_mul
li sp, 0x58548ec7228418c7 # initialize some value to sp 
c.addi4spn x10, sp, 768 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1592)

# Testcase cp_imm_mul
li sp, 0x7a93aef1e259f0e4 # initialize some value to sp 
c.addi4spn x8, sp, 772 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1600)

# Testcase cp_imm_mul
li sp, 0xbc8f5497ae95a6f0 # initialize some value to sp 
c.addi4spn x8, sp, 776 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1608)

# Testcase cp_imm_mul
li sp, 0xc270cd75972a29bb # initialize some value to sp 
c.addi4spn x15, sp, 780 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1616)

# Testcase cp_imm_mul
li sp, 0xb7749ee590cd3c3f # initialize some value to sp 
c.addi4spn x15, sp, 784 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1624)

# Testcase cp_imm_mul
li sp, 0xb2c8d325276472b9 # initialize some value to sp 
c.addi4spn x10, sp, 788 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1632)

# Testcase cp_imm_mul
li sp, 0x25067ae2475740da # initialize some value to sp 
c.addi4spn x11, sp, 792 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1640)

# Testcase cp_imm_mul
li sp, 0x089cdaac447dcd12 # initialize some value to sp 
c.addi4spn x8, sp, 796 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1648)

# Testcase cp_imm_mul
li sp, 0x67cf03308a23d83d # initialize some value to sp 
c.addi4spn x11, sp, 800 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1656)

# Testcase cp_imm_mul
li sp, 0xbde088aa395f538c # initialize some value to sp 
c.addi4spn x11, sp, 804 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1664)

# Testcase cp_imm_mul
li sp, 0x3c08f191e99238f0 # initialize some value to sp 
c.addi4spn x12, sp, 808 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1672)

# Testcase cp_imm_mul
li sp, 0xe58c8e507c56bba7 # initialize some value to sp 
c.addi4spn x10, sp, 812 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1680)

# Testcase cp_imm_mul
li sp, 0xb39d19fc82e27ac7 # initialize some value to sp 
c.addi4spn x14, sp, 816 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1688)

# Testcase cp_imm_mul
li sp, 0x42658667defd6d26 # initialize some value to sp 
c.addi4spn x15, sp, 820 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1696)

# Testcase cp_imm_mul
li sp, 0xa2425f98711d8844 # initialize some value to sp 
c.addi4spn x15, sp, 824 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1704)

# Testcase cp_imm_mul
li sp, 0x25f631aefaa38361 # initialize some value to sp 
c.addi4spn x10, sp, 828 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1712)

# Testcase cp_imm_mul
li sp, 0xdbba94e4ab71e89b # initialize some value to sp 
c.addi4spn x10, sp, 832 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1720)

# Testcase cp_imm_mul
li sp, 0x1c7ea6580fda073c # initialize some value to sp 
c.addi4spn x8, sp, 836 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1728)

# Testcase cp_imm_mul
li sp, 0xe459fde8ecfece65 # initialize some value to sp 
c.addi4spn x9, sp, 840 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1736)

# Testcase cp_imm_mul
li sp, 0x90cfc2d5d533b3dc # initialize some value to sp 
c.addi4spn x13, sp, 844 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1744)

# Testcase cp_imm_mul
li sp, 0x8b1a9d974cddb31d # initialize some value to sp 
c.addi4spn x10, sp, 848 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1752)

# Testcase cp_imm_mul
li sp, 0xa7cd8072149a1b16 # initialize some value to sp 
c.addi4spn x8, sp, 852 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1760)

# Testcase cp_imm_mul
li sp, 0x1576ebaaa58c4a65 # initialize some value to sp 
c.addi4spn x12, sp, 856 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1768)

# Testcase cp_imm_mul
li sp, 0x0a7b5e0d153ca42b # initialize some value to sp 
c.addi4spn x13, sp, 860 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1776)

# Testcase cp_imm_mul
li sp, 0x65fe75ae04b9b3eb # initialize some value to sp 
c.addi4spn x14, sp, 864 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1784)

# Testcase cp_imm_mul
li sp, 0xedd4e084e806bf53 # initialize some value to sp 
c.addi4spn x9, sp, 868 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_imm_mul
li sp, 0x2cb0f4a89bfde154 # initialize some value to sp 
c.addi4spn x9, sp, 872 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_imm_mul
li sp, 0x685301411c6df313 # initialize some value to sp 
c.addi4spn x13, sp, 876 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_imm_mul
li sp, 0xd769985442b0eb36 # initialize some value to sp 
c.addi4spn x10, sp, 880 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cp_imm_mul
li sp, 0x4b394092acaa57be # initialize some value to sp 
c.addi4spn x14, sp, 884 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cp_imm_mul
li sp, 0x2b8fe5a0e44d6c26 # initialize some value to sp 
c.addi4spn x13, sp, 888 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cp_imm_mul
li sp, 0xd6b2cbad6d7fb88d # initialize some value to sp 
c.addi4spn x12, sp, 892 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 40)

# Testcase cp_imm_mul
li sp, 0x98a02409be0539e4 # initialize some value to sp 
c.addi4spn x11, sp, 896 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 48)

# Testcase cp_imm_mul
li sp, 0xd24418f0d4345f4b # initialize some value to sp 
c.addi4spn x8, sp, 900 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_imm_mul
li sp, 0x4e860cdba3f6c329 # initialize some value to sp 
c.addi4spn x15, sp, 904 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_imm_mul
li sp, 0x7bca0fb4b4abe8a1 # initialize some value to sp 
c.addi4spn x14, sp, 908 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_imm_mul
li sp, 0x28162a6028dba82f # initialize some value to sp 
c.addi4spn x9, sp, 912 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_imm_mul
li sp, 0x3d03f4ab57284654 # initialize some value to sp 
c.addi4spn x8, sp, 916 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_imm_mul
li sp, 0x2844c11f18ad3851 # initialize some value to sp 
c.addi4spn x11, sp, 920 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_imm_mul
li sp, 0xdca003baab80cd0c # initialize some value to sp 
c.addi4spn x11, sp, 924 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 104)

# Testcase cp_imm_mul
li sp, 0x79fd4d79952a5fb0 # initialize some value to sp 
c.addi4spn x11, sp, 928 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cp_imm_mul
li sp, 0x48d90678d3da1507 # initialize some value to sp 
c.addi4spn x12, sp, 932 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cp_imm_mul
li sp, 0x6483cb327907c89d # initialize some value to sp 
c.addi4spn x14, sp, 936 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 128)

# Testcase cp_imm_mul
li sp, 0xa5bf2cc23e453a6c # initialize some value to sp 
c.addi4spn x10, sp, 940 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_imm_mul
li sp, 0x06c308e567d2d348 # initialize some value to sp 
c.addi4spn x11, sp, 944 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cp_imm_mul
li sp, 0x4686a866242b8bd5 # initialize some value to sp 
c.addi4spn x15, sp, 948 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_imm_mul
li sp, 0xca5ea22b286f7f6b # initialize some value to sp 
c.addi4spn x13, sp, 952 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 160)

# Testcase cp_imm_mul
li sp, 0xdc2bd3496eb01dd4 # initialize some value to sp 
c.addi4spn x8, sp, 956 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_imm_mul
li sp, 0x4e57a88be8ef08a3 # initialize some value to sp 
c.addi4spn x12, sp, 960 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_imm_mul
li sp, 0x85a888ecacd4bc04 # initialize some value to sp 
c.addi4spn x15, sp, 964 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_imm_mul
li sp, 0xe8337ea42aa9e753 # initialize some value to sp 
c.addi4spn x12, sp, 968 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 192)

# Testcase cp_imm_mul
li sp, 0x605fdc4c8b5827d1 # initialize some value to sp 
c.addi4spn x15, sp, 972 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_imm_mul
li sp, 0x22e06e79da541108 # initialize some value to sp 
c.addi4spn x12, sp, 976 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 208)

# Testcase cp_imm_mul
li sp, 0x65e6277f94e4b06f # initialize some value to sp 
c.addi4spn x11, sp, 980 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_imm_mul
li sp, 0x3e89630740e30273 # initialize some value to sp 
c.addi4spn x9, sp, 984 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 224)

# Testcase cp_imm_mul
li sp, 0xa58f5e6f4908f06d # initialize some value to sp 
c.addi4spn x14, sp, 988 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 232)

# Testcase cp_imm_mul
li sp, 0x287ef59a937d59d4 # initialize some value to sp 
c.addi4spn x13, sp, 992 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 240)

# Testcase cp_imm_mul
li sp, 0x458222b29e72aa7f # initialize some value to sp 
c.addi4spn x9, sp, 996 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 248)

# Testcase cp_imm_mul
li sp, 0x1a5ddb39e45c247a # initialize some value to sp 
c.addi4spn x14, sp, 1000 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 256)

# Testcase cp_imm_mul
li sp, 0x42ef24c0c30e9cea # initialize some value to sp 
c.addi4spn x10, sp, 1004 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 264)

# Testcase cp_imm_mul
li sp, 0x12228c4dd5034112 # initialize some value to sp 
c.addi4spn x14, sp, 1008 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cp_imm_mul
li sp, 0xc61dc95da000705d # initialize some value to sp 
c.addi4spn x14, sp, 1012 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 280)

# Testcase cp_imm_mul
li sp, 0xca080691d0ed5bc7 # initialize some value to sp 
c.addi4spn x9, sp, 1016 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 288)

# Testcase cp_imm_mul
li sp, 0x71341159758b2632 # initialize some value to sp 
c.addi4spn x14, sp, 1020 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 296)

#.EQU SIGSIZE,2104


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
li x0, 0x46079cbd44cb18e0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.swsp x0, 40(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x5984615f33c13b35 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.swsp x1, 216(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x12232868eb470d4c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.swsp x2, 96(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x49e53fd9530b461b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -200 # offset stack pointer from signature
c.swsp x3, 200(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa5a31ba85fd69ccd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.swsp x4, 144(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xff594c07c22a81b2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.swsp x5, 64(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe51aede44b177094 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.swsp x6, 152(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbb1c7fa46a2358c2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # offset stack pointer from signature
c.swsp x7, 44(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xd444aa3cd1fe266f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -20 # offset stack pointer from signature
c.swsp x8, 20(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x5290f41e9aa71bfc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.swsp x9, 216(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xf616ca57c4f7f51f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.swsp x10, 32(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x7dfd8bc736e14b5c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -212 # offset stack pointer from signature
c.swsp x11, 212(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x33e3f1b9556681b0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # offset stack pointer from signature
c.swsp x12, 68(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x89e779f4f04635b9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # offset stack pointer from signature
c.swsp x13, 252(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x65977be50eeae103 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.swsp x14, 176(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x1dbb3bb20400b75a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.swsp x15, 176(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x1053546a32ec82b8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -212 # offset stack pointer from signature
c.swsp x16, 212(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x328bf1f63531b6d4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.swsp x17, 224(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xecd93e47327094e8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # offset stack pointer from signature
c.swsp x18, 220(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x59698c4e7114fd74 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # offset stack pointer from signature
c.swsp x19, 136(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x0aaf64ded48e213d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -180 # offset stack pointer from signature
c.swsp x20, 180(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0xbd0c6a248cb8c907 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.swsp x21, 72(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x85a80b59b7452917 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.swsp x22, 240(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0xa9b2a7e7cb12fbc0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -36 # offset stack pointer from signature
c.swsp x23, 36(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x1456193ed66a5f28 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -172 # offset stack pointer from signature
c.swsp x24, 172(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x0e9a48e227599f12 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -52 # offset stack pointer from signature
c.swsp x25, 52(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0xf773df85e3369183 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # offset stack pointer from signature
c.swsp x26, 44(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x7998e06279e743f9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -148 # offset stack pointer from signature
c.swsp x27, 148(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xb521bf0fc6221dfb # initialize rs2
la sp, scratch # base address 
addi sp, sp, -244 # offset stack pointer from signature
c.swsp x28, 244(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xc111d9352754250e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # offset stack pointer from signature
c.swsp x29, 208(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x169fc097840cae0b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -180 # offset stack pointer from signature
c.swsp x30, 180(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x1be30475e16359b8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # offset stack pointer from signature
c.swsp x31, 44(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0x0000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -228 # offset stack pointer from signature
c.swsp x22, 228(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0x0000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -236 # offset stack pointer from signature
c.swsp x14, 236(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x20, 0x0000000000000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.swsp x20, 64(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x24, 0x8000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -188 # offset stack pointer from signature
c.swsp x24, 188(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x25, 0x8000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # offset stack pointer from signature
c.swsp x25, 84(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x5, 0x7fffffffffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.swsp x5, 152(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.swsp x17, 80(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # offset stack pointer from signature
c.swsp x9, 68(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # offset stack pointer from signature
c.swsp x26, 220(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x27, 0x5bbc887763ae86f2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # offset stack pointer from signature
c.swsp x27, 84(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.swsp x28, 32(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x25, 0x5555555555555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.swsp x25, 192(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.swsp x11, 80(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x12, 0x00000000fffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -108 # offset stack pointer from signature
c.swsp x12, 108(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x20, 0x0000000100000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -92 # offset stack pointer from signature
c.swsp x20, 92(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x18, 0x0000000100000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.swsp x18, 96(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x5e9d49fb584ef39c # initialize rs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.swsp x19, 0(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x8d2115c3100e9a77 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # offset stack pointer from signature
c.swsp x14, 4(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x825588f2e21db2f1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # offset stack pointer from signature
c.swsp x1, 8(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0xb29b7ad508f1ee53 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -12 # offset stack pointer from signature
c.swsp x7, 12(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x50d5a12537a2726d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # offset stack pointer from signature
c.swsp x1, 16(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x887a85ad91d8fea1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -20 # offset stack pointer from signature
c.swsp x1, 20(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0xa898dacc25653684 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -24 # offset stack pointer from signature
c.swsp x18, 24(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x81d0e558ddeb25c1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -28 # offset stack pointer from signature
c.swsp x12, 28(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xd41974587693fd88 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.swsp x8, 32(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x4daf39df17f0dc41 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -36 # offset stack pointer from signature
c.swsp x10, 36(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x5c2b707d1aaef612 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.swsp x27, 40(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0xd084e406df593f09 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # offset stack pointer from signature
c.swsp x27, 44(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x9e17df6a3a92f564 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # offset stack pointer from signature
c.swsp x17, 48(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x996dee6f8bf78c53 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -52 # offset stack pointer from signature
c.swsp x29, 52(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0xee70fb89a7f55807 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # offset stack pointer from signature
c.swsp x12, 56(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x64d42cace8489ea4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -60 # offset stack pointer from signature
c.swsp x8, 60(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x9487edaa78190573 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.swsp x7, 64(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x05d085b343696300 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # offset stack pointer from signature
c.swsp x20, 68(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x5f9c0192b870bc60 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.swsp x14, 72(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x1b4d49e88fb35ff3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -76 # offset stack pointer from signature
c.swsp x28, 76(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x599f71306e8cb999 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.swsp x28, 80(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0xc9a50d91c8761ab8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # offset stack pointer from signature
c.swsp x27, 84(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x546162b45f19ffa1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # offset stack pointer from signature
c.swsp x8, 88(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xc2d05e545324811b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -92 # offset stack pointer from signature
c.swsp x26, 92(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0xacf04e392aafd7d4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.swsp x28, 96(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x0a434428af2c8553 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -100 # offset stack pointer from signature
c.swsp x8, 100(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x8be6d2dc7c7ad8f9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -104 # offset stack pointer from signature
c.swsp x27, 104(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0x765a7d4b642d7e10 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -108 # offset stack pointer from signature
c.swsp x16, 108(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0xdfe8b658d4e0a828 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # offset stack pointer from signature
c.swsp x21, 112(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x2a042145f9b57f95 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -116 # offset stack pointer from signature
c.swsp x31, 116(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xb8a5f7b6aff5597a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -120 # offset stack pointer from signature
c.swsp x1, 120(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0xfa9de24f74da4191 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -124 # offset stack pointer from signature
c.swsp x20, 124(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x06146484f04df0ea # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.swsp x13, 128(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x8da24d2a2232068f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -132 # offset stack pointer from signature
c.swsp x19, 132(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xaf3dc43bd8d59166 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # offset stack pointer from signature
c.swsp x23, 136(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0xc678349df3fafb49 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -140 # offset stack pointer from signature
c.swsp x24, 140(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0x1e713302dcdf7384 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.swsp x23, 144(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x4eab5f300933f1cf # initialize rs2
la sp, scratch # base address 
addi sp, sp, -148 # offset stack pointer from signature
c.swsp x19, 148(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0x51ff644edada9700 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.swsp x6, 152(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x3c6af2a3ee00d179 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -156 # offset stack pointer from signature
c.swsp x27, 156(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x745c56eac2243a6e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -160 # offset stack pointer from signature
c.swsp x12, 160(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x6441d0b91486ed98 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -164 # offset stack pointer from signature
c.swsp x17, 164(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xa671633a84e01802 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # offset stack pointer from signature
c.swsp x1, 168(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xb7ab8ddbfe1353c6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -172 # offset stack pointer from signature
c.swsp x1, 172(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x521514c163cd0958 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.swsp x24, 176(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0x854f4cf1360a19e4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -180 # offset stack pointer from signature
c.swsp x23, 180(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x0b4da604db35f50e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -184 # offset stack pointer from signature
c.swsp x13, 184(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0x06bcca88954dc182 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -188 # offset stack pointer from signature
c.swsp x3, 188(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x23713044875706dd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.swsp x26, 192(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xadb773e7bb9ae87a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -196 # offset stack pointer from signature
c.swsp x1, 196(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0xcb5e7be728fed67f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -200 # offset stack pointer from signature
c.swsp x25, 200(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x0f7c76a86e9d4a38 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -204 # offset stack pointer from signature
c.swsp x15, 204(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0xd48f8949b427b739 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # offset stack pointer from signature
c.swsp x6, 208(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x3f824cfc82cd5e0c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -212 # offset stack pointer from signature
c.swsp x19, 212(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0xe007d444e991baa6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.swsp x14, 216(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x21482f5bae9c1ea2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # offset stack pointer from signature
c.swsp x19, 220(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x83db817a921fcf04 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.swsp x29, 224(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x1115f5dfd65398da # initialize rs2
la sp, scratch # base address 
addi sp, sp, -228 # offset stack pointer from signature
c.swsp x22, 228(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xaaafcf45fb73058c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -232 # offset stack pointer from signature
c.swsp x1, 232(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x6c4e239b30895cc6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -236 # offset stack pointer from signature
c.swsp x2, 236(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0x3c8777fda45ca78e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.swsp x6, 240(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0xc1ab91b98ad2133f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -244 # offset stack pointer from signature
c.swsp x15, 244(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x1f644d45bb684916 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.swsp x17, 248(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x367a5b5ebb52ce81 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # offset stack pointer from signature
c.swsp x18, 252(sp)# perform operation

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
li x8, 0x0000000000000000 # initialize rs2 with random value
addi x9, x9, -28 # sub immediate from rs1 to counter offset
c.sw x8, 28(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
la x11, scratch # base address
li x12, 0x0000000000000001 # initialize rs2 with random value
addi x11, x11, -52 # sub immediate from rs1 to counter offset
c.sw x12, 52(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
la x13, scratch # base address
li x15, 0x0000000000000002 # initialize rs2 with random value
addi x13, x13, -24 # sub immediate from rs1 to counter offset
c.sw x15, 24(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
la x14, scratch # base address
li x8, 0x8000000000000000 # initialize rs2 with random value
addi x14, x14, -52 # sub immediate from rs1 to counter offset
c.sw x8, 52(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
la x8, scratch # base address
li x14, 0x8000000000000001 # initialize rs2 with random value
addi x8, x8, -56 # sub immediate from rs1 to counter offset
c.sw x14, 56(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
la x12, scratch # base address
li x13, 0x7fffffffffffffff # initialize rs2 with random value
addi x12, x12, -40 # sub immediate from rs1 to counter offset
c.sw x13, 40(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
la x9, scratch # base address
li x15, 0x7ffffffffffffffe # initialize rs2 with random value
addi x9, x9, -60 # sub immediate from rs1 to counter offset
c.sw x15, 60(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
la x13, scratch # base address
li x9, 0xffffffffffffffff # initialize rs2 with random value
addi x13, x13, -104 # sub immediate from rs1 to counter offset
c.sw x9, 104(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
la x14, scratch # base address
li x11, 0xfffffffffffffffe # initialize rs2 with random value
addi x14, x14, -76 # sub immediate from rs1 to counter offset
c.sw x11, 76(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
la x12, scratch # base address
li x11, 0x5bbc887763ae86f2 # initialize rs2 with random value
addi x12, x12, -44 # sub immediate from rs1 to counter offset
c.sw x11, 44(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
la x8, scratch # base address
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2 with random value
addi x8, x8, -72 # sub immediate from rs1 to counter offset
c.sw x14, 72(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
la x9, scratch # base address
li x11, 0x5555555555555555 # initialize rs2 with random value
addi x9, x9, -112 # sub immediate from rs1 to counter offset
c.sw x11, 112(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
la x8, scratch # base address
li x14, 0x00000000ffffffff # initialize rs2 with random value
addi x8, x8, -76 # sub immediate from rs1 to counter offset
c.sw x14, 76(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
la x15, scratch # base address
li x9, 0x00000000fffffffe # initialize rs2 with random value
addi x15, x15, -124 # sub immediate from rs1 to counter offset
c.sw x9, 124(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
la x10, scratch # base address
li x9, 0x0000000100000000 # initialize rs2 with random value
addi x10, x10, -36 # sub immediate from rs1 to counter offset
c.sw x9, 36(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
la x10, scratch # base address
li x9, 0x0000000100000001 # initialize rs2 with random value
addi x10, x10, -32 # sub immediate from rs1 to counter offset
c.sw x9, 32(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address
li x14, 0x6c2ca74f118d4336 # initialize rs2 with random value
addi x8, x8, -12 # sub immediate from rs1 to counter offset
c.sw x14, 12(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address
li x12, 0xbd3ec67a55d93e10 # initialize rs2 with random value
addi x9, x9, -60 # sub immediate from rs1 to counter offset
c.sw x12, 60(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address
li x14, 0xbe68cb9d40e4c970 # initialize rs2 with random value
addi x10, x10, -4 # sub immediate from rs1 to counter offset
c.sw x14, 4(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address
li x9, 0x07aa999bb21fcc2e # initialize rs2 with random value
addi x11, x11, -92 # sub immediate from rs1 to counter offset
c.sw x9, 92(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address
li x11, 0xb60614a4c4b7989d # initialize rs2 with random value
addi x12, x12, -28 # sub immediate from rs1 to counter offset
c.sw x11, 28(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address
li x10, 0xdd69e0d201729017 # initialize rs2 with random value
addi x13, x13, -76 # sub immediate from rs1 to counter offset
c.sw x10, 76(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address
li x9, 0x8ba868230304b762 # initialize rs2 with random value
addi x14, x14, -24 # sub immediate from rs1 to counter offset
c.sw x9, 24(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address
li x13, 0xd3abe6fe5ff6f20a # initialize rs2 with random value
addi x15, x15, -68 # sub immediate from rs1 to counter offset
c.sw x13, 68(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
la x14, scratch # base address
li x8, 0xde998433c78f5068 # initialize rs2 with random value
addi x14, x14, -76 # sub immediate from rs1 to counter offset
c.sw x8, 76(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
la x8, scratch # base address
li x9, 0xa26815d7522b3a4c # initialize rs2 with random value
addi x8, x8, -48 # sub immediate from rs1 to counter offset
c.sw x9, 48(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
la x9, scratch # base address
li x10, 0x3e4faabd12aff56e # initialize rs2 with random value
addi x9, x9, -60 # sub immediate from rs1 to counter offset
c.sw x10, 60(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
la x15, scratch # base address
li x11, 0xa3dbeace968fc094 # initialize rs2 with random value
addi x15, x15, -36 # sub immediate from rs1 to counter offset
c.sw x11, 36(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
la x13, scratch # base address
li x12, 0x0c221f466ce3dec7 # initialize rs2 with random value
addi x13, x13, -80 # sub immediate from rs1 to counter offset
c.sw x12, 80(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
la x8, scratch # base address
li x13, 0x0e0fd3eaba519528 # initialize rs2 with random value
addi x8, x8, -40 # sub immediate from rs1 to counter offset
c.sw x13, 40(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
la x13, scratch # base address
li x14, 0x3faa3f639d98ab4c # initialize rs2 with random value
addi x13, x13, -60 # sub immediate from rs1 to counter offset
c.sw x14, 60(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
la x10, scratch # base address
li x15, 0xc582b0d8159379c6 # initialize rs2 with random value
addi x10, x10, -32 # sub immediate from rs1 to counter offset
c.sw x15, 32(x10) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x14, 0xc25eaa23adea134d # initialize rs2 with random value
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sw x14, 0(x12) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x11, 0x4e339f408c239018 # initialize rs2 with random value
addi x15, x15, -4 # sub immediate from rs1 to counter offset
c.sw x11, 4(x15) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x10, 0xf24ba788aeea49d7 # initialize rs2 with random value
addi x14, x14, -8 # sub immediate from rs1 to counter offset
c.sw x10, 8(x14) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x13, 0xe95398797fc9b48f # initialize rs2 with random value
addi x8, x8, -12 # sub immediate from rs1 to counter offset
c.sw x13, 12(x8) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x9, 0x2bae6b5074aa17d7 # initialize rs2 with random value
addi x15, x15, -16 # sub immediate from rs1 to counter offset
c.sw x9, 16(x15) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x11, 0x7e8cfb6d3dc1090a # initialize rs2 with random value
addi x13, x13, -20 # sub immediate from rs1 to counter offset
c.sw x11, 20(x13) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x8, 0x58d2a522845ad4a7 # initialize rs2 with random value
addi x9, x9, -24 # sub immediate from rs1 to counter offset
c.sw x8, 24(x9) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x14, 0x9808a4a1cfd6be5e # initialize rs2 with random value
addi x12, x12, -28 # sub immediate from rs1 to counter offset
c.sw x14, 28(x12) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x8, 0x70de3b0cffb4aec4 # initialize rs2 with random value
addi x14, x14, -32 # sub immediate from rs1 to counter offset
c.sw x8, 32(x14) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x15, 0x11b68aabea7599a7 # initialize rs2 with random value
addi x11, x11, -36 # sub immediate from rs1 to counter offset
c.sw x15, 36(x11) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x15, 0xdf8cfed5d973e12a # initialize rs2 with random value
addi x10, x10, -40 # sub immediate from rs1 to counter offset
c.sw x15, 40(x10) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x15, 0x7b403a5d71ef075e # initialize rs2 with random value
addi x9, x9, -44 # sub immediate from rs1 to counter offset
c.sw x15, 44(x9) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x13, 0xa10eab2810ee88d9 # initialize rs2 with random value
addi x9, x9, -48 # sub immediate from rs1 to counter offset
c.sw x13, 48(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x8, 0x1f8ff2609d949d23 # initialize rs2 with random value
addi x15, x15, -52 # sub immediate from rs1 to counter offset
c.sw x8, 52(x15) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x13, 0xc6819ef0bcbebdfb # initialize rs2 with random value
addi x15, x15, -56 # sub immediate from rs1 to counter offset
c.sw x13, 56(x15) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x13, 0x1c7b9c84032054ad # initialize rs2 with random value
addi x14, x14, -60 # sub immediate from rs1 to counter offset
c.sw x13, 60(x14) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x8, 0xbfb3480d3aa2f131 # initialize rs2 with random value
addi x11, x11, -64 # sub immediate from rs1 to counter offset
c.sw x8, 64(x11) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x9, 0x6ea4b6091cd2b530 # initialize rs2 with random value
addi x11, x11, -68 # sub immediate from rs1 to counter offset
c.sw x9, 68(x11) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x9, 0x85933aa8c364fbc7 # initialize rs2 with random value
addi x12, x12, -72 # sub immediate from rs1 to counter offset
c.sw x9, 72(x12) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x9, 0x6f14ada21348681f # initialize rs2 with random value
addi x10, x10, -76 # sub immediate from rs1 to counter offset
c.sw x9, 76(x10) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x12, 0x78f88dfdd16393a3 # initialize rs2 with random value
addi x9, x9, -80 # sub immediate from rs1 to counter offset
c.sw x12, 80(x9) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x10, 0xd326d15cefe1a9f3 # initialize rs2 with random value
addi x13, x13, -84 # sub immediate from rs1 to counter offset
c.sw x10, 84(x13) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x8, 0xe959444aad52eeee # initialize rs2 with random value
addi x12, x12, -88 # sub immediate from rs1 to counter offset
c.sw x8, 88(x12) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x12, 0x0cb65988df0fbe83 # initialize rs2 with random value
addi x9, x9, -92 # sub immediate from rs1 to counter offset
c.sw x12, 92(x9) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x13, 0x957dec5ddf244434 # initialize rs2 with random value
addi x10, x10, -96 # sub immediate from rs1 to counter offset
c.sw x13, 96(x10) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x14, 0x5e7b4a8c0e6e42a2 # initialize rs2 with random value
addi x9, x9, -100 # sub immediate from rs1 to counter offset
c.sw x14, 100(x9) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x11, 0xca96a238743303f3 # initialize rs2 with random value
addi x13, x13, -104 # sub immediate from rs1 to counter offset
c.sw x11, 104(x13) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x12, 0x547a947adc1a141c # initialize rs2 with random value
addi x14, x14, -108 # sub immediate from rs1 to counter offset
c.sw x12, 108(x14) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x14, 0x461991fd54e1ed0e # initialize rs2 with random value
addi x12, x12, -112 # sub immediate from rs1 to counter offset
c.sw x14, 112(x12) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x15, 0x2e1b0ed8cd7cde84 # initialize rs2 with random value
addi x12, x12, -116 # sub immediate from rs1 to counter offset
c.sw x15, 116(x12) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x13, 0x56cc17d7e287eaa5 # initialize rs2 with random value
addi x12, x12, -120 # sub immediate from rs1 to counter offset
c.sw x13, 120(x12) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x8, 0x5554e9732ede6262 # initialize rs2 with random value
addi x15, x15, -124 # sub immediate from rs1 to counter offset
c.sw x8, 124(x15) # perform operation 

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.jalr.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x5684171d1520da3a # initialize rd (x1) to a random value that should get changed
la x1, 1f
c.jalr x1 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x1, 0x391dea5fe05bd8b9 # initialize rd (x1) to a random value that should get changed
la x2, 1f
c.jalr x2 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x1, 0xb0be3737e98a8960 # initialize rd (x1) to a random value that should get changed
la x3, 1f
c.jalr x3 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0xf1bb08ad56ffd20e # initialize rd (x1) to a random value that should get changed
la x4, 1f
c.jalr x4 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x560d8ba0292a7f4c # initialize rd (x1) to a random value that should get changed
la x5, 1f
c.jalr x5 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x037375a460164a47 # initialize rd (x1) to a random value that should get changed
la x6, 1f
c.jalr x6 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x3928d61b9187f26b # initialize rd (x1) to a random value that should get changed
la x7, 1f
c.jalr x7 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x1, 0xf2b2ca371b33034f # initialize rd (x1) to a random value that should get changed
la x8, 1f
c.jalr x8 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x1, 0x1940c95e9eb04300 # initialize rd (x1) to a random value that should get changed
la x9, 1f
c.jalr x9 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x1, 0x294cea31260dc3c5 # initialize rd (x1) to a random value that should get changed
la x10, 1f
c.jalr x10 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x1, 0x52ee4b48f2ae1a1d # initialize rd (x1) to a random value that should get changed
la x11, 1f
c.jalr x11 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x1, 0x021e4a2bf99cfad7 # initialize rd (x1) to a random value that should get changed
la x12, 1f
c.jalr x12 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x1, 0x1e17251242aad479 # initialize rd (x1) to a random value that should get changed
la x13, 1f
c.jalr x13 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x1, 0x9ccb0de20e880b72 # initialize rd (x1) to a random value that should get changed
la x14, 1f
c.jalr x14 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x1, 0x7fbfa8eb0025dc87 # initialize rd (x1) to a random value that should get changed
la x15, 1f
c.jalr x15 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x1, 0x09153b0f46826ccf # initialize rd (x1) to a random value that should get changed
la x16, 1f
c.jalr x16 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x1, 0x514d715c7466f253 # initialize rd (x1) to a random value that should get changed
la x17, 1f
c.jalr x17 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x1, 0xe166ce94a7110742 # initialize rd (x1) to a random value that should get changed
la x18, 1f
c.jalr x18 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x1, 0x121cce20cf103f08 # initialize rd (x1) to a random value that should get changed
la x19, 1f
c.jalr x19 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x1, 0x1022a7887a541355 # initialize rd (x1) to a random value that should get changed
la x20, 1f
c.jalr x20 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x1, 0xbbaf22f41c141aed # initialize rd (x1) to a random value that should get changed
la x21, 1f
c.jalr x21 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x1, 0x67938f5f00878645 # initialize rd (x1) to a random value that should get changed
la x22, 1f
c.jalr x22 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x1, 0x81d5600f40224749 # initialize rd (x1) to a random value that should get changed
la x23, 1f
c.jalr x23 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x1, 0x1b3da7f6bd1f6ed4 # initialize rd (x1) to a random value that should get changed
la x24, 1f
c.jalr x24 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x1, 0x63aea24cb2e509d9 # initialize rd (x1) to a random value that should get changed
la x25, 1f
c.jalr x25 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x1, 0xe54c6eaebf559027 # initialize rd (x1) to a random value that should get changed
la x26, 1f
c.jalr x26 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x1, 0x06b93fcbeaf19a1a # initialize rd (x1) to a random value that should get changed
la x27, 1f
c.jalr x27 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x1, 0x2cee1e4f7c8161f9 # initialize rd (x1) to a random value that should get changed
la x28, 1f
c.jalr x28 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x1, 0xee86f8042f504b03 # initialize rd (x1) to a random value that should get changed
la x29, 1f
c.jalr x29 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x1, 0xe001d151deb04543 # initialize rd (x1) to a random value that should get changed
la x30, 1f
c.jalr x30 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x1, 0x32239a8e9ddbaf73 # initialize rd (x1) to a random value that should get changed
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
li x1, 0xd1303bc8162748e9 # initialize rs1
c.addi x1, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x3d24b59fe89a9f7e # initialize rs1
c.addi x2, -18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x4a3297de1a7ae042 # initialize rs1
c.addi x3, -14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0127c93ae0bb3abd # initialize rs1
c.addi x4, -20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 24)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcef50efe7a303b3a # initialize rs1
c.addi x5, 7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 32)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf31ccb2348865110 # initialize rs1
c.addi x6, -32 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7b451ccf96d326e8 # initialize rs1
c.addi x7, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xeb8acc5e6c4dd907 # initialize rs1
c.addi x8, -19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x79b7024c15e5ba16 # initialize rs1
c.addi x9, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xc51bf1a27e07d00a # initialize rs1
c.addi x10, -28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x10decade5b38522c # initialize rs1
c.addi x11, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x995382e8dc3f65c6 # initialize rs1
c.addi x12, -19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x50be0b192ea93a9d # initialize rs1
c.addi x13, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x46be05ff4a06cc36 # initialize rs1
c.addi x14, -7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x1e69e4d3095e4332 # initialize rs1
c.addi x15, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x71cec92c670fcc4a # initialize rs1
c.addi x16, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x24cf489db4c6b4f8 # initialize rs1
c.addi x17, -13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x1dc09bcbf235d062 # initialize rs1
c.addi x18, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xe6b0a93dd3d0cb0a # initialize rs1
c.addi x19, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xbaec1532b04556d6 # initialize rs1
c.addi x20, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x8bc51b257fe14915 # initialize rs1
c.addi x21, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xf5245ef3ec1b7a03 # initialize rs1
c.addi x22, -3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x2bd578d538b752ef # initialize rs1
c.addi x23, -27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xb4ae023ef0275fbb # initialize rs1
c.addi x24, -5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x7ef20ed76ab77d38 # initialize rs1
c.addi x25, -17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 192)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xc3a0c4eba139e90d # initialize rs1
c.addi x26, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xba6fad20710ebe63 # initialize rs1
c.addi x27, -3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x6cde4c049c30d3bc # initialize rs1
c.addi x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x7246cda5868500e0 # initialize rs1
c.addi x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 224)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x3f828adb7218a192 # initialize rs1
c.addi x30, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xe5bc0b81ddd0828d # initialize rs1
c.addi x31, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x6, 0x0000000000000000 # initialize rs1
c.addi x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x15, 0x0000000000000001 # initialize rs1
c.addi x15, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x6, 0x0000000000000002 # initialize rs1
c.addi x6, -8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x9, 0x8000000000000000 # initialize rs1
c.addi x9, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x20, 0x8000000000000001 # initialize rs1
c.addi x20, -23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x30, 0x7fffffffffffffff # initialize rs1
c.addi x30, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0x7ffffffffffffffe # initialize rs1
c.addi x12, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
c.addi x18, -14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 304)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x27, 0xfffffffffffffffe # initialize rs1
c.addi x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x22, 0x5bbc887763ae86f2 # initialize rs1
c.addi x22, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 320)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x28, -24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 328)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x7, 0x5555555555555555 # initialize rs1
c.addi x7, -18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 336)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0x00000000ffffffff # initialize rs1
c.addi x28, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 344)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0x00000000fffffffe # initialize rs1
c.addi x19, -7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 352)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x17, 0x0000000100000000 # initialize rs1
c.addi x17, -19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 360)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x23, 0x0000000100000001 # initialize rs1
c.addi x23, -12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 368)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000000 # initialize rs1
c.addi x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 376)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000000 # initialize rs1
c.addi x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 384)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000000 # initialize rs1
c.addi x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 392)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000000 # initialize rs1
c.addi x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000000 # initialize rs1
c.addi x2, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 408)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rs1
c.addi x27, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 416)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000000 # initialize rs1
c.addi x22, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000000 # initialize rs1
c.addi x25, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rs1
c.addi x27, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 440)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000000 # initialize rs1
c.addi x17, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 448)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000000000000 # initialize rs1
c.addi x6, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 456)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000000 # initialize rs1
c.addi x31, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000001 # initialize rs1
c.addi x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 472)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000001 # initialize rs1
c.addi x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 480)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000001 # initialize rs1
c.addi x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000001 # initialize rs1
c.addi x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 496)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000001 # initialize rs1
c.addi x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000001 # initialize rs1
c.addi x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 512)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000001 # initialize rs1
c.addi x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 520)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000001 # initialize rs1
c.addi x17, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 528)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000001 # initialize rs1
c.addi x7, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 536)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001 # initialize rs1
c.addi x10, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000001 # initialize rs1
c.addi x12, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 552)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001 # initialize rs1
c.addi x10, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 560)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000002 # initialize rs1
c.addi x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000002 # initialize rs1
c.addi x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 576)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000002 # initialize rs1
c.addi x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 584)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000002 # initialize rs1
c.addi x25, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 592)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000002 # initialize rs1
c.addi x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000002 # initialize rs1
c.addi x30, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 608)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002 # initialize rs1
c.addi x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rs1
c.addi x27, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 624)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000002 # initialize rs1
c.addi x2, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002 # initialize rs1
c.addi x8, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 640)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000002 # initialize rs1
c.addi x11, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 648)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000002 # initialize rs1
c.addi x26, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 656)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000000 # initialize rs1
c.addi x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 664)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000000 # initialize rs1
c.addi x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 672)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000000 # initialize rs1
c.addi x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 680)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rs1
c.addi x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 688)

# Testcase cr_rs1_imm_corners
li x29, 0x8000000000000000 # initialize rs1
c.addi x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 696)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000000 # initialize rs1
c.addi x24, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000000 # initialize rs1
c.addi x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 712)

# Testcase cr_rs1_imm_corners
li x16, 0x8000000000000000 # initialize rs1
c.addi x16, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 720)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000000 # initialize rs1
c.addi x10, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 728)

# Testcase cr_rs1_imm_corners
li x23, 0x8000000000000000 # initialize rs1
c.addi x23, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 736)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000000 # initialize rs1
c.addi x24, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 744)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rs1
c.addi x3, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 752)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rs1
c.addi x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 760)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000001 # initialize rs1
c.addi x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 768)

# Testcase cr_rs1_imm_corners
li x18, 0x8000000000000001 # initialize rs1
c.addi x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 776)

# Testcase cr_rs1_imm_corners
li x6, 0x8000000000000001 # initialize rs1
c.addi x6, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cr_rs1_imm_corners
li x29, 0x8000000000000001 # initialize rs1
c.addi x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 792)

# Testcase cr_rs1_imm_corners
li x17, 0x8000000000000001 # initialize rs1
c.addi x17, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 800)

# Testcase cr_rs1_imm_corners
li x28, 0x8000000000000001 # initialize rs1
c.addi x28, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 808)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000001 # initialize rs1
c.addi x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 816)

# Testcase cr_rs1_imm_corners
li x29, 0x8000000000000001 # initialize rs1
c.addi x29, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 824)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000001 # initialize rs1
c.addi x11, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 832)

# Testcase cr_rs1_imm_corners
li x23, 0x8000000000000001 # initialize rs1
c.addi x23, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 840)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000001 # initialize rs1
c.addi x11, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 848)

# Testcase cr_rs1_imm_corners
li x6, 0x7fffffffffffffff # initialize rs1
c.addi x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 856)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffffffffffff # initialize rs1
c.addi x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 864)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffffffffffff # initialize rs1
c.addi x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 872)

# Testcase cr_rs1_imm_corners
li x26, 0x7fffffffffffffff # initialize rs1
c.addi x26, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 880)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffffffffffff # initialize rs1
c.addi x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 888)

# Testcase cr_rs1_imm_corners
li x23, 0x7fffffffffffffff # initialize rs1
c.addi x23, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 896)

# Testcase cr_rs1_imm_corners
li x23, 0x7fffffffffffffff # initialize rs1
c.addi x23, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 904)

# Testcase cr_rs1_imm_corners
li x11, 0x7fffffffffffffff # initialize rs1
c.addi x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 912)

# Testcase cr_rs1_imm_corners
li x7, 0x7fffffffffffffff # initialize rs1
c.addi x7, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 920)

# Testcase cr_rs1_imm_corners
li x18, 0x7fffffffffffffff # initialize rs1
c.addi x18, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 928)

# Testcase cr_rs1_imm_corners
li x24, 0x7fffffffffffffff # initialize rs1
c.addi x24, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 936)

# Testcase cr_rs1_imm_corners
li x5, 0x7fffffffffffffff # initialize rs1
c.addi x5, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cr_rs1_imm_corners
li x31, 0x7ffffffffffffffe # initialize rs1
c.addi x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 952)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffffffffffe # initialize rs1
c.addi x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 960)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffffffffffe # initialize rs1
c.addi x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 968)

# Testcase cr_rs1_imm_corners
li x18, 0x7ffffffffffffffe # initialize rs1
c.addi x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 976)

# Testcase cr_rs1_imm_corners
li x17, 0x7ffffffffffffffe # initialize rs1
c.addi x17, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 984)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffffffffffe # initialize rs1
c.addi x19, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 992)

# Testcase cr_rs1_imm_corners
li x25, 0x7ffffffffffffffe # initialize rs1
c.addi x25, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1000)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffffffffffe # initialize rs1
c.addi x16, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1008)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffffffffffe # initialize rs1
c.addi x15, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1016)

# Testcase cr_rs1_imm_corners
li x22, 0x7ffffffffffffffe # initialize rs1
c.addi x22, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1024)

# Testcase cr_rs1_imm_corners
li x31, 0x7ffffffffffffffe # initialize rs1
c.addi x31, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1032)

# Testcase cr_rs1_imm_corners
li x26, 0x7ffffffffffffffe # initialize rs1
c.addi x26, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1040)

# Testcase cr_rs1_imm_corners
li x6, 0xffffffffffffffff # initialize rs1
c.addi x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1048)

# Testcase cr_rs1_imm_corners
li x31, 0xffffffffffffffff # initialize rs1
c.addi x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1056)

# Testcase cr_rs1_imm_corners
li x19, 0xffffffffffffffff # initialize rs1
c.addi x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1064)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffffffffffff # initialize rs1
c.addi x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1072)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffffffffffff # initialize rs1
c.addi x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1080)

# Testcase cr_rs1_imm_corners
li x21, 0xffffffffffffffff # initialize rs1
c.addi x21, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1088)

# Testcase cr_rs1_imm_corners
li x5, 0xffffffffffffffff # initialize rs1
c.addi x5, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1096)

# Testcase cr_rs1_imm_corners
li x11, 0xffffffffffffffff # initialize rs1
c.addi x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1104)

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rs1
c.addi x3, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1112)

# Testcase cr_rs1_imm_corners
li x18, 0xffffffffffffffff # initialize rs1
c.addi x18, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1120)

# Testcase cr_rs1_imm_corners
li x22, 0xffffffffffffffff # initialize rs1
c.addi x22, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1128)

# Testcase cr_rs1_imm_corners
li x24, 0xffffffffffffffff # initialize rs1
c.addi x24, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1136)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffffffffffe # initialize rs1
c.addi x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1144)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffffffffffe # initialize rs1
c.addi x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1152)

# Testcase cr_rs1_imm_corners
li x2, 0xfffffffffffffffe # initialize rs1
c.addi x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1160)

# Testcase cr_rs1_imm_corners
li x18, 0xfffffffffffffffe # initialize rs1
c.addi x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1168)

# Testcase cr_rs1_imm_corners
li x6, 0xfffffffffffffffe # initialize rs1
c.addi x6, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1176)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffffffffffe # initialize rs1
c.addi x24, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1184)

# Testcase cr_rs1_imm_corners
li x21, 0xfffffffffffffffe # initialize rs1
c.addi x21, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1192)

# Testcase cr_rs1_imm_corners
li x20, 0xfffffffffffffffe # initialize rs1
c.addi x20, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1200)

# Testcase cr_rs1_imm_corners
li x21, 0xfffffffffffffffe # initialize rs1
c.addi x21, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1208)

# Testcase cr_rs1_imm_corners
li x30, 0xfffffffffffffffe # initialize rs1
c.addi x30, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1216)

# Testcase cr_rs1_imm_corners
li x17, 0xfffffffffffffffe # initialize rs1
c.addi x17, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1224)

# Testcase cr_rs1_imm_corners
li x29, 0xfffffffffffffffe # initialize rs1
c.addi x29, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1232)

# Testcase cr_rs1_imm_corners
li x26, 0x5bbc887763ae86f2 # initialize rs1
c.addi x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1240)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc887763ae86f2 # initialize rs1
c.addi x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1248)

# Testcase cr_rs1_imm_corners
li x24, 0x5bbc887763ae86f2 # initialize rs1
c.addi x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1256)

# Testcase cr_rs1_imm_corners
li x31, 0x5bbc887763ae86f2 # initialize rs1
c.addi x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1264)

# Testcase cr_rs1_imm_corners
li x31, 0x5bbc887763ae86f2 # initialize rs1
c.addi x31, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1272)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc887763ae86f2 # initialize rs1
c.addi x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1280)

# Testcase cr_rs1_imm_corners
li x16, 0x5bbc887763ae86f2 # initialize rs1
c.addi x16, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1288)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2 # initialize rs1
c.addi x1, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1296)

# Testcase cr_rs1_imm_corners
li x22, 0x5bbc887763ae86f2 # initialize rs1
c.addi x22, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1304)

# Testcase cr_rs1_imm_corners
li x5, 0x5bbc887763ae86f2 # initialize rs1
c.addi x5, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1312)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2 # initialize rs1
c.addi x1, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1320)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc887763ae86f2 # initialize rs1
c.addi x2, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1328)

# Testcase cr_rs1_imm_corners
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1336)

# Testcase cr_rs1_imm_corners
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1344)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1352)

# Testcase cr_rs1_imm_corners
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1360)

# Testcase cr_rs1_imm_corners
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1368)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1376)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1384)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1392)

# Testcase cr_rs1_imm_corners
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x1, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1400)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x13, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1408)

# Testcase cr_rs1_imm_corners
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x28, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1416)

# Testcase cr_rs1_imm_corners
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x6, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1424)

# Testcase cr_rs1_imm_corners
li x9, 0x5555555555555555 # initialize rs1
c.addi x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1432)

# Testcase cr_rs1_imm_corners
li x8, 0x5555555555555555 # initialize rs1
c.addi x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1440)

# Testcase cr_rs1_imm_corners
li x13, 0x5555555555555555 # initialize rs1
c.addi x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1448)

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rs1
c.addi x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1456)

# Testcase cr_rs1_imm_corners
li x30, 0x5555555555555555 # initialize rs1
c.addi x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1464)

# Testcase cr_rs1_imm_corners
li x15, 0x5555555555555555 # initialize rs1
c.addi x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1472)

# Testcase cr_rs1_imm_corners
li x14, 0x5555555555555555 # initialize rs1
c.addi x14, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1480)

# Testcase cr_rs1_imm_corners
li x7, 0x5555555555555555 # initialize rs1
c.addi x7, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1488)

# Testcase cr_rs1_imm_corners
li x29, 0x5555555555555555 # initialize rs1
c.addi x29, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1496)

# Testcase cr_rs1_imm_corners
li x6, 0x5555555555555555 # initialize rs1
c.addi x6, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1504)

# Testcase cr_rs1_imm_corners
li x17, 0x5555555555555555 # initialize rs1
c.addi x17, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1512)

# Testcase cr_rs1_imm_corners
li x28, 0x5555555555555555 # initialize rs1
c.addi x28, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1520)

# Testcase cr_rs1_imm_corners
li x20, 0x00000000ffffffff # initialize rs1
c.addi x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1528)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000ffffffff # initialize rs1
c.addi x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1536)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000ffffffff # initialize rs1
c.addi x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1544)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000ffffffff # initialize rs1
c.addi x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1552)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000ffffffff # initialize rs1
c.addi x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cr_rs1_imm_corners
li x18, 0x00000000ffffffff # initialize rs1
c.addi x18, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1568)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000ffffffff # initialize rs1
c.addi x5, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1576)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000ffffffff # initialize rs1
c.addi x21, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1584)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000ffffffff # initialize rs1
c.addi x12, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1592)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000ffffffff # initialize rs1
c.addi x7, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1600)

# Testcase cr_rs1_imm_corners
li x23, 0x00000000ffffffff # initialize rs1
c.addi x23, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1608)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000ffffffff # initialize rs1
c.addi x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1616)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000fffffffe # initialize rs1
c.addi x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1624)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000fffffffe # initialize rs1
c.addi x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1632)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000fffffffe # initialize rs1
c.addi x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1640)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000fffffffe # initialize rs1
c.addi x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1648)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000fffffffe # initialize rs1
c.addi x17, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1656)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rs1
c.addi x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1664)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000fffffffe # initialize rs1
c.addi x21, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1672)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000fffffffe # initialize rs1
c.addi x5, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1680)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rs1
c.addi x3, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1688)

# Testcase cr_rs1_imm_corners
li x23, 0x00000000fffffffe # initialize rs1
c.addi x23, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1696)

# Testcase cr_rs1_imm_corners
li x18, 0x00000000fffffffe # initialize rs1
c.addi x18, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1704)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe # initialize rs1
c.addi x22, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1712)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rs1
c.addi x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1720)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000000 # initialize rs1
c.addi x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1728)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rs1
c.addi x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1736)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000000 # initialize rs1
c.addi x16, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1744)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000100000000 # initialize rs1
c.addi x17, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1752)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000100000000 # initialize rs1
c.addi x6, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1760)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000000 # initialize rs1
c.addi x31, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1768)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000 # initialize rs1
c.addi x10, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1776)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000000 # initialize rs1
c.addi x28, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1784)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000100000000 # initialize rs1
c.addi x19, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_imm_corners
li x6, 0x0000000100000000 # initialize rs1
c.addi x6, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000100000000 # initialize rs1
c.addi x25, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000100000001 # initialize rs1
c.addi x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 16)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000100000001 # initialize rs1
c.addi x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 24)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000001 # initialize rs1
c.addi x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 32)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001 # initialize rs1
c.addi x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 40)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001 # initialize rs1
c.addi x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000001 # initialize rs1
c.addi x21, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 56)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001 # initialize rs1
c.addi x12, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000100000001 # initialize rs1
c.addi x29, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 72)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000100000001 # initialize rs1
c.addi x19, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 80)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000100000001 # initialize rs1
c.addi x20, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 88)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000001 # initialize rs1
c.addi x24, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000100000001 # initialize rs1
c.addi x29, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 104)

#.EQU SIGSIZE,1912


// ******************
// Tests from: WALLY-COV-c.sub.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x9, 0xb525171b9c969d59 # initialize rs2
li x11, 0x0000000000000000 # initialize rd,rs1
c.sub x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x12, 0x748df3562c1cad98 # initialize rs2
li x8, 0x0000000000000001 # initialize rd,rs1
c.sub x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x13, 0x47f0166310044ca5 # initialize rs2
li x11, 0x0000000000000002 # initialize rd,rs1
c.sub x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x13, 0x953e3426ebd9a8b1 # initialize rs2
li x8, 0x8000000000000000 # initialize rd,rs1
c.sub x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x8, 0xd193bd733fcdb36f # initialize rs2
li x10, 0x8000000000000001 # initialize rd,rs1
c.sub x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x14, 0xb94d00919a286d17 # initialize rs2
li x9, 0x7fffffffffffffff # initialize rd,rs1
c.sub x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x14, 0xb74244794fb85b34 # initialize rs2
li x10, 0x7ffffffffffffffe # initialize rd,rs1
c.sub x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x12, 0xe902955f128c8e73 # initialize rs2
li x10, 0xffffffffffffffff # initialize rd,rs1
c.sub x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x10, 0xc7de85fefb220445 # initialize rs2
li x12, 0xfffffffffffffffe # initialize rd,rs1
c.sub x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x14, 0xca274837dec58210 # initialize rs2
li x10, 0x5bbc887763ae86f2 # initialize rd,rs1
c.sub x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x13, 0x2ec8091525002a27 # initialize rs2
li x9, 0xaaaaaaaaaaaaaaaa # initialize rd,rs1
c.sub x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x13, 0xdfe838642ecc393c # initialize rs2
li x11, 0x5555555555555555 # initialize rd,rs1
c.sub x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x14, 0x0a65fb33e1cc2f92 # initialize rs2
li x12, 0x00000000ffffffff # initialize rd,rs1
c.sub x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0xe7b4f56a35f85689 # initialize rs2
li x12, 0x00000000fffffffe # initialize rd,rs1
c.sub x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0xd1b532a9b4f06900 # initialize rs2
li x8, 0x0000000100000000 # initialize rd,rs1
c.sub x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0xf3696a9d1afe1309 # initialize rs2
li x14, 0x0000000100000001 # initialize rd,rs1
c.sub x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0x0000000000000000 # initialize rs2
li x14, 0x89819af5d2a857cd # initialize rd,rs1
c.sub x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 128)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x12, 0x0000000000000001 # initialize rs2
li x13, 0x7c66b3e46f83a464 # initialize rd,rs1
c.sub x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x8, 0x0000000000000002 # initialize rs2
li x14, 0xe232be0e967370dd # initialize rd,rs1
c.sub x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x13, 0x8000000000000000 # initialize rs2
li x9, 0x926777dd0b15d613 # initialize rd,rs1
c.sub x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 152)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x13, 0x8000000000000001 # initialize rs2
li x8, 0x904b5f3a7d54df91 # initialize rd,rs1
c.sub x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs2
li x13, 0x56fa886611ee3a69 # initialize rd,rs1
c.sub x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x14, 0x7ffffffffffffffe # initialize rs2
li x12, 0x4793bf0ad691f207 # initialize rd,rs1
c.sub x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs2
li x11, 0xbe0de8706c30f272 # initialize rd,rs1
c.sub x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x10, 0xfffffffffffffffe # initialize rs2
li x13, 0xf6400b9c221be8bb # initialize rd,rs1
c.sub x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 192)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x14, 0x5bbc887763ae86f2 # initialize rs2
li x9, 0x8cb31bd42cb1057c # initialize rd,rs1
c.sub x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
li x12, 0xc04d67fa7eac4d81 # initialize rd,rs1
c.sub x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 208)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x15, 0x5555555555555555 # initialize rs2
li x9, 0xe96ebced9dfffb13 # initialize rd,rs1
c.sub x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs2
li x12, 0xe33f0d0aea30aa58 # initialize rd,rs1
c.sub x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x10, 0x00000000fffffffe # initialize rs2
li x15, 0xe717f231065723c4 # initialize rd,rs1
c.sub x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 232)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x13, 0x0000000100000000 # initialize rs2
li x15, 0x137f19ac22e05bf4 # initialize rd,rs1
c.sub x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 240)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x15, 0x0000000100000001 # initialize rs2
li x12, 0x53fa9bd4845b821c # initialize rd,rs1
c.sub x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xeec5e9fc634ab2b9 # initialize rs2
li x15, 0xae7559e75c792091 # initialize rd,rs1
c.sub x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x3d1de6c67db42284 # initialize rs2
li x15, 0x1b31e559f81e8199 # initialize rd,rs1
c.sub x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x01d78977857d5953 # initialize rs2
li x12, 0x7b7127c2c0228be0 # initialize rd,rs1
c.sub x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x073c3b1dfc885b17 # initialize rs2
li x8, 0xa2f17f8e818168c3 # initialize rd,rs1
c.sub x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xc185abae06a2c977 # initialize rs2
li x8, 0xd03e30b684f23727 # initialize rd,rs1
c.sub x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xf3ed38b2f6f9d485 # initialize rs2
li x13, 0x9771ae70ffe5ef06 # initialize rd,rs1
c.sub x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x45396a8af0c53b4f # initialize rs2
li x12, 0xc92b9f37139a7793 # initialize rd,rs1
c.sub x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x75d00a69efa89883 # initialize rs2
li x8, 0x2549b30fb13739fd # initialize rd,rs1
c.sub x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x67a15c243cf6a146 # initialize rs2
li x8, 0xf8e18c061a818b2d # initialize rd,rs1
c.sub x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x43ab0076d7f37b3a # initialize rs2
li x9, 0xfe6e87f89c043f21 # initialize rd,rs1
c.sub x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x8c56c20eabf6fbea # initialize rs2
li x10, 0x68bdf1c6713c673e # initialize rd,rs1
c.sub x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xd265d64c37f84c09 # initialize rs2
li x11, 0x45b030c4f01e48e3 # initialize rd,rs1
c.sub x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x4705711f91fb58de # initialize rs2
li x12, 0xf64758ad0d05398d # initialize rd,rs1
c.sub x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xff2c6f67c6a72a1b # initialize rs2
li x13, 0xd5fb766bddc06a62 # initialize rd,rs1
c.sub x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x17987fd4f4a969bf # initialize rs2
li x14, 0x58f84e048ce96f92 # initialize rd,rs1
c.sub x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xec3141bd158cba3c # initialize rs2
li x15, 0xd2e4f26363b4fc71 # initialize rd,rs1
c.sub x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0xc9b387fa6c2c0f69 # initialize rs2
li x9, 0xbc4a4a59f0c40733 # initialize rd,rs1
c.sub x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 384)

# Testcase cp_rs1 (Test source rs1 = x9)
li x11, 0xcce1bc2186ec6644 # initialize rs2
li x15, 0xeb571a143defecbc # initialize rd,rs1
c.sub x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0x634f323086564526 # initialize rs2
li x12, 0xc619e7899de3f19b # initialize rd,rs1
c.sub x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 400)

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0x6f06b959aa10576e # initialize rs2
li x15, 0xe76a4698a2c08e0b # initialize rd,rs1
c.sub x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cp_rs1 (Test source rs1 = x12)
li x10, 0xe6dd13de89b7dff9 # initialize rs2
li x9, 0x9df793f65f47efb5 # initialize rd,rs1
c.sub x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0xa6f304236c62ac4a # initialize rs2
li x9, 0x34a6282cd98f1670 # initialize rd,rs1
c.sub x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 424)

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0x7fabde880d1b33e6 # initialize rs2
li x8, 0x96cca1de6bb979db # initialize rd,rs1
c.sub x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 432)

# Testcase cp_rs1 (Test source rs1 = x15)
li x12, 0xbe4692daff652ca1 # initialize rs2
li x8, 0x77389f76cf9f63d1 # initialize rd,rs1
c.sub x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xfa4c0babcbcc7a97 # initialize rs2
li x13, 0x4619e7bca38a409c # initialize rd,rs1
c.sub x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 448)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x0ce6041fed188c66 # initialize rs2
li x13, 0x886a54209f467b9d # initialize rd,rs1
c.sub x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x6658ed0337ab9de7 # initialize rs2
li x15, 0xc6b86b67fbf1dec0 # initialize rd,rs1
c.sub x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x51c9d38add556bda # initialize rs2
li x8, 0x75f356d9f5261714 # initialize rd,rs1
c.sub x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 472)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x984bb5ab85b3c700 # initialize rs2
li x9, 0x1a8ea863e44a8bde # initialize rd,rs1
c.sub x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xf5bd6b6c3615e6cc # initialize rs2
li x11, 0x91a52375ec152bb4 # initialize rd,rs1
c.sub x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x7ee822e3969ba1bf # initialize rs2
li x15, 0x086e01c8e940be4b # initialize rd,rs1
c.sub x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xf63d42cc63801ebd # initialize rs2
li x13, 0x3aba399cbc8ea37f # initialize rd,rs1
c.sub x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 504)

# Testcase cp_rd (Test destination rd = x8)
li x11, 0x10f579329737cb50 # initialize rs2
li x8, 0xf083f1ed5c256824 # initialize rd,rs1
c.sub x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0xacd670617c161192 # initialize rs2
li x9, 0xf142be84fc2e922e # initialize rd,rs1
c.sub x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cp_rd (Test destination rd = x10)
li x8, 0xb01049a6227cd9b1 # initialize rs2
li x10, 0x9cd3e25b20d64911 # initialize rd,rs1
c.sub x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_rd (Test destination rd = x11)
li x10, 0x510f0c6e0663d429 # initialize rs2
li x11, 0x0498c66b2ef81b9e # initialize rd,rs1
c.sub x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cp_rd (Test destination rd = x12)
li x11, 0x67e302d17c0e8c98 # initialize rs2
li x12, 0x9847d727c5976e5b # initialize rd,rs1
c.sub x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0x91164a647f7384e2 # initialize rs2
li x13, 0x60874c7a2d049250 # initialize rd,rs1
c.sub x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cp_rd (Test destination rd = x14)
li x10, 0x13b47d14edc0d5fe # initialize rs2
li x14, 0x579644d558c9c87c # initialize rd,rs1
c.sub x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0x1faccfe4363b5257 # initialize rs2
li x15, 0x8b38b60b1a2cc0ea # initialize rd,rs1
c.sub x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 568)

#.EQU SIGSIZE,576


// ******************
// Tests from: WALLY-COV-c.ldsp.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0x79b785925f212a9e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -424 # sub immediate from rs1 to counter offset
c.sdsp x15, 424(sp)   # store value to put something in memory
c.ldsp x1, 424(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x09ee9d1b54ee610e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.sdsp x21, 144(sp)   # store value to put something in memory
c.ldsp x2, 144(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x6680323f53ade875 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
c.sdsp x17, 176(sp)   # store value to put something in memory
c.ldsp x3, 176(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xcb33389441ec9b0e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
c.sdsp x2, 456(sp)   # store value to put something in memory
c.ldsp x4, 456(sp) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 24)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x11b7498ee75d3bf3 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -392 # sub immediate from rs1 to counter offset
c.sdsp x8, 392(sp)   # store value to put something in memory
c.ldsp x5, 392(sp) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 32)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x36dde2453fd94159 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
c.sdsp x28, 448(sp)   # store value to put something in memory
c.ldsp x6, 448(sp) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x56d94102cbb1f40b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -488 # sub immediate from rs1 to counter offset
c.sdsp x29, 488(sp)   # store value to put something in memory
c.ldsp x7, 488(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x1ed0d5a599534c5d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
c.sdsp x1, 448(sp)   # store value to put something in memory
c.ldsp x8, 448(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xbcbe29916159615c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
c.sdsp x22, 328(sp)   # store value to put something in memory
c.ldsp x9, 328(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd38516160037c940 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.sdsp x9, 48(sp)   # store value to put something in memory
c.ldsp x10, 48(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x79283e2d3a23cc09 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.sdsp x13, 248(sp)   # store value to put something in memory
c.ldsp x11, 248(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x2518b06257895554 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x22, 504(sp)   # store value to put something in memory
c.ldsp x12, 504(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x407e911f12fea61e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
c.sdsp x28, 336(sp)   # store value to put something in memory
c.ldsp x13, 336(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xe53d285288f71a14 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
c.sdsp x23, 336(sp)   # store value to put something in memory
c.ldsp x14, 336(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x028c4d3682d858cc # initialize rs1
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.sdsp x19, 112(sp)   # store value to put something in memory
c.ldsp x15, 112(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x14018bec94f75995 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.sdsp x12, 16(sp)   # store value to put something in memory
c.ldsp x16, 16(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xa379ce96ff9d18ac # initialize rs1
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.sdsp x5, 24(sp)   # store value to put something in memory
c.ldsp x17, 24(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xaf0dc30d0a625f2d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
c.sdsp x27, 184(sp)   # store value to put something in memory
c.ldsp x18, 184(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xc53ff872d2d9b26f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -352 # sub immediate from rs1 to counter offset
c.sdsp x16, 352(sp)   # store value to put something in memory
c.ldsp x19, 352(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x16069764786f7f3f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.sdsp x18, 216(sp)   # store value to put something in memory
c.ldsp x20, 216(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x5548deef487cb573 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.sdsp x25, 200(sp)   # store value to put something in memory
c.ldsp x21, 200(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x204dd92670de1644 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -384 # sub immediate from rs1 to counter offset
c.sdsp x22, 384(sp)   # store value to put something in memory
c.ldsp x22, 384(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x24bc90e9e08e02f8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -392 # sub immediate from rs1 to counter offset
c.sdsp x16, 392(sp)   # store value to put something in memory
c.ldsp x23, 392(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xd3e0e7083ebbbfeb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.sdsp x13, 24(sp)   # store value to put something in memory
c.ldsp x24, 24(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x589b7f25e773acbd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -488 # sub immediate from rs1 to counter offset
c.sdsp x27, 488(sp)   # store value to put something in memory
c.ldsp x25, 488(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 192)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xaa8e532486d44b8d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -480 # sub immediate from rs1 to counter offset
c.sdsp x28, 480(sp)   # store value to put something in memory
c.ldsp x26, 480(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x51836254f93f9a34 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.sdsp x23, 208(sp)   # store value to put something in memory
c.ldsp x27, 208(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x366ded6b4831ce39 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -400 # sub immediate from rs1 to counter offset
c.sdsp x2, 400(sp)   # store value to put something in memory
c.ldsp x28, 400(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xb77a7b6139635315 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
c.sdsp x11, 328(sp)   # store value to put something in memory
c.ldsp x29, 328(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 224)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x015668c3faeca76c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -416 # sub immediate from rs1 to counter offset
c.sdsp x31, 416(sp)   # store value to put something in memory
c.ldsp x30, 416(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xd4573c423c52d507 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -408 # sub immediate from rs1 to counter offset
c.sdsp x22, 408(sp)   # store value to put something in memory
c.ldsp x31, 408(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_imm_mul
li x12, 0x1e4bd3d18a7031fd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x15, 0(sp)   # store value to put something in memory
c.ldsp x12, 0(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cp_imm_mul
li x11, 0xaa64f1ecf3106253 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.sdsp x19, 8(sp)   # store value to put something in memory
c.ldsp x11, 8(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cp_imm_mul
li x24, 0xde5c81359e88bc87 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.sdsp x2, 16(sp)   # store value to put something in memory
c.ldsp x24, 16(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 264)

# Testcase cp_imm_mul
li x10, 0x3af279b82760e18c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.sdsp x2, 24(sp)   # store value to put something in memory
c.ldsp x10, 24(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 272)

# Testcase cp_imm_mul
li x14, 0x02fa8904b9709619 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.sdsp x6, 32(sp)   # store value to put something in memory
c.ldsp x14, 32(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 280)

# Testcase cp_imm_mul
li x2, 0xac5851f1ae303a2f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
c.sdsp x30, 40(sp)   # store value to put something in memory
c.ldsp x2, 40(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 288)

# Testcase cp_imm_mul
li x12, 0xc7126442957b2571 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.sdsp x20, 48(sp)   # store value to put something in memory
c.ldsp x12, 48(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 296)

# Testcase cp_imm_mul
li x14, 0xb48a7c69918d3206 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.sdsp x26, 56(sp)   # store value to put something in memory
c.ldsp x14, 56(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 304)

# Testcase cp_imm_mul
li x15, 0x6361dde0f131adc3 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
c.sdsp x8, 64(sp)   # store value to put something in memory
c.ldsp x15, 64(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 312)

# Testcase cp_imm_mul
li x26, 0x590a957566540c7c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.sdsp x7, 72(sp)   # store value to put something in memory
c.ldsp x26, 72(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 320)

# Testcase cp_imm_mul
li x29, 0x27bdd8a5f7df6e82 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.sdsp x30, 80(sp)   # store value to put something in memory
c.ldsp x29, 80(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 328)

# Testcase cp_imm_mul
li x31, 0x152e32aa5f828591 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.sdsp x17, 88(sp)   # store value to put something in memory
c.ldsp x31, 88(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 336)

# Testcase cp_imm_mul
li x15, 0xd92db7935adc80be # initialize rs1
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.sdsp x19, 96(sp)   # store value to put something in memory
c.ldsp x15, 96(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 344)

# Testcase cp_imm_mul
li x20, 0x1299a9442be47d88 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
c.sdsp x21, 104(sp)   # store value to put something in memory
c.ldsp x20, 104(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 352)

# Testcase cp_imm_mul
li x11, 0x08da5f018e4ab337 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.sdsp x21, 112(sp)   # store value to put something in memory
c.ldsp x11, 112(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cp_imm_mul
li x17, 0xe5f86772607ceff8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -120 # sub immediate from rs1 to counter offset
c.sdsp x29, 120(sp)   # store value to put something in memory
c.ldsp x17, 120(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 368)

# Testcase cp_imm_mul
li x21, 0xf0f9cf6395dfd42e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
c.sdsp x26, 128(sp)   # store value to put something in memory
c.ldsp x21, 128(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 376)

# Testcase cp_imm_mul
li x14, 0xc28b531de265dd8f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.sdsp x16, 136(sp)   # store value to put something in memory
c.ldsp x14, 136(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 384)

# Testcase cp_imm_mul
li x12, 0xc2c5138831d25053 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.sdsp x5, 144(sp)   # store value to put something in memory
c.ldsp x12, 144(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cp_imm_mul
li x23, 0x63b8255e7d2a9228 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
c.sdsp x5, 152(sp)   # store value to put something in memory
c.ldsp x23, 152(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 400)

# Testcase cp_imm_mul
li x8, 0x4cda6dadf19bd63b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
c.sdsp x19, 160(sp)   # store value to put something in memory
c.ldsp x8, 160(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cp_imm_mul
li x1, 0x62042aaf038416ce # initialize rs1
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.sdsp x27, 168(sp)   # store value to put something in memory
c.ldsp x1, 168(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 416)

# Testcase cp_imm_mul
li x29, 0xd46bc7c5063de82a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
c.sdsp x25, 176(sp)   # store value to put something in memory
c.ldsp x29, 176(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 424)

# Testcase cp_imm_mul
li x23, 0xbb5cf2d88c89bc8b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
c.sdsp x21, 184(sp)   # store value to put something in memory
c.ldsp x23, 184(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_imm_mul
li x23, 0xc50a004f2063d25e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.sdsp x8, 192(sp)   # store value to put something in memory
c.ldsp x23, 192(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_imm_mul
li x24, 0xbc865d3c5f2ba78c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.sdsp x6, 200(sp)   # store value to put something in memory
c.ldsp x24, 200(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_imm_mul
li x11, 0xf2cc55831d90550d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.sdsp x31, 208(sp)   # store value to put something in memory
c.ldsp x11, 208(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 456)

# Testcase cp_imm_mul
li x31, 0x8d7a8f75f2b1ff72 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.sdsp x8, 216(sp)   # store value to put something in memory
c.ldsp x31, 216(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cp_imm_mul
li x29, 0xda68052912f82e25 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
c.sdsp x24, 224(sp)   # store value to put something in memory
c.ldsp x29, 224(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cp_imm_mul
li x21, 0xe335a8fefdd6840a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
c.sdsp x27, 232(sp)   # store value to put something in memory
c.ldsp x21, 232(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 480)

# Testcase cp_imm_mul
li x1, 0x262e1aa92be393c5 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.sdsp x2, 240(sp)   # store value to put something in memory
c.ldsp x1, 240(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 488)

# Testcase cp_imm_mul
li x20, 0x5e200dd0887b2505 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.sdsp x31, 248(sp)   # store value to put something in memory
c.ldsp x20, 248(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 496)

# Testcase cp_imm_mul
li x7, 0xe2543fee193b6575 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -256 # sub immediate from rs1 to counter offset
c.sdsp x31, 256(sp)   # store value to put something in memory
c.ldsp x7, 256(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 504)

# Testcase cp_imm_mul
li x17, 0xbb548b797e506d46 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -264 # sub immediate from rs1 to counter offset
c.sdsp x7, 264(sp)   # store value to put something in memory
c.ldsp x17, 264(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 512)

# Testcase cp_imm_mul
li x9, 0x4adf5d9ebeee9a33 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -272 # sub immediate from rs1 to counter offset
c.sdsp x5, 272(sp)   # store value to put something in memory
c.ldsp x9, 272(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cp_imm_mul
li x2, 0x223408f195ed6d49 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -280 # sub immediate from rs1 to counter offset
c.sdsp x19, 280(sp)   # store value to put something in memory
c.ldsp x2, 280(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_imm_mul
li x3, 0x288dc04be78e52be # initialize rs1
la sp, scratch # base address 
addi sp, sp, -288 # sub immediate from rs1 to counter offset
c.sdsp x13, 288(sp)   # store value to put something in memory
c.ldsp x3, 288(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_imm_mul
li x3, 0xbadccf59dd932913 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -296 # sub immediate from rs1 to counter offset
c.sdsp x25, 296(sp)   # store value to put something in memory
c.ldsp x3, 296(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 544)

# Testcase cp_imm_mul
li x9, 0xd248ce35f72362ad # initialize rs1
la sp, scratch # base address 
addi sp, sp, -304 # sub immediate from rs1 to counter offset
c.sdsp x24, 304(sp)   # store value to put something in memory
c.ldsp x9, 304(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 552)

# Testcase cp_imm_mul
li x31, 0x65938ea995d6824c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -312 # sub immediate from rs1 to counter offset
c.sdsp x20, 312(sp)   # store value to put something in memory
c.ldsp x31, 312(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 560)

# Testcase cp_imm_mul
li x3, 0xa7b0357a06216c21 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -320 # sub immediate from rs1 to counter offset
c.sdsp x22, 320(sp)   # store value to put something in memory
c.ldsp x3, 320(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 568)

# Testcase cp_imm_mul
li x21, 0xdffa6a227114ac58 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
c.sdsp x7, 328(sp)   # store value to put something in memory
c.ldsp x21, 328(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 576)

# Testcase cp_imm_mul
li x15, 0x02e683ea54506d9a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
c.sdsp x23, 336(sp)   # store value to put something in memory
c.ldsp x15, 336(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 584)

# Testcase cp_imm_mul
li x5, 0x81ba71e6fe0c9546 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -344 # sub immediate from rs1 to counter offset
c.sdsp x7, 344(sp)   # store value to put something in memory
c.ldsp x5, 344(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 592)

# Testcase cp_imm_mul
li x5, 0x992b617a2f465888 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -352 # sub immediate from rs1 to counter offset
c.sdsp x30, 352(sp)   # store value to put something in memory
c.ldsp x5, 352(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 600)

# Testcase cp_imm_mul
li x16, 0x8a0f9b9670772beb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -360 # sub immediate from rs1 to counter offset
c.sdsp x11, 360(sp)   # store value to put something in memory
c.ldsp x16, 360(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 608)

# Testcase cp_imm_mul
li x13, 0x93cf975136fa3d5c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -368 # sub immediate from rs1 to counter offset
c.sdsp x3, 368(sp)   # store value to put something in memory
c.ldsp x13, 368(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_imm_mul
li x3, 0xbc99edf8b8386b9b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -376 # sub immediate from rs1 to counter offset
c.sdsp x23, 376(sp)   # store value to put something in memory
c.ldsp x3, 376(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 624)

# Testcase cp_imm_mul
li x12, 0x265c870dabe905da # initialize rs1
la sp, scratch # base address 
addi sp, sp, -384 # sub immediate from rs1 to counter offset
c.sdsp x18, 384(sp)   # store value to put something in memory
c.ldsp x12, 384(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 632)

# Testcase cp_imm_mul
li x17, 0xf37f6b98bdeafcfb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -392 # sub immediate from rs1 to counter offset
c.sdsp x20, 392(sp)   # store value to put something in memory
c.ldsp x17, 392(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 640)

# Testcase cp_imm_mul
li x24, 0x20ce65053a0dd5dc # initialize rs1
la sp, scratch # base address 
addi sp, sp, -400 # sub immediate from rs1 to counter offset
c.sdsp x1, 400(sp)   # store value to put something in memory
c.ldsp x24, 400(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 648)

# Testcase cp_imm_mul
li x2, 0xbc5fd473003d77d5 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -408 # sub immediate from rs1 to counter offset
c.sdsp x13, 408(sp)   # store value to put something in memory
c.ldsp x2, 408(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cp_imm_mul
li x16, 0x0dcd48f9840b6977 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -416 # sub immediate from rs1 to counter offset
c.sdsp x31, 416(sp)   # store value to put something in memory
c.ldsp x16, 416(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 664)

# Testcase cp_imm_mul
li x3, 0x68e5f5e7875694da # initialize rs1
la sp, scratch # base address 
addi sp, sp, -424 # sub immediate from rs1 to counter offset
c.sdsp x30, 424(sp)   # store value to put something in memory
c.ldsp x3, 424(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 672)

# Testcase cp_imm_mul
li x26, 0x5f93afe68bf53502 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -432 # sub immediate from rs1 to counter offset
c.sdsp x10, 432(sp)   # store value to put something in memory
c.ldsp x26, 432(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 680)

# Testcase cp_imm_mul
li x29, 0x8da540b03ea1754b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -440 # sub immediate from rs1 to counter offset
c.sdsp x9, 440(sp)   # store value to put something in memory
c.ldsp x29, 440(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 688)

# Testcase cp_imm_mul
li x15, 0xb12c87da4be4fb77 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
c.sdsp x21, 448(sp)   # store value to put something in memory
c.ldsp x15, 448(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 696)

# Testcase cp_imm_mul
li x31, 0xba351e284449962b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
c.sdsp x1, 456(sp)   # store value to put something in memory
c.ldsp x31, 456(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 704)

# Testcase cp_imm_mul
li x31, 0x1ec53d94b4450068 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -464 # sub immediate from rs1 to counter offset
c.sdsp x18, 464(sp)   # store value to put something in memory
c.ldsp x31, 464(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 712)

# Testcase cp_imm_mul
li x27, 0xcefd453341299d56 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -472 # sub immediate from rs1 to counter offset
c.sdsp x31, 472(sp)   # store value to put something in memory
c.ldsp x27, 472(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 720)

# Testcase cp_imm_mul
li x19, 0x24ea4bc7211df2c9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -480 # sub immediate from rs1 to counter offset
c.sdsp x7, 480(sp)   # store value to put something in memory
c.ldsp x19, 480(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 728)

# Testcase cp_imm_mul
li x10, 0x2483bcb27eab67fa # initialize rs1
la sp, scratch # base address 
addi sp, sp, -488 # sub immediate from rs1 to counter offset
c.sdsp x28, 488(sp)   # store value to put something in memory
c.ldsp x10, 488(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 736)

# Testcase cp_imm_mul
li x28, 0x95b197a3bad8e2fa # initialize rs1
la sp, scratch # base address 
addi sp, sp, -496 # sub immediate from rs1 to counter offset
c.sdsp x18, 496(sp)   # store value to put something in memory
c.ldsp x28, 496(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 744)

# Testcase cp_imm_mul
li x18, 0x888b0b1ce76975ba # initialize rs1
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x13, 504(sp)   # store value to put something in memory
c.ldsp x18, 504(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 752)

#.EQU SIGSIZE,760


// ******************
// Tests from: WALLY-COV-c.lui.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0x4c272e03cf54494b # initialize rs1
c.lui x1, 0xfffec # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x9, 0x41244b11971c8395 # initialize rs1
c.lui x9, 0xfffe6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xa2e19ff3d7858f41 # initialize rs1
c.lui x3, 0x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa6a428637f5f6e99 # initialize rs1
c.lui x4, 0xb # perform operation
RVTEST_SIGUPD(x5, x0, x4, 24)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf77b48ea7f9a11dc # initialize rs1
c.lui x5, 0xffffd # perform operation
RVTEST_SIGUPD(x6, x0, x5, 32)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe0ad7d0e9f6c9087 # initialize rs1
c.lui x6, 0xffff5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa5751256d40a4e2f # initialize rs1
c.lui x7, 0xffffa # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x91a9022afdee21bb # initialize rs1
c.lui x8, 0xffffd # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x4fb4a07781eb48e8 # initialize rs1
c.lui x9, 0x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x8d92ffab944286b6 # initialize rs1
c.lui x10, 0xc # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x9dab09202221be79 # initialize rs1
c.lui x11, 0x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xd8883e2e0676c46d # initialize rs1
c.lui x12, 0x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x48cbcda664863495 # initialize rs1
c.lui x13, 0x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xbe660b15891f3984 # initialize rs1
c.lui x14, 0xfffe3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x31ac5c257cfa7fd9 # initialize rs1
c.lui x15, 0x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xf0ca60e4cb37174e # initialize rs1
c.lui x16, 0xfffff # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xcb19bd8f7e6d64ea # initialize rs1
c.lui x17, 0x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x98a369c6e80b5e44 # initialize rs1
c.lui x18, 0xfffed # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x0f43a619537d7950 # initialize rs1
c.lui x19, 0xfffe7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x9f9a2d95a7d6279f # initialize rs1
c.lui x20, 0x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x4d67a858038c3be3 # initialize rs1
c.lui x21, 0xffff4 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xf3fefb5fd70a9102 # initialize rs1
c.lui x22, 0x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x7edbf783db0a6219 # initialize rs1
c.lui x23, 0xffff5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xe65dfda4f81e4f8a # initialize rs1
c.lui x24, 0x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x883d228e063a3e0d # initialize rs1
c.lui x25, 0xfffe1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 192)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x4e3280389ad9f02e # initialize rs1
c.lui x26, 0xfffef # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x0ae604e80340de10 # initialize rs1
c.lui x27, 0xfffe4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x0189328199e18c13 # initialize rs1
c.lui x28, 0xfffff # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x2147c4b450cd6a26 # initialize rs1
c.lui x29, 0xffff9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 224)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xa0f4ec81f8bd72f7 # initialize rs1
c.lui x30, 0x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x207a1e75de32754f # initialize rs1
c.lui x31, 0x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_imm_corners
li x28, 0x23962b2d431f5fc6 # initialize rs1
c.lui x28, 0x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 248)

# Testcase cp_imm_corners
li x25, 0x311eb5f220484f23 # initialize rs1
c.lui x25, 0x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 256)

# Testcase cp_imm_corners
li x23, 0x56c56d2dd988550d # initialize rs1
c.lui x23, 0x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 264)

# Testcase cp_imm_corners
li x18, 0x5fd50299a8a62a54 # initialize rs1
c.lui x18, 0x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 272)

# Testcase cp_imm_corners
li x11, 0x172455299ad33c17 # initialize rs1
c.lui x11, 0x4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 280)

# Testcase cp_imm_corners
li x10, 0xf36691787e503b32 # initialize rs1
c.lui x10, 0x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cp_imm_corners
li x28, 0x6bfe629bce22d6ca # initialize rs1
c.lui x28, 0x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 296)

# Testcase cp_imm_corners
li x20, 0x40442262f6709ac9 # initialize rs1
c.lui x20, 0x1e # perform operation
RVTEST_SIGUPD(x4, x0, x20, 304)

# Testcase cp_imm_corners
li x11, 0x90eda6488da1c394 # initialize rs1
c.lui x11, 0x1f # perform operation
RVTEST_SIGUPD(x4, x0, x11, 312)

# Testcase cp_imm_corners
li x14, 0x8a990b110b8da179 # initialize rs1
c.lui x14, 0xfffe0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 320)

# Testcase cp_imm_corners
li x8, 0xd402a3c7c206176b # initialize rs1
c.lui x8, 0xfffe1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 328)

# Testcase cp_imm_corners
li x27, 0x5a7da0a340c2d168 # initialize rs1
c.lui x27, 0xffffe # perform operation
RVTEST_SIGUPD(x4, x0, x27, 336)

# Testcase cp_imm_corners
li x9, 0xe452c59a69af4751 # initialize rs1
c.lui x9, 0xfffff # perform operation
RVTEST_SIGUPD(x4, x0, x9, 344)

#.EQU SIGSIZE,352


// ******************
// Tests from: WALLY-COV-c.lwsp.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0xe918e2aded45a4ec # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.swsp x14, 216(sp)   # store value to put something in memory
c.lwsp x1, 216(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xd58ec4c140b469ea # initialize rs1
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
c.swsp x26, 92(sp)   # store value to put something in memory
c.lwsp x2, 92(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x13c0774996f3ef89 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.swsp x2, 88(sp)   # store value to put something in memory
c.lwsp x3, 88(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3dce726a3f5a4211 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.swsp x18, 136(sp)   # store value to put something in memory
c.lwsp x4, 136(sp) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 24)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe0d11bdc38c9dba1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
c.swsp x11, 36(sp)   # store value to put something in memory
c.lwsp x5, 36(sp) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 32)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x986552ade9bd1100 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
c.swsp x11, 104(sp)   # store value to put something in memory
c.lwsp x6, 104(sp) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc58c3ac0e2b0f8bd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
c.swsp x11, 36(sp)   # store value to put something in memory
c.lwsp x7, 36(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xd6f27828cc6390da # initialize rs1
la sp, scratch # base address 
addi sp, sp, -212 # sub immediate from rs1 to counter offset
c.swsp x7, 212(sp)   # store value to put something in memory
c.lwsp x8, 212(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x132bda6c9d9063fa # initialize rs1
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.swsp x30, 32(sp)   # store value to put something in memory
c.lwsp x9, 32(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xbb4447c028545c18 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -108 # sub immediate from rs1 to counter offset
c.swsp x23, 108(sp)   # store value to put something in memory
c.lwsp x10, 108(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xd9180cb8e093078b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x30, 0(sp)   # store value to put something in memory
c.lwsp x11, 0(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xe05f1c1ba59e0103 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.swsp x23, 192(sp)   # store value to put something in memory
c.lwsp x12, 192(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x3f27dbab3dfc6cb1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x16, 72(sp)   # store value to put something in memory
c.lwsp x13, 72(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x6441727ee6fa6f0b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.swsp x10, 192(sp)   # store value to put something in memory
c.lwsp x14, 192(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xc0ccf91365f435ef # initialize rs1
la sp, scratch # base address 
addi sp, sp, -188 # sub immediate from rs1 to counter offset
c.swsp x20, 188(sp)   # store value to put something in memory
c.lwsp x15, 188(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xf00e1fd2828b364b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -244 # sub immediate from rs1 to counter offset
c.swsp x25, 244(sp)   # store value to put something in memory
c.lwsp x16, 244(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x0a6f83198d9b07e5 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
c.swsp x19, 232(sp)   # store value to put something in memory
c.lwsp x17, 232(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x0d17a617f862b112 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -236 # sub immediate from rs1 to counter offset
c.swsp x3, 236(sp)   # store value to put something in memory
c.lwsp x18, 236(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x8f4e8e2190eaba9f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -228 # sub immediate from rs1 to counter offset
c.swsp x1, 228(sp)   # store value to put something in memory
c.lwsp x19, 228(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x55db42f1613ae526 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
c.swsp x28, 128(sp)   # store value to put something in memory
c.lwsp x20, 128(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x102789646614427c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -212 # sub immediate from rs1 to counter offset
c.swsp x5, 212(sp)   # store value to put something in memory
c.lwsp x21, 212(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xe49422e0658cf03b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x13, 0(sp)   # store value to put something in memory
c.lwsp x22, 0(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x66bf6192a2ed2763 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -132 # sub immediate from rs1 to counter offset
c.swsp x23, 132(sp)   # store value to put something in memory
c.lwsp x23, 132(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x67752cb7bd84244f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
c.swsp x23, 104(sp)   # store value to put something in memory
c.lwsp x24, 104(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x49dcca005496f0bb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.swsp x20, 144(sp)   # store value to put something in memory
c.lwsp x25, 144(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 192)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xe4de97d02bbf3340 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -148 # sub immediate from rs1 to counter offset
c.swsp x28, 148(sp)   # store value to put something in memory
c.lwsp x26, 148(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xa3e23d3c43097ac4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x22, 0(sp)   # store value to put something in memory
c.lwsp x27, 0(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x72f4827ae3dcda98 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.swsp x28, 216(sp)   # store value to put something in memory
c.lwsp x28, 216(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x9863f450b8f9494a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
c.swsp x1, 92(sp)   # store value to put something in memory
c.lwsp x29, 92(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 224)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x96be4c627b2d94c5 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -124 # sub immediate from rs1 to counter offset
c.swsp x25, 124(sp)   # store value to put something in memory
c.lwsp x30, 124(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x04da7801b9c0af84 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.swsp x27, 24(sp)   # store value to put something in memory
c.lwsp x31, 24(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_imm_mul
li x30, 0x116bbc73b99f3830 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x19, 0(sp)   # store value to put something in memory
c.lwsp x30, 0(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_imm_mul
li x29, 0xca2d0947109f4feb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -4 # sub immediate from rs1 to counter offset
c.swsp x22, 4(sp)   # store value to put something in memory
c.lwsp x29, 4(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 256)

# Testcase cp_imm_mul
li x1, 0xe94d5b06b9092d7f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.swsp x23, 8(sp)   # store value to put something in memory
c.lwsp x1, 8(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_imm_mul
li x7, 0x99bd346da9741118 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -12 # sub immediate from rs1 to counter offset
c.swsp x14, 12(sp)   # store value to put something in memory
c.lwsp x7, 12(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 272)

# Testcase cp_imm_mul
li x31, 0xcedc76e862cedd7a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.swsp x12, 16(sp)   # store value to put something in memory
c.lwsp x31, 16(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 280)

# Testcase cp_imm_mul
li x22, 0x97640e6e244c7a09 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -20 # sub immediate from rs1 to counter offset
c.swsp x15, 20(sp)   # store value to put something in memory
c.lwsp x22, 20(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 288)

# Testcase cp_imm_mul
li x23, 0x848a574f9ba20da6 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.swsp x3, 24(sp)   # store value to put something in memory
c.lwsp x23, 24(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 296)

# Testcase cp_imm_mul
li x18, 0xca0a9926b25842ad # initialize rs1
la sp, scratch # base address 
addi sp, sp, -28 # sub immediate from rs1 to counter offset
c.swsp x23, 28(sp)   # store value to put something in memory
c.lwsp x18, 28(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 304)

# Testcase cp_imm_mul
li x6, 0x54f45dcf58c868d0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.swsp x31, 32(sp)   # store value to put something in memory
c.lwsp x6, 32(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 312)

# Testcase cp_imm_mul
li x23, 0xeae63906835d0912 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
c.swsp x12, 36(sp)   # store value to put something in memory
c.lwsp x23, 36(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 320)

# Testcase cp_imm_mul
li x20, 0x533c0b77559ebf41 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
c.swsp x19, 40(sp)   # store value to put something in memory
c.lwsp x20, 40(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 328)

# Testcase cp_imm_mul
li x27, 0x0d50d3dbecc45c95 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -44 # sub immediate from rs1 to counter offset
c.swsp x24, 44(sp)   # store value to put something in memory
c.lwsp x27, 44(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 336)

# Testcase cp_imm_mul
li x17, 0x834154ff2c2b6adc # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.swsp x14, 48(sp)   # store value to put something in memory
c.lwsp x17, 48(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 344)

# Testcase cp_imm_mul
li x31, 0x78b1ab2467371470 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -52 # sub immediate from rs1 to counter offset
c.swsp x21, 52(sp)   # store value to put something in memory
c.lwsp x31, 52(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 352)

# Testcase cp_imm_mul
li x24, 0x4a14c1acde0db5f2 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.swsp x11, 56(sp)   # store value to put something in memory
c.lwsp x24, 56(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 360)

# Testcase cp_imm_mul
li x1, 0x7dda8e6a1f1bd751 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -60 # sub immediate from rs1 to counter offset
c.swsp x2, 60(sp)   # store value to put something in memory
c.lwsp x1, 60(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 368)

# Testcase cp_imm_mul
li x3, 0x511c62227a63c53d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
c.swsp x6, 64(sp)   # store value to put something in memory
c.lwsp x3, 64(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 376)

# Testcase cp_imm_mul
li x17, 0x6484ab4b4b645ce0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
c.swsp x19, 68(sp)   # store value to put something in memory
c.lwsp x17, 68(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_imm_mul
li x26, 0xf6e16395130f16e0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x14, 72(sp)   # store value to put something in memory
c.lwsp x26, 72(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 392)

# Testcase cp_imm_mul
li x15, 0xb657e64bccb50ea4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -76 # sub immediate from rs1 to counter offset
c.swsp x25, 76(sp)   # store value to put something in memory
c.lwsp x15, 76(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 400)

# Testcase cp_imm_mul
li x8, 0x38c5ab9da5306ea9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.swsp x1, 80(sp)   # store value to put something in memory
c.lwsp x8, 80(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cp_imm_mul
li x2, 0x75ac78ca51ff09cf # initialize rs1
la sp, scratch # base address 
addi sp, sp, -84 # sub immediate from rs1 to counter offset
c.swsp x21, 84(sp)   # store value to put something in memory
c.lwsp x2, 84(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 416)

# Testcase cp_imm_mul
li x8, 0x194a02e62b1f828e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.swsp x23, 88(sp)   # store value to put something in memory
c.lwsp x8, 88(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 424)

# Testcase cp_imm_mul
li x11, 0x86d624c34c55d8d1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
c.swsp x15, 92(sp)   # store value to put something in memory
c.lwsp x11, 92(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 432)

# Testcase cp_imm_mul
li x8, 0x7161482fa81488e4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.swsp x13, 96(sp)   # store value to put something in memory
c.lwsp x8, 96(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_imm_mul
li x17, 0x44c0c9e20000e417 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -100 # sub immediate from rs1 to counter offset
c.swsp x12, 100(sp)   # store value to put something in memory
c.lwsp x17, 100(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 448)

# Testcase cp_imm_mul
li x13, 0x3e61830286949bd4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
c.swsp x27, 104(sp)   # store value to put something in memory
c.lwsp x13, 104(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cp_imm_mul
li x7, 0x4c9d38591575eb09 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -108 # sub immediate from rs1 to counter offset
c.swsp x31, 108(sp)   # store value to put something in memory
c.lwsp x7, 108(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 464)

# Testcase cp_imm_mul
li x18, 0x283daee5ca2ca40b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.swsp x17, 112(sp)   # store value to put something in memory
c.lwsp x18, 112(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 472)

# Testcase cp_imm_mul
li x8, 0xd378a452d132045f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -116 # sub immediate from rs1 to counter offset
c.swsp x1, 116(sp)   # store value to put something in memory
c.lwsp x8, 116(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 480)

# Testcase cp_imm_mul
li x11, 0x31d74b80a1ed5d89 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -120 # sub immediate from rs1 to counter offset
c.swsp x5, 120(sp)   # store value to put something in memory
c.lwsp x11, 120(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cp_imm_mul
li x15, 0xfbfdd5d24c913000 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -124 # sub immediate from rs1 to counter offset
c.swsp x21, 124(sp)   # store value to put something in memory
c.lwsp x15, 124(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cp_imm_mul
li x10, 0xb3f6df6c70df6b82 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
c.swsp x19, 128(sp)   # store value to put something in memory
c.lwsp x10, 128(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 504)

# Testcase cp_imm_mul
li x23, 0xe76038c5ead65d8e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -132 # sub immediate from rs1 to counter offset
c.swsp x19, 132(sp)   # store value to put something in memory
c.lwsp x23, 132(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 512)

# Testcase cp_imm_mul
li x11, 0xed34d6211c017335 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.swsp x27, 136(sp)   # store value to put something in memory
c.lwsp x11, 136(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 520)

# Testcase cp_imm_mul
li x9, 0xff6d42e215610865 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -140 # sub immediate from rs1 to counter offset
c.swsp x16, 140(sp)   # store value to put something in memory
c.lwsp x9, 140(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

# Testcase cp_imm_mul
li x22, 0x1b80cf2bdd567ac2 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.swsp x25, 144(sp)   # store value to put something in memory
c.lwsp x22, 144(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 536)

# Testcase cp_imm_mul
li x22, 0x5912e596b1f471fc # initialize rs1
la sp, scratch # base address 
addi sp, sp, -148 # sub immediate from rs1 to counter offset
c.swsp x27, 148(sp)   # store value to put something in memory
c.lwsp x22, 148(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 544)

# Testcase cp_imm_mul
li x3, 0x4cb37903aeeb8487 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
c.swsp x5, 152(sp)   # store value to put something in memory
c.lwsp x3, 152(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cp_imm_mul
li x10, 0xa7ea8f536d09ebde # initialize rs1
la sp, scratch # base address 
addi sp, sp, -156 # sub immediate from rs1 to counter offset
c.swsp x14, 156(sp)   # store value to put something in memory
c.lwsp x10, 156(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 560)

# Testcase cp_imm_mul
li x22, 0xfac4a8990ebe7f70 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
c.swsp x6, 160(sp)   # store value to put something in memory
c.lwsp x22, 160(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 568)

# Testcase cp_imm_mul
li x6, 0x3d14a3facab71460 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -164 # sub immediate from rs1 to counter offset
c.swsp x3, 164(sp)   # store value to put something in memory
c.lwsp x6, 164(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 576)

# Testcase cp_imm_mul
li x6, 0x4222ec699f328011 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x15, 168(sp)   # store value to put something in memory
c.lwsp x6, 168(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 584)

# Testcase cp_imm_mul
li x17, 0x7486d6c3e76e4f60 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -172 # sub immediate from rs1 to counter offset
c.swsp x13, 172(sp)   # store value to put something in memory
c.lwsp x17, 172(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 592)

# Testcase cp_imm_mul
li x1, 0x522f8a6696c084f2 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
c.swsp x28, 176(sp)   # store value to put something in memory
c.lwsp x1, 176(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 600)

# Testcase cp_imm_mul
li x2, 0xec422263e09c2415 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -180 # sub immediate from rs1 to counter offset
c.swsp x30, 180(sp)   # store value to put something in memory
c.lwsp x2, 180(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 608)

# Testcase cp_imm_mul
li x3, 0x248d04c863926f3d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
c.swsp x15, 184(sp)   # store value to put something in memory
c.lwsp x3, 184(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 616)

# Testcase cp_imm_mul
li x18, 0x89e3206895f41d73 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -188 # sub immediate from rs1 to counter offset
c.swsp x2, 188(sp)   # store value to put something in memory
c.lwsp x18, 188(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 624)

# Testcase cp_imm_mul
li x6, 0x7d055695bb7d1fba # initialize rs1
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.swsp x21, 192(sp)   # store value to put something in memory
c.lwsp x6, 192(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 632)

# Testcase cp_imm_mul
li x10, 0xc653345c0fd4cdf9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -196 # sub immediate from rs1 to counter offset
c.swsp x15, 196(sp)   # store value to put something in memory
c.lwsp x10, 196(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cp_imm_mul
li x10, 0xb91903fcd62242ae # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.swsp x9, 200(sp)   # store value to put something in memory
c.lwsp x10, 200(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 648)

# Testcase cp_imm_mul
li x29, 0x86ef74ae15bbbea1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -204 # sub immediate from rs1 to counter offset
c.swsp x17, 204(sp)   # store value to put something in memory
c.lwsp x29, 204(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 656)

# Testcase cp_imm_mul
li x2, 0x865310cb838b440d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.swsp x19, 208(sp)   # store value to put something in memory
c.lwsp x2, 208(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 664)

# Testcase cp_imm_mul
li x18, 0xe6c4cd5ee97eeec3 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -212 # sub immediate from rs1 to counter offset
c.swsp x9, 212(sp)   # store value to put something in memory
c.lwsp x18, 212(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 672)

# Testcase cp_imm_mul
li x14, 0x8466571edfa79111 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.swsp x11, 216(sp)   # store value to put something in memory
c.lwsp x14, 216(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 680)

# Testcase cp_imm_mul
li x27, 0x5aad0cae7ba2520a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -220 # sub immediate from rs1 to counter offset
c.swsp x24, 220(sp)   # store value to put something in memory
c.lwsp x27, 220(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 688)

# Testcase cp_imm_mul
li x27, 0x5d824329a2f57b9c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
c.swsp x20, 224(sp)   # store value to put something in memory
c.lwsp x27, 224(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 696)

# Testcase cp_imm_mul
li x17, 0xc3aa77f49ea2a225 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -228 # sub immediate from rs1 to counter offset
c.swsp x24, 228(sp)   # store value to put something in memory
c.lwsp x17, 228(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 704)

# Testcase cp_imm_mul
li x25, 0x4b11b367d2d4a384 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
c.swsp x9, 232(sp)   # store value to put something in memory
c.lwsp x25, 232(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_imm_mul
li x17, 0x212c5a5b50f2f713 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -236 # sub immediate from rs1 to counter offset
c.swsp x23, 236(sp)   # store value to put something in memory
c.lwsp x17, 236(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 720)

# Testcase cp_imm_mul
li x22, 0x36171fcf571ea6ba # initialize rs1
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.swsp x12, 240(sp)   # store value to put something in memory
c.lwsp x22, 240(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 728)

# Testcase cp_imm_mul
li x18, 0x84ed2ed6846bcfee # initialize rs1
la sp, scratch # base address 
addi sp, sp, -244 # sub immediate from rs1 to counter offset
c.swsp x14, 244(sp)   # store value to put something in memory
c.lwsp x18, 244(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 736)

# Testcase cp_imm_mul
li x31, 0x36aa6697d7589bdc # initialize rs1
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.swsp x19, 248(sp)   # store value to put something in memory
c.lwsp x31, 248(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 744)

# Testcase cp_imm_mul
li x6, 0x8d4b9afcec21efbe # initialize rs1
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x26, 252(sp)   # store value to put something in memory
c.lwsp x6, 252(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 752)

#.EQU SIGSIZE,760


// ******************
// Tests from: WALLY-COV-c.addi16sp.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_imm_mul
li x8, 0x395a58168403f990 # initialize rs1
c.addi16sp sp, -512 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cp_imm_mul
li x5, 0xd4ac78b6d04d0485 # initialize rs1
c.addi16sp sp, -496 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_imm_mul
li x8, 0x382d47ee4e3e4b2f # initialize rs1
c.addi16sp sp, -480 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_imm_mul
li x19, 0x0dc287145ee167e7 # initialize rs1
c.addi16sp sp, -464 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 24)

# Testcase cp_imm_mul
li x17, 0x9f11672166d7e81d # initialize rs1
c.addi16sp sp, -448 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 32)

# Testcase cp_imm_mul
li x18, 0x189a0b7f6970dc5f # initialize rs1
c.addi16sp sp, -432 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 40)

# Testcase cp_imm_mul
li x1, 0xb3dcc1c19f82a5e9 # initialize rs1
c.addi16sp sp, -416 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 48)

# Testcase cp_imm_mul
li x21, 0x930b87c906655b4f # initialize rs1
c.addi16sp sp, -400 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 56)

# Testcase cp_imm_mul
li x9, 0x96dd13b319cfd70a # initialize rs1
c.addi16sp sp, -384 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 64)

# Testcase cp_imm_mul
li x5, 0x4895076524774f58 # initialize rs1
c.addi16sp sp, -368 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 72)

# Testcase cp_imm_mul
li x13, 0x838d575835750b18 # initialize rs1
c.addi16sp sp, -352 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 80)

# Testcase cp_imm_mul
li x19, 0x166054ff396def80 # initialize rs1
c.addi16sp sp, -336 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_imm_mul
li x24, 0x69d40224777ca0d9 # initialize rs1
c.addi16sp sp, -320 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 96)

# Testcase cp_imm_mul
li x31, 0x3b8010e59dfc81c1 # initialize rs1
c.addi16sp sp, -304 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 104)

# Testcase cp_imm_mul
li x15, 0xf8ccf56df827266f # initialize rs1
c.addi16sp sp, -288 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_imm_mul
li x23, 0xff4a117b467acbf3 # initialize rs1
c.addi16sp sp, -272 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 120)

# Testcase cp_imm_mul
li x5, 0x85dab7f4fc750f4b # initialize rs1
c.addi16sp sp, -256 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_imm_mul
li x30, 0x4e09ecbd28576d8b # initialize rs1
c.addi16sp sp, -240 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_imm_mul
li x30, 0x3c20400728301557 # initialize rs1
c.addi16sp sp, -224 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 144)

# Testcase cp_imm_mul
li x7, 0x9eab5fa1dbfbbc75 # initialize rs1
c.addi16sp sp, -208 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 152)

# Testcase cp_imm_mul
li x2, 0xbf3eb4dfda6da188 # initialize rs1
c.addi16sp sp, -192 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cp_imm_mul
li x16, 0x65a778a69cf8167f # initialize rs1
c.addi16sp sp, -176 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase cp_imm_mul
li x10, 0x52238e7cff7e3709 # initialize rs1
c.addi16sp sp, -160 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 176)

# Testcase cp_imm_mul
li x11, 0xb8e6fb9ed82bf436 # initialize rs1
c.addi16sp sp, -144 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_imm_mul
li x10, 0x856f7b11a999b61e # initialize rs1
c.addi16sp sp, -128 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 192)

# Testcase cp_imm_mul
li x25, 0xfb003bcd61f66d38 # initialize rs1
c.addi16sp sp, -112 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 200)

# Testcase cp_imm_mul
li x2, 0x2ae3642e7ded6149 # initialize rs1
c.addi16sp sp, -96 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 208)

# Testcase cp_imm_mul
li x26, 0xc89728309d02fe1b # initialize rs1
c.addi16sp sp, -80 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cp_imm_mul
li x2, 0xcf52c357793e9737 # initialize rs1
c.addi16sp sp, -64 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 224)

# Testcase cp_imm_mul
li x2, 0x91ae58d0d324f165 # initialize rs1
c.addi16sp sp, -48 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 232)

# Testcase cp_imm_mul
li x11, 0xea96e3e9548bb74d # initialize rs1
c.addi16sp sp, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cp_imm_mul
li x2, 0xb66d22876294bd58 # initialize rs1
c.addi16sp sp, -16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 248)

# Testcase cp_imm_mul
li x31, 0x38b23146702ccd5c # initialize rs1
c.addi16sp sp, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cp_imm_mul
li x24, 0x0d4910b4ca40c5ec # initialize rs1
c.addi16sp sp, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_imm_mul
li x18, 0x77e9f04115e8dcbb # initialize rs1
c.addi16sp sp, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_imm_mul
li x7, 0xd1d503f4bad9be00 # initialize rs1
c.addi16sp sp, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 280)

# Testcase cp_imm_mul
li x17, 0xdc89928e1eb070cf # initialize rs1
c.addi16sp sp, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 288)

# Testcase cp_imm_mul
li x24, 0xb782d04df1a873bd # initialize rs1
c.addi16sp sp, 80 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 296)

# Testcase cp_imm_mul
li x5, 0x9f24da6dbd94e497 # initialize rs1
c.addi16sp sp, 96 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 304)

# Testcase cp_imm_mul
li x11, 0x393d830fd05e24e8 # initialize rs1
c.addi16sp sp, 112 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cp_imm_mul
li x12, 0xbff11d4564614f54 # initialize rs1
c.addi16sp sp, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 320)

# Testcase cp_imm_mul
li x5, 0xac5ffb7bc37addad # initialize rs1
c.addi16sp sp, 144 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 328)

# Testcase cp_imm_mul
li x13, 0xdc76ac05b63aec06 # initialize rs1
c.addi16sp sp, 160 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 336)

# Testcase cp_imm_mul
li x6, 0x9249669107434a5c # initialize rs1
c.addi16sp sp, 176 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 344)

# Testcase cp_imm_mul
li x7, 0x9b95be8bc7582273 # initialize rs1
c.addi16sp sp, 192 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 352)

# Testcase cp_imm_mul
li x27, 0x2e8bca430dfe766f # initialize rs1
c.addi16sp sp, 208 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 360)

# Testcase cp_imm_mul
li x30, 0x29817e9b659e0c57 # initialize rs1
c.addi16sp sp, 224 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 368)

# Testcase cp_imm_mul
li x31, 0x6aedc2b335ba5751 # initialize rs1
c.addi16sp sp, 240 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 376)

# Testcase cp_imm_mul
li x5, 0x46a3653abd09890a # initialize rs1
c.addi16sp sp, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 384)

# Testcase cp_imm_mul
li x3, 0xacbb17bc7438347f # initialize rs1
c.addi16sp sp, 272 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 392)

# Testcase cp_imm_mul
li x15, 0x4c8439dbe668d662 # initialize rs1
c.addi16sp sp, 288 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 400)

# Testcase cp_imm_mul
li x30, 0x90ce1e78af63f79b # initialize rs1
c.addi16sp sp, 304 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 408)

# Testcase cp_imm_mul
li x10, 0x795ab02b2701135b # initialize rs1
c.addi16sp sp, 320 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 416)

# Testcase cp_imm_mul
li x10, 0x8c88692bd65b21d6 # initialize rs1
c.addi16sp sp, 336 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 424)

# Testcase cp_imm_mul
li x18, 0x409d385226bf601c # initialize rs1
c.addi16sp sp, 352 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 432)

# Testcase cp_imm_mul
li x20, 0x2333d3d73e54a2fe # initialize rs1
c.addi16sp sp, 368 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 440)

# Testcase cp_imm_mul
li x3, 0xf9a86561ac18b7ae # initialize rs1
c.addi16sp sp, 384 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 448)

# Testcase cp_imm_mul
li x3, 0x6282162869148058 # initialize rs1
c.addi16sp sp, 400 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 456)

# Testcase cp_imm_mul
li x16, 0x9019a28727a427e9 # initialize rs1
c.addi16sp sp, 416 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cp_imm_mul
li x23, 0xef9aedf080626e41 # initialize rs1
c.addi16sp sp, 432 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 472)

# Testcase cp_imm_mul
li x6, 0x06db25520548aade # initialize rs1
c.addi16sp sp, 448 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 480)

# Testcase cp_imm_mul
li x28, 0xb9de1fe3f5f4dab2 # initialize rs1
c.addi16sp sp, 464 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 488)

# Testcase cp_imm_mul
li x19, 0x4601403c3c7de06e # initialize rs1
c.addi16sp sp, 480 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 496)

# Testcase cp_imm_mul
li x23, 0xca70e82e622f4c7b # initialize rs1
c.addi16sp sp, 496 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 504)

#.EQU SIGSIZE,512


// ******************
// Tests from: WALLY-COV-c.srli.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x13, 0x0000000000000000
c.srli x13, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x14, 0x0000000000000001
c.srli x14, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0x0000000000000002
c.srli x14, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x8, 0x8000000000000000
c.srli x8, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x14, 0x8000000000000001
c.srli x14, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x14, 0x7fffffffffffffff
c.srli x14, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x14, 0x7ffffffffffffffe
c.srli x14, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x9, 0xffffffffffffffff
c.srli x9, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x11, 0xfffffffffffffffe
c.srli x11, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x9, 0x5bbc887763ae86f2
c.srli x9, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa
c.srli x9, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x5555555555555555
c.srli x10, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x00000000ffffffff
c.srli x9, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0x00000000fffffffe
c.srli x14, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x9, 0x0000000100000000
c.srli x9, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x13, 0x0000000100000001
c.srli x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000
c.srli x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 128)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000
c.srli x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 136)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000000
c.srli x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000000
c.srli x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 152)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000
c.srli x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000000
c.srli x9, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 168)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000
c.srli x15, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 176)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000000
c.srli x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000
c.srli x15, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 192)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000
c.srli x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000
c.srli x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 208)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000000
c.srli x10, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 216)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000000
c.srli x8, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000000
c.srli x11, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 232)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000000
c.srli x13, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 240)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000000
c.srli x13, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000001
c.srli x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 256)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001
c.srli x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 264)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000001
c.srli x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 272)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000001
c.srli x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 280)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000001
c.srli x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 288)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000001
c.srli x14, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 296)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000001
c.srli x13, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 304)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000001
c.srli x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000001
c.srli x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 320)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000001
c.srli x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 328)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000001
c.srli x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000001
c.srli x14, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 344)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001
c.srli x10, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000001
c.srli x8, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 360)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000001
c.srli x13, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 368)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000001
c.srli x9, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 376)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002
c.srli x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 384)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000002
c.srli x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 392)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002
c.srli x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002
c.srli x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002
c.srli x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 416)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002
c.srli x13, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 424)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000002
c.srli x9, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000002
c.srli x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 440)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000002
c.srli x12, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 448)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000002
c.srli x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002
c.srli x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000002
c.srli x12, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 472)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002
c.srli x8, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 480)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002
c.srli x8, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 488)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000002
c.srli x9, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 496)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000002
c.srli x14, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 504)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000000
c.srli x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 512)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000000
c.srli x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 520)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000000
c.srli x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 528)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000000
c.srli x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 536)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000000
c.srli x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000000
c.srli x11, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 552)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000000
c.srli x12, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 560)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000000
c.srli x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 568)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000000
c.srli x10, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 576)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000000
c.srli x8, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 584)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000000
c.srli x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 592)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000000
c.srli x10, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 600)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000000
c.srli x11, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000000
c.srli x11, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000000
c.srli x9, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 624)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000000
c.srli x12, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 632)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000001
c.srli x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 640)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000001
c.srli x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 648)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000001
c.srli x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 656)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000001
c.srli x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 664)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000001
c.srli x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 672)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000001
c.srli x13, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 680)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000001
c.srli x13, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 688)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000001
c.srli x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 696)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000001
c.srli x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 704)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000001
c.srli x14, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 712)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000001
c.srli x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 720)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000001
c.srli x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 728)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000001
c.srli x13, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 736)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000001
c.srli x12, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 744)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000001
c.srli x15, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 752)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000001
c.srli x11, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 760)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff
c.srli x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 768)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffffffffffff
c.srli x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 776)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff
c.srli x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 784)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffffffffffff
c.srli x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 792)

# Testcase cr_rs1_imm_corners
li x11, 0x7fffffffffffffff
c.srli x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff
c.srli x14, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 808)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffffffffffff
c.srli x8, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 816)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff
c.srli x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 824)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffffffffffff
c.srli x15, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 832)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffffffffffff
c.srli x8, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 840)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffffffffffff
c.srli x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 848)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffffffffffff
c.srli x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 856)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffffffffffff
c.srli x12, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 864)

# Testcase cr_rs1_imm_corners
li x11, 0x7fffffffffffffff
c.srli x11, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 872)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffffffffffff
c.srli x10, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 880)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffffffffffff
c.srli x15, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 888)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffffffffffe
c.srli x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 896)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffffffffffe
c.srli x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 904)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffffffffffe
c.srli x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 912)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffffffffffe
c.srli x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffffffffffe
c.srli x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 928)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffffffffffe
c.srli x15, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 936)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffffffffffe
c.srli x10, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 944)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe
c.srli x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 952)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffffffffffe
c.srli x12, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 960)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffffffffffe
c.srli x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 968)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe
c.srli x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 976)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffffffffffe
c.srli x10, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 984)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffffffffffe
c.srli x11, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 992)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffffffffffe
c.srli x11, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe
c.srli x13, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1008)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffffffffffe
c.srli x12, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1016)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffffffffffff
c.srli x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1024)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffffffffffff
c.srli x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1032)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffffffffffff
c.srli x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1040)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffffffffffff
c.srli x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1048)

# Testcase cr_rs1_imm_corners
li x15, 0xffffffffffffffff
c.srli x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1056)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff
c.srli x9, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1064)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffffffffffff
c.srli x10, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1072)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffffffffffff
c.srli x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1080)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffffffffffff
c.srli x8, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1088)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffffffffffff
c.srli x14, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1096)

# Testcase cr_rs1_imm_corners
li x11, 0xffffffffffffffff
c.srli x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1104)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffffffffffff
c.srli x12, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1112)

# Testcase cr_rs1_imm_corners
li x15, 0xffffffffffffffff
c.srli x15, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1120)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffffffffffff
c.srli x12, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1128)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffffffffffff
c.srli x12, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1136)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff
c.srli x9, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1144)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffffffffffe
c.srli x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1152)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffffffffffe
c.srli x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1160)

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffffffffffe
c.srli x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1168)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffffffffffe
c.srli x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1176)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffffffffffe
c.srli x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1184)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffffffffffe
c.srli x15, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1192)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffffffffffe
c.srli x11, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1200)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffffffffffe
c.srli x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1208)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffffffffffe
c.srli x10, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1216)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffffffffffe
c.srli x14, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1224)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffffffffffe
c.srli x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1232)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffffffffffe
c.srli x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1240)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffffffffffe
c.srli x15, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1248)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffffffffffe
c.srli x14, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1256)

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffffffffffe
c.srli x13, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1264)

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffffffffffe
c.srli x13, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1272)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2
c.srli x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1280)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2
c.srli x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1288)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2
c.srli x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1296)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc887763ae86f2
c.srli x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1304)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc887763ae86f2
c.srli x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1312)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc887763ae86f2
c.srli x14, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1320)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc887763ae86f2
c.srli x15, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1328)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc887763ae86f2
c.srli x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1336)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2
c.srli x13, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1344)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc887763ae86f2
c.srli x14, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1352)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc887763ae86f2
c.srli x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1360)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2
c.srli x13, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1368)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc887763ae86f2
c.srli x14, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1376)

# Testcase cr_rs1_imm_corners
li x12, 0x5bbc887763ae86f2
c.srli x12, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1384)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc887763ae86f2
c.srli x15, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1392)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc887763ae86f2
c.srli x11, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1400)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa
c.srli x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1408)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaaaaaaaaaa
c.srli x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1416)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaaaaaaaaaa
c.srli x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1424)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaaaaaaaaaa
c.srli x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1432)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaaaaaaaaaa
c.srli x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1440)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaaaaaaaaaa
c.srli x13, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1448)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaaaaaaaaaa
c.srli x14, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaaaaaaaaaa
c.srli x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1464)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaaaaaaaaaa
c.srli x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1472)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa
c.srli x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1480)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaaaaaaaaaa
c.srli x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1488)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa
c.srli x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1496)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa
c.srli x9, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1504)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaaaaaaaaaa
c.srli x8, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1512)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa
c.srli x15, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaaaaaaaaaa
c.srli x13, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1528)

# Testcase cr_rs1_imm_corners
li x12, 0x5555555555555555
c.srli x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1536)

# Testcase cr_rs1_imm_corners
li x10, 0x5555555555555555
c.srli x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1544)

# Testcase cr_rs1_imm_corners
li x11, 0x5555555555555555
c.srli x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1552)

# Testcase cr_rs1_imm_corners
li x12, 0x5555555555555555
c.srli x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1560)

# Testcase cr_rs1_imm_corners
li x8, 0x5555555555555555
c.srli x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1568)

# Testcase cr_rs1_imm_corners
li x13, 0x5555555555555555
c.srli x13, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1576)

# Testcase cr_rs1_imm_corners
li x14, 0x5555555555555555
c.srli x14, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1584)

# Testcase cr_rs1_imm_corners
li x13, 0x5555555555555555
c.srli x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1592)

# Testcase cr_rs1_imm_corners
li x13, 0x5555555555555555
c.srli x13, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1600)

# Testcase cr_rs1_imm_corners
li x15, 0x5555555555555555
c.srli x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1608)

# Testcase cr_rs1_imm_corners
li x8, 0x5555555555555555
c.srli x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1616)

# Testcase cr_rs1_imm_corners
li x13, 0x5555555555555555
c.srli x13, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1624)

# Testcase cr_rs1_imm_corners
li x12, 0x5555555555555555
c.srli x12, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1632)

# Testcase cr_rs1_imm_corners
li x12, 0x5555555555555555
c.srli x12, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1640)

# Testcase cr_rs1_imm_corners
li x15, 0x5555555555555555
c.srli x15, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cr_rs1_imm_corners
li x9, 0x5555555555555555
c.srli x9, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1656)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000ffffffff
c.srli x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1664)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000ffffffff
c.srli x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1672)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000ffffffff
c.srli x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1680)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000ffffffff
c.srli x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1688)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000ffffffff
c.srli x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1696)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000ffffffff
c.srli x14, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1704)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000ffffffff
c.srli x8, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1712)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000ffffffff
c.srli x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1720)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000ffffffff
c.srli x11, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1728)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000ffffffff
c.srli x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1736)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000ffffffff
c.srli x10, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1744)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000ffffffff
c.srli x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1752)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000ffffffff
c.srli x12, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1760)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000ffffffff
c.srli x14, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1768)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000ffffffff
c.srli x12, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1776)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000ffffffff
c.srli x9, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1784)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000fffffffe
c.srli x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_imm_corners
li x12, 0x00000000fffffffe
c.srli x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000fffffffe
c.srli x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000fffffffe
c.srli x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe
c.srli x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000fffffffe
c.srli x12, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000fffffffe
c.srli x14, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000fffffffe
c.srli x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000fffffffe
c.srli x8, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe
c.srli x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000fffffffe
c.srli x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000fffffffe
c.srli x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe
c.srli x11, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000fffffffe
c.srli x9, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 96)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000fffffffe
c.srli x10, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 104)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe
c.srli x11, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000000
c.srli x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000
c.srli x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 128)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000
c.srli x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000000
c.srli x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 144)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000000
c.srli x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 152)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000000
c.srli x8, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000000
c.srli x13, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000000
c.srli x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 176)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000000
c.srli x11, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000
c.srli x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 192)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000000
c.srli x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 200)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000000
c.srli x13, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000000
c.srli x9, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000000
c.srli x9, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 224)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000000
c.srli x15, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 232)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000
c.srli x10, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000001
c.srli x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 248)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000001
c.srli x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 256)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001
c.srli x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 264)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000001
c.srli x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000001
c.srli x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 280)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001
c.srli x12, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 288)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001
c.srli x12, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 296)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001
c.srli x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000001
c.srli x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001
c.srli x12, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 320)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000001
c.srli x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 328)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000001
c.srli x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000100000001
c.srli x14, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 344)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000001
c.srli x10, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000100000001
c.srli x14, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000100000001
c.srli x14, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x45a71034ce566478
c.srli x8, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x68ec6a2ae71a505a
c.srli x9, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc93fd20cb11d24e5
c.srli x10, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x2067a3ba263b7f7a
c.srli x11, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x6028b0967900469a
c.srli x12, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x4db45b00861ed2ba
c.srli x13, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x1f4bd35a087cda47
c.srli x14, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xa29de3758f6f1f0d
c.srli x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 432)

# Testcase cp_uimm (Test bit = 0)
li x8, 0x0bcb918b9ead498a
c.srli x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_uimm (Test bit = 1)
li x9, 0xd3026597b5b60b7c
c.srli x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 448)

# Testcase cp_uimm (Test bit = 2)
li x12, 0x2c39d2362b1d63fa
c.srli x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 456)

# Testcase cp_uimm (Test bit = 3)
li x9, 0x13fa697a3ec5bb7f
c.srli x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 464)

# Testcase cp_uimm (Test bit = 4)
li x11, 0xba257593247f6699
c.srli x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 472)

# Testcase cp_uimm (Test bit = 5)
li x9, 0x747c79bc1041d555
c.srli x9, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cp_uimm (Test bit = 6)
li x11, 0x7e71c367bb8a5039
c.srli x11, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cp_uimm (Test bit = 7)
li x11, 0x3b8c0695270cd956
c.srli x11, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 496)

# Testcase cp_uimm (Test bit = 8)
li x8, 0x23b7b7cb959433cf
c.srli x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 504)

# Testcase cp_uimm (Test bit = 9)
li x8, 0x04c0444ea1e4103a
c.srli x8, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cp_uimm (Test bit = 10)
li x10, 0x61355b7dfdd55322
c.srli x10, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 520)

# Testcase cp_uimm (Test bit = 11)
li x8, 0x351c8fea20c90ee2
c.srli x8, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 528)

# Testcase cp_uimm (Test bit = 12)
li x15, 0xe37fbe4c14dd01d2
c.srli x15, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 536)

# Testcase cp_uimm (Test bit = 13)
li x10, 0x30f0878ac48aa8f6
c.srli x10, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cp_uimm (Test bit = 14)
li x11, 0xba9b1cce13dd3f1e
c.srli x11, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 552)

# Testcase cp_uimm (Test bit = 15)
li x11, 0x846142cee271c8c7
c.srli x11, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 560)

# Testcase cp_uimm (Test bit = 16)
li x9, 0x0f6e2383e118c8f7
c.srli x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cp_uimm (Test bit = 17)
li x11, 0x4f6aa7a47fa8ae0f
c.srli x11, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 576)

# Testcase cp_uimm (Test bit = 18)
li x9, 0x957a0d9817a56747
c.srli x9, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_uimm (Test bit = 19)
li x10, 0x4d132aac0b921b40
c.srli x10, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_uimm (Test bit = 20)
li x10, 0x1ec6763e9f4ae7f1
c.srli x10, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 600)

# Testcase cp_uimm (Test bit = 21)
li x15, 0xaf775ee3e1a716cf
c.srli x15, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 608)

# Testcase cp_uimm (Test bit = 22)
li x10, 0xb20f0dc01096b8cb
c.srli x10, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 616)

# Testcase cp_uimm (Test bit = 23)
li x9, 0x77dcfcfd7fca0a24
c.srli x9, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 624)

# Testcase cp_uimm (Test bit = 24)
li x9, 0x4c0ed1ae7ae561bf
c.srli x9, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 632)

# Testcase cp_uimm (Test bit = 25)
li x12, 0xf56f261294dd57a7
c.srli x12, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 640)

# Testcase cp_uimm (Test bit = 26)
li x13, 0xf7fda06ad6ca4596
c.srli x13, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 648)

# Testcase cp_uimm (Test bit = 27)
li x8, 0xb1c1cb6d19885280
c.srli x8, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 656)

# Testcase cp_uimm (Test bit = 28)
li x15, 0x60380e24237ce85c
c.srli x15, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 664)

# Testcase cp_uimm (Test bit = 29)
li x15, 0xd9aa2310e9622565
c.srli x15, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 672)

# Testcase cp_uimm (Test bit = 30)
li x8, 0x604f1e62442ab097
c.srli x8, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 680)

# Testcase cp_uimm (Test bit = 31)
li x9, 0x6ba063e57daa3136
c.srli x9, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 688)

# Testcase cp_uimm (Test bit = 32)
li x15, 0x510cb2d08dc86322
c.srli x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 696)

# Testcase cp_uimm (Test bit = 33)
li x10, 0x0fe2456c7ab9600d
c.srli x10, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 704)

# Testcase cp_uimm (Test bit = 34)
li x14, 0x72bb2f996988bef1
c.srli x14, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 712)

# Testcase cp_uimm (Test bit = 35)
li x11, 0x146632c6bb90657f
c.srli x11, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 720)

# Testcase cp_uimm (Test bit = 36)
li x12, 0x09a709539d441921
c.srli x12, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 728)

# Testcase cp_uimm (Test bit = 37)
li x12, 0x07d32f33797f3bd2
c.srli x12, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cp_uimm (Test bit = 38)
li x14, 0x6df9ccc4c52d1a2e
c.srli x14, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 744)

# Testcase cp_uimm (Test bit = 39)
li x14, 0x6111aa11f6771876
c.srli x14, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cp_uimm (Test bit = 40)
li x9, 0xaddf126474adf418
c.srli x9, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 760)

# Testcase cp_uimm (Test bit = 41)
li x10, 0xfe15ba24c5efd09b
c.srli x10, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 768)

# Testcase cp_uimm (Test bit = 42)
li x12, 0xa78752694d64c716
c.srli x12, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 776)

# Testcase cp_uimm (Test bit = 43)
li x8, 0x588e900295117301
c.srli x8, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 784)

# Testcase cp_uimm (Test bit = 44)
li x9, 0x37694114807d4c50
c.srli x9, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 792)

# Testcase cp_uimm (Test bit = 45)
li x15, 0xd899428c9ed1685d
c.srli x15, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 800)

# Testcase cp_uimm (Test bit = 46)
li x15, 0x7fe47b3e4d28225c
c.srli x15, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 808)

# Testcase cp_uimm (Test bit = 47)
li x12, 0xef720ca73ccc9c5c
c.srli x12, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cp_uimm (Test bit = 48)
li x14, 0x5dc4fae951e07e2f
c.srli x14, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 824)

# Testcase cp_uimm (Test bit = 49)
li x15, 0x8cd0d856fac39a6c
c.srli x15, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 832)

# Testcase cp_uimm (Test bit = 50)
li x11, 0x838dd188107c889b
c.srli x11, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 840)

# Testcase cp_uimm (Test bit = 51)
li x15, 0x92d13874d01adffd
c.srli x15, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 848)

# Testcase cp_uimm (Test bit = 52)
li x9, 0x9301989db28a7f4d
c.srli x9, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 856)

# Testcase cp_uimm (Test bit = 53)
li x11, 0x20943b8477a15752
c.srli x11, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 864)

# Testcase cp_uimm (Test bit = 54)
li x15, 0x145ddc1fc3e51f3a
c.srli x15, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 872)

# Testcase cp_uimm (Test bit = 55)
li x15, 0xbb296250b6d6c884
c.srli x15, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 880)

# Testcase cp_uimm (Test bit = 56)
li x14, 0x6452429decf8e91d
c.srli x14, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 888)

# Testcase cp_uimm (Test bit = 57)
li x12, 0xf60fe773351a289f
c.srli x12, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 896)

# Testcase cp_uimm (Test bit = 58)
li x10, 0x718b169fcbecf697
c.srli x10, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 904)

# Testcase cp_uimm (Test bit = 59)
li x14, 0xc0e27bcf36e506c9
c.srli x14, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 912)

# Testcase cp_uimm (Test bit = 60)
li x13, 0x9fe226ebcf958365
c.srli x13, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cp_uimm (Test bit = 61)
li x13, 0x8e062236a709c71a
c.srli x13, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 928)

# Testcase cp_uimm (Test bit = 62)
li x10, 0xfbd2cac9c0754db8
c.srli x10, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 936)

# Testcase cp_uimm (Test bit = 63)
li x11, 0x2c9d0290c8d96d59
c.srli x11, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 944)

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0x717deb353161a39c
c.srli x11, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 952)

# Testcase cp_rs1 (Test source rs1 = x9)
li x11, 0x21c68303d0cd994b
c.srli x11, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 960)

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0xe8c9193f2663cbf3
c.srli x15, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 968)

# Testcase cp_rs1 (Test source rs1 = x11)
li x14, 0x9f1aafa1c532f6dc
c.srli x14, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 976)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0xc2896a6c2d941651
c.srli x15, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 984)

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0xd7b58abb9609b7ff
c.srli x11, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 992)

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0xa10ab3e253647d7e
c.srli x9, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cp_rs1 (Test source rs1 = x15)
li x10, 0x98e4265d684eb847
c.srli x10, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1008)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x83b0686a09385dd2
c.srli x8, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1016)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x1263dbbd0731db1a
c.srli x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1024)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xde892b19a59452f4
c.srli x10, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1032)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xccc2864cd28ab683
c.srli x11, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xc5278f92d3ae1e48
c.srli x12, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1048)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x8883d4b35f41c7ca
c.srli x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1056)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x14eff381f40e00b6
c.srli x14, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1064)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf1fd1593f68c8f44
c.srli x15, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1072)

#.EQU SIGSIZE,2880


// ******************
// Tests from: WALLY-COV-c.li.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0xbe5c027bda6c3559 # initialize rs1
c.li x1, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x8b7efeb2dd86236c # initialize rs1
c.li x2, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x35e4da830f172459 # initialize rs1
c.li x3, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa358c552edbe8f39 # initialize rs1
c.li x4, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 24)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xab0ea9a42673da89 # initialize rs1
c.li x5, 7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 32)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb2644d8112cb68b7 # initialize rs1
c.li x6, -31 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x56fe7b60f1da8635 # initialize rs1
c.li x7, -17 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 48)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x589e6d98955563de # initialize rs1
c.li x8, 20 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 56)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xc04fe84fb8b72b26 # initialize rs1
c.li x9, 6 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 64)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x3fd23283e8be0966 # initialize rs1
c.li x10, -22 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xeb53ce4de8cf20ba # initialize rs1
c.li x11, -3 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 80)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xf272a6010e421e0e # initialize rs1
c.li x12, -24 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 88)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xcdfea6d874a236fe # initialize rs1
c.li x13, -12 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 96)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x0fac870e40557c09 # initialize rs1
c.li x14, 5 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x0228e9bf5caa79e4 # initialize rs1
c.li x15, -7 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 112)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xfcfb6f06022db4a0 # initialize rs1
c.li x16, 29 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 120)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xe9fd71c05589adb3 # initialize rs1
c.li x17, 12 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 128)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x8efdceec255716ed # initialize rs1
c.li x18, -10 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 136)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xe2074ed9c8ae7d67 # initialize rs1
c.li x19, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 144)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xd580feec3ae6e53a # initialize rs1
c.li x20, -14 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 152)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xd93607ab34fb1dc5 # initialize rs1
c.li x21, -13 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 160)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xb8dc18e28c16ecb7 # initialize rs1
c.li x22, 25 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 168)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xb5a4241fd59210de # initialize rs1
c.li x23, -24 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 176)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xb17dbd9758fa6fc1 # initialize rs1
c.li x24, 31 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 184)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x3db05c2e5bd4e56c # initialize rs1
c.li x25, -8 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 192)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x1b969800527d203e # initialize rs1
c.li x26, 26 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 200)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x9884fc2279ce4e62 # initialize rs1
c.li x27, 28 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 208)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xb82e12ff94871891 # initialize rs1
c.li x28, 6 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 216)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x091241218c6920a2 # initialize rs1
c.li x29, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 224)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x5a14071cae49a23b # initialize rs1
c.li x30, -14 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 232)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x9a23f66a048faa3e # initialize rs1
c.li x31, -4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 240)

# Testcase cp_imm_corners
li x13, 0x44ab52d159ad6198 # initialize rs1
c.li x13, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 248)

# Testcase cp_imm_corners
li x20, 0x4056e381f19ab81e # initialize rs1
c.li x20, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 256)

# Testcase cp_imm_corners
li x19, 0x1b3ca9259b2e1ccc # initialize rs1
c.li x19, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 264)

# Testcase cp_imm_corners
li x29, 0x029e92d483885796 # initialize rs1
c.li x29, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 272)

# Testcase cp_imm_corners
li x2, 0x5225d5961da2041e # initialize rs1
c.li x2, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 280)

# Testcase cp_imm_corners
li x25, 0xb6bfbe93f259bf0c # initialize rs1
c.li x25, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 288)

# Testcase cp_imm_corners
li x24, 0x558e4ab907b9fb71 # initialize rs1
c.li x24, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 296)

# Testcase cp_imm_corners
li x10, 0x4fdd2cedecacf0f1 # initialize rs1
c.li x10, 30 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 304)

# Testcase cp_imm_corners
li x11, 0x1cf863ad544ff727 # initialize rs1
c.li x11, 31 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 312)

# Testcase cp_imm_corners
li x22, 0xa25fc6eca8a19d9a # initialize rs1
c.li x22, -32 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 320)

# Testcase cp_imm_corners
li x25, 0xb6acd8135b28b405 # initialize rs1
c.li x25, -31 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 328)

# Testcase cp_imm_corners
li x4, 0x1489eaabef642ed1 # initialize rs1
c.li x4, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 336)

# Testcase cp_imm_corners
li x16, 0x3492cb614325c7dc # initialize rs1
c.li x16, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 344)

#.EQU SIGSIZE,352


// ******************
// Tests from: WALLY-COV-c.andi.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x0000000000000000 # initialize rd'
c.andi x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x12, 0x0000000000000001 # initialize rd'
c.andi x12, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x0000000000000002 # initialize rd'
c.andi x11, -25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x10, 0x8000000000000000 # initialize rd'
c.andi x10, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x8, 0x8000000000000001 # initialize rd'
c.andi x8, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x15, 0x7fffffffffffffff # initialize rd'
c.andi x15, -11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x15, 0x7ffffffffffffffe # initialize rd'
c.andi x15, -27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rd'
c.andi x13, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rd'
c.andi x9, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x11, 0x5bbc887763ae86f2 # initialize rd'
c.andi x11, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rd'
c.andi x14, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x15, 0x5555555555555555 # initialize rd'
c.andi x15, -3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0x00000000ffffffff # initialize rd'
c.andi x12, -20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0x00000000fffffffe # initialize rd'
c.andi x13, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x10, 0x0000000100000000 # initialize rd'
c.andi x10, -27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0x0000000100000001 # initialize rd'
c.andi x15, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_imm_corners
li x14, 0xfc975683180d47d4 # initialize rd'
c.andi x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 128)

# Testcase cp_imm_corners
li x15, 0x3dfedf791cb36175 # initialize rd'
c.andi x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 136)

# Testcase cp_imm_corners
li x10, 0x53ef3bde69b338bb # initialize rd'
c.andi x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_imm_corners
li x9, 0x3b52f3703165490d # initialize rd'
c.andi x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 152)

# Testcase cp_imm_corners
li x9, 0x69c32c9a8b318be8 # initialize rd'
c.andi x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_imm_corners
li x15, 0xcd52cda0a9943199 # initialize rd'
c.andi x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 168)

# Testcase cp_imm_corners
li x14, 0x34028f37f2928fa8 # initialize rd'
c.andi x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_imm_corners
li x9, 0x82a8d855ce41c084 # initialize rd'
c.andi x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cp_imm_corners
li x11, 0x8935da556bd8fa38 # initialize rd'
c.andi x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cp_imm_corners
li x10, 0xacac1a815f3180c7 # initialize rd'
c.andi x10, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 200)

# Testcase cp_imm_corners
li x8, 0x2fee1ce593c6e003 # initialize rd'
c.andi x8, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 208)

# Testcase cp_imm_corners
li x11, 0x52b7f0658fbd5934 # initialize rd'
c.andi x11, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_imm_corners
li x8, 0x31455bb8541ee630 # initialize rd'
c.andi x8, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000 # initialize rd'
c.andi x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 232)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000000 # initialize rd'
c.andi x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000 # initialize rd'
c.andi x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000 # initialize rd'
c.andi x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000000 # initialize rd'
c.andi x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 264)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000 # initialize rd'
c.andi x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 272)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000000 # initialize rd'
c.andi x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 280)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000000 # initialize rd'
c.andi x8, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000000 # initialize rd'
c.andi x12, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 296)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000000 # initialize rd'
c.andi x14, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 304)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000000 # initialize rd'
c.andi x10, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 312)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000000 # initialize rd'
c.andi x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 320)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000000 # initialize rd'
c.andi x10, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000001 # initialize rd'
c.andi x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000001 # initialize rd'
c.andi x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 344)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000001 # initialize rd'
c.andi x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 352)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000001 # initialize rd'
c.andi x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 360)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000001 # initialize rd'
c.andi x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 368)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000001 # initialize rd'
c.andi x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 376)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001 # initialize rd'
c.andi x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000001 # initialize rd'
c.andi x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000001 # initialize rd'
c.andi x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 400)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000001 # initialize rd'
c.andi x9, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 408)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000001 # initialize rd'
c.andi x12, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 416)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000001 # initialize rd'
c.andi x14, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001 # initialize rd'
c.andi x10, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 432)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000002 # initialize rd'
c.andi x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 440)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000002 # initialize rd'
c.andi x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 448)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002 # initialize rd'
c.andi x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002 # initialize rd'
c.andi x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 464)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002 # initialize rd'
c.andi x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 472)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000002 # initialize rd'
c.andi x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000002 # initialize rd'
c.andi x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 488)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000002 # initialize rd'
c.andi x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 496)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000002 # initialize rd'
c.andi x9, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 504)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000002 # initialize rd'
c.andi x15, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 512)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000002 # initialize rd'
c.andi x9, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000002 # initialize rd'
c.andi x10, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000002 # initialize rd'
c.andi x15, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 536)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000000 # initialize rd'
c.andi x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000000 # initialize rd'
c.andi x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000000 # initialize rd'
c.andi x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000000 # initialize rd'
c.andi x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 568)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000000 # initialize rd'
c.andi x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 576)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000000 # initialize rd'
c.andi x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 584)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000000 # initialize rd'
c.andi x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 592)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000000 # initialize rd'
c.andi x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 600)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000000 # initialize rd'
c.andi x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 608)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000000 # initialize rd'
c.andi x15, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000000 # initialize rd'
c.andi x11, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 624)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000000 # initialize rd'
c.andi x14, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 632)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000000 # initialize rd'
c.andi x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 640)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000001 # initialize rd'
c.andi x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 648)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000001 # initialize rd'
c.andi x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 656)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000001 # initialize rd'
c.andi x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 664)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000001 # initialize rd'
c.andi x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 672)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000001 # initialize rd'
c.andi x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 680)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000001 # initialize rd'
c.andi x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 688)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000001 # initialize rd'
c.andi x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 696)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000001 # initialize rd'
c.andi x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 704)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000001 # initialize rd'
c.andi x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 712)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000001 # initialize rd'
c.andi x10, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000001 # initialize rd'
c.andi x14, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 728)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000001 # initialize rd'
c.andi x8, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 736)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000001 # initialize rd'
c.andi x10, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 744)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffffffffffff # initialize rd'
c.andi x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 752)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffffffffffff # initialize rd'
c.andi x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 760)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffffffffffff # initialize rd'
c.andi x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 768)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffffffffffff # initialize rd'
c.andi x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 776)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffffffffffff # initialize rd'
c.andi x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 784)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffffffffffff # initialize rd'
c.andi x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 792)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff # initialize rd'
c.andi x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 800)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffffffffffff # initialize rd'
c.andi x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 808)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff # initialize rd'
c.andi x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 816)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff # initialize rd'
c.andi x14, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 824)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffffffffffff # initialize rd'
c.andi x15, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 832)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff # initialize rd'
c.andi x14, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 840)

# Testcase cr_rs1_imm_corners
li x11, 0x7fffffffffffffff # initialize rd'
c.andi x11, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 848)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe # initialize rd'
c.andi x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 856)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffffffffffe # initialize rd'
c.andi x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 864)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe # initialize rd'
c.andi x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 872)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffffffffffe # initialize rd'
c.andi x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 880)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffffffffffe # initialize rd'
c.andi x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 888)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffffffffffe # initialize rd'
c.andi x9, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 896)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe # initialize rd'
c.andi x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 904)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffffffffffe # initialize rd'
c.andi x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 912)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe # initialize rd'
c.andi x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffffffffffe # initialize rd'
c.andi x10, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 928)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffffffffffe # initialize rd'
c.andi x11, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 936)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffffffffffe # initialize rd'
c.andi x8, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 944)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffffffffffe # initialize rd'
c.andi x12, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 952)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffffffffffff # initialize rd'
c.andi x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 960)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffffffffffff # initialize rd'
c.andi x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 968)

# Testcase cr_rs1_imm_corners
li x15, 0xffffffffffffffff # initialize rd'
c.andi x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 976)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffffffffffff # initialize rd'
c.andi x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 984)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffffffffffff # initialize rd'
c.andi x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 992)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffffffffffff # initialize rd'
c.andi x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1000)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffffffffffff # initialize rd'
c.andi x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1008)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffffffffffff # initialize rd'
c.andi x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1016)

# Testcase cr_rs1_imm_corners
li x11, 0xffffffffffffffff # initialize rd'
c.andi x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1024)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffffffffffff # initialize rd'
c.andi x8, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1032)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffffffffffff # initialize rd'
c.andi x14, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1040)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffffffffffff # initialize rd'
c.andi x14, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1048)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffffffffffff # initialize rd'
c.andi x12, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1056)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffffffffffe # initialize rd'
c.andi x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1064)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffffffffffe # initialize rd'
c.andi x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1072)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffffffffffe # initialize rd'
c.andi x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1080)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffffffffffe # initialize rd'
c.andi x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1088)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffffffffffe # initialize rd'
c.andi x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1096)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffffffffffe # initialize rd'
c.andi x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1104)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffffffffffe # initialize rd'
c.andi x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1112)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffffffffffe # initialize rd'
c.andi x12, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1120)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffffffffffe # initialize rd'
c.andi x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffffffffffe # initialize rd'
c.andi x11, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1136)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffffffffffe # initialize rd'
c.andi x12, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffffffffffe # initialize rd'
c.andi x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1152)

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffffffffffe # initialize rd'
c.andi x13, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1160)

# Testcase cr_rs1_imm_corners
li x12, 0x5bbc887763ae86f2 # initialize rd'
c.andi x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1168)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2 # initialize rd'
c.andi x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1176)

# Testcase cr_rs1_imm_corners
li x12, 0x5bbc887763ae86f2 # initialize rd'
c.andi x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1184)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc887763ae86f2 # initialize rd'
c.andi x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1192)

# Testcase cr_rs1_imm_corners
li x12, 0x5bbc887763ae86f2 # initialize rd'
c.andi x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1200)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2 # initialize rd'
c.andi x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1208)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc887763ae86f2 # initialize rd'
c.andi x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1216)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc887763ae86f2 # initialize rd'
c.andi x8, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1224)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc887763ae86f2 # initialize rd'
c.andi x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1232)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2 # initialize rd'
c.andi x13, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1240)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2 # initialize rd'
c.andi x13, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1248)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc887763ae86f2 # initialize rd'
c.andi x15, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1256)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2 # initialize rd'
c.andi x13, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1264)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa # initialize rd'
c.andi x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1272)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaaaaaaaaaa # initialize rd'
c.andi x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1280)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa # initialize rd'
c.andi x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1288)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rd'
c.andi x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1296)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rd'
c.andi x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1304)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaaaaaaaaaa # initialize rd'
c.andi x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1312)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaaaaaaaaaa # initialize rd'
c.andi x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1320)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rd'
c.andi x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1328)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaaaaaaaaaa # initialize rd'
c.andi x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1336)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa # initialize rd'
c.andi x15, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1344)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaaaaaaaaaa # initialize rd'
c.andi x10, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaaaaaaaaaa # initialize rd'
c.andi x12, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rd'
c.andi x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1368)

# Testcase cr_rs1_imm_corners
li x10, 0x5555555555555555 # initialize rd'
c.andi x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1376)

# Testcase cr_rs1_imm_corners
li x8, 0x5555555555555555 # initialize rd'
c.andi x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1384)

# Testcase cr_rs1_imm_corners
li x12, 0x5555555555555555 # initialize rd'
c.andi x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1392)

# Testcase cr_rs1_imm_corners
li x13, 0x5555555555555555 # initialize rd'
c.andi x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1400)

# Testcase cr_rs1_imm_corners
li x11, 0x5555555555555555 # initialize rd'
c.andi x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1408)

# Testcase cr_rs1_imm_corners
li x8, 0x5555555555555555 # initialize rd'
c.andi x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1416)

# Testcase cr_rs1_imm_corners
li x10, 0x5555555555555555 # initialize rd'
c.andi x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1424)

# Testcase cr_rs1_imm_corners
li x8, 0x5555555555555555 # initialize rd'
c.andi x8, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1432)

# Testcase cr_rs1_imm_corners
li x9, 0x5555555555555555 # initialize rd'
c.andi x9, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1440)

# Testcase cr_rs1_imm_corners
li x8, 0x5555555555555555 # initialize rd'
c.andi x8, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1448)

# Testcase cr_rs1_imm_corners
li x10, 0x5555555555555555 # initialize rd'
c.andi x10, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1456)

# Testcase cr_rs1_imm_corners
li x12, 0x5555555555555555 # initialize rd'
c.andi x12, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1464)

# Testcase cr_rs1_imm_corners
li x11, 0x5555555555555555 # initialize rd'
c.andi x11, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1472)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000ffffffff # initialize rd'
c.andi x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1480)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000ffffffff # initialize rd'
c.andi x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000ffffffff # initialize rd'
c.andi x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1496)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000ffffffff # initialize rd'
c.andi x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1504)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000ffffffff # initialize rd'
c.andi x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1512)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000ffffffff # initialize rd'
c.andi x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1520)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000ffffffff # initialize rd'
c.andi x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1528)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000ffffffff # initialize rd'
c.andi x14, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1536)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000ffffffff # initialize rd'
c.andi x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1544)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000ffffffff # initialize rd'
c.andi x15, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1552)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000ffffffff # initialize rd'
c.andi x12, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1560)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000ffffffff # initialize rd'
c.andi x11, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1568)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000ffffffff # initialize rd'
c.andi x15, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1576)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000fffffffe # initialize rd'
c.andi x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1584)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000fffffffe # initialize rd'
c.andi x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1592)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000fffffffe # initialize rd'
c.andi x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1600)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe # initialize rd'
c.andi x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1608)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe # initialize rd'
c.andi x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000fffffffe # initialize rd'
c.andi x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1624)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe # initialize rd'
c.andi x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1632)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000fffffffe # initialize rd'
c.andi x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1640)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000fffffffe # initialize rd'
c.andi x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1648)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000fffffffe # initialize rd'
c.andi x14, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1656)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000fffffffe # initialize rd'
c.andi x15, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1664)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000fffffffe # initialize rd'
c.andi x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1672)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000fffffffe # initialize rd'
c.andi x12, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1680)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000000 # initialize rd'
c.andi x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1688)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000000 # initialize rd'
c.andi x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1696)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000100000000 # initialize rd'
c.andi x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1704)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000000 # initialize rd'
c.andi x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1712)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000000 # initialize rd'
c.andi x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1720)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000000 # initialize rd'
c.andi x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1728)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000100000000 # initialize rd'
c.andi x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1736)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000000 # initialize rd'
c.andi x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1744)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000000 # initialize rd'
c.andi x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1752)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000000 # initialize rd'
c.andi x12, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1760)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000000 # initialize rd'
c.andi x13, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1768)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000 # initialize rd'
c.andi x10, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1776)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000100000000 # initialize rd'
c.andi x14, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1784)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000001 # initialize rd'
c.andi x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rd'
c.andi x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 0)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rd'
c.andi x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000100000001 # initialize rd'
c.andi x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000001 # initialize rd'
c.andi x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000001 # initialize rd'
c.andi x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000001 # initialize rd'
c.andi x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000001 # initialize rd'
c.andi x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 48)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rd'
c.andi x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001 # initialize rd'
c.andi x12, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000001 # initialize rd'
c.andi x13, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000001 # initialize rd'
c.andi x11, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000001 # initialize rd'
c.andi x13, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x183a90ac6c56beb1 # initialize rd'
c.andi x8, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xb216791d083d57cc # initialize rd'
c.andi x9, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x8de9bc07d8d8c030 # initialize rd'
c.andi x10, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xd577d7f98c5b7083 # initialize rd'
c.andi x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xce9a47f44ad9cfb9 # initialize rd'
c.andi x12, -21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x65f9b76e7c7153c3 # initialize rd'
c.andi x13, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x2087624eff962e77 # initialize rd'
c.andi x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x18e393cf7167d6e3 # initialize rd'
c.andi x15, -19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0x630734908a0315b7 # initialize rd'
c.andi x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x37eb8fe164bd3d1f # initialize rd'
c.andi x14, -24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 168)

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0x80dd65a3021be954 # initialize rd'
c.andi x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 176)

# Testcase cp_rs1 (Test source rs1 = x11)
li x12, 0xf50717f30b14a1c7 # initialize rd'
c.andi x12, -4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 184)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0x057b0d9d365ce2aa # initialize rd'
c.andi x15, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 192)

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0x2ff86bbee5ce541c # initialize rd'
c.andi x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cp_rs1 (Test source rs1 = x14)
li x15, 0x770460190d5197b7 # initialize rd'
c.andi x15, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 208)

# Testcase cp_rs1 (Test source rs1 = x15)
li x10, 0x9723e2192639084b # initialize rd'
c.andi x10, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 216)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x477a8de9b25f456e # initialize rd'
c.andi x8, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x84b67952c861ce8a # initialize rd'
c.andi x9, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 232)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x5a08d968b895f058 # initialize rd'
c.andi x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x8ef7295f9cbf37a9 # initialize rd'
c.andi x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 248)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x303ed18db5683a8c # initialize rd'
c.andi x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 256)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x2f6367d70855e1d9 # initialize rd'
c.andi x13, -5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 264)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x4ba914405f3b5ece # initialize rd'
c.andi x14, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf40f0b510918455d # initialize rd'
c.andi x15, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 280)

#.EQU SIGSIZE,2088


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
.EQU SIGSIZE,27952 #combined


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
