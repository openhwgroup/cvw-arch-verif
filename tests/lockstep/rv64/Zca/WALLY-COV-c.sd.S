///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.sd.S
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
la x11, scratch # base address
li x10, 0x0000000000000000 # initialize rs2 with random value
addi x11, x11, -160 # sub immediate from rs1 to counter offset
c.sd x10, 160(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
la x11, scratch # base address
li x13, 0x0000000000000001 # initialize rs2 with random value
addi x11, x11, -64 # sub immediate from rs1 to counter offset
c.sd x13, 64(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
la x11, scratch # base address
li x14, 0x0000000000000002 # initialize rs2 with random value
addi x11, x11, -16 # sub immediate from rs1 to counter offset
c.sd x14, 16(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
la x8, scratch # base address
li x14, 0x8000000000000000 # initialize rs2 with random value
addi x8, x8, -184 # sub immediate from rs1 to counter offset
c.sd x14, 184(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
la x11, scratch # base address
li x8, 0x8000000000000001 # initialize rs2 with random value
addi x11, x11, -128 # sub immediate from rs1 to counter offset
c.sd x8, 128(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
la x12, scratch # base address
li x9, 0x7fffffffffffffff # initialize rs2 with random value
addi x12, x12, -72 # sub immediate from rs1 to counter offset
c.sd x9, 72(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
la x12, scratch # base address
li x14, 0x7ffffffffffffffe # initialize rs2 with random value
addi x12, x12, -8 # sub immediate from rs1 to counter offset
c.sd x14, 8(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
la x8, scratch # base address
li x9, 0xffffffffffffffff # initialize rs2 with random value
addi x8, x8, -80 # sub immediate from rs1 to counter offset
c.sd x9, 80(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
la x8, scratch # base address
li x13, 0xfffffffffffffffe # initialize rs2 with random value
addi x8, x8, -216 # sub immediate from rs1 to counter offset
c.sd x13, 216(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
la x12, scratch # base address
li x8, 0x5bbc887763ae86f2 # initialize rs2 with random value
addi x12, x12, -16 # sub immediate from rs1 to counter offset
c.sd x8, 16(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
la x10, scratch # base address
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2 with random value
addi x10, x10, -8 # sub immediate from rs1 to counter offset
c.sd x12, 8(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
la x13, scratch # base address
li x9, 0x5555555555555555 # initialize rs2 with random value
addi x13, x13, -8 # sub immediate from rs1 to counter offset
c.sd x9, 8(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
la x11, scratch # base address
li x8, 0x00000000ffffffff # initialize rs2 with random value
addi x11, x11, -32 # sub immediate from rs1 to counter offset
c.sd x8, 32(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
la x8, scratch # base address
li x15, 0x00000000fffffffe # initialize rs2 with random value
addi x8, x8, -48 # sub immediate from rs1 to counter offset
c.sd x15, 48(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
la x13, scratch # base address
li x10, 0x0000000100000000 # initialize rs2 with random value
addi x13, x13, -88 # sub immediate from rs1 to counter offset
c.sd x10, 88(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
la x10, scratch # base address
li x13, 0x0000000100000001 # initialize rs2 with random value
addi x10, x10, -224 # sub immediate from rs1 to counter offset
c.sd x13, 224(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address
li x9, 0x80cde7249fb2d1c6 # initialize rs2 with random value
addi x8, x8, -168 # sub immediate from rs1 to counter offset
c.sd x9, 168(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address
li x11, 0x03a2e6e9e8bbe4bd # initialize rs2 with random value
addi x9, x9, -248 # sub immediate from rs1 to counter offset
c.sd x11, 248(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address
li x13, 0x79b9bb9570363c0e # initialize rs2 with random value
addi x10, x10, -232 # sub immediate from rs1 to counter offset
c.sd x13, 232(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address
li x8, 0x6fc7497f9fee02c9 # initialize rs2 with random value
addi x11, x11, -64 # sub immediate from rs1 to counter offset
c.sd x8, 64(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address
li x8, 0x643c78735fa90bc1 # initialize rs2 with random value
addi x12, x12, -24 # sub immediate from rs1 to counter offset
c.sd x8, 24(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address
li x14, 0x02ce02bc3e7596a4 # initialize rs2 with random value
addi x13, x13, -224 # sub immediate from rs1 to counter offset
c.sd x14, 224(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address
li x15, 0xfc0ca9ce2b4d1a3c # initialize rs2 with random value
addi x14, x14, -176 # sub immediate from rs1 to counter offset
c.sd x15, 176(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address
li x9, 0xe82f2587345980da # initialize rs2 with random value
addi x15, x15, -192 # sub immediate from rs1 to counter offset
c.sd x9, 192(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
la x10, scratch # base address
li x8, 0xf8d9354d0b54bf44 # initialize rs2 with random value
addi x10, x10, -64 # sub immediate from rs1 to counter offset
c.sd x8, 64(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
la x15, scratch # base address
li x9, 0xcccfc2cdc79804c8 # initialize rs2 with random value
addi x15, x15, -184 # sub immediate from rs1 to counter offset
c.sd x9, 184(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
la x11, scratch # base address
li x10, 0x852fa905ae60f279 # initialize rs2 with random value
addi x11, x11, -208 # sub immediate from rs1 to counter offset
c.sd x10, 208(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
la x9, scratch # base address
li x11, 0xa6efbeba229ef420 # initialize rs2 with random value
addi x9, x9, -144 # sub immediate from rs1 to counter offset
c.sd x11, 144(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
la x8, scratch # base address
li x12, 0xe13016c3bcec8ff7 # initialize rs2 with random value
addi x8, x8, -16 # sub immediate from rs1 to counter offset
c.sd x12, 16(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
la x10, scratch # base address
li x13, 0x0137be7d30dc57dd # initialize rs2 with random value
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sd x13, 0(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
la x9, scratch # base address
li x14, 0x8a3cb5e8af98d63d # initialize rs2 with random value
addi x9, x9, -16 # sub immediate from rs1 to counter offset
c.sd x14, 16(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
la x12, scratch # base address
li x15, 0xd74b7ba4c0edbd07 # initialize rs2 with random value
addi x12, x12, -56 # sub immediate from rs1 to counter offset
c.sd x15, 56(x12) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x9, 0x40e852d1b518692c # initialize rs2 with random value
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sd x9, 0(x10) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x14, 0x6dee3bae9145db2d # initialize rs2 with random value
addi x10, x10, -8 # sub immediate from rs1 to counter offset
c.sd x14, 8(x10) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x15, 0x2a628164bb877179 # initialize rs2 with random value
addi x9, x9, -16 # sub immediate from rs1 to counter offset
c.sd x15, 16(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x11, 0xf8e07a9bc8b0fda9 # initialize rs2 with random value
addi x15, x15, -24 # sub immediate from rs1 to counter offset
c.sd x11, 24(x15) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x9, 0x0b1823fb0d3c7d5b # initialize rs2 with random value
addi x8, x8, -32 # sub immediate from rs1 to counter offset
c.sd x9, 32(x8) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x9, 0x28d712e5649ad709 # initialize rs2 with random value
addi x8, x8, -40 # sub immediate from rs1 to counter offset
c.sd x9, 40(x8) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x11, 0x0a99b534b8a2a461 # initialize rs2 with random value
addi x10, x10, -48 # sub immediate from rs1 to counter offset
c.sd x11, 48(x10) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x10, 0x95b20728da0c5e17 # initialize rs2 with random value
addi x15, x15, -56 # sub immediate from rs1 to counter offset
c.sd x10, 56(x15) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x12, 0x5430d8b7e4a8137d # initialize rs2 with random value
addi x8, x8, -64 # sub immediate from rs1 to counter offset
c.sd x12, 64(x8) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x10, 0xdbd343bdecc5bda3 # initialize rs2 with random value
addi x15, x15, -72 # sub immediate from rs1 to counter offset
c.sd x10, 72(x15) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x12, 0xdad4b6ebc6550926 # initialize rs2 with random value
addi x9, x9, -80 # sub immediate from rs1 to counter offset
c.sd x12, 80(x9) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x11, 0xfb28aeb3b79ca559 # initialize rs2 with random value
addi x10, x10, -88 # sub immediate from rs1 to counter offset
c.sd x11, 88(x10) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x15, 0x8f80c1f05cb84caf # initialize rs2 with random value
addi x13, x13, -96 # sub immediate from rs1 to counter offset
c.sd x15, 96(x13) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x15, 0x945d30a1ccd3498b # initialize rs2 with random value
addi x9, x9, -104 # sub immediate from rs1 to counter offset
c.sd x15, 104(x9) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x15, 0xb478aaab4e8741c0 # initialize rs2 with random value
addi x10, x10, -112 # sub immediate from rs1 to counter offset
c.sd x15, 112(x10) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x15, 0x41414bf4606e3009 # initialize rs2 with random value
addi x11, x11, -120 # sub immediate from rs1 to counter offset
c.sd x15, 120(x11) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x10, 0x918f27ae0219f64f # initialize rs2 with random value
addi x13, x13, -128 # sub immediate from rs1 to counter offset
c.sd x10, 128(x13) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x12, 0x62df87c3ec771abd # initialize rs2 with random value
addi x9, x9, -136 # sub immediate from rs1 to counter offset
c.sd x12, 136(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x9, 0x75c6d52ee1e06511 # initialize rs2 with random value
addi x15, x15, -144 # sub immediate from rs1 to counter offset
c.sd x9, 144(x15) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x11, 0x72abe209df1e76ca # initialize rs2 with random value
addi x13, x13, -152 # sub immediate from rs1 to counter offset
c.sd x11, 152(x13) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x12, 0xae043403d4ae851f # initialize rs2 with random value
addi x9, x9, -160 # sub immediate from rs1 to counter offset
c.sd x12, 160(x9) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x13, 0xf35da39e145150d5 # initialize rs2 with random value
addi x9, x9, -168 # sub immediate from rs1 to counter offset
c.sd x13, 168(x9) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x13, 0xbfbfac7dc4415e7d # initialize rs2 with random value
addi x12, x12, -176 # sub immediate from rs1 to counter offset
c.sd x13, 176(x12) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x12, 0x2a3d2f0a4d1ca754 # initialize rs2 with random value
addi x8, x8, -184 # sub immediate from rs1 to counter offset
c.sd x12, 184(x8) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x15, 0xef92311b27b713cd # initialize rs2 with random value
addi x11, x11, -192 # sub immediate from rs1 to counter offset
c.sd x15, 192(x11) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x12, 0x6881380aec30f256 # initialize rs2 with random value
addi x13, x13, -200 # sub immediate from rs1 to counter offset
c.sd x12, 200(x13) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x15, 0xff12d479d0d02c34 # initialize rs2 with random value
addi x9, x9, -208 # sub immediate from rs1 to counter offset
c.sd x15, 208(x9) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x12, 0x6a9e2617b21eac49 # initialize rs2 with random value
addi x14, x14, -216 # sub immediate from rs1 to counter offset
c.sd x12, 216(x14) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x14, 0xbb08675dfacd4c3b # initialize rs2 with random value
addi x12, x12, -224 # sub immediate from rs1 to counter offset
c.sd x14, 224(x12) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x13, 0xb11bd933115950d9 # initialize rs2 with random value
addi x15, x15, -232 # sub immediate from rs1 to counter offset
c.sd x13, 232(x15) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x11, 0x249e67001dffbe03 # initialize rs2 with random value
addi x9, x9, -240 # sub immediate from rs1 to counter offset
c.sd x11, 240(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x11, 0x42d69f5cbc08e50b # initialize rs2 with random value
addi x15, x15, -248 # sub immediate from rs1 to counter offset
c.sd x11, 248(x15) # perform operation 

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
