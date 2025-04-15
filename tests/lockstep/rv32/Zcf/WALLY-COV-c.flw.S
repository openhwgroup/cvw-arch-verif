///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zcf/WALLY-COV-c.flw.S
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

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address 
addi x8, x8, -116 # sub immediate from rs1 to counter offset
li x9, 0x3015b387 # load immediate value into integer register
sw x9, 116(x8) # store value to memory
c.flw f15, 116(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 0)

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address 
addi x9, x9, -36 # sub immediate from rs1 to counter offset
li x13, 0x9609322d # load immediate value into integer register
sw x13, 36(x9) # store value to memory
c.flw f14, 36(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 4)

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address 
addi x10, x10, -4 # sub immediate from rs1 to counter offset
li x9, 0xbbafeb3b # load immediate value into integer register
sw x9, 4(x10) # store value to memory
c.flw f13, 4(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address 
addi x11, x11, -8 # sub immediate from rs1 to counter offset
li x13, 0xed3fa3f1 # load immediate value into integer register
sw x13, 8(x11) # store value to memory
c.flw f12, 8(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 12)

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address 
addi x12, x12, -80 # sub immediate from rs1 to counter offset
li x8, 0x6870faf4 # load immediate value into integer register
sw x8, 80(x12) # store value to memory
c.flw f13, 80(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address 
addi x13, x13, -104 # sub immediate from rs1 to counter offset
li x11, 0x73d9f256 # load immediate value into integer register
sw x11, 104(x13) # store value to memory
c.flw f9, 104(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 20)

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address 
addi x14, x14, -44 # sub immediate from rs1 to counter offset
li x8, 0xed76d449 # load immediate value into integer register
sw x8, 44(x14) # store value to memory
c.flw f10, 44(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address 
addi x15, x15, -20 # sub immediate from rs1 to counter offset
li x9, 0xb59d1482 # load immediate value into integer register
sw x9, 20(x15) # store value to memory
c.flw f12, 20(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 28)

# Testcase cp_fd (Test destination fd = x8)
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
li x11, 0xa7578d3b # load immediate value into integer register
sw x11, 0(x10) # store value to memory
c.flw f8, 0(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_fd (Test destination fd = x9)
la x10, scratch # base address 
addi x10, x10, -24 # sub immediate from rs1 to counter offset
li x11, 0x3453d2e9 # load immediate value into integer register
sw x11, 24(x10) # store value to memory
c.flw f9, 24(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_fd (Test destination fd = x10)
la x10, scratch # base address 
addi x10, x10, -4 # sub immediate from rs1 to counter offset
li x8, 0x904dbfe3 # load immediate value into integer register
sw x8, 4(x10) # store value to memory
c.flw f10, 4(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_fd (Test destination fd = x11)
la x11, scratch # base address 
addi x11, x11, -32 # sub immediate from rs1 to counter offset
li x12, 0x8f2d9d83 # load immediate value into integer register
sw x12, 32(x11) # store value to memory
c.flw f11, 32(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_fd (Test destination fd = x12)
la x8, scratch # base address 
addi x8, x8, -108 # sub immediate from rs1 to counter offset
li x11, 0x87ff6fd2 # load immediate value into integer register
sw x11, 108(x8) # store value to memory
c.flw f12, 108(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_fd (Test destination fd = x13)
la x12, scratch # base address 
addi x12, x12, -32 # sub immediate from rs1 to counter offset
li x8, 0x749269c4 # load immediate value into integer register
sw x8, 32(x12) # store value to memory
c.flw f13, 32(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_fd (Test destination fd = x14)
la x9, scratch # base address 
addi x9, x9, -88 # sub immediate from rs1 to counter offset
li x8, 0x727af2e9 # load immediate value into integer register
sw x8, 88(x9) # store value to memory
c.flw f14, 88(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_fd (Test destination fd = x15)
la x15, scratch # base address 
addi x15, x15, -60 # sub immediate from rs1 to counter offset
li x14, 0xb0dc2959 # load immediate value into integer register
sw x14, 60(x15) # store value to memory
c.flw f15, 60(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_imm_mul
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
li x10, 0x920cb7c7 # load immediate value into integer register
sw x10, 0(x14) # store value to memory
c.flw f12, 0(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_imm_mul
la x9, scratch # base address 
addi x9, x9, -4 # sub immediate from rs1 to counter offset
li x13, 0xf6f4fec9 # load immediate value into integer register
sw x13, 4(x9) # store value to memory
c.flw f14, 4(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 68)

# Testcase cp_imm_mul
la x14, scratch # base address 
addi x14, x14, -8 # sub immediate from rs1 to counter offset
li x11, 0xa2852348 # load immediate value into integer register
sw x11, 8(x14) # store value to memory
c.flw f12, 8(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cp_imm_mul
la x14, scratch # base address 
addi x14, x14, -12 # sub immediate from rs1 to counter offset
li x11, 0x9e6bb68c # load immediate value into integer register
sw x11, 12(x14) # store value to memory
c.flw f10, 12(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 76)

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, -16 # sub immediate from rs1 to counter offset
li x10, 0x55ced855 # load immediate value into integer register
sw x10, 16(x8) # store value to memory
c.flw f9, 16(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, -20 # sub immediate from rs1 to counter offset
li x9, 0x53a7a5be # load immediate value into integer register
sw x9, 20(x10) # store value to memory
c.flw f12, 20(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 84)

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, -24 # sub immediate from rs1 to counter offset
li x14, 0x41eaf05c # load immediate value into integer register
sw x14, 24(x11) # store value to memory
c.flw f12, 24(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, -28 # sub immediate from rs1 to counter offset
li x14, 0x13233e43 # load immediate value into integer register
sw x14, 28(x10) # store value to memory
c.flw f9, 28(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 92)

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, -32 # sub immediate from rs1 to counter offset
li x10, 0x1681317c # load immediate value into integer register
sw x10, 32(x8) # store value to memory
c.flw f14, 32(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_imm_mul
la x12, scratch # base address 
addi x12, x12, -36 # sub immediate from rs1 to counter offset
li x11, 0x2816e7d4 # load immediate value into integer register
sw x11, 36(x12) # store value to memory
c.flw f14, 36(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 100)

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, -40 # sub immediate from rs1 to counter offset
li x12, 0xbf5e648f # load immediate value into integer register
sw x12, 40(x15) # store value to memory
c.flw f9, 40(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, -44 # sub immediate from rs1 to counter offset
li x10, 0xfdc61ddd # load immediate value into integer register
sw x10, 44(x11) # store value to memory
c.flw f8, 44(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 108)

# Testcase cp_imm_mul
la x14, scratch # base address 
addi x14, x14, -48 # sub immediate from rs1 to counter offset
li x8, 0x01cf355a # load immediate value into integer register
sw x8, 48(x14) # store value to memory
c.flw f15, 48(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, -52 # sub immediate from rs1 to counter offset
li x15, 0x934f8751 # load immediate value into integer register
sw x15, 52(x10) # store value to memory
c.flw f12, 52(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 116)

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, -56 # sub immediate from rs1 to counter offset
li x12, 0xf148cf7d # load immediate value into integer register
sw x12, 56(x10) # store value to memory
c.flw f11, 56(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, -60 # sub immediate from rs1 to counter offset
li x15, 0x8febc359 # load immediate value into integer register
sw x15, 60(x10) # store value to memory
c.flw f11, 60(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 124)

# Testcase cp_imm_mul
la x9, scratch # base address 
addi x9, x9, -64 # sub immediate from rs1 to counter offset
li x15, 0x9d5e376e # load immediate value into integer register
sw x15, 64(x9) # store value to memory
c.flw f8, 64(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_imm_mul
la x13, scratch # base address 
addi x13, x13, -68 # sub immediate from rs1 to counter offset
li x11, 0x145dd9b7 # load immediate value into integer register
sw x11, 68(x13) # store value to memory
c.flw f8, 68(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 132)

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, -72 # sub immediate from rs1 to counter offset
li x8, 0x436de27f # load immediate value into integer register
sw x8, 72(x15) # store value to memory
c.flw f13, 72(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, -76 # sub immediate from rs1 to counter offset
li x14, 0xeced10a7 # load immediate value into integer register
sw x14, 76(x15) # store value to memory
c.flw f9, 76(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 140)

# Testcase cp_imm_mul
la x9, scratch # base address 
addi x9, x9, -80 # sub immediate from rs1 to counter offset
li x11, 0xc2835fb0 # load immediate value into integer register
sw x11, 80(x9) # store value to memory
c.flw f8, 80(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 144)

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, -84 # sub immediate from rs1 to counter offset
li x9, 0x1dd7ad4c # load immediate value into integer register
sw x9, 84(x8) # store value to memory
c.flw f11, 84(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 148)

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, -88 # sub immediate from rs1 to counter offset
li x14, 0x5bba7969 # load immediate value into integer register
sw x14, 88(x8) # store value to memory
c.flw f15, 88(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, -92 # sub immediate from rs1 to counter offset
li x9, 0xf712dd3d # load immediate value into integer register
sw x9, 92(x11) # store value to memory
c.flw f10, 92(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 156)

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, -96 # sub immediate from rs1 to counter offset
li x11, 0x93241798 # load immediate value into integer register
sw x11, 96(x15) # store value to memory
c.flw f9, 96(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_imm_mul
la x12, scratch # base address 
addi x12, x12, -100 # sub immediate from rs1 to counter offset
li x13, 0x7f0b5cd7 # load immediate value into integer register
sw x13, 100(x12) # store value to memory
c.flw f10, 100(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 164)

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, -104 # sub immediate from rs1 to counter offset
li x14, 0xfbd74b28 # load immediate value into integer register
sw x14, 104(x11) # store value to memory
c.flw f15, 104(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 168)

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, -108 # sub immediate from rs1 to counter offset
li x11, 0x6240720a # load immediate value into integer register
sw x11, 108(x8) # store value to memory
c.flw f10, 108(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 172)

# Testcase cp_imm_mul
la x13, scratch # base address 
addi x13, x13, -112 # sub immediate from rs1 to counter offset
li x15, 0xc9debf6a # load immediate value into integer register
sw x15, 112(x13) # store value to memory
c.flw f12, 112(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_imm_mul
la x14, scratch # base address 
addi x14, x14, -116 # sub immediate from rs1 to counter offset
li x15, 0x1edcde61 # load immediate value into integer register
sw x15, 116(x14) # store value to memory
c.flw f11, 116(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 180)

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, -120 # sub immediate from rs1 to counter offset
li x14, 0x759e19d9 # load immediate value into integer register
sw x14, 120(x8) # store value to memory
c.flw f11, 120(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, -124 # sub immediate from rs1 to counter offset
li x9, 0xff9a64bc # load immediate value into integer register
sw x9, 124(x11) # store value to memory
c.flw f10, 124(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 188)

.EQU SIGSIZE,192


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
