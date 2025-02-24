///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.andi.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.486022
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_imm_zero
li x3, 0xad6ede1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xad6ede1c
c.andi x11, 0 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, 0 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, 1 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, 2 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, 31 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, 30 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, -32 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, -31 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, -2 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, -1 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc6151e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc6151e79
c.andi x8, 13 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x3957ef05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3957ef05
c.andi x9, 4 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xbe3dac6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbe3dac6c
c.andi x10, -23 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xb9ab40c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb9ab40c8
c.andi x11, 10 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x00ca5d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00ca5d6b
c.andi x12, -19 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xf73ac7e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf73ac7e8
c.andi x13, -31 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x89ccb4b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x89ccb4b6
c.andi x14, 7 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x1dcaa7f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1dcaa7f4
c.andi x15, -22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000
c.andi x12, -6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x23, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001
c.andi x15, -24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000002
c.andi x15, -18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x27, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000
c.andi x11, -26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x12, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001
c.andi x12, 27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x18, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffff
c.andi x10, 26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x19, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe
c.andi x11, 4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x26, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff
c.andi x10, 26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffe
c.andi x14, -8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x18, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc8877
c.andi x10, 14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x2, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa
c.andi x10, 7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x24, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555
c.andi x8, 20 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
