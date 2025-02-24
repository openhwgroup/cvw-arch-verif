///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.sw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.496263
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs2 (Test source rs2 = x8)
li x23, 0x578ab544 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x13, 0xa18a16d7 # initialize rs2 with random value
addi x8, x8, -76 # sub immediate from rs1 to counter offset
c.sw x13, 76(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x17, 0x5c1f4f7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x9, 0xc03584b7 # initialize rs2 with random value
addi x10, x10, -60 # sub immediate from rs1 to counter offset
c.sw x9, 60(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x17, 0x9ec0b11f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x10, 0x088feba9 # initialize rs2 with random value
addi x12, x12, -20 # sub immediate from rs1 to counter offset
c.sw x10, 20(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x31, 0xb2a0afff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x11, 0x02836171 # initialize rs2 with random value
addi x14, x14, -32 # sub immediate from rs1 to counter offset
c.sw x11, 32(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x5, 0x5004a949 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x15, 0x29748852 # initialize rs2 with random value
addi x12, x12, -76 # sub immediate from rs1 to counter offset
c.sw x15, 76(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0x44bed0c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x13, 0xc3cba416 # initialize rs2 with random value
addi x8, x8, -96 # sub immediate from rs1 to counter offset
c.sw x13, 96(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x24, 0x33d53544 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x14, 0x22a0119a # initialize rs2 with random value
addi x12, x12, -96 # sub immediate from rs1 to counter offset
c.sw x14, 96(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x29, 0x4149e78b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x15, 0xa7ccdb41 # initialize rs2 with random value
addi x12, x12, -64 # sub immediate from rs1 to counter offset
c.sw x15, 64(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x28, 0x785c7301 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x15, 0x00000000 # initialize rs2 with random value
addi x11, x11, -120 # sub immediate from rs1 to counter offset
c.sw x15, 120(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x1, 0x011b864f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x11, 0x00000001 # initialize rs2 with random value
addi x9, x9, -40 # sub immediate from rs1 to counter offset
c.sw x11, 40(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x19, 0xc28e5721 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x10, 0x00000002 # initialize rs2 with random value
addi x12, x12, -52 # sub immediate from rs1 to counter offset
c.sw x10, 52(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x3, 0x2c734637 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x8, 0x80000000 # initialize rs2 with random value
addi x15, x15, -120 # sub immediate from rs1 to counter offset
c.sw x8, 120(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x30, 0xc9b9a047 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x8, 0x80000001 # initialize rs2 with random value
addi x9, x9, -20 # sub immediate from rs1 to counter offset
c.sw x8, 20(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x13, 0xecf4e593 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x10, 0x7fffffff # initialize rs2 with random value
addi x15, x15, -84 # sub immediate from rs1 to counter offset
c.sw x10, 84(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x15, 0x93a2905e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x11, 0x7ffffffe # initialize rs2 with random value
addi x14, x14, -48 # sub immediate from rs1 to counter offset
c.sw x11, 48(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x1, 0x6c5f2a5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x15, 0xffffffff # initialize rs2 with random value
addi x10, x10, -28 # sub immediate from rs1 to counter offset
c.sw x15, 28(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0x8adbab40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x14, 0xfffffffe # initialize rs2 with random value
addi x15, x15, -88 # sub immediate from rs1 to counter offset
c.sw x14, 88(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x7, 0xf0bc23c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x9, 0x5bbc8877 # initialize rs2 with random value
addi x14, x14, -60 # sub immediate from rs1 to counter offset
c.sw x9, 60(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x31, 0xd6ffabfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x9, 0xaaaaaaaa # initialize rs2 with random value
addi x13, x13, -88 # sub immediate from rs1 to counter offset
c.sw x9, 88(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x18, 0xdbed52ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x9, 0x55555555 # initialize rs2 with random value
addi x13, x13, -104 # sub immediate from rs1 to counter offset
c.sw x9, 104(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x7, 0x0cb2e8e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x9, 0xb929aa07 # initialize rs2 with random value
addi x8, x8, -52 # sub immediate from rs1 to counter offset
c.sw x9, 52(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0xe39075ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x8, 0xcb741bdd # initialize rs2 with random value
addi x9, x9, -52 # sub immediate from rs1 to counter offset
c.sw x8, 52(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0xb6341228 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x11, 0x819409e3 # initialize rs2 with random value
addi x10, x10, -40 # sub immediate from rs1 to counter offset
c.sw x11, 40(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x21, 0xc2757150 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x15, 0xba611d32 # initialize rs2 with random value
addi x11, x11, -96 # sub immediate from rs1 to counter offset
c.sw x15, 96(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x0b3e909f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x11, 0xb1297f49 # initialize rs2 with random value
addi x12, x12, -32 # sub immediate from rs1 to counter offset
c.sw x11, 32(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x23, 0x478b0557 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x12, 0x2380100d # initialize rs2 with random value
addi x13, x13, -84 # sub immediate from rs1 to counter offset
c.sw x12, 84(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0xd9881cb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x9, 0x0d7a7dd2 # initialize rs2 with random value
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sw x9, 0(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x24, 0x23269dce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x13, 0x43762556 # initialize rs2 with random value
addi x15, x15, -100 # sub immediate from rs1 to counter offset
c.sw x13, 100(x15) # perform operation 

# Testcase cp_imm_mul
li x4, 0xa47d13c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x11, 0x010f3fcc # initialize rs2 with random value
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sw x11, 0(x15) # perform operation 

# Testcase cp_imm_mul
li x6, 0x832fdf96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x13, 0xf5777a0f # initialize rs2 with random value
addi x12, x12, -4 # sub immediate from rs1 to counter offset
c.sw x13, 4(x12) # perform operation 

# Testcase cp_imm_mul
li x1, 0x3ab203de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x11, 0x75f903ce # initialize rs2 with random value
addi x8, x8, -8 # sub immediate from rs1 to counter offset
c.sw x11, 8(x8) # perform operation 

# Testcase cp_imm_mul
li x3, 0x7da49a1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x9, 0x2cfc391e # initialize rs2 with random value
addi x13, x13, -12 # sub immediate from rs1 to counter offset
c.sw x9, 12(x13) # perform operation 

# Testcase cp_imm_mul
li x19, 0x4ea1df8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x11, 0x3dc01bff # initialize rs2 with random value
addi x10, x10, -16 # sub immediate from rs1 to counter offset
c.sw x11, 16(x10) # perform operation 

# Testcase cp_imm_mul
li x28, 0xbf45659b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x11, 0xcdf03389 # initialize rs2 with random value
addi x14, x14, -20 # sub immediate from rs1 to counter offset
c.sw x11, 20(x14) # perform operation 

# Testcase cp_imm_mul
li x14, 0x92d2086b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x15, 0xe65c1976 # initialize rs2 with random value
addi x12, x12, -24 # sub immediate from rs1 to counter offset
c.sw x15, 24(x12) # perform operation 

# Testcase cp_imm_mul
li x12, 0xaa2e477f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x9, 0x2b25be84 # initialize rs2 with random value
addi x10, x10, -28 # sub immediate from rs1 to counter offset
c.sw x9, 28(x10) # perform operation 

# Testcase cp_imm_mul
li x1, 0xc4343129 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x13, 0xe25436eb # initialize rs2 with random value
addi x9, x9, -32 # sub immediate from rs1 to counter offset
c.sw x13, 32(x9) # perform operation 

# Testcase cp_imm_mul
li x26, 0x7e73e999 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x13, 0x94a86743 # initialize rs2 with random value
addi x9, x9, -36 # sub immediate from rs1 to counter offset
c.sw x13, 36(x9) # perform operation 

# Testcase cp_imm_mul
li x8, 0xaca9fa62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x10, 0x91c33a71 # initialize rs2 with random value
addi x14, x14, -40 # sub immediate from rs1 to counter offset
c.sw x10, 40(x14) # perform operation 

# Testcase cp_imm_mul
li x8, 0xaee27c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x10, 0xb6cb84b3 # initialize rs2 with random value
addi x14, x14, -44 # sub immediate from rs1 to counter offset
c.sw x10, 44(x14) # perform operation 

# Testcase cp_imm_mul
li x8, 0x633874ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x9, 0x372b580c # initialize rs2 with random value
addi x10, x10, -48 # sub immediate from rs1 to counter offset
c.sw x9, 48(x10) # perform operation 

# Testcase cp_imm_mul
li x29, 0x3569b864 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x14, 0x65121f17 # initialize rs2 with random value
addi x15, x15, -52 # sub immediate from rs1 to counter offset
c.sw x14, 52(x15) # perform operation 

# Testcase cp_imm_mul
li x23, 0x5c3e39ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x11, 0xe072cac6 # initialize rs2 with random value
addi x12, x12, -56 # sub immediate from rs1 to counter offset
c.sw x11, 56(x12) # perform operation 

# Testcase cp_imm_mul
li x22, 0x2c26a7e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x8, 0xf43eea7e # initialize rs2 with random value
addi x13, x13, -60 # sub immediate from rs1 to counter offset
c.sw x8, 60(x13) # perform operation 

# Testcase cp_imm_mul
li x8, 0x1e02cbba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x10, 0xa9e58fff # initialize rs2 with random value
addi x14, x14, -64 # sub immediate from rs1 to counter offset
c.sw x10, 64(x14) # perform operation 

# Testcase cp_imm_mul
li x6, 0xaf9c2753 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x12, 0x4933df83 # initialize rs2 with random value
addi x13, x13, -68 # sub immediate from rs1 to counter offset
c.sw x12, 68(x13) # perform operation 

# Testcase cp_imm_mul
li x14, 0x677498f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x11, 0xef16d913 # initialize rs2 with random value
addi x8, x8, -72 # sub immediate from rs1 to counter offset
c.sw x11, 72(x8) # perform operation 

# Testcase cp_imm_mul
li x17, 0x48286e32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x11, 0x05a273fc # initialize rs2 with random value
addi x8, x8, -76 # sub immediate from rs1 to counter offset
c.sw x11, 76(x8) # perform operation 

# Testcase cp_imm_mul
li x17, 0x459322b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x9, 0x883cad54 # initialize rs2 with random value
addi x15, x15, -80 # sub immediate from rs1 to counter offset
c.sw x9, 80(x15) # perform operation 

# Testcase cp_imm_mul
li x2, 0x708d77bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x15, 0xc6ad41a2 # initialize rs2 with random value
addi x8, x8, -84 # sub immediate from rs1 to counter offset
c.sw x15, 84(x8) # perform operation 

# Testcase cp_imm_mul
li x29, 0x9646d8cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x9, 0xd57a2246 # initialize rs2 with random value
addi x8, x8, -88 # sub immediate from rs1 to counter offset
c.sw x9, 88(x8) # perform operation 

# Testcase cp_imm_mul
li x14, 0x6ba8edcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x10, 0x6be76dda # initialize rs2 with random value
addi x12, x12, -92 # sub immediate from rs1 to counter offset
c.sw x10, 92(x12) # perform operation 

# Testcase cp_imm_mul
li x1, 0x8e59f058 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x14, 0x1edccf32 # initialize rs2 with random value
addi x11, x11, -96 # sub immediate from rs1 to counter offset
c.sw x14, 96(x11) # perform operation 

# Testcase cp_imm_mul
li x4, 0x143c38c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x12, 0xa5272d82 # initialize rs2 with random value
addi x11, x11, -100 # sub immediate from rs1 to counter offset
c.sw x12, 100(x11) # perform operation 

# Testcase cp_imm_mul
li x12, 0x8cdfddea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x12, 0x62fd07c4 # initialize rs2 with random value
addi x13, x13, -104 # sub immediate from rs1 to counter offset
c.sw x12, 104(x13) # perform operation 

# Testcase cp_imm_mul
li x16, 0xe137d592 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x11, 0x02c39d58 # initialize rs2 with random value
addi x14, x14, -108 # sub immediate from rs1 to counter offset
c.sw x11, 108(x14) # perform operation 

# Testcase cp_imm_mul
li x24, 0xe9866d1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x8, 0xcd3ef2f9 # initialize rs2 with random value
addi x13, x13, -112 # sub immediate from rs1 to counter offset
c.sw x8, 112(x13) # perform operation 

# Testcase cp_imm_mul
li x10, 0xa26d1c0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x14, 0x640209a0 # initialize rs2 with random value
addi x9, x9, -116 # sub immediate from rs1 to counter offset
c.sw x14, 116(x9) # perform operation 

# Testcase cp_imm_mul
li x20, 0xdb8dee54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x8, 0x97e5147d # initialize rs2 with random value
addi x9, x9, -120 # sub immediate from rs1 to counter offset
c.sw x8, 120(x9) # perform operation 

# Testcase cp_imm_mul
li x24, 0x2bfc44ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x15, 0x21a5b5c1 # initialize rs2 with random value
addi x8, x8, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x8) # perform operation 

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
