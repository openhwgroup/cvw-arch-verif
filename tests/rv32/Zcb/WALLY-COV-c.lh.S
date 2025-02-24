///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zcb//WALLY-COV-c.lh.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.799007
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x7fdb6b0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1c8ceacc # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x8) # store value to put something in memory
c.lh x8, 2(x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x7523a139 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x330e08c6 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x9) # store value to put something in memory
c.lh x9, 2(x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x77df89d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8043bf57 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x10) # store value to put something in memory
c.lh x10, 0(x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xbdf621af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x91af746e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x11) # store value to put something in memory
c.lh x11, 2(x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x8f3e8319 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb5ab7711 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x12) # store value to put something in memory
c.lh x12, 2(x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xc3e613eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd2a6224f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x13) # store value to put something in memory
c.lh x13, 2(x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x6de59d76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8449f57b # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x14) # store value to put something in memory
c.lh x14, 0(x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x4b5f231c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x49d22bda # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x15) # store value to put something in memory
c.lh x15, 0(x15) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x64b5906b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0b5d1935 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x14) # store value to put something in memory
c.lh x8, 0(x14) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xae864db3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8dc1f538 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x10) # store value to put something in memory
c.lh x9, 2(x10) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd2871aef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8e72dd38 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x15) # store value to put something in memory
c.lh x10, 2(x15) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xc5b45766 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5d2a4b25 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x14) # store value to put something in memory
c.lh x11, 2(x14) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x3b9f8882 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7bedc003 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x12) # store value to put something in memory
c.lh x12, 0(x12) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xa494c0e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbfb2647b # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x14) # store value to put something in memory
c.lh x13, 2(x14) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x4b06cb42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xff9e519b # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x14) # store value to put something in memory
c.lh x14, 2(x14) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x04341dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x88fe139b # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x13) # store value to put something in memory
c.lh x15, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x6, 0xbfe1668c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6261318b # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lh x14, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x2, 0xacaba41b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x11) # store value to put something in memory
c.lh x10, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x14, 0xda6f8bea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x10) # store value to put something in memory
c.lh x14, 2(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x16, 0xef8c22a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc795aabb # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lh x8, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0x2a18ff42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x10) # store value to put something in memory
c.lh x14, 2(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x11, 0x3476565a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x10) # store value to put something in memory
c.lh x11, 2(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x7, 0x23db5c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa7fda9c9 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lh x15, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x15, 0xf7206873 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x9) # store value to put something in memory
c.lh x15, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x25, 0x4a1b57de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x15) # store value to put something in memory
c.lh x9, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x14, 0xe9622ee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x564564b5 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x8) # store value to put something in memory
c.lh x14, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x15, 0x0db78627 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00008000 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # store value to put something in memory
c.lh x15, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x22, 0x602859dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00008000 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x14) # store value to put something in memory
c.lh x14, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x20, 0xe831eba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb188c19d # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lh x12, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x25, 0x2991b38e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00008001 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x12) # store value to put something in memory
c.lh x9, 2(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x28, 0xd239bab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00008001 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x10) # store value to put something in memory
c.lh x12, 2(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x2, 0xaf2585d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf6401f23 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lh x10, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x13, 0x3361f2bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00007fff # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x14) # store value to put something in memory
c.lh x13, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x23, 0x8dbd2bba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00007fff # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x9) # store value to put something in memory
c.lh x15, 2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x17, 0x6badc6d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x01693549 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lh x9, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x28, 0x13e1a1b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00007ffe # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x12) # store value to put something in memory
c.lh x12, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x8, 0x6278c852 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00007ffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x10) # store value to put something in memory
c.lh x8, 2(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x5, 0x204ab715 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa2957178 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lh x13, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x20, 0x63acbbf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000ffff # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x15) # store value to put something in memory
c.lh x12, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x5, 0x068200f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000ffff # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x8) # store value to put something in memory
c.lh x13, 2(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x27, 0x6ab5aad6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc92c1b47 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lh x11, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x26, 0x3647a167 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000fffe # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x13) # store value to put something in memory
c.lh x10, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x14, 0x85d27d35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000fffe # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x15) # store value to put something in memory
c.lh x14, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x1, 0x70de504c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x24e7d619 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lh x9, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x22, 0xdabfca4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00005555 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x14) # store value to put something in memory
c.lh x14, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x2, 0x2464f047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00005555 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x14) # store value to put something in memory
c.lh x10, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x27, 0x77823fe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaadb994e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x11) # store value to put something in memory
c.lh x11, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x29, 0xd2b88766 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000aaaa # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x15) # store value to put something in memory
c.lh x13, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x20, 0xd6b0720e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000aaaa # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x12) # store value to put something in memory
c.lh x12, 2(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x31, 0x54540636 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3dafaaea # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x11) # store value to put something in memory
c.lh x15, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x5, 0x417288bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00005bbc # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x9) # store value to put something in memory
c.lh x13, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x16, 0x01e14aeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00005bbc # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x9) # store value to put something in memory
c.lh x8, 2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x6, 0xbdea5409 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb672c04d # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lh x14, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x26, 0xdab17e4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000dbbc # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x11) # store value to put something in memory
c.lh x10, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x25, 0x85fab210 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000dbbc # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x13) # store value to put something in memory
c.lh x9, 2(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x22, 0xa3d2f886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xcc9ef2a9 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x8) # store value to put something in memory
c.lh x14, 2(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0x3c1337f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaf5c339e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x9) # store value to put something in memory
c.lh x10, 0(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x16, 0xf78907fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf5069b6e # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x10) # store value to put something in memory
c.lh x8, 0(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x3, 0x344a840b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x20ca0189 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x11) # store value to put something in memory
c.lh x11, 2(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x1, 0x909c49b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x924867d7 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x12) # store value to put something in memory
c.lh x9, 0(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0x6b11b9b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc08cdeb5 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # store value to put something in memory
c.lh x15, 0(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x22, 0xe49e4f97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x91d63cfc # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x14) # store value to put something in memory
c.lh x14, 0(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x5, 0x9a07246c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf08a4801 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x15) # store value to put something in memory
c.lh x13, 0(x15) # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
