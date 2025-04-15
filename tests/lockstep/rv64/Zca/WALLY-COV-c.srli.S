///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.srli.S
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

.EQU SIGSIZE,2880


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
