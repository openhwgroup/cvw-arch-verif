///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-flw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.743235
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x1)
li x2, 0x633bfdc8538481d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, scratch # base address 
addi x1, x1, -1235 # sub immediate from rs1 to counter offset
li x6, 0x5bdb29bd0a5a31fe # load x3 with value 0x5bdb29bd0a5a31fe
sw x6, 1235(x1) # store 0x5bdb29bd0a5a31fe in memory
flw f2, 1235(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x26, 0x670177bb9d65a2de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
addi x2, x2, 1139 # sub immediate from rs1 to counter offset
li x1, 0x7f4a300711dc81e9 # load x3 with value 0x7f4a300711dc81e9
sw x1, -1139(x2) # store 0x7f4a300711dc81e9 in memory
flw f26, -1139(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x22, 0x209ede82f7b2e2e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, -1920 # sub immediate from rs1 to counter offset
li x1, 0x652466bcc5c31662 # load x3 with value 0x652466bcc5c31662
sw x1, 1920(x3) # store 0x652466bcc5c31662 in memory
flw f22, 1920(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x25, 0x3e9e0809ed5e3240 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, scratch # base address 
addi x4, x4, -949 # sub immediate from rs1 to counter offset
li x1, 0xb87c705aedc9365 # load x3 with value 0xb87c705aedc9365
sw x1, 949(x4) # store 0xb87c705aedc9365 in memory
flw f25, 949(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x25, 0xd46f7637d2a01326 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, scratch # base address 
addi x5, x5, -2020 # sub immediate from rs1 to counter offset
li x1, 0x87f9fd714ef03d5d # load x3 with value 0x87f9fd714ef03d5d
sw x1, 2020(x5) # store 0x87f9fd714ef03d5d in memory
flw f25, 2020(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x8, 0xe03430a69d198ad3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, scratch # base address 
addi x6, x6, -699 # sub immediate from rs1 to counter offset
li x1, 0x3e66e44c0ce89b58 # load x3 with value 0x3e66e44c0ce89b58
sw x1, 699(x6) # store 0x3e66e44c0ce89b58 in memory
flw f8, 699(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x9, 0x7fd5efa4577ce453 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, scratch # base address 
addi x7, x7, -1087 # sub immediate from rs1 to counter offset
li x1, 0xf82590366b249fba # load x3 with value 0xf82590366b249fba
sw x1, 1087(x7) # store 0xf82590366b249fba in memory
flw f9, 1087(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0xff28b72463da0069 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, -1684 # sub immediate from rs1 to counter offset
li x1, 0x75a169a82ae43de9 # load x3 with value 0x75a169a82ae43de9
sw x1, 1684(x8) # store 0x75a169a82ae43de9 in memory
flw f9, 1684(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x5, 0xd9135b3c3475dfd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, 2016 # sub immediate from rs1 to counter offset
li x1, 0xb9a8c5e1f5584359 # load x3 with value 0xb9a8c5e1f5584359
sw x1, -2016(x9) # store 0xb9a8c5e1f5584359 in memory
flw f5, -2016(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x21, 0x2bdd762be760c499 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address 
addi x10, x10, 138 # sub immediate from rs1 to counter offset
li x1, 0x296760573bb7694 # load x3 with value 0x296760573bb7694
sw x1, -138(x10) # store 0x296760573bb7694 in memory
flw f21, -138(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x29, 0x107cb921cdaaa40b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address 
addi x11, x11, 1550 # sub immediate from rs1 to counter offset
li x13, 0xaf9d798fc9a8ca9 # load x3 with value 0xaf9d798fc9a8ca9
sw x13, -1550(x11) # store 0xaf9d798fc9a8ca9 in memory
flw f29, -1550(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0xaa7a4b29e15c61f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, 1210 # sub immediate from rs1 to counter offset
li x1, 0x4c79fb0c14b022ca # load x3 with value 0x4c79fb0c14b022ca
sw x1, -1210(x12) # store 0x4c79fb0c14b022ca in memory
flw f11, -1210(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x24, 0xe78f0f5f1f64b28d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, 331 # sub immediate from rs1 to counter offset
li x1, 0x4f3547f9789bab02 # load x3 with value 0x4f3547f9789bab02
sw x1, -331(x13) # store 0x4f3547f9789bab02 in memory
flw f24, -331(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x31, 0x1c048dfd546f0ad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, 852 # sub immediate from rs1 to counter offset
li x1, 0xe75a1f8c5be2561b # load x3 with value 0xe75a1f8c5be2561b
sw x1, -852(x14) # store 0xe75a1f8c5be2561b in memory
flw f31, -852(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x2abd0d6b923859d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address 
addi x15, x15, 1320 # sub immediate from rs1 to counter offset
li x1, 0xe788f8b1800a6912 # load x3 with value 0xe788f8b1800a6912
sw x1, -1320(x15) # store 0xe788f8b1800a6912 in memory
flw f14, -1320(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x7, 0x5d80e3ce1e65b409 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, scratch # base address 
addi x16, x16, -1297 # sub immediate from rs1 to counter offset
li x1, 0x7f990a7c047cf26d # load x3 with value 0x7f990a7c047cf26d
sw x1, 1297(x16) # store 0x7f990a7c047cf26d in memory
flw f7, 1297(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x9, 0x9c47e58cc405bbf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x17, scratch # base address 
addi x17, x17, -632 # sub immediate from rs1 to counter offset
li x1, 0x97b2ab9e5733fd62 # load x3 with value 0x97b2ab9e5733fd62
sw x1, 632(x17) # store 0x97b2ab9e5733fd62 in memory
flw f9, 632(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x24, 0x1f49353b01fb3c70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, scratch # base address 
addi x18, x18, -1598 # sub immediate from rs1 to counter offset
li x1, 0x56e12025384d31db # load x3 with value 0x56e12025384d31db
sw x1, 1598(x18) # store 0x56e12025384d31db in memory
flw f24, 1598(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x22, 0x5589777959285cef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x19, scratch # base address 
addi x19, x19, 1163 # sub immediate from rs1 to counter offset
li x1, 0x284bc0c353e0d7da # load x3 with value 0x284bc0c353e0d7da
sw x1, -1163(x19) # store 0x284bc0c353e0d7da in memory
flw f22, -1163(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x7, 0xf3dc593eb0dd834a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x20, scratch # base address 
addi x20, x20, 660 # sub immediate from rs1 to counter offset
li x1, 0x12778718f1dc1267 # load x3 with value 0x12778718f1dc1267
sw x1, -660(x20) # store 0x12778718f1dc1267 in memory
flw f7, -660(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x2, 0xbc6741f612062848 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, scratch # base address 
addi x21, x21, -618 # sub immediate from rs1 to counter offset
li x1, 0xa3af0bbdea557bee # load x3 with value 0xa3af0bbdea557bee
sw x1, 618(x21) # store 0xa3af0bbdea557bee in memory
flw f2, 618(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x3, 0xb38952f8853c9cba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, scratch # base address 
addi x22, x22, 698 # sub immediate from rs1 to counter offset
li x1, 0x67943948fe8d2a1f # load x3 with value 0x67943948fe8d2a1f
sw x1, -698(x22) # store 0x67943948fe8d2a1f in memory
flw f3, -698(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x30, 0xcd3fbb3e3a1dc409 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, scratch # base address 
addi x23, x23, -517 # sub immediate from rs1 to counter offset
li x1, 0xdaa8f6141eca79e3 # load x3 with value 0xdaa8f6141eca79e3
sw x1, 517(x23) # store 0xdaa8f6141eca79e3 in memory
flw f30, 517(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x7, 0x97d70864536c25c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, scratch # base address 
addi x24, x24, 1609 # sub immediate from rs1 to counter offset
li x1, 0xd18a704c55100442 # load x3 with value 0xd18a704c55100442
sw x1, -1609(x24) # store 0xd18a704c55100442 in memory
flw f7, -1609(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x18, 0xbc036da43d7d2371 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, scratch # base address 
addi x25, x25, -116 # sub immediate from rs1 to counter offset
li x1, 0x1f9a62718d8df4e1 # load x3 with value 0x1f9a62718d8df4e1
sw x1, 116(x25) # store 0x1f9a62718d8df4e1 in memory
flw f18, 116(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x27, 0x5e68d557fef95b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, scratch # base address 
addi x26, x26, 890 # sub immediate from rs1 to counter offset
li x1, 0x67a66461f6435464 # load x3 with value 0x67a66461f6435464
sw x1, -890(x26) # store 0x67a66461f6435464 in memory
flw f27, -890(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x23, 0xb9b3994679c40a2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, scratch # base address 
addi x27, x27, -1580 # sub immediate from rs1 to counter offset
li x1, 0x401501c74511f9c0 # load x3 with value 0x401501c74511f9c0
sw x1, 1580(x27) # store 0x401501c74511f9c0 in memory
flw f23, 1580(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x14, 0xab971040fe4dcb38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, scratch # base address 
addi x28, x28, 311 # sub immediate from rs1 to counter offset
li x1, 0xbfecac3f401243d6 # load x3 with value 0xbfecac3f401243d6
sw x1, -311(x28) # store 0xbfecac3f401243d6 in memory
flw f14, -311(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x31, 0x661b47a58a80a8e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x29, scratch # base address 
addi x29, x29, -1629 # sub immediate from rs1 to counter offset
li x1, 0x98fc92d794d3ca58 # load x3 with value 0x98fc92d794d3ca58
sw x1, 1629(x29) # store 0x98fc92d794d3ca58 in memory
flw f31, 1629(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x8, 0x08cbf90172d05d84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, scratch # base address 
addi x30, x30, 287 # sub immediate from rs1 to counter offset
li x1, 0x6548893f53ce97b7 # load x3 with value 0x6548893f53ce97b7
sw x1, -287(x30) # store 0x6548893f53ce97b7 in memory
flw f8, -287(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x10, 0x6a47c47748a88d3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, scratch # base address 
addi x31, x31, 1954 # sub immediate from rs1 to counter offset
li x1, 0xa31c79d5bae1e8a8 # load x3 with value 0xa31c79d5bae1e8a8
sw x1, -1954(x31) # store 0xa31c79d5bae1e8a8 in memory
flw f10, -1954(x31) # perform operation

# Testcase cp_imm_zero
li x16, 0x8087cfece901b24e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, scratch # base address 
addi x24, x24, 0 # sub immediate from rs1 to counter offset
li x1, 0x88fe562a6ed987f6 # load x3 with value 0x88fe562a6ed987f6
sw x1, 0(x24) # store 0x88fe562a6ed987f6 in memory
flw f16, 0(x24) # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x3ded6ed37f013faf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, -156 # sub immediate from rs1 to counter offset
li x1, 0x534c523af46852e9 # load x3 with value 0x534c523af46852e9
sw x1, 156(x3) # store 0x534c523af46852e9 in memory
flw f0, 156(x3) # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x5ad7c048e4c3e3cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address 
addi x10, x10, -2012 # sub immediate from rs1 to counter offset
li x1, 0xaaaf19f3bc952bda # load x3 with value 0xaaaf19f3bc952bda
sw x1, 2012(x10) # store 0xaaaf19f3bc952bda in memory
flw f1, 2012(x10) # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xcf2e3870dd40d000 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, scratch # base address 
addi x22, x22, 718 # sub immediate from rs1 to counter offset
li x1, 0x379a710e4370cd04 # load x3 with value 0x379a710e4370cd04
sw x1, -718(x22) # store 0x379a710e4370cd04 in memory
flw f2, -718(x22) # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xefa2debfeea2bc22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, 958 # sub immediate from rs1 to counter offset
li x1, 0x51c5d48b26d07d2 # load x3 with value 0x51c5d48b26d07d2
sw x1, -958(x3) # store 0x51c5d48b26d07d2 in memory
flw f3, -958(x3) # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xad6b8bd2274ee19b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, scratch # base address 
addi x28, x28, -23 # sub immediate from rs1 to counter offset
li x1, 0x6d630fd665036846 # load x3 with value 0x6d630fd665036846
sw x1, 23(x28) # store 0x6d630fd665036846 in memory
flw f4, 23(x28) # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x665cfd7ab57aaa00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, scratch # base address 
addi x1, x1, 1255 # sub immediate from rs1 to counter offset
li x23, 0xb2fef17b894b20f0 # load x3 with value 0xb2fef17b894b20f0
sw x23, -1255(x1) # store 0xb2fef17b894b20f0 in memory
flw f5, -1255(x1) # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xed858ea904cafdb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, scratch # base address 
addi x16, x16, 483 # sub immediate from rs1 to counter offset
li x1, 0x5039d4caada99e7b # load x3 with value 0x5039d4caada99e7b
sw x1, -483(x16) # store 0x5039d4caada99e7b in memory
flw f6, -483(x16) # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xaf6ad839b6f185c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, scratch # base address 
addi x31, x31, -1426 # sub immediate from rs1 to counter offset
li x1, 0xc80ae30b2ae54ad4 # load x3 with value 0xc80ae30b2ae54ad4
sw x1, 1426(x31) # store 0xc80ae30b2ae54ad4 in memory
flw f7, 1426(x31) # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x883f111087a06649 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, scratch # base address 
addi x16, x16, -441 # sub immediate from rs1 to counter offset
li x1, 0x8d9fc1c94d5283a2 # load x3 with value 0x8d9fc1c94d5283a2
sw x1, 441(x16) # store 0x8d9fc1c94d5283a2 in memory
flw f8, 441(x16) # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x732ae8590e6ca899 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, -1935 # sub immediate from rs1 to counter offset
li x1, 0x9f9817f68a30e65 # load x3 with value 0x9f9817f68a30e65
sw x1, 1935(x3) # store 0x9f9817f68a30e65 in memory
flw f9, 1935(x3) # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xbe3ef168e4e5a3fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, 180 # sub immediate from rs1 to counter offset
li x1, 0x2c0827f591f79adc # load x3 with value 0x2c0827f591f79adc
sw x1, -180(x8) # store 0x2c0827f591f79adc in memory
flw f10, -180(x8) # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xdd6a9436c82f44c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, scratch # base address 
addi x5, x5, 429 # sub immediate from rs1 to counter offset
li x15, 0x90d78b3528ccd1df # load x3 with value 0x90d78b3528ccd1df
sw x15, -429(x5) # store 0x90d78b3528ccd1df in memory
flw f11, -429(x5) # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x2bf1835bac01e1c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, scratch # base address 
addi x7, x7, 1187 # sub immediate from rs1 to counter offset
li x1, 0x2ec4a5898efde427 # load x3 with value 0x2ec4a5898efde427
sw x1, -1187(x7) # store 0x2ec4a5898efde427 in memory
flw f12, -1187(x7) # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x6231d7f2913120bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, scratch # base address 
addi x21, x21, 324 # sub immediate from rs1 to counter offset
li x1, 0xc99a058e93af75c4 # load x3 with value 0xc99a058e93af75c4
sw x1, -324(x21) # store 0xc99a058e93af75c4 in memory
flw f13, -324(x21) # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xdb9263dab75dc9c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, scratch # base address 
addi x4, x4, -1244 # sub immediate from rs1 to counter offset
li x1, 0x596f7b5e0806e506 # load x3 with value 0x596f7b5e0806e506
sw x1, 1244(x4) # store 0x596f7b5e0806e506 in memory
flw f14, 1244(x4) # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x82f77d35c8616204 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, scratch # base address 
addi x26, x26, 33 # sub immediate from rs1 to counter offset
li x1, 0x2341d341fb48d28b # load x3 with value 0x2341d341fb48d28b
sw x1, -33(x26) # store 0x2341d341fb48d28b in memory
flw f15, -33(x26) # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xa4f8b400b673819f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, scratch # base address 
addi x31, x31, 969 # sub immediate from rs1 to counter offset
li x1, 0x919771b86958eb7a # load x3 with value 0x919771b86958eb7a
sw x1, -969(x31) # store 0x919771b86958eb7a in memory
flw f16, -969(x31) # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x52ef2589da2674b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, scratch # base address 
addi x24, x24, 799 # sub immediate from rs1 to counter offset
li x1, 0x2e64ffa0dac21d39 # load x3 with value 0x2e64ffa0dac21d39
sw x1, -799(x24) # store 0x2e64ffa0dac21d39 in memory
flw f17, -799(x24) # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x5124559d99294373 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, scratch # base address 
addi x25, x25, -869 # sub immediate from rs1 to counter offset
li x1, 0xd3189c9d318223f7 # load x3 with value 0xd3189c9d318223f7
sw x1, 869(x25) # store 0xd3189c9d318223f7 in memory
flw f18, 869(x25) # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x66fcfa350ea64f13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, scratch # base address 
addi x27, x27, -1190 # sub immediate from rs1 to counter offset
li x1, 0xaa8f2f38144d9738 # load x3 with value 0xaa8f2f38144d9738
sw x1, 1190(x27) # store 0xaa8f2f38144d9738 in memory
flw f19, 1190(x27) # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x5a0a6975e2ebc6ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, -1046 # sub immediate from rs1 to counter offset
li x1, 0x6af16bd73299b7ae # load x3 with value 0x6af16bd73299b7ae
sw x1, 1046(x8) # store 0x6af16bd73299b7ae in memory
flw f20, 1046(x8) # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x951438370c607749 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, -858 # sub immediate from rs1 to counter offset
li x1, 0x23cfcc5e3b9225fd # load x3 with value 0x23cfcc5e3b9225fd
sw x1, 858(x12) # store 0x23cfcc5e3b9225fd in memory
flw f21, 858(x12) # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x187bd5b4760d23d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, scratch # base address 
addi x27, x27, 917 # sub immediate from rs1 to counter offset
li x28, 0x5794eb6b930b0c24 # load x3 with value 0x5794eb6b930b0c24
sw x28, -917(x27) # store 0x5794eb6b930b0c24 in memory
flw f22, -917(x27) # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x755a5849306dfcf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
addi x2, x2, 501 # sub immediate from rs1 to counter offset
li x1, 0xe376ac4e642d50e2 # load x3 with value 0xe376ac4e642d50e2
sw x1, -501(x2) # store 0xe376ac4e642d50e2 in memory
flw f23, -501(x2) # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x07e2e6aad0f3dd25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x29, scratch # base address 
addi x29, x29, -1193 # sub immediate from rs1 to counter offset
li x1, 0xc60d21972ee4bc6e # load x3 with value 0xc60d21972ee4bc6e
sw x1, 1193(x29) # store 0xc60d21972ee4bc6e in memory
flw f24, 1193(x29) # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x64852680ff67b90d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address 
addi x15, x15, -788 # sub immediate from rs1 to counter offset
li x1, 0x801affbf1d8664d7 # load x3 with value 0x801affbf1d8664d7
sw x1, 788(x15) # store 0x801affbf1d8664d7 in memory
flw f25, 788(x15) # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xc10cb61fb745240d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, scratch # base address 
addi x26, x26, -396 # sub immediate from rs1 to counter offset
li x1, 0xd1425de9a69c5705 # load x3 with value 0xd1425de9a69c5705
sw x1, 396(x26) # store 0xd1425de9a69c5705 in memory
flw f26, 396(x26) # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x8b2f8e19a3ccb8b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address 
addi x10, x10, 572 # sub immediate from rs1 to counter offset
li x1, 0xdec3adb8a6073264 # load x3 with value 0xdec3adb8a6073264
sw x1, -572(x10) # store 0xdec3adb8a6073264 in memory
flw f27, -572(x10) # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x4f24474811eb085c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, scratch # base address 
addi x31, x31, -1674 # sub immediate from rs1 to counter offset
li x1, 0x301be41e7184db51 # load x3 with value 0x301be41e7184db51
sw x1, 1674(x31) # store 0x301be41e7184db51 in memory
flw f28, 1674(x31) # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xce6f37de63c6b561 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, 1716 # sub immediate from rs1 to counter offset
li x1, 0xf5aa0c145fd54463 # load x3 with value 0xf5aa0c145fd54463
sw x1, -1716(x13) # store 0xf5aa0c145fd54463 in memory
flw f29, -1716(x13) # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xf5ff843be8450a30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, scratch # base address 
addi x1, x1, 1403 # sub immediate from rs1 to counter offset
li x25, 0x80705fb9ec053883 # load x3 with value 0x80705fb9ec053883
sw x25, -1403(x1) # store 0x80705fb9ec053883 in memory
flw f30, -1403(x1) # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xd0c7b27b4797d8f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, scratch # base address 
addi x6, x6, -1205 # sub immediate from rs1 to counter offset
li x1, 0x4a3564a87e0e61bb # load x3 with value 0x4a3564a87e0e61bb
sw x1, 1205(x6) # store 0x4a3564a87e0e61bb in memory
flw f31, 1205(x6) # perform operation

# Testcase f_mem_hazard (no dependency)
la x1, scratch
flw f2, 0(x1)

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
