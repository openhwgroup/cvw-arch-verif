///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.srai.S
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
