///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.bnez.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.981568
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1_sign (Test source rs1 value = 0x51965e9c43e15ebf)
li x6, 0xf0c8d8d814024182 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x51965e9c43e15ebf # initialize rs1
c.bnez x10, some_label_for_cbtype_8303616695571094712 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_8303616695571094712:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x4e06f090841ffb9b)
li x22, 0x467104d0157e6e88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb1f90f6f7be00465 # initialize rs1
c.bnez x8, some_label_for_cbtype_3164004299285443844 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3164004299285443844:
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
li x13, 0x72915d022fd059a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1c5dce39dddcf4c0 # initialize rs1
c.bnez x8, some_label_for_cbtype_3178619194466532718 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3178619194466532718:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x6, 0x10c8796cb8ba0f72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf109733c61903f4a # initialize rs1
c.bnez x9, some_label_for_cbtype_6830399578550781260 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_6830399578550781260:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x22, 0x9150938a1a14bdb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x84b0049adeaba321 # initialize rs1
c.bnez x10, some_label_for_cbtype_2778269455060580358 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2778269455060580358:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x3, 0x39cd365e5ce196f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb5d1e07285ce263f # initialize rs1
c.bnez x11, some_label_for_cbtype_9065073278876509984 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_9065073278876509984:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x5, 0x3963f5984498a073 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb36da231efef0046 # initialize rs1
c.bnez x12, some_label_for_cbtype_3489540469956769986 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3489540469956769986:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x4, 0xf60a5b93760182c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdbe6cd7b5e08ff42 # initialize rs1
c.bnez x13, some_label_for_cbtype_8101967779179967969 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_8101967779179967969:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x20, 0x1a779157e972b1ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7665e92d8aa467be # initialize rs1
c.bnez x14, some_label_for_cbtype_9131224123038967875 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_9131224123038967875:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x5, 0x327f82a771b6e548 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4f8af8877293cb7d # initialize rs1
c.bnez x15, some_label_for_cbtype_13361477536776239177 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_13361477536776239177:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x11, 0x13bd52a5e89a7c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
c.bnez x12, some_label_for_cbtype_9510602713532495462 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_9510602713532495462:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0xff301e0824703aee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs1
c.bnez x11, some_label_for_cbtype_15947133769082336251 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_15947133769082336251:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x61e12aa57f8147f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
c.bnez x11, some_label_for_cbtype_2908324142551943451 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2908324142551943451:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x21, 0x0c436dbafbde2aba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
c.bnez x15, some_label_for_cbtype_15556263815574298599 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_15556263815574298599:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x22, 0xde9b89924c22c2cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
c.bnez x14, some_label_for_cbtype_16137005066640499770 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_16137005066640499770:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x11, 0xe53490dfb085c759 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffffffffffff # initialize rs1
c.bnez x8, some_label_for_cbtype_15249269376485165030 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_15249269376485165030:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x30, 0x68d091666e27c27f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffffffffffe # initialize rs1
c.bnez x14, some_label_for_cbtype_1796596392313360872 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1796596392313360872:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x12, 0xe7f878820486ec43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
c.bnez x10, some_label_for_cbtype_2766365103813548154 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2766365103813548154:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x29, 0xdde56eaec1c171b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
c.bnez x11, some_label_for_cbtype_7212243128798848184 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_7212243128798848184:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x14, 0x80941d3804d76c2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
c.bnez x8, some_label_for_cbtype_1220690957499787813 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1220690957499787813:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x17, 0x5f8bd9d56f424cd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.bnez x11, some_label_for_cbtype_8198492838773340117 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_8198492838773340117:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x7, 0xbfc2ce42f378a4fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs1
c.bnez x10, some_label_for_cbtype_15868151260199525927 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_15868151260199525927:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0x048f077414fca297 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs1
c.bnez x8, some_label_for_cbtype_7193481317211733608 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_7193481317211733608:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0xb0e7f3852f8cc30b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rs1
c.bnez x10, some_label_for_cbtype_11986474194452371901 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_11986474194452371901:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x23, 0x0e44fb7e102d82f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
c.bnez x13, some_label_for_cbtype_11608044951685357789 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_11608044951685357789:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x12, 0x95aea7328d7c4289 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
c.bnez x15, some_label_for_cbtype_9556812669317428942 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_9556812669317428942:
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
