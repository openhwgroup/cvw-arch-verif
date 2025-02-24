///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.addi16sp.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.482309
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_imm_zero
li x25, 0x28af4808 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 16 # perform operation

# Testcase cp_imm_mul
li x26, 0x0a612e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -512 # perform operation

# Testcase cp_imm_mul
li x31, 0xb5ffbc3e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -496 # perform operation

# Testcase cp_imm_mul
li x15, 0xaae22b13 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -480 # perform operation

# Testcase cp_imm_mul
li x29, 0xcd669648 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -464 # perform operation

# Testcase cp_imm_mul
li x23, 0x7783de83 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -448 # perform operation

# Testcase cp_imm_mul
li x19, 0x270db64a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -432 # perform operation

# Testcase cp_imm_mul
li x17, 0xa68a62d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -416 # perform operation

# Testcase cp_imm_mul
li x29, 0x530fbce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -400 # perform operation

# Testcase cp_imm_mul
li x13, 0xd6bf3db7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -384 # perform operation

# Testcase cp_imm_mul
li x31, 0xf3821dca # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -368 # perform operation

# Testcase cp_imm_mul
li x17, 0x0ccececd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -352 # perform operation

# Testcase cp_imm_mul
li x3, 0xb6cdfe72 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -336 # perform operation

# Testcase cp_imm_mul
li x13, 0x7d784f27 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -320 # perform operation

# Testcase cp_imm_mul
li x6, 0xea629367 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -304 # perform operation

# Testcase cp_imm_mul
li x24, 0x5a1f727e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -288 # perform operation

# Testcase cp_imm_mul
li x2, 0xa9bc1b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -272 # perform operation

# Testcase cp_imm_mul
li x22, 0x5a68c0ff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -256 # perform operation

# Testcase cp_imm_mul
li x18, 0xef66890e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -240 # perform operation

# Testcase cp_imm_mul
li x14, 0x217f8810 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -224 # perform operation

# Testcase cp_imm_mul
li x12, 0x02a66cb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -208 # perform operation

# Testcase cp_imm_mul
li x19, 0xe8df1d2c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -192 # perform operation

# Testcase cp_imm_mul
li x2, 0x10cf82cb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -176 # perform operation

# Testcase cp_imm_mul
li x7, 0xfca74722 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -160 # perform operation

# Testcase cp_imm_mul
li x15, 0xc7f43cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -144 # perform operation

# Testcase cp_imm_mul
li x12, 0x38841a5e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -128 # perform operation

# Testcase cp_imm_mul
li x4, 0xdafbc581 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -112 # perform operation

# Testcase cp_imm_mul
li x19, 0x44c6473b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -96 # perform operation

# Testcase cp_imm_mul
li x21, 0x19d855d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -80 # perform operation

# Testcase cp_imm_mul
li x29, 0x548bbb95 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -64 # perform operation

# Testcase cp_imm_mul
li x3, 0x8c697466 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -48 # perform operation

# Testcase cp_imm_mul
li x26, 0x0e434fd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -32 # perform operation

# Testcase cp_imm_mul
li x13, 0x0f7f7576 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -16 # perform operation

# Testcase cp_imm_mul
li x31, 0x5f031a46 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 16 # perform operation

# Testcase cp_imm_mul
li x8, 0x202cc7af # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 16 # perform operation

# Testcase cp_imm_mul
li x19, 0x875f4cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 32 # perform operation

# Testcase cp_imm_mul
li x12, 0x2ce19ab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 48 # perform operation

# Testcase cp_imm_mul
li x28, 0x813e7ef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 64 # perform operation

# Testcase cp_imm_mul
li x15, 0x82a87e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 80 # perform operation

# Testcase cp_imm_mul
li x14, 0x9ef87349 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 96 # perform operation

# Testcase cp_imm_mul
li x18, 0x3f6b1545 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 112 # perform operation

# Testcase cp_imm_mul
li x6, 0x07cc2f34 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 128 # perform operation

# Testcase cp_imm_mul
li x3, 0x85a9599c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 144 # perform operation

# Testcase cp_imm_mul
li x29, 0x68967142 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 160 # perform operation

# Testcase cp_imm_mul
li x19, 0x9ceb980b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 176 # perform operation

# Testcase cp_imm_mul
li x1, 0x3e4e2057 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 192 # perform operation

# Testcase cp_imm_mul
li x31, 0x4885297f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 208 # perform operation

# Testcase cp_imm_mul
li x26, 0x38e34a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 224 # perform operation

# Testcase cp_imm_mul
li x9, 0x510e69ee # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 240 # perform operation

# Testcase cp_imm_mul
li x29, 0x4c766bb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 256 # perform operation

# Testcase cp_imm_mul
li x29, 0x9efcacf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 272 # perform operation

# Testcase cp_imm_mul
li x20, 0xece954ef # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 288 # perform operation

# Testcase cp_imm_mul
li x21, 0x50c40beb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 304 # perform operation

# Testcase cp_imm_mul
li x27, 0xe98d72c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 320 # perform operation

# Testcase cp_imm_mul
li x2, 0xe7763a4f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 336 # perform operation

# Testcase cp_imm_mul
li x19, 0x6c2598c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 352 # perform operation

# Testcase cp_imm_mul
li x31, 0xd3fbc476 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 368 # perform operation

# Testcase cp_imm_mul
li x24, 0xb867e358 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 384 # perform operation

# Testcase cp_imm_mul
li x26, 0x014beafc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 400 # perform operation

# Testcase cp_imm_mul
li x14, 0x210a51c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 416 # perform operation

# Testcase cp_imm_mul
li x22, 0x8bc0c6a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 432 # perform operation

# Testcase cp_imm_mul
li x27, 0x4d0e3b75 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 448 # perform operation

# Testcase cp_imm_mul
li x26, 0x3f922e53 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 464 # perform operation

# Testcase cp_imm_mul
li x3, 0x4145d2b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 480 # perform operation

# Testcase cp_imm_mul
li x5, 0x07bda7b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 496 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
