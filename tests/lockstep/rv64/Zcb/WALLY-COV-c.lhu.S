///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zcb/WALLY-COV-c.lhu.S
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
li x14, 0xb795b6dbf1ca7467 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x8) # store value to put something in memory
c.lhu x8, 2(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x13, 0x45d2c2c38b0e2cf0 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x9) # store value to put something in memory
c.lhu x9, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x9, 0x9e779000f8ef5bef # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x10) # store value to put something in memory
c.lhu x10, 2(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x15, 0x203a89b17c0ae656 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x11) # store value to put something in memory
c.lhu x11, 2(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x8, 0x9099b64f1e13ebaa # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lhu x12, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x11, 0x683f62365a7dad07 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x13) # store value to put something in memory
c.lhu x13, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x8, 0x541c6e1725fd6488 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x14) # store value to put something in memory
c.lhu x14, 2(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x8, 0x2cd8b9cb6e935ec8 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x15) # store value to put something in memory
c.lhu x15, 2(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0xab83213853425b50 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x8) # store value to put something in memory
c.lhu x14, 0(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x7bb5c566c888a7ef # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x9) # store value to put something in memory
c.lhu x8, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0x6ca4f8817ecc153b # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x10) # store value to put something in memory
c.lhu x8, 2(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x15, 0x94a4588ce7d7a495 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x11) # store value to put something in memory
c.lhu x8, 0(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x14430e49b2c910d8 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x12) # store value to put something in memory
c.lhu x9, 2(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0x36703e42aee56f4f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x13) # store value to put something in memory
c.lhu x14, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x8, 0x319a64389acbdf2a # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x14) # store value to put something in memory
c.lhu x10, 2(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x10, 0xcb7d9da959786433 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x15) # store value to put something in memory
c.lhu x13, 2(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2812b2518083d12b # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x15) # store value to put something in memory
c.lhu x8, 0(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rd (Test destination rd = x9)
li x12, 0x3fa2cdd633c78835 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x15) # store value to put something in memory
c.lhu x9, 0(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rd (Test destination rd = x10)
li x14, 0x27cbbd8f289fdaa2 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x13) # store value to put something in memory
c.lhu x10, 2(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_rd (Test destination rd = x11)
li x13, 0x3f6636e6a0b8a83e # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x12) # store value to put something in memory
c.lhu x11, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cp_rd (Test destination rd = x12)
li x13, 0x0552966622fe5379 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x14) # store value to put something in memory
c.lhu x12, 0(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0x70d68b5b884f5cd3 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x11) # store value to put something in memory
c.lhu x13, 2(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0xf62e6ab60060fbaa # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x8) # store value to put something in memory
c.lhu x14, 0(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x9497ed81fab9fad8 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x10) # store value to put something in memory
c.lhu x15, 0(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

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
