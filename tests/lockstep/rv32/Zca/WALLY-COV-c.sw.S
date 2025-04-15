///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.sw.S
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
li x8, 0x00000000 # initialize rs2 with random value
addi x9, x9, -16 # sub immediate from rs1 to counter offset
c.sw x8, 16(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
la x9, scratch # base address
li x8, 0x00000001 # initialize rs2 with random value
addi x9, x9, -48 # sub immediate from rs1 to counter offset
c.sw x8, 48(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
la x15, scratch # base address
li x11, 0x00000002 # initialize rs2 with random value
addi x15, x15, -4 # sub immediate from rs1 to counter offset
c.sw x11, 4(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
la x13, scratch # base address
li x8, 0x80000000 # initialize rs2 with random value
addi x13, x13, -12 # sub immediate from rs1 to counter offset
c.sw x8, 12(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
la x12, scratch # base address
li x14, 0x80000001 # initialize rs2 with random value
addi x12, x12, -92 # sub immediate from rs1 to counter offset
c.sw x14, 92(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
la x8, scratch # base address
li x15, 0x7fffffff # initialize rs2 with random value
addi x8, x8, -84 # sub immediate from rs1 to counter offset
c.sw x15, 84(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
la x8, scratch # base address
li x14, 0x7ffffffe # initialize rs2 with random value
addi x8, x8, -44 # sub immediate from rs1 to counter offset
c.sw x14, 44(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
la x12, scratch # base address
li x13, 0xffffffff # initialize rs2 with random value
addi x12, x12, -16 # sub immediate from rs1 to counter offset
c.sw x13, 16(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
la x15, scratch # base address
li x9, 0xfffffffe # initialize rs2 with random value
addi x15, x15, -100 # sub immediate from rs1 to counter offset
c.sw x9, 100(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
la x10, scratch # base address
li x8, 0x5bbc8872 # initialize rs2 with random value
addi x10, x10, -116 # sub immediate from rs1 to counter offset
c.sw x8, 116(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
la x11, scratch # base address
li x10, 0xaaaaaaaa # initialize rs2 with random value
addi x11, x11, -12 # sub immediate from rs1 to counter offset
c.sw x10, 12(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
la x14, scratch # base address
li x15, 0x55555555 # initialize rs2 with random value
addi x14, x14, -76 # sub immediate from rs1 to counter offset
c.sw x15, 76(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address
li x14, 0x974113ff # initialize rs2 with random value
addi x8, x8, -88 # sub immediate from rs1 to counter offset
c.sw x14, 88(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address
li x13, 0x28bbf4a2 # initialize rs2 with random value
addi x9, x9, -104 # sub immediate from rs1 to counter offset
c.sw x13, 104(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address
li x14, 0xc4a74fd8 # initialize rs2 with random value
addi x10, x10, -36 # sub immediate from rs1 to counter offset
c.sw x14, 36(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address
li x14, 0xa2d49257 # initialize rs2 with random value
addi x11, x11, -84 # sub immediate from rs1 to counter offset
c.sw x14, 84(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address
li x10, 0xb21fcc2e # initialize rs2 with random value
addi x12, x12, -108 # sub immediate from rs1 to counter offset
c.sw x10, 108(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address
li x8, 0xf9b9aa7b # initialize rs2 with random value
addi x13, x13, -108 # sub immediate from rs1 to counter offset
c.sw x8, 108(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address
li x15, 0x48e0a7b0 # initialize rs2 with random value
addi x14, x14, -36 # sub immediate from rs1 to counter offset
c.sw x15, 36(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address
li x9, 0x24da77ea # initialize rs2 with random value
addi x15, x15, -104 # sub immediate from rs1 to counter offset
c.sw x9, 104(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
la x14, scratch # base address
li x8, 0x7b4e8178 # initialize rs2 with random value
addi x14, x14, -72 # sub immediate from rs1 to counter offset
c.sw x8, 72(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
la x13, scratch # base address
li x9, 0x02838941 # initialize rs2 with random value
addi x13, x13, -116 # sub immediate from rs1 to counter offset
c.sw x9, 116(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
la x9, scratch # base address
li x10, 0x278212ab # initialize rs2 with random value
addi x9, x9, -20 # sub immediate from rs1 to counter offset
c.sw x10, 20(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
la x12, scratch # base address
li x11, 0x3176e340 # initialize rs2 with random value
addi x12, x12, -108 # sub immediate from rs1 to counter offset
c.sw x11, 108(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
la x8, scratch # base address
li x12, 0x1281358e # initialize rs2 with random value
addi x8, x8, -64 # sub immediate from rs1 to counter offset
c.sw x12, 64(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
la x11, scratch # base address
li x13, 0x8c854427 # initialize rs2 with random value
addi x11, x11, -88 # sub immediate from rs1 to counter offset
c.sw x13, 88(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
la x8, scratch # base address
li x14, 0xb637af0f # initialize rs2 with random value
addi x8, x8, -36 # sub immediate from rs1 to counter offset
c.sw x14, 36(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
la x12, scratch # base address
li x15, 0xbeb9d0ea # initialize rs2 with random value
addi x12, x12, -84 # sub immediate from rs1 to counter offset
c.sw x15, 84(x12) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x14, 0xe2816bde # initialize rs2 with random value
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sw x14, 0(x12) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x12, 0x70465a98 # initialize rs2 with random value
addi x9, x9, -4 # sub immediate from rs1 to counter offset
c.sw x12, 4(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x14, 0x2f9651a0 # initialize rs2 with random value
addi x15, x15, -8 # sub immediate from rs1 to counter offset
c.sw x14, 8(x15) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x10, 0x8155c989 # initialize rs2 with random value
addi x9, x9, -12 # sub immediate from rs1 to counter offset
c.sw x10, 12(x9) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x8, 0xd207bd35 # initialize rs2 with random value
addi x12, x12, -16 # sub immediate from rs1 to counter offset
c.sw x8, 16(x12) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x15, 0x6b8cb450 # initialize rs2 with random value
addi x8, x8, -20 # sub immediate from rs1 to counter offset
c.sw x15, 20(x8) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x13, 0x61c5cf35 # initialize rs2 with random value
addi x11, x11, -24 # sub immediate from rs1 to counter offset
c.sw x13, 24(x11) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x11, 0x814e7343 # initialize rs2 with random value
addi x14, x14, -28 # sub immediate from rs1 to counter offset
c.sw x11, 28(x14) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x9, 0x4c024245 # initialize rs2 with random value
addi x8, x8, -32 # sub immediate from rs1 to counter offset
c.sw x9, 32(x8) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x12, 0x089a2b66 # initialize rs2 with random value
addi x8, x8, -36 # sub immediate from rs1 to counter offset
c.sw x12, 36(x8) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x8, 0xe6813e8a # initialize rs2 with random value
addi x12, x12, -40 # sub immediate from rs1 to counter offset
c.sw x8, 40(x12) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x12, 0x3b410b8c # initialize rs2 with random value
addi x11, x11, -44 # sub immediate from rs1 to counter offset
c.sw x12, 44(x11) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x13, 0x27faf4a2 # initialize rs2 with random value
addi x9, x9, -48 # sub immediate from rs1 to counter offset
c.sw x13, 48(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x8, 0x04cdc11c # initialize rs2 with random value
addi x15, x15, -52 # sub immediate from rs1 to counter offset
c.sw x8, 52(x15) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x9, 0x71ef075e # initialize rs2 with random value
addi x12, x12, -56 # sub immediate from rs1 to counter offset
c.sw x9, 56(x12) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x9, 0xf3236aae # initialize rs2 with random value
addi x15, x15, -60 # sub immediate from rs1 to counter offset
c.sw x9, 60(x15) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x15, 0xa10eab28 # initialize rs2 with random value
addi x14, x14, -64 # sub immediate from rs1 to counter offset
c.sw x15, 64(x14) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x14, 0xb729ddc9 # initialize rs2 with random value
addi x12, x12, -68 # sub immediate from rs1 to counter offset
c.sw x14, 68(x12) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x13, 0x1c2c12b9 # initialize rs2 with random value
addi x12, x12, -72 # sub immediate from rs1 to counter offset
c.sw x13, 72(x12) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x15, 0x2aaaa15d # initialize rs2 with random value
addi x13, x13, -76 # sub immediate from rs1 to counter offset
c.sw x15, 76(x13) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x9, 0xd44d8273 # initialize rs2 with random value
addi x8, x8, -80 # sub immediate from rs1 to counter offset
c.sw x9, 80(x8) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x8, 0x05556e5d # initialize rs2 with random value
addi x14, x14, -84 # sub immediate from rs1 to counter offset
c.sw x8, 84(x14) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x12, 0x82cc93d7 # initialize rs2 with random value
addi x8, x8, -88 # sub immediate from rs1 to counter offset
c.sw x12, 88(x8) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x11, 0x1cd2b530 # initialize rs2 with random value
addi x10, x10, -92 # sub immediate from rs1 to counter offset
c.sw x11, 92(x10) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x12, 0x745d2a71 # initialize rs2 with random value
addi x9, x9, -96 # sub immediate from rs1 to counter offset
c.sw x12, 96(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x12, 0xcff270ff # initialize rs2 with random value
addi x15, x15, -100 # sub immediate from rs1 to counter offset
c.sw x12, 100(x15) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x14, 0x6f14ada2 # initialize rs2 with random value
addi x15, x15, -104 # sub immediate from rs1 to counter offset
c.sw x14, 104(x15) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x12, 0x78f88dfd # initialize rs2 with random value
addi x9, x9, -108 # sub immediate from rs1 to counter offset
c.sw x12, 108(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x12, 0x2cc8208d # initialize rs2 with random value
addi x15, x15, -112 # sub immediate from rs1 to counter offset
c.sw x12, 112(x15) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x12, 0xc0f5f071 # initialize rs2 with random value
addi x8, x8, -116 # sub immediate from rs1 to counter offset
c.sw x12, 116(x8) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x10, 0x39532cfe # initialize rs2 with random value
addi x11, x11, -120 # sub immediate from rs1 to counter offset
c.sw x10, 120(x11) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x15, 0x82ccd9ca # initialize rs2 with random value
addi x8, x8, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x8) # perform operation 

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
