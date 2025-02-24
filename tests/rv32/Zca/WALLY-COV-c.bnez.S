///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.bnez.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.487175
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1_sign (Test source rs1 value = 0x5aac1f38)
li x2, 0x225ac4a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5aac1f38 # initialize rs1
c.bnez x12, some_label_for_cbtype_1477295752 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1477295752:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x63254b63)
li x16, 0x67650348 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9cdab49d # initialize rs1
c.bnez x12, some_label_for_cbtype_3301010222 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3301010222:
addi x0, x2, 2
nop
nop

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: li x8, 1 # initialize rs1 to 1
c.bnez x8,  1b # backward branch
3: nop # done with sequence

# Testcase cp_rs1 (Test source rs1 = x8)
li x14, 0x55b89ec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0b5594ad # initialize rs1
c.bnez x8, some_label_for_cbtype_1255402222 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1255402222:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x16, 0x370c9c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbcc15cf2 # initialize rs1
c.bnez x9, some_label_for_cbtype_176158302 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_176158302:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x23, 0xd13659f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x207acb22 # initialize rs1
c.bnez x10, some_label_for_cbtype_3208042228 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3208042228:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x21, 0x473c7e84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x16877d17 # initialize rs1
c.bnez x11, some_label_for_cbtype_3283739238 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3283739238:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x1, 0x1cbb99f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4aa228ab # initialize rs1
c.bnez x12, some_label_for_cbtype_2135734627 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2135734627:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x5, 0xb5aa4c31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x771497c8 # initialize rs1
c.bnez x13, some_label_for_cbtype_188831216 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_188831216:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x8, 0x0f6b7ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd97b90ee # initialize rs1
c.bnez x14, some_label_for_cbtype_1853578853 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1853578853:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x23, 0x3f872d80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x304b87fb # initialize rs1
c.bnez x15, some_label_for_cbtype_218493192 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_218493192:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x29, 0xd8c5da22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
c.bnez x11, some_label_for_cbtype_2657799901 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2657799901:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x16, 0x966782f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # initialize rs1
c.bnez x15, some_label_for_cbtype_2180004780 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2180004780:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x26, 0x990a9cee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs1
c.bnez x12, some_label_for_cbtype_1715495740 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1715495740:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x5, 0xa3abea36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
c.bnez x11, some_label_for_cbtype_3775718773 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3775718773:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x29, 0xac71a13e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs1
c.bnez x14, some_label_for_cbtype_1801219234 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1801219234:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x6, 0x54fa0ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff # initialize rs1
c.bnez x13, some_label_for_cbtype_498211284 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_498211284:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x13, 0x91040238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
c.bnez x11, some_label_for_cbtype_191655879 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_191655879:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x3ca15971 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize rs1
c.bnez x10, some_label_for_cbtype_230324509 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_230324509:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x28, 0x3fe16c8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffe # initialize rs1
c.bnez x12, some_label_for_cbtype_1510669804 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1510669804:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x22, 0xc38e27e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc8877 # initialize rs1
c.bnez x10, some_label_for_cbtype_4264408016 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_4264408016:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x28, 0xc7b8cbca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rs1
c.bnez x10, some_label_for_cbtype_3262957418 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3262957418:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x31, 0xe80f8eee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555 # initialize rs1
c.bnez x8, some_label_for_cbtype_326062540 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_326062540:
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
