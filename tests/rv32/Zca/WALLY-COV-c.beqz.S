///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.beqz.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.486849
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1_sign (Test source rs1 value = 0x3828e2ac)
li x12, 0xcbe25976 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3828e2ac # initialize rs1
c.beqz x10, some_label_for_cbtype_64783691 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_64783691:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x68519be6)
li x31, 0x9f7a1854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x97ae641a # initialize rs1
c.beqz x9, some_label_for_cbtype_1854597430 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1854597430:
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
li x21, 0xa0308904 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x48056a97 # initialize rs1
c.beqz x8, some_label_for_cbtype_3690634371 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3690634371:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x19, 0x909f742c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x849c69a2 # initialize rs1
c.beqz x9, some_label_for_cbtype_2310912882 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2310912882:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x19, 0xd2685056 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7c2a86a6 # initialize rs1
c.beqz x10, some_label_for_cbtype_2310049095 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2310049095:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x28, 0x8122e8ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x533e3a4f # initialize rs1
c.beqz x11, some_label_for_cbtype_1270061005 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1270061005:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x8f967fbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf140f84b # initialize rs1
c.beqz x12, some_label_for_cbtype_113225316 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_113225316:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x25, 0xea9e4ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7d64e6d9 # initialize rs1
c.beqz x13, some_label_for_cbtype_809340521 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_809340521:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x4, 0x548cf42a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x344f1272 # initialize rs1
c.beqz x14, some_label_for_cbtype_3484848220 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3484848220:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x2, 0xc04bf348 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x412dc384 # initialize rs1
c.beqz x15, some_label_for_cbtype_2959308982 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2959308982:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x6, 0xbd4129c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
c.beqz x12, some_label_for_cbtype_1934550768 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1934550768:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x26f572fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize rs1
c.beqz x12, some_label_for_cbtype_3755622911 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3755622911:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x27, 0x836e111c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs1
c.beqz x10, some_label_for_cbtype_2129369273 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2129369273:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x12, 0x574612f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
c.beqz x11, some_label_for_cbtype_2086232119 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2086232119:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x15, 0x9091168f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
c.beqz x15, some_label_for_cbtype_272937316 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_272937316:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x26, 0xfdf3b2b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
c.beqz x11, some_label_for_cbtype_642923838 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_642923838:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x30, 0x4e4ad5f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
c.beqz x11, some_label_for_cbtype_2808579261 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2808579261:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x14, 0xfe01e281 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
c.beqz x13, some_label_for_cbtype_1524528634 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1524528634:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x3, 0x8f382264 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe # initialize rs1
c.beqz x8, some_label_for_cbtype_957449536 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_957449536:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x21, 0x1690587c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rs1
c.beqz x9, some_label_for_cbtype_808952230 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_808952230:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x1, 0x0fa77f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs1
c.beqz x13, some_label_for_cbtype_2085652081 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2085652081:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x31, 0x6bb42310 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
c.beqz x11, some_label_for_cbtype_3755305324 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3755305324:
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
