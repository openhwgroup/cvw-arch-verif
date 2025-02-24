///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zcb//WALLY-COV-c.lhu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.799896
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xeea9c83a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x33a9e75d # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x8) # store value to put something in memory
c.lhu x8, 0(x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa024e713 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x45592108 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x9) # store value to put something in memory
c.lhu x9, 0(x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x1534575b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa91fce94 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x10) # store value to put something in memory
c.lhu x10, 2(x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x5375d371 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x26d0adf9 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x11) # store value to put something in memory
c.lhu x11, 0(x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x079f6ccc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x83f178fc # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x12) # store value to put something in memory
c.lhu x12, 2(x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x7f03b51f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x93c5a1c6 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x13) # store value to put something in memory
c.lhu x13, 0(x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc4f23931 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1bdc73f6 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x14) # store value to put something in memory
c.lhu x14, 0(x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xab9b150a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x198cc87a # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x15) # store value to put something in memory
c.lhu x15, 0(x15) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x13095d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x20f7a17a # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x12) # store value to put something in memory
c.lhu x8, 2(x12) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xfe62c2cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9ac56e34 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x8) # store value to put something in memory
c.lhu x9, 0(x8) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x087c56c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x39b2cbb9 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x14) # store value to put something in memory
c.lhu x10, 0(x14) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xe85fab04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8ead8dce # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x8) # store value to put something in memory
c.lhu x11, 2(x8) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x16712044 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1dcb8bfe # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x14) # store value to put something in memory
c.lhu x12, 2(x14) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x9b9d008c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x579cd6a7 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x9) # store value to put something in memory
c.lhu x13, 2(x9) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x75eeddf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc1ed9b8d # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x12) # store value to put something in memory
c.lhu x14, 2(x12) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x2d787d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd751e6b2 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # store value to put something in memory
c.lhu x15, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x7, 0xa1e01cb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdefed4af # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lhu x15, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x5, 0x0f8ecf2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x12) # store value to put something in memory
c.lhu x13, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x31, 0x639311e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x11) # store value to put something in memory
c.lhu x15, 2(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0xd302727e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1752dcd6 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x13) # store value to put something in memory
c.lhu x11, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x2, 0x19eb8aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x14) # store value to put something in memory
c.lhu x10, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x9, 0x805448e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x15) # store value to put something in memory
c.lhu x9, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x19, 0x916745bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe8b1975e # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x15) # store value to put something in memory
c.lhu x11, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x27, 0x3326e211 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x12) # store value to put something in memory
c.lhu x11, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x21, 0xf1cb0b40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x14) # store value to put something in memory
c.lhu x13, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x31, 0x8a7c2838 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x311e72e4 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lhu x15, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x10, 0x7b202173 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00008000 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x15) # store value to put something in memory
c.lhu x10, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x31, 0xa5f22243 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00008000 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x11) # store value to put something in memory
c.lhu x15, 2(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x26, 0xf6f2f976 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5c2610d6 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lhu x10, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x2, 0x9b569ad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00008001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x15) # store value to put something in memory
c.lhu x10, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x22, 0xc5f44d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00008001 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x8) # store value to put something in memory
c.lhu x14, 2(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x13, 0xb6ae3994 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x06b8aa7b # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lhu x13, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x16, 0x820a452d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00007fff # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x12) # store value to put something in memory
c.lhu x8, 2(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x26, 0x521144c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00007fff # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x11) # store value to put something in memory
c.lhu x10, 2(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x17, 0xc6421f30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2bd40dfc # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x8) # store value to put something in memory
c.lhu x9, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x28, 0x864f9c4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00007ffe # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lhu x12, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x31, 0xf71ed73c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00007ffe # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x13) # store value to put something in memory
c.lhu x15, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x8, 0xe414acfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x11bc2387 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x11) # store value to put something in memory
c.lhu x8, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x27, 0xdfb1fa63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000ffff # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x11) # store value to put something in memory
c.lhu x11, 2(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x23, 0x61baed45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000ffff # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x14) # store value to put something in memory
c.lhu x15, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x3, 0x7b59e4d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe3e0f9ea # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x11) # store value to put something in memory
c.lhu x11, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x11, 0x9da76447 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000fffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x10) # store value to put something in memory
c.lhu x11, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x17, 0x5ba38cb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000fffe # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x11) # store value to put something in memory
c.lhu x9, 2(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x7, 0x4cd42f89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdf124bfe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lhu x15, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x10, 0x2a30303d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00005555 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x9) # store value to put something in memory
c.lhu x10, 2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x21, 0x03ffcb6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00005555 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x9) # store value to put something in memory
c.lhu x13, 2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x1, 0x00655dee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb177ccea # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lhu x9, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x10, 0x9edf198a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000aaaa # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x8) # store value to put something in memory
c.lhu x10, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x3, 0x5070db06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000aaaa # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x14) # store value to put something in memory
c.lhu x11, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x5, 0xf87de4b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd1b5d424 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lhu x13, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x28, 0x151f7577 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00005bbc # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x10) # store value to put something in memory
c.lhu x12, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x21, 0x93feecc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00005bbc # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x13) # store value to put something in memory
c.lhu x13, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x12, 0xcaf8eb29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd1f40bf7 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lhu x12, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x9, 0xfefc7830 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000dbbc # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lhu x9, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x12, 0x098adf94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000dbbc # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x15) # store value to put something in memory
c.lhu x12, 2(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x28, 0x0030f88e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5279d6e1 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x8) # store value to put something in memory
c.lhu x12, 0(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x30, 0xe1095f17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdb7101b8 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x9) # store value to put something in memory
c.lhu x14, 2(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x21, 0x555a2653 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdb419c81 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x10) # store value to put something in memory
c.lhu x13, 0(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0xc0cbfdb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdf588140 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x11) # store value to put something in memory
c.lhu x9, 0(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x27, 0xcbe60e70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x19579462 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x12) # store value to put something in memory
c.lhu x11, 0(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0xd68d583e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2bdfc2b7 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x13) # store value to put something in memory
c.lhu x8, 0(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0x6257c088 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6ba68ab0 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x14) # store value to put something in memory
c.lhu x11, 2(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x21, 0xa44b09b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf3a9f2bf # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x15) # store value to put something in memory
c.lhu x13, 0(x15) # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
