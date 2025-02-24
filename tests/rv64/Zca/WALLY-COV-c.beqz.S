///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.beqz.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.981217
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1_sign (Test source rs1 value = 0x627a5ff4f640978a)
li x27, 0xebf7437c35120691 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x627a5ff4f640978a # initialize rs1
c.beqz x10, some_label_for_cbtype_8961790221742487079 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_8961790221742487079:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x46808d3a00b5ce92)
li x5, 0x34083191e66c6edd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb97f72c5ff4a316e # initialize rs1
c.beqz x15, some_label_for_cbtype_9462112791493680901 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_9462112791493680901:
addi x0, x2, 2
nop
nop

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: li x8, 0 # initialize rs1 to 0
c.beqz x8,  1b # backward branch
3: nop # done with sequence

# Testcase cp_rs1 (Test source rs1 = x8)
li x30, 0x27102a189ce525d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2ed4607000fe0f47 # initialize rs1
c.beqz x8, some_label_for_cbtype_7489066726471856298 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_7489066726471856298:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x28, 0x25aadbbf9227e315 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe09825204df0226a # initialize rs1
c.beqz x9, some_label_for_cbtype_12297326099526484650 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_12297326099526484650:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x18, 0x2b037ee04ed75d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xba011cfb2116dace # initialize rs1
c.beqz x10, some_label_for_cbtype_3793143342024347223 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3793143342024347223:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x19, 0x1ba37f9cbaf19faf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xba25a81bd54ac338 # initialize rs1
c.beqz x11, some_label_for_cbtype_1316136719551346491 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1316136719551346491:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0x08d6ad12f1ca676f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0c2f70b3d55a9ca3 # initialize rs1
c.beqz x12, some_label_for_cbtype_10973683845869017972 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_10973683845869017972:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0xce2c9231f0058ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4476f58f2af0671c # initialize rs1
c.beqz x13, some_label_for_cbtype_14147967805256729098 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_14147967805256729098:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x17, 0x2f77c2389e074281 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x204bd388fa4f353c # initialize rs1
c.beqz x14, some_label_for_cbtype_4650134574368674367 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_4650134574368674367:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x18, 0x629e74326a5cbf04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb0ebf1fc8f2b35bc # initialize rs1
c.beqz x15, some_label_for_cbtype_14100246467746470018 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_14100246467746470018:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x6, 0x5ed376109800b1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
c.beqz x13, some_label_for_cbtype_6596713263122135930 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_6596713263122135930:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x1, 0x8f8fb13ab03ec258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
c.beqz x13, some_label_for_cbtype_12555584150839197339 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_12555584150839197339:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x5, 0xd42eaf9b1c3f3109 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
c.beqz x13, some_label_for_cbtype_13214441253981290928 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_13214441253981290928:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x4, 0x23f214149f743313 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
c.beqz x12, some_label_for_cbtype_14469901711552135034 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_14469901711552135034:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x16, 0x9a4a629f764d9e21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
c.beqz x12, some_label_for_cbtype_2692321148318270793 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2692321148318270793:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x11, 0x59500b0e48d740b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
c.beqz x14, some_label_for_cbtype_6836669837563513473 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_6836669837563513473:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x24, 0xb4f896b88314a5c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffffffffffe # initialize rs1
c.beqz x9, some_label_for_cbtype_11120247474205399314 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_11120247474205399314:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x27, 0x0055acbceeb01702 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
c.beqz x13, some_label_for_cbtype_1037696535380664753 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1037696535380664753:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x16, 0xa15cee01a457869d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffffffffffe # initialize rs1
c.beqz x10, some_label_for_cbtype_14441456337208327668 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_14441456337208327668:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x17, 0xfeac85717000175c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
c.beqz x14, some_label_for_cbtype_17900633590442399720 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_17900633590442399720:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0x19f5aaf3b03f41e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.beqz x11, some_label_for_cbtype_1953199377797288886 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1953199377797288886:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x867bbfc91270cba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs1
c.beqz x14, some_label_for_cbtype_7445996693022589554 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_7445996693022589554:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x26, 0x6b67a3e2c267fa4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
c.beqz x12, some_label_for_cbtype_6690497880173684941 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_6690497880173684941:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x11, 0xc91371e58439115b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
c.beqz x9, some_label_for_cbtype_966730172583570770 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_966730172583570770:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x18, 0xb900e8008a96a593 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
c.beqz x12, some_label_for_cbtype_1968159202049392301 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1968159202049392301:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x20, 0x0161996baffc18ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
c.beqz x14, some_label_for_cbtype_5666691909579767416 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_5666691909579767416:
addi x0, x2, 2
nop
nop

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
