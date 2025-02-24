///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.sw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.997025
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs2 (Test source rs2 = x8)
li x11, 0x0e3e51d90288733b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x8, 0xe239a32cda1ec3ad # initialize rs2 with random value
addi x10, x10, -108 # sub immediate from rs1 to counter offset
c.sw x8, 108(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x20, 0x7313405189f4b016 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x9, 0x5e4eb333d02c1cb0 # initialize rs2 with random value
addi x13, x13, -12 # sub immediate from rs1 to counter offset
c.sw x9, 12(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x12, 0x457e82d6a84b5ead # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x10, 0xd46a111b8e405c19 # initialize rs2 with random value
addi x13, x13, -84 # sub immediate from rs1 to counter offset
c.sw x10, 84(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x21, 0x84a5e4ccbf348277 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x11, 0xefd59942756b24f1 # initialize rs2 with random value
addi x9, x9, -124 # sub immediate from rs1 to counter offset
c.sw x11, 124(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x8, 0xa73cdaf31604f04e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x15, 0xaf8e3efb53ae974c # initialize rs2 with random value
addi x12, x12, -88 # sub immediate from rs1 to counter offset
c.sw x15, 88(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0x421c9c3e46c643b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x8, 0xa5adffb6de6ad18b # initialize rs2 with random value
addi x13, x13, -28 # sub immediate from rs1 to counter offset
c.sw x8, 28(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x3, 0x6dffc432ff1cd475 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x14, 0xf0504eb0ec9fb0f9 # initialize rs2 with random value
addi x15, x15, -32 # sub immediate from rs1 to counter offset
c.sw x14, 32(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x7, 0x3dae4334e9b4bda6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x15, 0xd43adec167b3ceab # initialize rs2 with random value
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sw x15, 0(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0x340d349be1d80868 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x14, 0x0000000000000000 # initialize rs2 with random value
addi x15, x15, -120 # sub immediate from rs1 to counter offset
c.sw x14, 120(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x31, 0x3a6fccf90d33c0dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x11, 0x0000000000000001 # initialize rs2 with random value
addi x13, x13, -100 # sub immediate from rs1 to counter offset
c.sw x11, 100(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0x5f6d9a98823e6944 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x9, 0x0000000000000002 # initialize rs2 with random value
addi x12, x12, -60 # sub immediate from rs1 to counter offset
c.sw x9, 60(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x17, 0xa6a01bd73e522ce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x15, 0x8000000000000000 # initialize rs2 with random value
addi x11, x11, -80 # sub immediate from rs1 to counter offset
c.sw x15, 80(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x10, 0xb1f99fedd5d1ce06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x13, 0x8000000000000001 # initialize rs2 with random value
addi x11, x11, -52 # sub immediate from rs1 to counter offset
c.sw x13, 52(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x26, 0xd9e5289e151d07ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x13, 0x7fffffffffffffff # initialize rs2 with random value
addi x15, x15, -56 # sub immediate from rs1 to counter offset
c.sw x13, 56(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x17, 0xa2a402075359570a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x12, 0x7ffffffffffffffe # initialize rs2 with random value
addi x13, x13, -100 # sub immediate from rs1 to counter offset
c.sw x12, 100(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x20, 0xf3b306e4d9b24dba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x10, 0xffffffffffffffff # initialize rs2 with random value
addi x13, x13, -8 # sub immediate from rs1 to counter offset
c.sw x10, 8(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x13, 0x19555e83891811c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x8, 0xfffffffffffffffe # initialize rs2 with random value
addi x12, x12, -48 # sub immediate from rs1 to counter offset
c.sw x8, 48(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x26, 0x0b42975235982533 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x11, 0x5bbc887763ae86f7 # initialize rs2 with random value
addi x8, x8, -72 # sub immediate from rs1 to counter offset
c.sw x11, 72(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x3, 0xa97b66207096f765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2 with random value
addi x15, x15, -104 # sub immediate from rs1 to counter offset
c.sw x11, 104(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x1, 0x77dc553160b0c12c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x9, 0x5555555555555555 # initialize rs2 with random value
addi x8, x8, -4 # sub immediate from rs1 to counter offset
c.sw x9, 4(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0x4c486efdfe87c8e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x10, 0x00000000ffffffff # initialize rs2 with random value
addi x15, x15, -92 # sub immediate from rs1 to counter offset
c.sw x10, 92(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x29, 0x1f04fc4c2bb6b81c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x13, 0x00000000fffffffe # initialize rs2 with random value
addi x14, x14, -52 # sub immediate from rs1 to counter offset
c.sw x13, 52(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x12, 0x6d9a68d488d7e06f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x14, 0x0000000100000000 # initialize rs2 with random value
addi x13, x13, -48 # sub immediate from rs1 to counter offset
c.sw x14, 48(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x9, 0x0803b932f036747d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x9, 0x0000000100000001 # initialize rs2 with random value
addi x14, x14, -108 # sub immediate from rs1 to counter offset
c.sw x9, 108(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x21, 0xc5a5e009dc0d81a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x9, 0xc4d0d0f4f33a2260 # initialize rs2 with random value
addi x8, x8, -20 # sub immediate from rs1 to counter offset
c.sw x9, 20(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x1, 0xc3dccbcc2c0c8b5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x13, 0x7ba2b3ec7c2eff39 # initialize rs2 with random value
addi x9, x9, -8 # sub immediate from rs1 to counter offset
c.sw x13, 8(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x22, 0x65abada2e43577fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x11, 0xe66f4632840c609c # initialize rs2 with random value
addi x10, x10, -64 # sub immediate from rs1 to counter offset
c.sw x11, 64(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x6, 0x28ba98f815a1fe82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x12, 0x6264bf9bb4698ef1 # initialize rs2 with random value
addi x11, x11, -60 # sub immediate from rs1 to counter offset
c.sw x12, 60(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x20, 0xad2f704f6e54cfb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x15, 0xf620b145f96e460f # initialize rs2 with random value
addi x12, x12, -88 # sub immediate from rs1 to counter offset
c.sw x15, 88(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x31, 0x4066c9f813a780bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x14, 0xd0b7ff937263fa05 # initialize rs2 with random value
addi x13, x13, -48 # sub immediate from rs1 to counter offset
c.sw x14, 48(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0xe12f0f09fd1b352d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x8, 0xb14b3c2d859a370b # initialize rs2 with random value
addi x14, x14, -44 # sub immediate from rs1 to counter offset
c.sw x8, 44(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x26, 0x23b9bfc92e0ab533 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x14, 0x030f709a1b9d7199 # initialize rs2 with random value
addi x15, x15, -112 # sub immediate from rs1 to counter offset
c.sw x14, 112(x15) # perform operation 

# Testcase cp_imm_mul
li x11, 0x858b50e9a44f304a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x9, 0xcc4a64253ce4b347 # initialize rs2 with random value
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sw x9, 0(x12) # perform operation 

# Testcase cp_imm_mul
li x9, 0x38077673f2891ffc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x10, 0xd423f1d64b1ddf26 # initialize rs2 with random value
addi x9, x9, -4 # sub immediate from rs1 to counter offset
c.sw x10, 4(x9) # perform operation 

# Testcase cp_imm_mul
li x11, 0x9ae3fc75ebbcf70f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x10, 0x08d33abae808df23 # initialize rs2 with random value
addi x15, x15, -8 # sub immediate from rs1 to counter offset
c.sw x10, 8(x15) # perform operation 

# Testcase cp_imm_mul
li x6, 0xceb75e6733ffc978 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x12, 0xb6c32086ce164017 # initialize rs2 with random value
addi x15, x15, -12 # sub immediate from rs1 to counter offset
c.sw x12, 12(x15) # perform operation 

# Testcase cp_imm_mul
li x8, 0x1b4a53e8e49bacfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x14, 0xc16a8455c7d31d3a # initialize rs2 with random value
addi x13, x13, -16 # sub immediate from rs1 to counter offset
c.sw x14, 16(x13) # perform operation 

# Testcase cp_imm_mul
li x4, 0xb7f0cb06fced8334 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x9, 0xd182802bf74fcfaf # initialize rs2 with random value
addi x11, x11, -20 # sub immediate from rs1 to counter offset
c.sw x9, 20(x11) # perform operation 

# Testcase cp_imm_mul
li x1, 0xf9676fb888673e75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x10, 0x2db8532c66c80853 # initialize rs2 with random value
addi x13, x13, -24 # sub immediate from rs1 to counter offset
c.sw x10, 24(x13) # perform operation 

# Testcase cp_imm_mul
li x1, 0x708dfde177e5271d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x8, 0x56465cf7ef227146 # initialize rs2 with random value
addi x11, x11, -28 # sub immediate from rs1 to counter offset
c.sw x8, 28(x11) # perform operation 

# Testcase cp_imm_mul
li x17, 0x6e0f93b1ad026547 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x13, 0x8e7d24d91a2d46fb # initialize rs2 with random value
addi x8, x8, -32 # sub immediate from rs1 to counter offset
c.sw x13, 32(x8) # perform operation 

# Testcase cp_imm_mul
li x24, 0xac83271f38ddcbd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x12, 0xad6a0d49076847be # initialize rs2 with random value
addi x10, x10, -36 # sub immediate from rs1 to counter offset
c.sw x12, 36(x10) # perform operation 

# Testcase cp_imm_mul
li x9, 0x813cff01312af5c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x14, 0x46b99b7c1d70a2e9 # initialize rs2 with random value
addi x13, x13, -40 # sub immediate from rs1 to counter offset
c.sw x14, 40(x13) # perform operation 

# Testcase cp_imm_mul
li x19, 0xe05f4aea7150139c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x15, 0x95b355e4acff1c0c # initialize rs2 with random value
addi x11, x11, -44 # sub immediate from rs1 to counter offset
c.sw x15, 44(x11) # perform operation 

# Testcase cp_imm_mul
li x15, 0xf8c7255adb3704a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x15, 0x679d4437c36e0738 # initialize rs2 with random value
addi x10, x10, -48 # sub immediate from rs1 to counter offset
c.sw x15, 48(x10) # perform operation 

# Testcase cp_imm_mul
li x25, 0x2865a8a405cf74dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x15, 0x62fedf0f348d7385 # initialize rs2 with random value
addi x14, x14, -52 # sub immediate from rs1 to counter offset
c.sw x15, 52(x14) # perform operation 

# Testcase cp_imm_mul
li x14, 0xd8b4ef08bc4db75c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x15, 0xecb903486039f0d8 # initialize rs2 with random value
addi x13, x13, -56 # sub immediate from rs1 to counter offset
c.sw x15, 56(x13) # perform operation 

# Testcase cp_imm_mul
li x20, 0x4854b602a8e9ecae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x10, 0xf094d2f717219379 # initialize rs2 with random value
addi x9, x9, -60 # sub immediate from rs1 to counter offset
c.sw x10, 60(x9) # perform operation 

# Testcase cp_imm_mul
li x23, 0xa396971e804dabb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x9, 0xac3a7722f0bad284 # initialize rs2 with random value
addi x11, x11, -64 # sub immediate from rs1 to counter offset
c.sw x9, 64(x11) # perform operation 

# Testcase cp_imm_mul
li x5, 0x9b1e6a7f297e5c68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x15, 0x443e9620bf6cff56 # initialize rs2 with random value
addi x8, x8, -68 # sub immediate from rs1 to counter offset
c.sw x15, 68(x8) # perform operation 

# Testcase cp_imm_mul
li x14, 0x697230b79e106ceb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x12, 0x788b4cc23a382f89 # initialize rs2 with random value
addi x10, x10, -72 # sub immediate from rs1 to counter offset
c.sw x12, 72(x10) # perform operation 

# Testcase cp_imm_mul
li x5, 0x05a81a823476d845 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x14, 0x06e7d6adcb57c42d # initialize rs2 with random value
addi x11, x11, -76 # sub immediate from rs1 to counter offset
c.sw x14, 76(x11) # perform operation 

# Testcase cp_imm_mul
li x21, 0x0dbca3f561a13d77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x8, 0x4f57711922162d43 # initialize rs2 with random value
addi x13, x13, -80 # sub immediate from rs1 to counter offset
c.sw x8, 80(x13) # perform operation 

# Testcase cp_imm_mul
li x1, 0x9f0b91687ff27ad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x11, 0x7492989760bc529f # initialize rs2 with random value
addi x14, x14, -84 # sub immediate from rs1 to counter offset
c.sw x11, 84(x14) # perform operation 

# Testcase cp_imm_mul
li x19, 0x7db2082ccf7447aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x9, 0x6651d04503745143 # initialize rs2 with random value
addi x13, x13, -88 # sub immediate from rs1 to counter offset
c.sw x9, 88(x13) # perform operation 

# Testcase cp_imm_mul
li x23, 0xa53e30a6494ea840 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x11, 0x0b041d774d12f4dd # initialize rs2 with random value
addi x14, x14, -92 # sub immediate from rs1 to counter offset
c.sw x11, 92(x14) # perform operation 

# Testcase cp_imm_mul
li x30, 0xe63c67f674409517 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x13, 0x5393c391f2fe7881 # initialize rs2 with random value
addi x15, x15, -96 # sub immediate from rs1 to counter offset
c.sw x13, 96(x15) # perform operation 

# Testcase cp_imm_mul
li x29, 0x8f870615139c03fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x14, 0xa4ed1b9b9f24a2af # initialize rs2 with random value
addi x9, x9, -100 # sub immediate from rs1 to counter offset
c.sw x14, 100(x9) # perform operation 

# Testcase cp_imm_mul
li x18, 0x2c78511ff48b4e4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x9, 0x1ffff4500f8dd402 # initialize rs2 with random value
addi x15, x15, -104 # sub immediate from rs1 to counter offset
c.sw x9, 104(x15) # perform operation 

# Testcase cp_imm_mul
li x4, 0x84592848778d56e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x12, 0x6178b8328914978a # initialize rs2 with random value
addi x15, x15, -108 # sub immediate from rs1 to counter offset
c.sw x12, 108(x15) # perform operation 

# Testcase cp_imm_mul
li x1, 0xe2256bab1cdeaa6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x8, 0x1321ca8d5e8eafec # initialize rs2 with random value
addi x10, x10, -112 # sub immediate from rs1 to counter offset
c.sw x8, 112(x10) # perform operation 

# Testcase cp_imm_mul
li x13, 0x804bf6bbfc404852 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x12, 0x47b43692352e94f1 # initialize rs2 with random value
addi x9, x9, -116 # sub immediate from rs1 to counter offset
c.sw x12, 116(x9) # perform operation 

# Testcase cp_imm_mul
li x8, 0xf3549d1814425540 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x12, 0x1de4490545f67730 # initialize rs2 with random value
addi x15, x15, -120 # sub immediate from rs1 to counter offset
c.sw x12, 120(x15) # perform operation 

# Testcase cp_imm_mul
li x31, 0x5e668d2f929485ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x13, 0xe99a2cdac53b6164 # initialize rs2 with random value
addi x9, x9, -124 # sub immediate from rs1 to counter offset
c.sw x13, 124(x9) # perform operation 

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
