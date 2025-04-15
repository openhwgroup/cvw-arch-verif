///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zcb/WALLY-COV-c.lh.S
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
li x14, 0xf267ec15080d4abb # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x8) # store value to put something in memory
c.lh x8, 2(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x8, 0x1eadc7dcdbecfea4 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x9) # store value to put something in memory
c.lh x9, 2(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x12, 0xdc77c201af3925ed # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x10) # store value to put something in memory
c.lh x10, 0(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x8, 0xc1e82ffbac3a04fa # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x11) # store value to put something in memory
c.lh x11, 2(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x14, 0x8fba72ad11a87f7b # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x12) # store value to put something in memory
c.lh x12, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x11, 0xc59310531a57523f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x13) # store value to put something in memory
c.lh x13, 2(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x13, 0x67f76b78f3c7f111 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x14) # store value to put something in memory
c.lh x14, 0(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x14, 0x5dc97807d198d1ea # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x15) # store value to put something in memory
c.lh x15, 2(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0xbf61f71514434a76 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x8) # store value to put something in memory
c.lh x13, 2(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0xebacb09d3e060f82 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x9) # store value to put something in memory
c.lh x11, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x12, 0x7530e0648b70b97f # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x10) # store value to put something in memory
c.lh x13, 2(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0x2a5c80a351a44cd9 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x11) # store value to put something in memory
c.lh x15, 0(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0xc0dc019fe98be94b # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x12) # store value to put something in memory
c.lh x8, 2(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0x1808374ed8ea1e1f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x13) # store value to put something in memory
c.lh x11, 2(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0x206003c3133772f2 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x14) # store value to put something in memory
c.lh x9, 0(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x11, 0x811883f6f19e1454 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x15) # store value to put something in memory
c.lh x14, 0(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rd (Test destination rd = x8)
li x10, 0xdb5d666534b9b76a # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # store value to put something in memory
c.lh x8, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0xe6fc8e4ff81f088c # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x12) # store value to put something in memory
c.lh x9, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x77b177f5bae68e8c # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x14) # store value to put something in memory
c.lh x10, 2(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0xa4b23699cb812d88 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x9) # store value to put something in memory
c.lh x11, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cp_rd (Test destination rd = x12)
li x14, 0x66428286d256e03d # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x9) # store value to put something in memory
c.lh x12, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0x26155c18e7cc559f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x13) # store value to put something in memory
c.lh x13, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rd (Test destination rd = x14)
li x15, 0x9d684208dd3f41ad # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x11) # store value to put something in memory
c.lh x14, 0(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0x1a61aa9e89fc804c # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x14) # store value to put something in memory
c.lh x15, 2(x14) # perform operation
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
