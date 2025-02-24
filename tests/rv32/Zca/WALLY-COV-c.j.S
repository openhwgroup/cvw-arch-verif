///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.j.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.487464
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: nop
c.j 1b # backward branch
3: nop # done with sequence

# Testcase cp_imm_ones_zeros 2
c.j 1f # jump to aligned address to stress immediate
.align 2
1:

# Testcase cp_imm_ones_zeros 3
c.j 1f # jump to aligned address to stress immediate
.align 3
1:

# Testcase cp_imm_ones_zeros 4
c.j 1f # jump to aligned address to stress immediate
.align 4
1:

# Testcase cp_imm_ones_zeros 5
c.j 1f # jump to aligned address to stress immediate
.align 5
1:

# Testcase cp_imm_ones_zeros 6
c.j 1f # jump to aligned address to stress immediate
.align 6
1:

# Testcase cp_imm_ones_zeros 7
c.j 1f # jump to aligned address to stress immediate
.align 7
1:

# Testcase cp_imm_ones_zeros 8
c.j 1f # jump to aligned address to stress immediate
.align 8
1:

# Testcase cp_imm_ones_zeros 9
c.j 1f # jump to aligned address to stress immediate
.align 9
1:

# Testcase cp_imm_ones_zeros 10
c.j 1f # jump to aligned address to stress immediate
.align 10
1:

# Testcase cp_imm_ones_zeros 11
c.j 1f # jump to aligned address to stress immediate
.align 11
1:

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
