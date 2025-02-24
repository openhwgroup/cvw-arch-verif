//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    

// ******************
// Tests from: WALLY-COV-c.flwsp.S
// ******************


    
# Testcase cp_imm_zero
li x23, 0xb6bef6bf # initialize rd to a random value that should get changed; helps covering rd_toggle

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.flw.S
// ******************


    
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




// ******************
// Tests from: WALLY-COV-c.fsw.S
// ******************


    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x8)
li x23, 0x7e2ac532 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x13, 0xcc1b955c # initialize rs2 with random value
sw x13, 0(x8) # store 0xcc1b955c in memory
flw f13, 0(x8) # load 0xcc1b955c from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -64 # sub immediate from rs1 to counter offset
c.fsw f13, 64(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x7, 0xd95c2f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x13, 0xa4824db7 # initialize rs2 with random value
sw x13, 0(x9) # store 0xa4824db7 in memory
flw f13, 0(x9) # load 0xa4824db7 from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -4 # sub immediate from rs1 to counter offset
c.fsw f13, 4(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0x0ac1ef06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x13, 0xed1a46be # initialize rs2 with random value
sw x13, 0(x10) # store 0xed1a46be in memory
flw f13, 0(x10) # load 0xed1a46be from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -88 # sub immediate from rs1 to counter offset
c.fsw f13, 88(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x1, 0x88656000 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x15, 0x000b43dd # initialize rs2 with random value
sw x15, 0(x11) # store 0xb43dd in memory
flw f15, 0(x11) # load 0xb43dd from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -32 # sub immediate from rs1 to counter offset
c.fsw f15, 32(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x8, 0x2c271fe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x15, 0x1837a16a # initialize rs2 with random value
sw x15, 0(x12) # store 0x1837a16a in memory
flw f15, 0(x12) # load 0x1837a16a from memory into fs2
sw x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -76 # sub immediate from rs1 to counter offset
c.fsw f15, 76(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x28, 0xde7869e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x15, 0x94d09b13 # initialize rs2 with random value
sw x15, 0(x13) # store 0x94d09b13 in memory
flw f15, 0(x13) # load 0x94d09b13 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -100 # sub immediate from rs1 to counter offset
c.fsw f15, 100(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x17, 0x237e8906 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x10, 0xa99eef43 # initialize rs2 with random value
sw x10, 0(x14) # store 0xa99eef43 in memory
flw f10, 0(x14) # load 0xa99eef43 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -76 # sub immediate from rs1 to counter offset
c.fsw f10, 76(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x10, 0xf15d1eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x11, 0xd8ebc5e4 # initialize rs2 with random value
sw x11, 0(x15) # store 0xd8ebc5e4 in memory
flw f11, 0(x15) # load 0xd8ebc5e4 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
addi x15, x15, -92 # sub immediate from rs1 to counter offset
c.fsw f11, 92(x15) # perform operation 

# Testcase cp_imm_mul
li x29, 0x6eb67e52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x9, 0xe8097f72 # initialize rs2 with random value
sw x9, 0(x8) # store 0xe8097f72 in memory
flw f9, 0(x8) # load 0xe8097f72 from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.fsw f9, 0(x8) # perform operation 

# Testcase cp_imm_mul
li x6, 0x0c4c80e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x11, 0xccf42cf7 # initialize rs2 with random value
sw x11, 0(x12) # store 0xccf42cf7 in memory
flw f11, 0(x12) # load 0xccf42cf7 from memory into fs2
sw x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -4 # sub immediate from rs1 to counter offset
c.fsw f11, 4(x12) # perform operation 

# Testcase cp_imm_mul
li x29, 0xaae39f63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x11, 0x8a11294b # initialize rs2 with random value
sw x11, 0(x9) # store 0x8a11294b in memory
flw f11, 0(x9) # load 0x8a11294b from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -8 # sub immediate from rs1 to counter offset
c.fsw f11, 8(x9) # perform operation 

# Testcase cp_imm_mul
li x24, 0xdeeb4238 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x15, 0x975475f2 # initialize rs2 with random value
sw x15, 0(x10) # store 0x975475f2 in memory
flw f15, 0(x10) # load 0x975475f2 from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -12 # sub immediate from rs1 to counter offset
c.fsw f15, 12(x10) # perform operation 

# Testcase cp_imm_mul
li x24, 0xcf9ed09d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x13, 0x4eb19941 # initialize rs2 with random value
sw x13, 0(x14) # store 0x4eb19941 in memory
flw f13, 0(x14) # load 0x4eb19941 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -16 # sub immediate from rs1 to counter offset
c.fsw f13, 16(x14) # perform operation 

# Testcase cp_imm_mul
li x22, 0xf76a7ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x8, 0x6b4536ad # initialize rs2 with random value
sw x8, 0(x9) # store 0x6b4536ad in memory
flw f8, 0(x9) # load 0x6b4536ad from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -20 # sub immediate from rs1 to counter offset
c.fsw f8, 20(x9) # perform operation 

# Testcase cp_imm_mul
li x13, 0xd75c10c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x14, 0x2f209fa5 # initialize rs2 with random value
sw x14, 0(x13) # store 0x2f209fa5 in memory
flw f14, 0(x13) # load 0x2f209fa5 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -24 # sub immediate from rs1 to counter offset
c.fsw f14, 24(x13) # perform operation 

# Testcase cp_imm_mul
li x18, 0x8906c067 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x13, 0x5e8dcb06 # initialize rs2 with random value
sw x13, 0(x12) # store 0x5e8dcb06 in memory
flw f13, 0(x12) # load 0x5e8dcb06 from memory into fs2
sw x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -28 # sub immediate from rs1 to counter offset
c.fsw f13, 28(x12) # perform operation 

# Testcase cp_imm_mul
li x4, 0xb367e6e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x15, 0x5e8b3231 # initialize rs2 with random value
sw x15, 0(x9) # store 0x5e8b3231 in memory
flw f15, 0(x9) # load 0x5e8b3231 from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -32 # sub immediate from rs1 to counter offset
c.fsw f15, 32(x9) # perform operation 

# Testcase cp_imm_mul
li x9, 0x3a14f2b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x9, 0x89ff3b40 # initialize rs2 with random value
sw x9, 0(x8) # store 0x89ff3b40 in memory
flw f9, 0(x8) # load 0x89ff3b40 from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -36 # sub immediate from rs1 to counter offset
c.fsw f9, 36(x8) # perform operation 

# Testcase cp_imm_mul
li x2, 0x50e19ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x9, 0x10f53350 # initialize rs2 with random value
sw x9, 0(x11) # store 0x10f53350 in memory
flw f9, 0(x11) # load 0x10f53350 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -40 # sub immediate from rs1 to counter offset
c.fsw f9, 40(x11) # perform operation 

# Testcase cp_imm_mul
li x12, 0xc7f8837c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x15, 0xf32f3017 # initialize rs2 with random value
sw x15, 0(x11) # store 0xf32f3017 in memory
flw f15, 0(x11) # load 0xf32f3017 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -44 # sub immediate from rs1 to counter offset
c.fsw f15, 44(x11) # perform operation 

# Testcase cp_imm_mul
li x31, 0x35bbf489 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x15, 0xb4582838 # initialize rs2 with random value
sw x15, 0(x13) # store 0xb4582838 in memory
flw f15, 0(x13) # load 0xb4582838 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -48 # sub immediate from rs1 to counter offset
c.fsw f15, 48(x13) # perform operation 

# Testcase cp_imm_mul
li x2, 0x3ef1f832 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x13, 0xc07ddd5a # initialize rs2 with random value
sw x13, 0(x9) # store 0xc07ddd5a in memory
flw f13, 0(x9) # load 0xc07ddd5a from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -52 # sub immediate from rs1 to counter offset
c.fsw f13, 52(x9) # perform operation 

# Testcase cp_imm_mul
li x26, 0x5a9e00ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x12, 0xd7784754 # initialize rs2 with random value
sw x12, 0(x9) # store 0xd7784754 in memory
flw f12, 0(x9) # load 0xd7784754 from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -56 # sub immediate from rs1 to counter offset
c.fsw f12, 56(x9) # perform operation 

# Testcase cp_imm_mul
li x7, 0xa80d7495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x13, 0xbedc41c0 # initialize rs2 with random value
sw x13, 0(x10) # store 0xbedc41c0 in memory
flw f13, 0(x10) # load 0xbedc41c0 from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -60 # sub immediate from rs1 to counter offset
c.fsw f13, 60(x10) # perform operation 

# Testcase cp_imm_mul
li x16, 0x669b02b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x11, 0x623dafdd # initialize rs2 with random value
sw x11, 0(x10) # store 0x623dafdd in memory
flw f11, 0(x10) # load 0x623dafdd from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -64 # sub immediate from rs1 to counter offset
c.fsw f11, 64(x10) # perform operation 

# Testcase cp_imm_mul
li x8, 0x7bc51f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x9, 0xdd88dc0e # initialize rs2 with random value
sw x9, 0(x10) # store 0xdd88dc0e in memory
flw f9, 0(x10) # load 0xdd88dc0e from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -68 # sub immediate from rs1 to counter offset
c.fsw f9, 68(x10) # perform operation 

# Testcase cp_imm_mul
li x3, 0xd750dbde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x8, 0x63fa5c29 # initialize rs2 with random value
sw x8, 0(x14) # store 0x63fa5c29 in memory
flw f8, 0(x14) # load 0x63fa5c29 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -72 # sub immediate from rs1 to counter offset
c.fsw f8, 72(x14) # perform operation 

# Testcase cp_imm_mul
li x10, 0x50676c32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x9, 0x7510333a # initialize rs2 with random value
sw x9, 0(x11) # store 0x7510333a in memory
flw f9, 0(x11) # load 0x7510333a from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -76 # sub immediate from rs1 to counter offset
c.fsw f9, 76(x11) # perform operation 

# Testcase cp_imm_mul
li x9, 0x242968f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x10, 0x95f20cb9 # initialize rs2 with random value
sw x10, 0(x8) # store 0x95f20cb9 in memory
flw f10, 0(x8) # load 0x95f20cb9 from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -80 # sub immediate from rs1 to counter offset
c.fsw f10, 80(x8) # perform operation 

# Testcase cp_imm_mul
li x7, 0xcb302edb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x14, 0x38195695 # initialize rs2 with random value
sw x14, 0(x11) # store 0x38195695 in memory
flw f14, 0(x11) # load 0x38195695 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -84 # sub immediate from rs1 to counter offset
c.fsw f14, 84(x11) # perform operation 

# Testcase cp_imm_mul
li x18, 0x4772508e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x11, 0xc19cee61 # initialize rs2 with random value
sw x11, 0(x14) # store 0xc19cee61 in memory
flw f11, 0(x14) # load 0xc19cee61 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -88 # sub immediate from rs1 to counter offset
c.fsw f11, 88(x14) # perform operation 

# Testcase cp_imm_mul
li x25, 0x379b7f4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x12, 0x24315e07 # initialize rs2 with random value
sw x12, 0(x11) # store 0x24315e07 in memory
flw f12, 0(x11) # load 0x24315e07 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -92 # sub immediate from rs1 to counter offset
c.fsw f12, 92(x11) # perform operation 

# Testcase cp_imm_mul
li x28, 0xb918e75f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x9, 0x6bb3d552 # initialize rs2 with random value
sw x9, 0(x14) # store 0x6bb3d552 in memory
flw f9, 0(x14) # load 0x6bb3d552 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -96 # sub immediate from rs1 to counter offset
c.fsw f9, 96(x14) # perform operation 

# Testcase cp_imm_mul
li x16, 0xe5dc2f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x14, 0x6e1afc60 # initialize rs2 with random value
sw x14, 0(x10) # store 0x6e1afc60 in memory
flw f14, 0(x10) # load 0x6e1afc60 from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -100 # sub immediate from rs1 to counter offset
c.fsw f14, 100(x10) # perform operation 

# Testcase cp_imm_mul
li x3, 0xc99a2230 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x9, 0xc39e0517 # initialize rs2 with random value
sw x9, 0(x10) # store 0xc39e0517 in memory
flw f9, 0(x10) # load 0xc39e0517 from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -104 # sub immediate from rs1 to counter offset
c.fsw f9, 104(x10) # perform operation 

# Testcase cp_imm_mul
li x19, 0x422a13ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x14, 0x2bdc0756 # initialize rs2 with random value
sw x14, 0(x9) # store 0x2bdc0756 in memory
flw f14, 0(x9) # load 0x2bdc0756 from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -108 # sub immediate from rs1 to counter offset
c.fsw f14, 108(x9) # perform operation 

# Testcase cp_imm_mul
li x14, 0xa24045c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x8, 0x918df3a6 # initialize rs2 with random value
sw x8, 0(x15) # store 0x918df3a6 in memory
flw f8, 0(x15) # load 0x918df3a6 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
addi x15, x15, -112 # sub immediate from rs1 to counter offset
c.fsw f8, 112(x15) # perform operation 

# Testcase cp_imm_mul
li x18, 0xf809c6d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x8, 0x5ef5ebc7 # initialize rs2 with random value
sw x8, 0(x14) # store 0x5ef5ebc7 in memory
flw f8, 0(x14) # load 0x5ef5ebc7 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -116 # sub immediate from rs1 to counter offset
c.fsw f8, 116(x14) # perform operation 

# Testcase cp_imm_mul
li x1, 0x994cfef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x15, 0xafdafcd5 # initialize rs2 with random value
sw x15, 0(x11) # store 0xafdafcd5 in memory
flw f15, 0(x11) # load 0xafdafcd5 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -120 # sub immediate from rs1 to counter offset
c.fsw f15, 120(x11) # perform operation 

# Testcase cp_imm_mul
li x27, 0x4fa3c81c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x14, 0x45ca636c # initialize rs2 with random value
sw x14, 0(x9) # store 0x45ca636c in memory
flw f14, 0(x9) # load 0x45ca636c from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -124 # sub immediate from rs1 to counter offset
c.fsw f14, 124(x9) # perform operation 

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.fswsp.S
// ******************


    
# Testcase cp_imm_zero
li x12, 0x8578227f # initialize rd to a random value that should get changed; helps covering rd_toggle

.EQU NUMTESTS,1



self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
