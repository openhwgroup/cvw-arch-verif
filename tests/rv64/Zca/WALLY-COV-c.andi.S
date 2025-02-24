///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.andi.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.980343
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_imm_zero
li x1, 0x99a60246ace33bbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x99a60246ace33bbc
c.andi x9, 0 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, 0 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, 1 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, 2 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, 31 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, 30 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, -32 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, -31 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, -2 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, -1 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x9b9774aa6c5bd75c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9b9774aa6c5bd75c
c.andi x8, -8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6929874eb8305dfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6929874eb8305dfc
c.andi x9, 24 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x545636fc981bef3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x545636fc981bef3b
c.andi x10, -20 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x32683fba34853bbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x32683fba34853bbc
c.andi x11, -32 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x065919d8bf343fc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x065919d8bf343fc5
c.andi x12, 26 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x1c6feb4edb963d49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1c6feb4edb963d49
c.andi x13, -20 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xcc1f5b041b460149 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xcc1f5b041b460149
c.andi x14, 15 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x9630faba7223aeaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9630faba7223aeaf
c.andi x15, 12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, 29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x12, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001
c.andi x12, -4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x24, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002
c.andi x8, 10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x8, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000
c.andi x8, -15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x22, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001
c.andi x14, -5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x6, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff
c.andi x14, 12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x5, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe
c.andi x13, 7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x25, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff
c.andi x9, -7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x28, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe
c.andi x12, -8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x21, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7
c.andi x13, -32 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa
c.andi x14, -6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555
c.andi x12, 7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x22, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff
c.andi x14, 12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe
c.andi x13, -2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, -2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x5, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000001
c.andi x13, -9 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
