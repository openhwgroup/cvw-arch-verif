///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zcb/WALLY-COV-c.lbu.S
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
li x15, 0x12547bf5 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x8) # store value to put something in memory
c.lbu x8, 1(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x14, 0x9f92d018 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x14, 0(x9) # store value to put something in memory
c.lbu x9, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 4)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x15, 0x5ef452b9 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x10) # store value to put something in memory
c.lbu x10, 1(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x12, 0x38630f6e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x11) # store value to put something in memory
c.lbu x11, 1(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 12)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x15, 0xa5da1d58 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x12) # store value to put something in memory
c.lbu x12, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x9, 0x398a80cc # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x9, 0(x13) # store value to put something in memory
c.lbu x13, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 20)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x11, 0x48a66477 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x11, 0(x14) # store value to put something in memory
c.lbu x14, 0(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x11, 0x4a2b71a7 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sb x11, 0(x15) # store value to put something in memory
c.lbu x15, 0(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x15, 0x0779d2c6 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x8) # store value to put something in memory
c.lbu x9, 1(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0x0c83e650 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x9) # store value to put something in memory
c.lbu x15, 1(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0x8dba8e57 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sb x9, 0(x10) # store value to put something in memory
c.lbu x13, 0(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0xad458438 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x11) # store value to put something in memory
c.lbu x10, 1(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0xa7b99cce # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x12) # store value to put something in memory
c.lbu x8, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0x012886dd # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x13) # store value to put something in memory
c.lbu x8, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x15, 0x05600863 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x14) # store value to put something in memory
c.lbu x13, 1(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x10, 0x51661091 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x10, 1(x15) # store value to put something in memory
c.lbu x11, 1(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 60)

# Testcase cp_rd (Test destination rd = x8)
li x15, 0x6133a2e0 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x10) # store value to put something in memory
c.lbu x8, 0(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0x439c5e70 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x8) # store value to put something in memory
c.lbu x9, 0(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rd (Test destination rd = x10)
li x13, 0x96bddb2e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x13, 0(x9) # store value to put something in memory
c.lbu x10, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x12, 0x8367022a # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x10) # store value to put something in memory
c.lbu x11, 1(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 76)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0xc9c2a9b0 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x13) # store value to put something in memory
c.lbu x12, 1(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rd (Test destination rd = x13)
li x15, 0x31bb9d5a # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x9) # store value to put something in memory
c.lbu x13, 1(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 84)

# Testcase cp_rd (Test destination rd = x14)
li x8, 0x0650a179 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x14) # store value to put something in memory
c.lbu x14, 1(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cp_rd (Test destination rd = x15)
li x13, 0x8bb9b6ec # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x8) # store value to put something in memory
c.lbu x15, 1(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 92)

.EQU SIGSIZE,96


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
