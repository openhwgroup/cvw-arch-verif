///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.lw.S
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

    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x15, 0x795021ad # initialize rs2
la x8, scratch # base address 
addi x8, x8, -68 # sub immediate from rs1 to counter offset
c.sw x15, 68(x8) # store value to put something in memory
c.lw x8, 68(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x13, 0xe692c137 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -40 # sub immediate from rs1 to counter offset
c.sw x13, 40(x9) # store value to put something in memory
c.lw x9, 40(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 4)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x15, 0x8cd94e5e # initialize rs2
la x10, scratch # base address 
addi x10, x10, -64 # sub immediate from rs1 to counter offset
c.sw x15, 64(x10) # store value to put something in memory
c.lw x10, 64(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x14, 0xac129a42 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -48 # sub immediate from rs1 to counter offset
c.sw x14, 48(x11) # store value to put something in memory
c.lw x11, 48(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 12)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x11, 0xbba51373 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -76 # sub immediate from rs1 to counter offset
c.sw x11, 76(x12) # store value to put something in memory
c.lw x12, 76(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x9, 0xd5f8d583 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -12 # sub immediate from rs1 to counter offset
c.sw x9, 12(x13) # store value to put something in memory
c.lw x13, 12(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 20)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x11, 0x4335e572 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -24 # sub immediate from rs1 to counter offset
c.sw x11, 24(x14) # store value to put something in memory
c.lw x14, 24(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x9, 0x9c69b4ee # initialize rs2
la x15, scratch # base address 
addi x15, x15, -4 # sub immediate from rs1 to counter offset
c.sw x9, 4(x15) # store value to put something in memory
c.lw x15, 4(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0x8157d24a # initialize rs2
la x8, scratch # base address 
addi x8, x8, -72 # sub immediate from rs1 to counter offset
c.sw x10, 72(x8) # store value to put something in memory
c.lw x15, 72(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x8e86c509 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -100 # sub immediate from rs1 to counter offset
c.sw x14, 100(x9) # store value to put something in memory
c.lw x12, 100(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0xf97d67a4 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -20 # sub immediate from rs1 to counter offset
c.sw x15, 20(x10) # store value to put something in memory
c.lw x13, 20(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0xc7f165ee # initialize rs2
la x11, scratch # base address 
addi x11, x11, -4 # sub immediate from rs1 to counter offset
c.sw x8, 4(x11) # store value to put something in memory
c.lw x15, 4(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0x51594fa0 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -100 # sub immediate from rs1 to counter offset
c.sw x15, 100(x12) # store value to put something in memory
c.lw x13, 100(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0x12264009 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -56 # sub immediate from rs1 to counter offset
c.sw x11, 56(x13) # store value to put something in memory
c.lw x14, 56(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0xcd61b164 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -104 # sub immediate from rs1 to counter offset
c.sw x11, 104(x14) # store value to put something in memory
c.lw x15, 104(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x8, 0x5fdcd584 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -92 # sub immediate from rs1 to counter offset
c.sw x8, 92(x15) # store value to put something in memory
c.lw x12, 92(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 60)

# Testcase cp_rd (Test destination rd = x8)
li x15, 0xa9175f5a # initialize rs2
la x8, scratch # base address 
addi x8, x8, -60 # sub immediate from rs1 to counter offset
c.sw x15, 60(x8) # store value to put something in memory
c.lw x8, 60(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0x30efd2b8 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -112 # sub immediate from rs1 to counter offset
c.sw x14, 112(x8) # store value to put something in memory
c.lw x9, 112(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rd (Test destination rd = x10)
li x14, 0xb37b8cd2 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -80 # sub immediate from rs1 to counter offset
c.sw x14, 80(x9) # store value to put something in memory
c.lw x10, 80(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0x02fd5886 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -8 # sub immediate from rs1 to counter offset
c.sw x8, 8(x14) # store value to put something in memory
c.lw x11, 8(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 76)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0x968b3ccf # initialize rs2
la x13, scratch # base address 
addi x13, x13, -24 # sub immediate from rs1 to counter offset
c.sw x8, 24(x13) # store value to put something in memory
c.lw x12, 24(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0x067ad6c8 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -120 # sub immediate from rs1 to counter offset
c.sw x10, 120(x13) # store value to put something in memory
c.lw x13, 120(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 84)

# Testcase cp_rd (Test destination rd = x14)
li x10, 0x8e4c1dc7 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -8 # sub immediate from rs1 to counter offset
c.sw x10, 8(x15) # store value to put something in memory
c.lw x14, 8(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cp_rd (Test destination rd = x15)
li x8, 0xc17b373c # initialize rs2
la x9, scratch # base address 
addi x9, x9, -48 # sub immediate from rs1 to counter offset
c.sw x8, 48(x9) # store value to put something in memory
c.lw x15, 48(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 92)

# Testcase cp_imm_mul
li x8, 0x705d33e2 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x9) # store value to put something in memory
c.lw x14, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_imm_mul
li x14, 0x11ed60f4 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -4 # sub immediate from rs1 to counter offset
c.sw x14, 4(x9) # store value to put something in memory
c.lw x10, 4(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 100)

# Testcase cp_imm_mul
li x9, 0x78f4b671 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -8 # sub immediate from rs1 to counter offset
c.sw x9, 8(x12) # store value to put something in memory
c.lw x13, 8(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_imm_mul
li x8, 0x82212267 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -12 # sub immediate from rs1 to counter offset
c.sw x8, 12(x11) # store value to put something in memory
c.lw x12, 12(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 108)

# Testcase cp_imm_mul
li x14, 0xf5da6667 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -16 # sub immediate from rs1 to counter offset
c.sw x14, 16(x15) # store value to put something in memory
c.lw x8, 16(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_imm_mul
li x11, 0x3020354a # initialize rs2
la x13, scratch # base address 
addi x13, x13, -20 # sub immediate from rs1 to counter offset
c.sw x11, 20(x13) # store value to put something in memory
c.lw x12, 20(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 116)

# Testcase cp_imm_mul
li x11, 0x7651e819 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -24 # sub immediate from rs1 to counter offset
c.sw x11, 24(x13) # store value to put something in memory
c.lw x10, 24(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_imm_mul
li x10, 0x4b362114 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -28 # sub immediate from rs1 to counter offset
c.sw x10, 28(x11) # store value to put something in memory
c.lw x9, 28(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 124)

# Testcase cp_imm_mul
li x14, 0x90c276ef # initialize rs2
la x11, scratch # base address 
addi x11, x11, -32 # sub immediate from rs1 to counter offset
c.sw x14, 32(x11) # store value to put something in memory
c.lw x10, 32(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 128)

# Testcase cp_imm_mul
li x10, 0x556d2280 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -36 # sub immediate from rs1 to counter offset
c.sw x10, 36(x9) # store value to put something in memory
c.lw x11, 36(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 132)

# Testcase cp_imm_mul
li x14, 0x9cd6bb7c # initialize rs2
la x9, scratch # base address 
addi x9, x9, -40 # sub immediate from rs1 to counter offset
c.sw x14, 40(x9) # store value to put something in memory
c.lw x12, 40(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 136)

# Testcase cp_imm_mul
li x15, 0xf8a98c26 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -44 # sub immediate from rs1 to counter offset
c.sw x15, 44(x9) # store value to put something in memory
c.lw x10, 44(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 140)

# Testcase cp_imm_mul
li x13, 0xc9a11ccf # initialize rs2
la x15, scratch # base address 
addi x15, x15, -48 # sub immediate from rs1 to counter offset
c.sw x13, 48(x15) # store value to put something in memory
c.lw x14, 48(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cp_imm_mul
li x14, 0x46ff4ac8 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -52 # sub immediate from rs1 to counter offset
c.sw x14, 52(x15) # store value to put something in memory
c.lw x9, 52(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 148)

# Testcase cp_imm_mul
li x8, 0x325a7010 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -56 # sub immediate from rs1 to counter offset
c.sw x8, 56(x14) # store value to put something in memory
c.lw x15, 56(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_imm_mul
li x15, 0xc787b741 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -60 # sub immediate from rs1 to counter offset
c.sw x15, 60(x14) # store value to put something in memory
c.lw x9, 60(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 156)

# Testcase cp_imm_mul
li x11, 0x50794778 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -64 # sub immediate from rs1 to counter offset
c.sw x11, 64(x13) # store value to put something in memory
c.lw x12, 64(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_imm_mul
li x12, 0x56f6c1bf # initialize rs2
la x8, scratch # base address 
addi x8, x8, -68 # sub immediate from rs1 to counter offset
c.sw x12, 68(x8) # store value to put something in memory
c.lw x9, 68(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_imm_mul
li x13, 0x7f03dec2 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -72 # sub immediate from rs1 to counter offset
c.sw x13, 72(x10) # store value to put something in memory
c.lw x8, 72(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_imm_mul
li x15, 0xf3e3894b # initialize rs2
la x12, scratch # base address 
addi x12, x12, -76 # sub immediate from rs1 to counter offset
c.sw x15, 76(x12) # store value to put something in memory
c.lw x10, 76(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 172)

# Testcase cp_imm_mul
li x8, 0xdd8f67a7 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -80 # sub immediate from rs1 to counter offset
c.sw x8, 80(x14) # store value to put something in memory
c.lw x9, 80(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 176)

# Testcase cp_imm_mul
li x13, 0xea5d2aa1 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -84 # sub immediate from rs1 to counter offset
c.sw x13, 84(x14) # store value to put something in memory
c.lw x8, 84(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 180)

# Testcase cp_imm_mul
li x9, 0x25c79935 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -88 # sub immediate from rs1 to counter offset
c.sw x9, 88(x12) # store value to put something in memory
c.lw x13, 88(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_imm_mul
li x12, 0x83394365 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -92 # sub immediate from rs1 to counter offset
c.sw x12, 92(x14) # store value to put something in memory
c.lw x10, 92(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 188)

# Testcase cp_imm_mul
li x15, 0xecfa9327 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -96 # sub immediate from rs1 to counter offset
c.sw x15, 96(x8) # store value to put something in memory
c.lw x9, 96(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_imm_mul
li x9, 0x8932f9f2 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -100 # sub immediate from rs1 to counter offset
c.sw x9, 100(x10) # store value to put something in memory
c.lw x11, 100(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 196)

# Testcase cp_imm_mul
li x12, 0x592d8bfe # initialize rs2
la x8, scratch # base address 
addi x8, x8, -104 # sub immediate from rs1 to counter offset
c.sw x12, 104(x8) # store value to put something in memory
c.lw x11, 104(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cp_imm_mul
li x8, 0x71b499f8 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -108 # sub immediate from rs1 to counter offset
c.sw x8, 108(x11) # store value to put something in memory
c.lw x9, 108(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 204)

# Testcase cp_imm_mul
li x15, 0x71593178 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -112 # sub immediate from rs1 to counter offset
c.sw x15, 112(x14) # store value to put something in memory
c.lw x12, 112(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 208)

# Testcase cp_imm_mul
li x11, 0x5743d921 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -116 # sub immediate from rs1 to counter offset
c.sw x11, 116(x13) # store value to put something in memory
c.lw x15, 116(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 212)

# Testcase cp_imm_mul
li x14, 0xa7744861 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -120 # sub immediate from rs1 to counter offset
c.sw x14, 120(x12) # store value to put something in memory
c.lw x15, 120(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cp_imm_mul
li x10, 0xad181a0c # initialize rs2
la x14, scratch # base address 
addi x14, x14, -124 # sub immediate from rs1 to counter offset
c.sw x10, 124(x14) # store value to put something in memory
c.lw x8, 124(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 220)

.EQU SIGSIZE,224


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
