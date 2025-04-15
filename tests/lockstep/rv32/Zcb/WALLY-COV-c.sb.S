///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zcb/WALLY-COV-c.sb.S
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
li x9, 0x00000000 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x12, 0x00000001 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -3 # sub immediate from rs1 to counter offset
c.sb x12, 3(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x11, 0x00000002 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sb x11, 2(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x14, 0x80000000 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -3 # sub immediate from rs1 to counter offset
c.sb x14, 3(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x11, 0x80000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sb x11, 2(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x14, 0x7fffffff # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sb x14, 0(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x10, 0x7ffffffe # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1 # sub immediate from rs1 to counter offset
c.sb x10, 1(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x10, 0xffffffff # initialize rs2
la x15, scratch # base address 
addi x15, x15, -3 # sub immediate from rs1 to counter offset
c.sb x10, 3(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0xfffffffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -3 # sub immediate from rs1 to counter offset
c.sb x15, 3(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x10, 0x5bbc8872 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sb x10, 2(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x8, 0xaaaaaaaa # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x15, 0x55555555 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sb x15, 2(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0x014222b5 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x13, 0x60849cf5 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0xf8a70fbc # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x15, 0xb2e4a6b3 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0xb4ad99b3 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -3 # sub immediate from rs1 to counter offset
c.sb x11, 3(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0x20c7ec17 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x14, 0(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x8, 0xe32aff92 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -3 # sub immediate from rs1 to counter offset
c.sb x8, 3(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x13, 0xe829c8a9 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sb x13, 0(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x0754c06e # initialize rs2
la x13, scratch # base address 
addi x13, x13, -3 # sub immediate from rs1 to counter offset
c.sb x8, 3(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x4d952a02 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sb x9, 0(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x9c70cef1 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x10, 1(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xb4ea8d26 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -3 # sub immediate from rs1 to counter offset
c.sb x11, 3(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xd9277d00 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x12, 0(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xe0865e01 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -3 # sub immediate from rs1 to counter offset
c.sb x13, 3(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xfb703d5c # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x14, 1(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xf811a94a # initialize rs2
la x10, scratch # base address 
addi x10, x10, -3 # sub immediate from rs1 to counter offset
c.sb x15, 3(x10) # perform operation 

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
