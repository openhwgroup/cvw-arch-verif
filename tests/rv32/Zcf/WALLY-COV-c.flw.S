///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zcf//WALLY-COV-c.flw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.162133
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x8)
li x5, 0xc9b95a9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, -64 # sub immediate from rs1 to counter offset
li x12, 0x054348c6 # load immediate value into integer register
sw x12, 64(x8) # store value to memory
c.flw f13, 64(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x4, 0x3e4f076b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, -120 # sub immediate from rs1 to counter offset
li x13, 0xf7218dd6 # load immediate value into integer register
sw x13, 120(x9) # store value to memory
c.flw f12, 120(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x4, 0xb2236856 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address 
addi x10, x10, -24 # sub immediate from rs1 to counter offset
li x13, 0x86952b40 # load immediate value into integer register
sw x13, 24(x10) # store value to memory
c.flw f12, 24(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0x201a802b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address 
addi x11, x11, -28 # sub immediate from rs1 to counter offset
li x8, 0xb9ec15d0 # load immediate value into integer register
sw x8, 28(x11) # store value to memory
c.flw f9, 28(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x5, 0x835b42df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, -100 # sub immediate from rs1 to counter offset
li x14, 0xae957833 # load immediate value into integer register
sw x14, 100(x12) # store value to memory
c.flw f13, 100(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x3, 0xe81ce162 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, -64 # sub immediate from rs1 to counter offset
li x10, 0xc936bfe3 # load immediate value into integer register
sw x10, 64(x13) # store value to memory
c.flw f11, 64(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0x69c72052 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, -120 # sub immediate from rs1 to counter offset
li x11, 0x8680ca89 # load immediate value into integer register
sw x11, 120(x14) # store value to memory
c.flw f10, 120(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x18, 0x503fead5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address 
addi x15, x15, -112 # sub immediate from rs1 to counter offset
li x13, 0x551154d4 # load immediate value into integer register
sw x13, 112(x15) # store value to memory
c.flw f10, 112(x15) # perform operation

# Testcase cp_imm_mul
li x21, 0x9f057096 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
li x9, 0x1353870b # load immediate value into integer register
sw x9, 0(x8) # store value to memory
c.flw f13, 0(x8) # perform operation

# Testcase cp_imm_mul
li x13, 0xd0999eb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address 
addi x15, x15, -4 # sub immediate from rs1 to counter offset
li x8, 0xa9ad87e3 # load immediate value into integer register
sw x8, 4(x15) # store value to memory
c.flw f13, 4(x15) # perform operation

# Testcase cp_imm_mul
li x31, 0xc5c9c7b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address 
addi x10, x10, -8 # sub immediate from rs1 to counter offset
li x9, 0x710d7803 # load immediate value into integer register
sw x9, 8(x10) # store value to memory
c.flw f15, 8(x10) # perform operation

# Testcase cp_imm_mul
li x17, 0x5f031150 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, -12 # sub immediate from rs1 to counter offset
li x14, 0x1413741f # load immediate value into integer register
sw x14, 12(x13) # store value to memory
c.flw f9, 12(x13) # perform operation

# Testcase cp_imm_mul
li x22, 0xda622398 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, -16 # sub immediate from rs1 to counter offset
li x9, 0xb9fab05e # load immediate value into integer register
sw x9, 16(x12) # store value to memory
c.flw f14, 16(x12) # perform operation

# Testcase cp_imm_mul
li x5, 0x46ba3f91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, -20 # sub immediate from rs1 to counter offset
li x12, 0xc85388a5 # load immediate value into integer register
sw x12, 20(x14) # store value to memory
c.flw f13, 20(x14) # perform operation

# Testcase cp_imm_mul
li x20, 0x4c1a65cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, -24 # sub immediate from rs1 to counter offset
li x11, 0x75780647 # load immediate value into integer register
sw x11, 24(x9) # store value to memory
c.flw f12, 24(x9) # perform operation

# Testcase cp_imm_mul
li x4, 0xb52f03aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, -28 # sub immediate from rs1 to counter offset
li x11, 0xffbf15d8 # load immediate value into integer register
sw x11, 28(x14) # store value to memory
c.flw f12, 28(x14) # perform operation

# Testcase cp_imm_mul
li x20, 0x240e1a54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, -32 # sub immediate from rs1 to counter offset
li x14, 0x8be791ea # load immediate value into integer register
sw x14, 32(x8) # store value to memory
c.flw f12, 32(x8) # perform operation

# Testcase cp_imm_mul
li x4, 0xc951ad9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, -36 # sub immediate from rs1 to counter offset
li x15, 0xf6f977b0 # load immediate value into integer register
sw x15, 36(x8) # store value to memory
c.flw f12, 36(x8) # perform operation

# Testcase cp_imm_mul
li x24, 0xf3a870a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, -40 # sub immediate from rs1 to counter offset
li x15, 0xc96a3524 # load immediate value into integer register
sw x15, 40(x14) # store value to memory
c.flw f8, 40(x14) # perform operation

# Testcase cp_imm_mul
li x7, 0x4d4b901f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, -44 # sub immediate from rs1 to counter offset
li x14, 0xe802b632 # load immediate value into integer register
sw x14, 44(x13) # store value to memory
c.flw f15, 44(x13) # perform operation

# Testcase cp_imm_mul
li x26, 0x778f7c55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, -48 # sub immediate from rs1 to counter offset
li x12, 0xd1ae24ed # load immediate value into integer register
sw x12, 48(x8) # store value to memory
c.flw f10, 48(x8) # perform operation

# Testcase cp_imm_mul
li x25, 0xfaa4515b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, -52 # sub immediate from rs1 to counter offset
li x12, 0x3cb8b341 # load immediate value into integer register
sw x12, 52(x8) # store value to memory
c.flw f9, 52(x8) # perform operation

# Testcase cp_imm_mul
li x26, 0x65f219fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, -56 # sub immediate from rs1 to counter offset
li x14, 0x9d95d1c2 # load immediate value into integer register
sw x14, 56(x13) # store value to memory
c.flw f10, 56(x13) # perform operation

# Testcase cp_imm_mul
li x23, 0x5296e550 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address 
addi x10, x10, -60 # sub immediate from rs1 to counter offset
li x14, 0x7fc8210f # load immediate value into integer register
sw x14, 60(x10) # store value to memory
c.flw f15, 60(x10) # perform operation

# Testcase cp_imm_mul
li x26, 0x6f00aeff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, -64 # sub immediate from rs1 to counter offset
li x8, 0x332b8fcb # load immediate value into integer register
sw x8, 64(x13) # store value to memory
c.flw f10, 64(x13) # perform operation

# Testcase cp_imm_mul
li x27, 0x8e890eed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, -68 # sub immediate from rs1 to counter offset
li x12, 0xde9b40ea # load immediate value into integer register
sw x12, 68(x14) # store value to memory
c.flw f11, 68(x14) # perform operation

# Testcase cp_imm_mul
li x1, 0x267fe339 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, -72 # sub immediate from rs1 to counter offset
li x15, 0x01339fbb # load immediate value into integer register
sw x15, 72(x8) # store value to memory
c.flw f9, 72(x8) # perform operation

# Testcase cp_imm_mul
li x1, 0x3782bc19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address 
addi x10, x10, -76 # sub immediate from rs1 to counter offset
li x12, 0x36236e4c # load immediate value into integer register
sw x12, 76(x10) # store value to memory
c.flw f9, 76(x10) # perform operation

# Testcase cp_imm_mul
li x24, 0xbcff9934 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, -80 # sub immediate from rs1 to counter offset
li x8, 0x36ae6398 # load immediate value into integer register
sw x8, 80(x9) # store value to memory
c.flw f8, 80(x9) # perform operation

# Testcase cp_imm_mul
li x22, 0x8f4a762f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address 
addi x11, x11, -84 # sub immediate from rs1 to counter offset
li x14, 0x1ef4ae85 # load immediate value into integer register
sw x14, 84(x11) # store value to memory
c.flw f14, 84(x11) # perform operation

# Testcase cp_imm_mul
li x15, 0x0a1788c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, -88 # sub immediate from rs1 to counter offset
li x11, 0x61eed9e0 # load immediate value into integer register
sw x11, 88(x12) # store value to memory
c.flw f15, 88(x12) # perform operation

# Testcase cp_imm_mul
li x23, 0x7038d857 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, -92 # sub immediate from rs1 to counter offset
li x11, 0x207a87c5 # load immediate value into integer register
sw x11, 92(x9) # store value to memory
c.flw f15, 92(x9) # perform operation

# Testcase cp_imm_mul
li x20, 0x506620a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, -96 # sub immediate from rs1 to counter offset
li x10, 0xa050bb23 # load immediate value into integer register
sw x10, 96(x13) # store value to memory
c.flw f12, 96(x13) # perform operation

# Testcase cp_imm_mul
li x18, 0xa1c96d1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, -100 # sub immediate from rs1 to counter offset
li x13, 0x7f6915ea # load immediate value into integer register
sw x13, 100(x12) # store value to memory
c.flw f10, 100(x12) # perform operation

# Testcase cp_imm_mul
li x27, 0x0c24b679 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, -104 # sub immediate from rs1 to counter offset
li x8, 0x441a40fd # load immediate value into integer register
sw x8, 104(x14) # store value to memory
c.flw f11, 104(x14) # perform operation

# Testcase cp_imm_mul
li x11, 0x7be01075 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, -108 # sub immediate from rs1 to counter offset
li x13, 0xd4215123 # load immediate value into integer register
sw x13, 108(x9) # store value to memory
c.flw f11, 108(x9) # perform operation

# Testcase cp_imm_mul
li x18, 0xdd0f0f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, -112 # sub immediate from rs1 to counter offset
li x9, 0x95f2b5b3 # load immediate value into integer register
sw x9, 112(x14) # store value to memory
c.flw f10, 112(x14) # perform operation

# Testcase cp_imm_mul
li x9, 0xbe8ada9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, -116 # sub immediate from rs1 to counter offset
li x15, 0x1523f707 # load immediate value into integer register
sw x15, 116(x13) # store value to memory
c.flw f9, 116(x13) # perform operation

# Testcase cp_imm_mul
li x30, 0x3207ff38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address 
addi x15, x15, -120 # sub immediate from rs1 to counter offset
li x9, 0x643f8c23 # load immediate value into integer register
sw x9, 120(x15) # store value to memory
c.flw f14, 120(x15) # perform operation

# Testcase cp_imm_mul
li x14, 0xbc1589d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, -124 # sub immediate from rs1 to counter offset
li x13, 0x32daae4f # load immediate value into integer register
sw x13, 124(x9) # store value to memory
c.flw f14, 124(x9) # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
