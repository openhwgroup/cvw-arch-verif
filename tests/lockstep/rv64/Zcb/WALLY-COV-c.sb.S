///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zcb/WALLY-COV-c.sb.S
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
li x9, 0x0000000000000000 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0x0000000000000001 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sb x10, 2(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0x0000000000000002 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -3 # sub immediate from rs1 to counter offset
c.sb x10, 3(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x8, 0x8000000000000000 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sb x12, 0(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x10, 0x7fffffffffffffff # initialize rs2
la x15, scratch # base address 
addi x15, x15, -3 # sub immediate from rs1 to counter offset
c.sb x10, 3(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x9, 0x7ffffffffffffffe # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x9, 0(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sb x9, 2(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sb x12, 2(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x10, 0x5bbc887763ae86f2 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sb x10, 2(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x9, 0x5555555555555555 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -3 # sub immediate from rs1 to counter offset
c.sb x9, 3(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sb x15, 2(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x12, 0x00000000fffffffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x10, 0x0000000100000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sb x10, 2(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x11, 0x0000000100000001 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x11, 0(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0x0e6a30cd96a164a2 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -3 # sub immediate from rs1 to counter offset
c.sb x11, 3(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x05195265f8a70fbc # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x14, 1(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0xa5c6662e2bb81473 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sb x9, 2(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x59e2de478bee7af0 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -3 # sub immediate from rs1 to counter offset
c.sb x13, 3(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x9, 0xf638270b72900292 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -3 # sub immediate from rs1 to counter offset
c.sb x9, 3(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0x5e41ff9735612de1 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x14, 1(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x12, 0x805e84a375525f19 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x12, 0(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x11, 0xec96f3a92037b11a # initialize rs2
la x15, scratch # base address 
addi x15, x15, -3 # sub immediate from rs1 to counter offset
c.sb x11, 3(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xd096432a3ab3fe9b # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x80bbc7fe71f44f05 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x9, 0(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xdc67766ee1dd87d6 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sb x10, 0(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x3c6b67fbad7fbf7e # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sb x11, 2(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xa2b2dbc0c892a5f8 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x79949b5a5191e922 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x573aae5d1903f35a # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x14, 1(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x615fe176decac3c7 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x10) # perform operation 

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
