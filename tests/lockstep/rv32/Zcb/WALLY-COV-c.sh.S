///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zcb/WALLY-COV-c.sh.S
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
li x10, 0x00000000 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0x00000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x8, 0x00000002 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x10, 0x80000000 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x15, 0x80000001 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x11, 0x7fffffff # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0xffffffff # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x13, 0xfffffffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x12, 0x5bbc8872 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x8, 0xaaaaaaaa # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x15, 0x55555555 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0xa308378d # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0x0113e9f7 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0x2f437560 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x15, 0x809a384a # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0x68f4aae0 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0x450a8884 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0x24aba06e # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x12, 0x38922dfc # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x9353f91a # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x5a86b81c # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xd3fa7e91 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xcfe1f0a8 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xed959582 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xbf8f5742 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x062afa55 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x6afe26ee # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x13) # perform operation 

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
