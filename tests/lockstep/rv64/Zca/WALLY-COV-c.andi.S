///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.andi.S
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

.EQU SIGSIZE,2088


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
