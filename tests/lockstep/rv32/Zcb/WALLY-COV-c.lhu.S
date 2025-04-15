///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zcb/WALLY-COV-c.lhu.S
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
li x14, 0x2fdc387d # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x8) # store value to put something in memory
c.lhu x8, 2(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x13, 0x8b0e2cf0 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x9) # store value to put something in memory
c.lhu x9, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 4)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x15, 0x41b52b05 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x10) # store value to put something in memory
c.lhu x10, 0(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x9, 0xa665f47e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x11) # store value to put something in memory
c.lhu x11, 2(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 12)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x10, 0x0dec6231 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x12) # store value to put something in memory
c.lhu x12, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x8, 0xff04412c # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x13) # store value to put something in memory
c.lhu x13, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 20)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x9, 0x4d29b80c # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x14) # store value to put something in memory
c.lhu x14, 0(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x9, 0x3de1e31e # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x15) # store value to put something in memory
c.lhu x15, 0(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0x005632ce # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x8) # store value to put something in memory
c.lhu x14, 0(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x72c40f2d # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x9) # store value to put something in memory
c.lhu x8, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x11, 0xe80e475d # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x10) # store value to put something in memory
c.lhu x13, 0(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0x5c93e528 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x11) # store value to put something in memory
c.lhu x15, 2(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x1eb2a108 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x12) # store value to put something in memory
c.lhu x10, 2(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0x496d0cd3 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x13) # store value to put something in memory
c.lhu x9, 2(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0xb2c910d8 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x14) # store value to put something in memory
c.lhu x10, 0(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x185d647f # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x15) # store value to put something in memory
c.lhu x11, 2(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 60)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2812b251 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x15) # store value to put something in memory
c.lhu x8, 2(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xb1560b5e # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x15) # store value to put something in memory
c.lhu x9, 0(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rd (Test destination rd = x10)
li x13, 0x287abb7d # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x9) # store value to put something in memory
c.lhu x10, 2(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0x3ca42262 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x13) # store value to put something in memory
c.lhu x11, 2(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 76)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0xf6b2dddc # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x9) # store value to put something in memory
c.lhu x12, 2(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rd (Test destination rd = x13)
li x9, 0xf1cd6924 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x10) # store value to put something in memory
c.lhu x13, 2(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 84)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0x6575201d # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x15) # store value to put something in memory
c.lhu x14, 2(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0xf01fa724 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x14) # store value to put something in memory
c.lhu x15, 2(x14) # perform operation
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
