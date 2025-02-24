///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zcb//WALLY-COV-c.lhu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.344661
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xb774f602d2f3503b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6ebb3a8458a07f2d # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x8) # store value to put something in memory
c.lhu x8, 2(x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xb3e192b05f7e5b08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa0f71a4292bdc576 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x9) # store value to put something in memory
c.lhu x9, 2(x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x7e23618b6bfcbfdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2cfc44e535861fae # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x10) # store value to put something in memory
c.lhu x10, 2(x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x85d5886f4fdd6ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc99b9550e7bcae9b # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x11) # store value to put something in memory
c.lhu x11, 0(x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xd2dd2b822617e416 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x444029e166076254 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x12) # store value to put something in memory
c.lhu x12, 2(x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xdaf7f23933f5f57d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf7f5dd8acdf4e4aa # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # store value to put something in memory
c.lhu x13, 0(x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc84d40e9853f4cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1cf673790858bd53 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x14) # store value to put something in memory
c.lhu x14, 2(x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x4045e3b22348aba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x28f7bbbc785b55cf # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x15) # store value to put something in memory
c.lhu x15, 2(x15) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc9204df9fc52836c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfb701779d4522fb9 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x13) # store value to put something in memory
c.lhu x8, 0(x13) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x984fb759f8397114 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe2e130187ecf7ebe # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x14) # store value to put something in memory
c.lhu x9, 2(x14) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xf26b0ade73d8c0ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xeb17a8e5e9933270 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x12) # store value to put something in memory
c.lhu x10, 2(x12) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xbae640685df6837b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdd5980f5a4827dd1 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x10) # store value to put something in memory
c.lhu x11, 2(x10) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xd7186f15120e3293 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x72e009fbc4ebf49c # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x15) # store value to put something in memory
c.lhu x12, 0(x15) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xafbc10566391ae4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x86cd7dfebe7c0569 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x13) # store value to put something in memory
c.lhu x13, 2(x13) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x406c35e6193b9831 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x525d3eff96aa617b # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # store value to put something in memory
c.lhu x14, 0(x13) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf38edffb733d3a37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9e6bb83fe5e195e6 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x13) # store value to put something in memory
c.lhu x15, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x6, 0x0901ef02cca770c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4aabfaede578ad27 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x15) # store value to put something in memory
c.lhu x14, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x3, 0x198c32c2ed16d707 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lhu x11, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x25, 0xb8b4b4c3f43b94e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x14) # store value to put something in memory
c.lhu x9, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x31, 0x57d322c9edd42ed5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf14a407b33934b26 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lhu x15, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x14, 0xee3d097bedb303dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x9) # store value to put something in memory
c.lhu x14, 2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0xa9226e85acc30984 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x13) # store value to put something in memory
c.lhu x13, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x17, 0x85afaf3219aa3782 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x24ac0e32eacbfeec # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lhu x9, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x3, 0x05a580571bc007c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x12) # store value to put something in memory
c.lhu x11, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x26, 0x20cf0032bb5e70c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x12) # store value to put something in memory
c.lhu x10, 2(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x21, 0xa51d49fa8fc73cda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb0e66dc9f62063b8 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lhu x13, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x17, 0xeeb8b0b0b77e4421 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000008000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x12) # store value to put something in memory
c.lhu x9, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x15, 0x0e1aacf3623f7879 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000008000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x12) # store value to put something in memory
c.lhu x15, 2(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x6, 0x5e2b1d92c32d22a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6814e3cf80591ada # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x11) # store value to put something in memory
c.lhu x14, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x10, 0x9f1cfba15ae446c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000008001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x15) # store value to put something in memory
c.lhu x10, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x27, 0x36c514fe3bf66df3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000008001 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x11) # store value to put something in memory
c.lhu x11, 2(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x27, 0x866054b30e9be247 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x070d4cab8cc3097a # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x8) # store value to put something in memory
c.lhu x11, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x24, 0xc07f945db6b88614 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000007fff # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x13) # store value to put something in memory
c.lhu x8, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x27, 0x8c63d10b4f277b67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000007fff # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x13) # store value to put something in memory
c.lhu x11, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x27, 0x7d2fdedf7fd135fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x208b1046e309de9d # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x15) # store value to put something in memory
c.lhu x11, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x13, 0x85e622fb6f171dde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000007ffe # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x14) # store value to put something in memory
c.lhu x13, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x16, 0x534ab44e0da6d6c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000007ffe # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x8) # store value to put something in memory
c.lhu x8, 2(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x12, 0xbd4214f43fc1291a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1531c45ab0da8a5c # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lhu x12, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x19, 0x34be7312d8eb72db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000000000ffff # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x14) # store value to put something in memory
c.lhu x11, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x27, 0x1ae1aa55aef87ce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000ffff # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x14) # store value to put something in memory
c.lhu x11, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x5, 0xf5fa1812540807cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0eba20024c6ca796 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x15) # store value to put something in memory
c.lhu x13, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x2, 0x43542fb4fd614bcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x000000000000fffe # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x12) # store value to put something in memory
c.lhu x10, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x24, 0xb8aa1d72b3cd7f3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000fffe # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x11) # store value to put something in memory
c.lhu x8, 2(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x3, 0x72ac6c0b17225885 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x31affeff825d88af # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x11) # store value to put something in memory
c.lhu x11, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x3, 0x31a1cc0365b73b83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000005555 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x15) # store value to put something in memory
c.lhu x11, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x7, 0xf8dbfc66eb1e9c20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000005555 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x12) # store value to put something in memory
c.lhu x15, 2(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x27, 0x1109ce02c1d0d2e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf5108cb42096abce # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x13) # store value to put something in memory
c.lhu x11, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x26, 0x7105678b3a791c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000000000aaaa # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x9) # store value to put something in memory
c.lhu x10, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x9, 0x92a7dedb0b5e4cea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000aaaa # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x8) # store value to put something in memory
c.lhu x9, 2(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x29, 0xf5f4a89ef8205037 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc74495cf5216d977 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lhu x13, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x30, 0x15f5d78278612bec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000005bbc # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x10) # store value to put something in memory
c.lhu x14, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x30, 0xe89827789e6d7d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000005bbc # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x13) # store value to put something in memory
c.lhu x14, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x27, 0xdc6a2bffaeecec1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5025bc93186a733c # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lhu x11, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x12, 0xf65eedc5ba61801f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000000000dbbc # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x10) # store value to put something in memory
c.lhu x12, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x8, 0xdc92924fda339bd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000000000dbbc # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x10) # store value to put something in memory
c.lhu x8, 2(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x24, 0x186774414643fb10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x12c77e97384c302f # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x8) # store value to put something in memory
c.lhu x8, 0(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x26, 0x170522161e5951b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd1966a7efd367c50 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x9) # store value to put something in memory
c.lhu x10, 0(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x30, 0xc2af6c5e0e95eceb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1789cb3c8b7115dc # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x10) # store value to put something in memory
c.lhu x14, 0(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x5, 0xc0ea26ba9d9fdd8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4107fcd8f04eb16a # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x11) # store value to put something in memory
c.lhu x13, 0(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x9, 0x23d3e558598c92df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x070da4cd5a9d0471 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x12) # store value to put something in memory
c.lhu x9, 0(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x1, 0xa04a032ac1c613c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x26dc264581e42728 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x13) # store value to put something in memory
c.lhu x9, 0(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0x2f86511f97da6abf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0b7707f440418791 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lhu x9, 0(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x8, 0xb789a13c24618748 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x54c28e9ba62607f7 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x15) # store value to put something in memory
c.lhu x8, 0(x15) # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
