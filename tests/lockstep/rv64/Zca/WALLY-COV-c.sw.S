///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.sw.S
// David_Harris@hmc.edu

 # testgen_header.S
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "macros.h"

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
la x9, scratch # base address
li x8, 0x0000000000000000 # initialize rs2 with random value
addi x9, x9, -28 # sub immediate from rs1 to counter offset
c.sw x8, 28(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
la x11, scratch # base address
li x12, 0x0000000000000001 # initialize rs2 with random value
addi x11, x11, -52 # sub immediate from rs1 to counter offset
c.sw x12, 52(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
la x13, scratch # base address
li x15, 0x0000000000000002 # initialize rs2 with random value
addi x13, x13, -24 # sub immediate from rs1 to counter offset
c.sw x15, 24(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
la x14, scratch # base address
li x8, 0x8000000000000000 # initialize rs2 with random value
addi x14, x14, -52 # sub immediate from rs1 to counter offset
c.sw x8, 52(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
la x8, scratch # base address
li x14, 0x8000000000000001 # initialize rs2 with random value
addi x8, x8, -56 # sub immediate from rs1 to counter offset
c.sw x14, 56(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
la x12, scratch # base address
li x13, 0x7fffffffffffffff # initialize rs2 with random value
addi x12, x12, -40 # sub immediate from rs1 to counter offset
c.sw x13, 40(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
la x9, scratch # base address
li x15, 0x7ffffffffffffffe # initialize rs2 with random value
addi x9, x9, -60 # sub immediate from rs1 to counter offset
c.sw x15, 60(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
la x13, scratch # base address
li x9, 0xffffffffffffffff # initialize rs2 with random value
addi x13, x13, -104 # sub immediate from rs1 to counter offset
c.sw x9, 104(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
la x14, scratch # base address
li x11, 0xfffffffffffffffe # initialize rs2 with random value
addi x14, x14, -76 # sub immediate from rs1 to counter offset
c.sw x11, 76(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
la x12, scratch # base address
li x11, 0x5bbc887763ae86f2 # initialize rs2 with random value
addi x12, x12, -44 # sub immediate from rs1 to counter offset
c.sw x11, 44(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
la x8, scratch # base address
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2 with random value
addi x8, x8, -72 # sub immediate from rs1 to counter offset
c.sw x14, 72(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
la x9, scratch # base address
li x11, 0x5555555555555555 # initialize rs2 with random value
addi x9, x9, -112 # sub immediate from rs1 to counter offset
c.sw x11, 112(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
la x8, scratch # base address
li x14, 0x00000000ffffffff # initialize rs2 with random value
addi x8, x8, -76 # sub immediate from rs1 to counter offset
c.sw x14, 76(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
la x15, scratch # base address
li x9, 0x00000000fffffffe # initialize rs2 with random value
addi x15, x15, -124 # sub immediate from rs1 to counter offset
c.sw x9, 124(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
la x10, scratch # base address
li x9, 0x0000000100000000 # initialize rs2 with random value
addi x10, x10, -36 # sub immediate from rs1 to counter offset
c.sw x9, 36(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
la x10, scratch # base address
li x9, 0x0000000100000001 # initialize rs2 with random value
addi x10, x10, -32 # sub immediate from rs1 to counter offset
c.sw x9, 32(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address
li x14, 0x6c2ca74f118d4336 # initialize rs2 with random value
addi x8, x8, -12 # sub immediate from rs1 to counter offset
c.sw x14, 12(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address
li x12, 0xbd3ec67a55d93e10 # initialize rs2 with random value
addi x9, x9, -60 # sub immediate from rs1 to counter offset
c.sw x12, 60(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address
li x14, 0xbe68cb9d40e4c970 # initialize rs2 with random value
addi x10, x10, -4 # sub immediate from rs1 to counter offset
c.sw x14, 4(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address
li x9, 0x07aa999bb21fcc2e # initialize rs2 with random value
addi x11, x11, -92 # sub immediate from rs1 to counter offset
c.sw x9, 92(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address
li x11, 0xb60614a4c4b7989d # initialize rs2 with random value
addi x12, x12, -28 # sub immediate from rs1 to counter offset
c.sw x11, 28(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address
li x10, 0xdd69e0d201729017 # initialize rs2 with random value
addi x13, x13, -76 # sub immediate from rs1 to counter offset
c.sw x10, 76(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address
li x9, 0x8ba868230304b762 # initialize rs2 with random value
addi x14, x14, -24 # sub immediate from rs1 to counter offset
c.sw x9, 24(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address
li x13, 0xd3abe6fe5ff6f20a # initialize rs2 with random value
addi x15, x15, -68 # sub immediate from rs1 to counter offset
c.sw x13, 68(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
la x14, scratch # base address
li x8, 0xde998433c78f5068 # initialize rs2 with random value
addi x14, x14, -76 # sub immediate from rs1 to counter offset
c.sw x8, 76(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
la x8, scratch # base address
li x9, 0xa26815d7522b3a4c # initialize rs2 with random value
addi x8, x8, -48 # sub immediate from rs1 to counter offset
c.sw x9, 48(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
la x9, scratch # base address
li x10, 0x3e4faabd12aff56e # initialize rs2 with random value
addi x9, x9, -60 # sub immediate from rs1 to counter offset
c.sw x10, 60(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
la x15, scratch # base address
li x11, 0xa3dbeace968fc094 # initialize rs2 with random value
addi x15, x15, -36 # sub immediate from rs1 to counter offset
c.sw x11, 36(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
la x13, scratch # base address
li x12, 0x0c221f466ce3dec7 # initialize rs2 with random value
addi x13, x13, -80 # sub immediate from rs1 to counter offset
c.sw x12, 80(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
la x8, scratch # base address
li x13, 0x0e0fd3eaba519528 # initialize rs2 with random value
addi x8, x8, -40 # sub immediate from rs1 to counter offset
c.sw x13, 40(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
la x13, scratch # base address
li x14, 0x3faa3f639d98ab4c # initialize rs2 with random value
addi x13, x13, -60 # sub immediate from rs1 to counter offset
c.sw x14, 60(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
la x10, scratch # base address
li x15, 0xc582b0d8159379c6 # initialize rs2 with random value
addi x10, x10, -32 # sub immediate from rs1 to counter offset
c.sw x15, 32(x10) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x14, 0xc25eaa23adea134d # initialize rs2 with random value
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sw x14, 0(x12) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x11, 0x4e339f408c239018 # initialize rs2 with random value
addi x15, x15, -4 # sub immediate from rs1 to counter offset
c.sw x11, 4(x15) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x10, 0xf24ba788aeea49d7 # initialize rs2 with random value
addi x14, x14, -8 # sub immediate from rs1 to counter offset
c.sw x10, 8(x14) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x13, 0xe95398797fc9b48f # initialize rs2 with random value
addi x8, x8, -12 # sub immediate from rs1 to counter offset
c.sw x13, 12(x8) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x9, 0x2bae6b5074aa17d7 # initialize rs2 with random value
addi x15, x15, -16 # sub immediate from rs1 to counter offset
c.sw x9, 16(x15) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x11, 0x7e8cfb6d3dc1090a # initialize rs2 with random value
addi x13, x13, -20 # sub immediate from rs1 to counter offset
c.sw x11, 20(x13) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x8, 0x58d2a522845ad4a7 # initialize rs2 with random value
addi x9, x9, -24 # sub immediate from rs1 to counter offset
c.sw x8, 24(x9) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x14, 0x9808a4a1cfd6be5e # initialize rs2 with random value
addi x12, x12, -28 # sub immediate from rs1 to counter offset
c.sw x14, 28(x12) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x8, 0x70de3b0cffb4aec4 # initialize rs2 with random value
addi x14, x14, -32 # sub immediate from rs1 to counter offset
c.sw x8, 32(x14) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x15, 0x11b68aabea7599a7 # initialize rs2 with random value
addi x11, x11, -36 # sub immediate from rs1 to counter offset
c.sw x15, 36(x11) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x15, 0xdf8cfed5d973e12a # initialize rs2 with random value
addi x10, x10, -40 # sub immediate from rs1 to counter offset
c.sw x15, 40(x10) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x15, 0x7b403a5d71ef075e # initialize rs2 with random value
addi x9, x9, -44 # sub immediate from rs1 to counter offset
c.sw x15, 44(x9) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x13, 0xa10eab2810ee88d9 # initialize rs2 with random value
addi x9, x9, -48 # sub immediate from rs1 to counter offset
c.sw x13, 48(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x8, 0x1f8ff2609d949d23 # initialize rs2 with random value
addi x15, x15, -52 # sub immediate from rs1 to counter offset
c.sw x8, 52(x15) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x13, 0xc6819ef0bcbebdfb # initialize rs2 with random value
addi x15, x15, -56 # sub immediate from rs1 to counter offset
c.sw x13, 56(x15) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x13, 0x1c7b9c84032054ad # initialize rs2 with random value
addi x14, x14, -60 # sub immediate from rs1 to counter offset
c.sw x13, 60(x14) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x8, 0xbfb3480d3aa2f131 # initialize rs2 with random value
addi x11, x11, -64 # sub immediate from rs1 to counter offset
c.sw x8, 64(x11) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x9, 0x6ea4b6091cd2b530 # initialize rs2 with random value
addi x11, x11, -68 # sub immediate from rs1 to counter offset
c.sw x9, 68(x11) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x9, 0x85933aa8c364fbc7 # initialize rs2 with random value
addi x12, x12, -72 # sub immediate from rs1 to counter offset
c.sw x9, 72(x12) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x9, 0x6f14ada21348681f # initialize rs2 with random value
addi x10, x10, -76 # sub immediate from rs1 to counter offset
c.sw x9, 76(x10) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x12, 0x78f88dfdd16393a3 # initialize rs2 with random value
addi x9, x9, -80 # sub immediate from rs1 to counter offset
c.sw x12, 80(x9) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x10, 0xd326d15cefe1a9f3 # initialize rs2 with random value
addi x13, x13, -84 # sub immediate from rs1 to counter offset
c.sw x10, 84(x13) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x8, 0xe959444aad52eeee # initialize rs2 with random value
addi x12, x12, -88 # sub immediate from rs1 to counter offset
c.sw x8, 88(x12) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x12, 0x0cb65988df0fbe83 # initialize rs2 with random value
addi x9, x9, -92 # sub immediate from rs1 to counter offset
c.sw x12, 92(x9) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x13, 0x957dec5ddf244434 # initialize rs2 with random value
addi x10, x10, -96 # sub immediate from rs1 to counter offset
c.sw x13, 96(x10) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x14, 0x5e7b4a8c0e6e42a2 # initialize rs2 with random value
addi x9, x9, -100 # sub immediate from rs1 to counter offset
c.sw x14, 100(x9) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x11, 0xca96a238743303f3 # initialize rs2 with random value
addi x13, x13, -104 # sub immediate from rs1 to counter offset
c.sw x11, 104(x13) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x12, 0x547a947adc1a141c # initialize rs2 with random value
addi x14, x14, -108 # sub immediate from rs1 to counter offset
c.sw x12, 108(x14) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x14, 0x461991fd54e1ed0e # initialize rs2 with random value
addi x12, x12, -112 # sub immediate from rs1 to counter offset
c.sw x14, 112(x12) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x15, 0x2e1b0ed8cd7cde84 # initialize rs2 with random value
addi x12, x12, -116 # sub immediate from rs1 to counter offset
c.sw x15, 116(x12) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x13, 0x56cc17d7e287eaa5 # initialize rs2 with random value
addi x12, x12, -120 # sub immediate from rs1 to counter offset
c.sw x13, 120(x12) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x8, 0x5554e9732ede6262 # initialize rs2 with random value
addi x15, x15, -124 # sub immediate from rs1 to counter offset
c.sw x8, 124(x15) # perform operation 

.EQU SIGSIZE,0


 # testgen_footer.S


write_tohost:
    la t1, tohost
    li t0, 1
    sw t0, 0(t1)
    sw zero, 4(t1)

self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 136

.data 

.section .tohost 
tohost: # write to HTIF
    .dword 0
fromhost:
    .dword 0

.align 4
begin_signature:
    .fill SIGSIZE*8/__riscv_xlen,__riscv_xlen/8,0xdeadbeef
end_signature:

.end
