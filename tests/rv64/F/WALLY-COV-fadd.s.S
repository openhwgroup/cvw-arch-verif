///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fadd.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.700242
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


# Testcase cmp_gpr_hazard raw test
fadd.s f3, f11, f8 # perform first operation
fadd.s f1, f3, f21 # perform second operation

# Testcase cmp_gpr_hazard raw test
fadd.s f2, f6, f21 # perform first operation
fadd.s f15, f23, f2 # perform second operation

# Testcase cmp_gpr_hazard waw test
fadd.s f27, f10, f30 # perform first operation
fadd.s f27, f22, f9 # perform second operation

# Testcase cmp_gpr_hazard waw test
fadd.s f17, f24, f8 # perform first operation
fadd.s f17, f21, f16 # perform second operation

# Testcase cmp_gpr_hazard war test
fadd.s f20, f28, f4 # perform first operation
fadd.s f28, f4, f18 # perform second operation

# Testcase cmp_gpr_hazard war test
fadd.s f18, f4, f1 # perform first operation
fadd.s f1, f8, f27 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x4c9eeef71e835d33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeadf7eacfdd2874e # load x3 with value 0xeadf7eacfdd2874e
sw x3, 0(x2) # store 0xeadf7eacfdd2874e in memory
flw f0, 0(x2) # load 0xeadf7eacfdd2874e from memory into f0
li x3, 0xba6a9047eb747335 # load x3 with value 0xba6a9047eb747335
sw x3, 0(x2) # store 0xba6a9047eb747335 in memory
flw f20, 0(x2) # load 0xba6a9047eb747335 from memory into f20
fadd.s f0, f0, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xd765cca5f96161e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4477803b19183066 # load x3 with value 0x4477803b19183066
sw x3, 0(x2) # store 0x4477803b19183066 in memory
flw f1, 0(x2) # load 0x4477803b19183066 from memory into f1
li x3, 0x4b009150f7d6cc39 # load x3 with value 0x4b009150f7d6cc39
sw x3, 0(x2) # store 0x4b009150f7d6cc39 in memory
flw f24, 0(x2) # load 0x4b009150f7d6cc39 from memory into f24
fadd.s f1, f1, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x63c5379504bdbe82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd99d04cc4b5bc63a # load x3 with value 0xd99d04cc4b5bc63a
sw x3, 0(x2) # store 0xd99d04cc4b5bc63a in memory
flw f2, 0(x2) # load 0xd99d04cc4b5bc63a from memory into f2
li x3, 0x95a36b2a1bc4f218 # load x3 with value 0x95a36b2a1bc4f218
sw x3, 0(x2) # store 0x95a36b2a1bc4f218 in memory
flw f14, 0(x2) # load 0x95a36b2a1bc4f218 from memory into f14
fadd.s f2, f2, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x60627293a17278e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x302723d11fb0ae7 # load x3 with value 0x302723d11fb0ae7
sw x3, 0(x2) # store 0x302723d11fb0ae7 in memory
flw f3, 0(x2) # load 0x302723d11fb0ae7 from memory into f3
li x3, 0x8e51b17368aab89f # load x3 with value 0x8e51b17368aab89f
sw x3, 0(x2) # store 0x8e51b17368aab89f in memory
flw f21, 0(x2) # load 0x8e51b17368aab89f from memory into f21
fadd.s f3, f3, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xe3f34c98a7866ef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x964847cf203fa15d # load x3 with value 0x964847cf203fa15d
sw x3, 0(x2) # store 0x964847cf203fa15d in memory
flw f4, 0(x2) # load 0x964847cf203fa15d from memory into f4
li x3, 0x38c6ad9c209075c # load x3 with value 0x38c6ad9c209075c
sw x3, 0(x2) # store 0x38c6ad9c209075c in memory
flw f2, 0(x2) # load 0x38c6ad9c209075c from memory into f2
fadd.s f4, f4, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x7b7cef665e6ffb89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a1c1f6bb642fcc1 # load x3 with value 0x1a1c1f6bb642fcc1
sw x3, 0(x2) # store 0x1a1c1f6bb642fcc1 in memory
flw f5, 0(x2) # load 0x1a1c1f6bb642fcc1 from memory into f5
li x3, 0x41275f2e55838c37 # load x3 with value 0x41275f2e55838c37
sw x3, 0(x2) # store 0x41275f2e55838c37 in memory
flw f2, 0(x2) # load 0x41275f2e55838c37 from memory into f2
fadd.s f5, f5, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xd2c29072c052359b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8cfac757f94090e0 # load x3 with value 0x8cfac757f94090e0
sw x3, 0(x2) # store 0x8cfac757f94090e0 in memory
flw f6, 0(x2) # load 0x8cfac757f94090e0 from memory into f6
li x3, 0xdfa9a025efb8a94a # load x3 with value 0xdfa9a025efb8a94a
sw x3, 0(x2) # store 0xdfa9a025efb8a94a in memory
flw f7, 0(x2) # load 0xdfa9a025efb8a94a from memory into f7
fadd.s f6, f6, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xd6bfdda28a5e19d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x810fd65591c326df # load x3 with value 0x810fd65591c326df
sw x3, 0(x2) # store 0x810fd65591c326df in memory
flw f7, 0(x2) # load 0x810fd65591c326df from memory into f7
li x3, 0xa38a84fadeba453c # load x3 with value 0xa38a84fadeba453c
sw x3, 0(x2) # store 0xa38a84fadeba453c in memory
flw f6, 0(x2) # load 0xa38a84fadeba453c from memory into f6
fadd.s f7, f7, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x2b77a4b80082a65a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe55e2bd8583c7a17 # load x3 with value 0xe55e2bd8583c7a17
sw x3, 0(x2) # store 0xe55e2bd8583c7a17 in memory
flw f8, 0(x2) # load 0xe55e2bd8583c7a17 from memory into f8
li x3, 0x5dbd3f8504dac6d8 # load x3 with value 0x5dbd3f8504dac6d8
sw x3, 0(x2) # store 0x5dbd3f8504dac6d8 in memory
flw f8, 0(x2) # load 0x5dbd3f8504dac6d8 from memory into f8
fadd.s f8, f8, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xabc0a1b9371cdd60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad67052d6705466b # load x3 with value 0xad67052d6705466b
sw x3, 0(x2) # store 0xad67052d6705466b in memory
flw f9, 0(x2) # load 0xad67052d6705466b from memory into f9
li x3, 0xb23c6ad7a50474bc # load x3 with value 0xb23c6ad7a50474bc
sw x3, 0(x2) # store 0xb23c6ad7a50474bc in memory
flw f14, 0(x2) # load 0xb23c6ad7a50474bc from memory into f14
fadd.s f9, f9, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x1cea4297b24974f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd343a131996f2aa5 # load x3 with value 0xd343a131996f2aa5
sw x3, 0(x2) # store 0xd343a131996f2aa5 in memory
flw f10, 0(x2) # load 0xd343a131996f2aa5 from memory into f10
li x3, 0x7e58062adadd8fc3 # load x3 with value 0x7e58062adadd8fc3
sw x3, 0(x2) # store 0x7e58062adadd8fc3 in memory
flw f19, 0(x2) # load 0x7e58062adadd8fc3 from memory into f19
fadd.s f10, f10, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x1ed2b0ce89a6e7d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5ba32b31557fc1d # load x3 with value 0xe5ba32b31557fc1d
sw x3, 0(x2) # store 0xe5ba32b31557fc1d in memory
flw f11, 0(x2) # load 0xe5ba32b31557fc1d from memory into f11
li x3, 0x7f44d1a27b20dbae # load x3 with value 0x7f44d1a27b20dbae
sw x3, 0(x2) # store 0x7f44d1a27b20dbae in memory
flw f9, 0(x2) # load 0x7f44d1a27b20dbae from memory into f9
fadd.s f11, f11, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x80c1116d1a32fd3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaec7842b957f5e12 # load x3 with value 0xaec7842b957f5e12
sw x3, 0(x2) # store 0xaec7842b957f5e12 in memory
flw f12, 0(x2) # load 0xaec7842b957f5e12 from memory into f12
li x3, 0xd4f86f0bdbdc493f # load x3 with value 0xd4f86f0bdbdc493f
sw x3, 0(x2) # store 0xd4f86f0bdbdc493f in memory
flw f11, 0(x2) # load 0xd4f86f0bdbdc493f from memory into f11
fadd.s f12, f12, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xbc782673916727f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4d3883b7020bf01 # load x3 with value 0xf4d3883b7020bf01
sw x3, 0(x2) # store 0xf4d3883b7020bf01 in memory
flw f13, 0(x2) # load 0xf4d3883b7020bf01 from memory into f13
li x3, 0xd05d0f55b5d600c2 # load x3 with value 0xd05d0f55b5d600c2
sw x3, 0(x2) # store 0xd05d0f55b5d600c2 in memory
flw f17, 0(x2) # load 0xd05d0f55b5d600c2 from memory into f17
fadd.s f13, f13, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xcde29d5cc640decb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcfe7ac7e2dcbb590 # load x3 with value 0xcfe7ac7e2dcbb590
sw x3, 0(x2) # store 0xcfe7ac7e2dcbb590 in memory
flw f14, 0(x2) # load 0xcfe7ac7e2dcbb590 from memory into f14
li x3, 0x647475f6d680bb19 # load x3 with value 0x647475f6d680bb19
sw x3, 0(x2) # store 0x647475f6d680bb19 in memory
flw f21, 0(x2) # load 0x647475f6d680bb19 from memory into f21
fadd.s f14, f14, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0xa63818247521d82d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13aee9eae556ad85 # load x3 with value 0x13aee9eae556ad85
sw x3, 0(x2) # store 0x13aee9eae556ad85 in memory
flw f15, 0(x2) # load 0x13aee9eae556ad85 from memory into f15
li x3, 0x87d5d4e53e6ed310 # load x3 with value 0x87d5d4e53e6ed310
sw x3, 0(x2) # store 0x87d5d4e53e6ed310 in memory
flw f13, 0(x2) # load 0x87d5d4e53e6ed310 from memory into f13
fadd.s f15, f15, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0xddae621bbd9795d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdca029484dc9e32d # load x3 with value 0xdca029484dc9e32d
sw x3, 0(x2) # store 0xdca029484dc9e32d in memory
flw f16, 0(x2) # load 0xdca029484dc9e32d from memory into f16
li x3, 0x8f494274d264896a # load x3 with value 0x8f494274d264896a
sw x3, 0(x2) # store 0x8f494274d264896a in memory
flw f29, 0(x2) # load 0x8f494274d264896a from memory into f29
fadd.s f16, f16, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x1eafd391806f5f4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa9077b8c1aa89f2e # load x3 with value 0xa9077b8c1aa89f2e
sw x3, 0(x2) # store 0xa9077b8c1aa89f2e in memory
flw f17, 0(x2) # load 0xa9077b8c1aa89f2e from memory into f17
li x3, 0x27c5f575f4217996 # load x3 with value 0x27c5f575f4217996
sw x3, 0(x2) # store 0x27c5f575f4217996 in memory
flw f19, 0(x2) # load 0x27c5f575f4217996 from memory into f19
fadd.s f17, f17, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x8459ca421df62db6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcdf8b902e763676b # load x3 with value 0xcdf8b902e763676b
sw x3, 0(x2) # store 0xcdf8b902e763676b in memory
flw f18, 0(x2) # load 0xcdf8b902e763676b from memory into f18
li x3, 0x47de5e72b2c93da0 # load x3 with value 0x47de5e72b2c93da0
sw x3, 0(x2) # store 0x47de5e72b2c93da0 in memory
flw f4, 0(x2) # load 0x47de5e72b2c93da0 from memory into f4
fadd.s f18, f18, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xe345d60c2adbdf33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd9bce39455f86aa6 # load x3 with value 0xd9bce39455f86aa6
sw x3, 0(x2) # store 0xd9bce39455f86aa6 in memory
flw f19, 0(x2) # load 0xd9bce39455f86aa6 from memory into f19
li x3, 0xd57e67d22cef6ce # load x3 with value 0xd57e67d22cef6ce
sw x3, 0(x2) # store 0xd57e67d22cef6ce in memory
flw f26, 0(x2) # load 0xd57e67d22cef6ce from memory into f26
fadd.s f19, f19, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0xce9655cef6614a9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7dac648e422287e # load x3 with value 0xd7dac648e422287e
sw x3, 0(x2) # store 0xd7dac648e422287e in memory
flw f20, 0(x2) # load 0xd7dac648e422287e from memory into f20
li x3, 0x3a448adfcedeab4f # load x3 with value 0x3a448adfcedeab4f
sw x3, 0(x2) # store 0x3a448adfcedeab4f in memory
flw f10, 0(x2) # load 0x3a448adfcedeab4f from memory into f10
fadd.s f20, f20, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xa7c1ed63e5c3683a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa9c8f7cdf24403fa # load x3 with value 0xa9c8f7cdf24403fa
sw x3, 0(x2) # store 0xa9c8f7cdf24403fa in memory
flw f21, 0(x2) # load 0xa9c8f7cdf24403fa from memory into f21
li x3, 0x2a7a5f7aacb5b71b # load x3 with value 0x2a7a5f7aacb5b71b
sw x3, 0(x2) # store 0x2a7a5f7aacb5b71b in memory
flw f19, 0(x2) # load 0x2a7a5f7aacb5b71b from memory into f19
fadd.s f21, f21, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xc9f46da0272a2c26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b5ad3eba9339f1d # load x3 with value 0x4b5ad3eba9339f1d
sw x3, 0(x2) # store 0x4b5ad3eba9339f1d in memory
flw f22, 0(x2) # load 0x4b5ad3eba9339f1d from memory into f22
li x3, 0x5881e194d358d812 # load x3 with value 0x5881e194d358d812
sw x3, 0(x2) # store 0x5881e194d358d812 in memory
flw f31, 0(x2) # load 0x5881e194d358d812 from memory into f31
fadd.s f22, f22, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xc999e113be651191 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68072872137d9554 # load x3 with value 0x68072872137d9554
sw x3, 0(x2) # store 0x68072872137d9554 in memory
flw f23, 0(x2) # load 0x68072872137d9554 from memory into f23
li x3, 0xc98a63768d3dd1b6 # load x3 with value 0xc98a63768d3dd1b6
sw x3, 0(x2) # store 0xc98a63768d3dd1b6 in memory
flw f5, 0(x2) # load 0xc98a63768d3dd1b6 from memory into f5
fadd.s f23, f23, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x826f0086a3f20d87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe35a288fba558ef7 # load x3 with value 0xe35a288fba558ef7
sw x3, 0(x2) # store 0xe35a288fba558ef7 in memory
flw f24, 0(x2) # load 0xe35a288fba558ef7 from memory into f24
li x3, 0x55a6f3ab4f3b609 # load x3 with value 0x55a6f3ab4f3b609
sw x3, 0(x2) # store 0x55a6f3ab4f3b609 in memory
flw f25, 0(x2) # load 0x55a6f3ab4f3b609 from memory into f25
fadd.s f24, f24, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x53ec39f1a4ee530e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x761d6fdc822f2b2a # load x3 with value 0x761d6fdc822f2b2a
sw x3, 0(x2) # store 0x761d6fdc822f2b2a in memory
flw f25, 0(x2) # load 0x761d6fdc822f2b2a from memory into f25
li x3, 0xc08fa1dcddd5c556 # load x3 with value 0xc08fa1dcddd5c556
sw x3, 0(x2) # store 0xc08fa1dcddd5c556 in memory
flw f8, 0(x2) # load 0xc08fa1dcddd5c556 from memory into f8
fadd.s f25, f25, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x91fbbabce4915169 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3984c53769c8a47 # load x3 with value 0xc3984c53769c8a47
sw x3, 0(x2) # store 0xc3984c53769c8a47 in memory
flw f26, 0(x2) # load 0xc3984c53769c8a47 from memory into f26
li x3, 0x3df372801e4894e5 # load x3 with value 0x3df372801e4894e5
sw x3, 0(x2) # store 0x3df372801e4894e5 in memory
flw f31, 0(x2) # load 0x3df372801e4894e5 from memory into f31
fadd.s f26, f26, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x3129e51cf073a068 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf236cf64e4a846bf # load x3 with value 0xf236cf64e4a846bf
sw x3, 0(x2) # store 0xf236cf64e4a846bf in memory
flw f27, 0(x2) # load 0xf236cf64e4a846bf from memory into f27
li x3, 0xd899f981dec67779 # load x3 with value 0xd899f981dec67779
sw x3, 0(x2) # store 0xd899f981dec67779 in memory
flw f9, 0(x2) # load 0xd899f981dec67779 from memory into f9
fadd.s f27, f27, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x7e8b383b0a2f8e7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa31ea3658c691728 # load x3 with value 0xa31ea3658c691728
sw x3, 0(x2) # store 0xa31ea3658c691728 in memory
flw f28, 0(x2) # load 0xa31ea3658c691728 from memory into f28
li x3, 0x796f45ee89d855ad # load x3 with value 0x796f45ee89d855ad
sw x3, 0(x2) # store 0x796f45ee89d855ad in memory
flw f4, 0(x2) # load 0x796f45ee89d855ad from memory into f4
fadd.s f28, f28, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x017aff0ef94184e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ece76e14088c7a1 # load x3 with value 0x5ece76e14088c7a1
sw x3, 0(x2) # store 0x5ece76e14088c7a1 in memory
flw f29, 0(x2) # load 0x5ece76e14088c7a1 from memory into f29
li x3, 0xf7f2a4d1cd2977e9 # load x3 with value 0xf7f2a4d1cd2977e9
sw x3, 0(x2) # store 0xf7f2a4d1cd2977e9 in memory
flw f20, 0(x2) # load 0xf7f2a4d1cd2977e9 from memory into f20
fadd.s f29, f29, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x4f0a8262f2ccbf46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0d1bca4176d476e # load x3 with value 0xc0d1bca4176d476e
sw x3, 0(x2) # store 0xc0d1bca4176d476e in memory
flw f30, 0(x2) # load 0xc0d1bca4176d476e from memory into f30
li x3, 0xa0598df81b060273 # load x3 with value 0xa0598df81b060273
sw x3, 0(x2) # store 0xa0598df81b060273 in memory
flw f4, 0(x2) # load 0xa0598df81b060273 from memory into f4
fadd.s f30, f30, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x0eaa03ed8ef67c02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3549516409c37a2b # load x3 with value 0x3549516409c37a2b
sw x3, 0(x2) # store 0x3549516409c37a2b in memory
flw f31, 0(x2) # load 0x3549516409c37a2b from memory into f31
li x3, 0x3cf370ace7124282 # load x3 with value 0x3cf370ace7124282
sw x3, 0(x2) # store 0x3cf370ace7124282 in memory
flw f5, 0(x2) # load 0x3cf370ace7124282 from memory into f5
fadd.s f31, f31, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x0ce9def33c9d3fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8172c9f9c300580 # load x3 with value 0xb8172c9f9c300580
sw x3, 0(x2) # store 0xb8172c9f9c300580 in memory
flw f21, 0(x2) # load 0xb8172c9f9c300580 from memory into f21
li x3, 0xee80ff878d9f23f7 # load x3 with value 0xee80ff878d9f23f7
sw x3, 0(x2) # store 0xee80ff878d9f23f7 in memory
flw f0, 0(x2) # load 0xee80ff878d9f23f7 from memory into f0
fadd.s f0, f21, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0xe1cea488e200f85e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c801473f308389a # load x3 with value 0x8c801473f308389a
sw x3, 0(x2) # store 0x8c801473f308389a in memory
flw f29, 0(x2) # load 0x8c801473f308389a from memory into f29
li x3, 0x15f193c56f0b9e3c # load x3 with value 0x15f193c56f0b9e3c
sw x3, 0(x2) # store 0x15f193c56f0b9e3c in memory
flw f1, 0(x2) # load 0x15f193c56f0b9e3c from memory into f1
fadd.s f1, f29, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x3af750e143cf2446 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1271bb2765860888 # load x3 with value 0x1271bb2765860888
sw x3, 0(x2) # store 0x1271bb2765860888 in memory
flw f14, 0(x2) # load 0x1271bb2765860888 from memory into f14
li x3, 0x945601fe654df1e8 # load x3 with value 0x945601fe654df1e8
sw x3, 0(x2) # store 0x945601fe654df1e8 in memory
flw f2, 0(x2) # load 0x945601fe654df1e8 from memory into f2
fadd.s f2, f14, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x7b6d36a987339d27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ceee3ade1632723 # load x3 with value 0x1ceee3ade1632723
sw x3, 0(x2) # store 0x1ceee3ade1632723 in memory
flw f22, 0(x2) # load 0x1ceee3ade1632723 from memory into f22
li x3, 0x3e0c16cb78764901 # load x3 with value 0x3e0c16cb78764901
sw x3, 0(x2) # store 0x3e0c16cb78764901 in memory
flw f3, 0(x2) # load 0x3e0c16cb78764901 from memory into f3
fadd.s f3, f22, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0xde6b691fff9d35df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3bd79d91cd15a904 # load x3 with value 0x3bd79d91cd15a904
sw x3, 0(x2) # store 0x3bd79d91cd15a904 in memory
flw f1, 0(x2) # load 0x3bd79d91cd15a904 from memory into f1
li x3, 0xe6c02a9472f36c0 # load x3 with value 0xe6c02a9472f36c0
sw x3, 0(x2) # store 0xe6c02a9472f36c0 in memory
flw f4, 0(x2) # load 0xe6c02a9472f36c0 from memory into f4
fadd.s f4, f1, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x25e4cec054b86533 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca3c40e7e912b3ad # load x3 with value 0xca3c40e7e912b3ad
sw x3, 0(x2) # store 0xca3c40e7e912b3ad in memory
flw f29, 0(x2) # load 0xca3c40e7e912b3ad from memory into f29
li x3, 0xabb3f1bad08ff275 # load x3 with value 0xabb3f1bad08ff275
sw x3, 0(x2) # store 0xabb3f1bad08ff275 in memory
flw f5, 0(x2) # load 0xabb3f1bad08ff275 from memory into f5
fadd.s f5, f29, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0xb0c3fec3f457e1c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f4802b9e961895 # load x3 with value 0x8f4802b9e961895
sw x3, 0(x2) # store 0x8f4802b9e961895 in memory
flw f15, 0(x2) # load 0x8f4802b9e961895 from memory into f15
li x3, 0xa5c82047a349fddb # load x3 with value 0xa5c82047a349fddb
sw x3, 0(x2) # store 0xa5c82047a349fddb in memory
flw f6, 0(x2) # load 0xa5c82047a349fddb from memory into f6
fadd.s f6, f15, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x080cc93fb68e77ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c486e69647daa5d # load x3 with value 0x8c486e69647daa5d
sw x3, 0(x2) # store 0x8c486e69647daa5d in memory
flw f22, 0(x2) # load 0x8c486e69647daa5d from memory into f22
li x3, 0x4ad1e11a01ae5fd0 # load x3 with value 0x4ad1e11a01ae5fd0
sw x3, 0(x2) # store 0x4ad1e11a01ae5fd0 in memory
flw f7, 0(x2) # load 0x4ad1e11a01ae5fd0 from memory into f7
fadd.s f7, f22, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x8819d3edf0b290b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48315b62b98e45ec # load x3 with value 0x48315b62b98e45ec
sw x3, 0(x2) # store 0x48315b62b98e45ec in memory
flw f11, 0(x2) # load 0x48315b62b98e45ec from memory into f11
li x3, 0x87e1759b400a832 # load x3 with value 0x87e1759b400a832
sw x3, 0(x2) # store 0x87e1759b400a832 in memory
flw f8, 0(x2) # load 0x87e1759b400a832 from memory into f8
fadd.s f8, f11, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x0e21836b16debc0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d68e57ef9497763 # load x3 with value 0x8d68e57ef9497763
sw x3, 0(x2) # store 0x8d68e57ef9497763 in memory
flw f6, 0(x2) # load 0x8d68e57ef9497763 from memory into f6
li x3, 0xccc62f08c68ce280 # load x3 with value 0xccc62f08c68ce280
sw x3, 0(x2) # store 0xccc62f08c68ce280 in memory
flw f9, 0(x2) # load 0xccc62f08c68ce280 from memory into f9
fadd.s f9, f6, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x5fcc03757fc72957 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdcf84a2def592bf0 # load x3 with value 0xdcf84a2def592bf0
sw x3, 0(x2) # store 0xdcf84a2def592bf0 in memory
flw f11, 0(x2) # load 0xdcf84a2def592bf0 from memory into f11
li x3, 0xb8dc0fc884f58a3f # load x3 with value 0xb8dc0fc884f58a3f
sw x3, 0(x2) # store 0xb8dc0fc884f58a3f in memory
flw f10, 0(x2) # load 0xb8dc0fc884f58a3f from memory into f10
fadd.s f10, f11, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0xfbd57c1401297a63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb98f1691865b9ec # load x3 with value 0xdb98f1691865b9ec
sw x3, 0(x2) # store 0xdb98f1691865b9ec in memory
flw f29, 0(x2) # load 0xdb98f1691865b9ec from memory into f29
li x3, 0xe7292d7e04739a63 # load x3 with value 0xe7292d7e04739a63
sw x3, 0(x2) # store 0xe7292d7e04739a63 in memory
flw f11, 0(x2) # load 0xe7292d7e04739a63 from memory into f11
fadd.s f11, f29, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x52c7d0212382f4eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a904d677c19041f # load x3 with value 0x9a904d677c19041f
sw x3, 0(x2) # store 0x9a904d677c19041f in memory
flw f19, 0(x2) # load 0x9a904d677c19041f from memory into f19
li x3, 0xf0441b447c0aee38 # load x3 with value 0xf0441b447c0aee38
sw x3, 0(x2) # store 0xf0441b447c0aee38 in memory
flw f12, 0(x2) # load 0xf0441b447c0aee38 from memory into f12
fadd.s f12, f19, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x7e1c18e07886efec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x328998b9c7f85412 # load x3 with value 0x328998b9c7f85412
sw x3, 0(x2) # store 0x328998b9c7f85412 in memory
flw f10, 0(x2) # load 0x328998b9c7f85412 from memory into f10
li x3, 0xe723917deb7e8620 # load x3 with value 0xe723917deb7e8620
sw x3, 0(x2) # store 0xe723917deb7e8620 in memory
flw f13, 0(x2) # load 0xe723917deb7e8620 from memory into f13
fadd.s f13, f10, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xecfdf656746f90db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf198b42f28cf9f16 # load x3 with value 0xf198b42f28cf9f16
sw x3, 0(x2) # store 0xf198b42f28cf9f16 in memory
flw f5, 0(x2) # load 0xf198b42f28cf9f16 from memory into f5
li x3, 0xb76b2f8b876748b3 # load x3 with value 0xb76b2f8b876748b3
sw x3, 0(x2) # store 0xb76b2f8b876748b3 in memory
flw f14, 0(x2) # load 0xb76b2f8b876748b3 from memory into f14
fadd.s f14, f5, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0xa2e92ddcdc601143 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd24a1ce23cd87919 # load x3 with value 0xd24a1ce23cd87919
sw x3, 0(x2) # store 0xd24a1ce23cd87919 in memory
flw f13, 0(x2) # load 0xd24a1ce23cd87919 from memory into f13
li x3, 0xbdcc2e0752561299 # load x3 with value 0xbdcc2e0752561299
sw x3, 0(x2) # store 0xbdcc2e0752561299 in memory
flw f15, 0(x2) # load 0xbdcc2e0752561299 from memory into f15
fadd.s f15, f13, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xf8faf2915033a5f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7eb92a379fbb920f # load x3 with value 0x7eb92a379fbb920f
sw x3, 0(x2) # store 0x7eb92a379fbb920f in memory
flw f27, 0(x2) # load 0x7eb92a379fbb920f from memory into f27
li x3, 0x3f166a0d31d59e65 # load x3 with value 0x3f166a0d31d59e65
sw x3, 0(x2) # store 0x3f166a0d31d59e65 in memory
flw f16, 0(x2) # load 0x3f166a0d31d59e65 from memory into f16
fadd.s f16, f27, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x0e83bf259ad16625 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde3cede0db4130d4 # load x3 with value 0xde3cede0db4130d4
sw x3, 0(x2) # store 0xde3cede0db4130d4 in memory
flw f7, 0(x2) # load 0xde3cede0db4130d4 from memory into f7
li x3, 0x6a4f4d0fa10b37d8 # load x3 with value 0x6a4f4d0fa10b37d8
sw x3, 0(x2) # store 0x6a4f4d0fa10b37d8 in memory
flw f17, 0(x2) # load 0x6a4f4d0fa10b37d8 from memory into f17
fadd.s f17, f7, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x2118c1cca67c3066 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc46b550e62ddfae6 # load x3 with value 0xc46b550e62ddfae6
sw x3, 0(x2) # store 0xc46b550e62ddfae6 in memory
flw f15, 0(x2) # load 0xc46b550e62ddfae6 from memory into f15
li x3, 0x3e6915af7ebe3dba # load x3 with value 0x3e6915af7ebe3dba
sw x3, 0(x2) # store 0x3e6915af7ebe3dba in memory
flw f18, 0(x2) # load 0x3e6915af7ebe3dba from memory into f18
fadd.s f18, f15, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xa82aafe1075f5c29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb1d056363ff0b16 # load x3 with value 0xbb1d056363ff0b16
sw x3, 0(x2) # store 0xbb1d056363ff0b16 in memory
flw f29, 0(x2) # load 0xbb1d056363ff0b16 from memory into f29
li x3, 0x2435c20ea74f25e7 # load x3 with value 0x2435c20ea74f25e7
sw x3, 0(x2) # store 0x2435c20ea74f25e7 in memory
flw f19, 0(x2) # load 0x2435c20ea74f25e7 from memory into f19
fadd.s f19, f29, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x0ae42137884ca33d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed140c45e07c0e20 # load x3 with value 0xed140c45e07c0e20
sw x3, 0(x2) # store 0xed140c45e07c0e20 in memory
flw f1, 0(x2) # load 0xed140c45e07c0e20 from memory into f1
li x3, 0xabef99dbafc2bd95 # load x3 with value 0xabef99dbafc2bd95
sw x3, 0(x2) # store 0xabef99dbafc2bd95 in memory
flw f20, 0(x2) # load 0xabef99dbafc2bd95 from memory into f20
fadd.s f20, f1, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x99a6844bbb359bf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26ae75e0f354f0ac # load x3 with value 0x26ae75e0f354f0ac
sw x3, 0(x2) # store 0x26ae75e0f354f0ac in memory
flw f15, 0(x2) # load 0x26ae75e0f354f0ac from memory into f15
li x3, 0xd123dadc56103d12 # load x3 with value 0xd123dadc56103d12
sw x3, 0(x2) # store 0xd123dadc56103d12 in memory
flw f21, 0(x2) # load 0xd123dadc56103d12 from memory into f21
fadd.s f21, f15, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0xeb7955e01a929ebe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab5b39e50dc87d03 # load x3 with value 0xab5b39e50dc87d03
sw x3, 0(x2) # store 0xab5b39e50dc87d03 in memory
flw f11, 0(x2) # load 0xab5b39e50dc87d03 from memory into f11
li x3, 0x9b8384db5ceac8bb # load x3 with value 0x9b8384db5ceac8bb
sw x3, 0(x2) # store 0x9b8384db5ceac8bb in memory
flw f22, 0(x2) # load 0x9b8384db5ceac8bb from memory into f22
fadd.s f22, f11, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0xf12c4f17500d2abe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf114cdd1b79fce1 # load x3 with value 0xf114cdd1b79fce1
sw x3, 0(x2) # store 0xf114cdd1b79fce1 in memory
flw f29, 0(x2) # load 0xf114cdd1b79fce1 from memory into f29
li x3, 0x702204179ab0adb1 # load x3 with value 0x702204179ab0adb1
sw x3, 0(x2) # store 0x702204179ab0adb1 in memory
flw f23, 0(x2) # load 0x702204179ab0adb1 from memory into f23
fadd.s f23, f29, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x47c27df186db44a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa235d679ed93cbff # load x3 with value 0xa235d679ed93cbff
sw x3, 0(x2) # store 0xa235d679ed93cbff in memory
flw f11, 0(x2) # load 0xa235d679ed93cbff from memory into f11
li x3, 0x37b8086c5dca4353 # load x3 with value 0x37b8086c5dca4353
sw x3, 0(x2) # store 0x37b8086c5dca4353 in memory
flw f24, 0(x2) # load 0x37b8086c5dca4353 from memory into f24
fadd.s f24, f11, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0xbf23bb2da269f4b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeda68ea1ad076049 # load x3 with value 0xeda68ea1ad076049
sw x3, 0(x2) # store 0xeda68ea1ad076049 in memory
flw f27, 0(x2) # load 0xeda68ea1ad076049 from memory into f27
li x3, 0xe0fe9224c3ef8795 # load x3 with value 0xe0fe9224c3ef8795
sw x3, 0(x2) # store 0xe0fe9224c3ef8795 in memory
flw f25, 0(x2) # load 0xe0fe9224c3ef8795 from memory into f25
fadd.s f25, f27, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x413e9b8d594dc082 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2183592d89c93b67 # load x3 with value 0x2183592d89c93b67
sw x3, 0(x2) # store 0x2183592d89c93b67 in memory
flw f21, 0(x2) # load 0x2183592d89c93b67 from memory into f21
li x3, 0x57129c1e169f464b # load x3 with value 0x57129c1e169f464b
sw x3, 0(x2) # store 0x57129c1e169f464b in memory
flw f26, 0(x2) # load 0x57129c1e169f464b from memory into f26
fadd.s f26, f21, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xcea9ec71be40144e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x182e5f4a5e1c6e24 # load x3 with value 0x182e5f4a5e1c6e24
sw x3, 0(x2) # store 0x182e5f4a5e1c6e24 in memory
flw f30, 0(x2) # load 0x182e5f4a5e1c6e24 from memory into f30
li x3, 0xd461cb14f7f89109 # load x3 with value 0xd461cb14f7f89109
sw x3, 0(x2) # store 0xd461cb14f7f89109 in memory
flw f27, 0(x2) # load 0xd461cb14f7f89109 from memory into f27
fadd.s f27, f30, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0xb12aea4032e4b901 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6782ec7a911114a1 # load x3 with value 0x6782ec7a911114a1
sw x3, 0(x2) # store 0x6782ec7a911114a1 in memory
flw f30, 0(x2) # load 0x6782ec7a911114a1 from memory into f30
li x3, 0x69b04aa9aa578c29 # load x3 with value 0x69b04aa9aa578c29
sw x3, 0(x2) # store 0x69b04aa9aa578c29 in memory
flw f28, 0(x2) # load 0x69b04aa9aa578c29 from memory into f28
fadd.s f28, f30, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x7715e694f3694ff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6996603fd23bb6ed # load x3 with value 0x6996603fd23bb6ed
sw x3, 0(x2) # store 0x6996603fd23bb6ed in memory
flw f29, 0(x2) # load 0x6996603fd23bb6ed from memory into f29
li x3, 0x7be60f42451c9d07 # load x3 with value 0x7be60f42451c9d07
sw x3, 0(x2) # store 0x7be60f42451c9d07 in memory
flw f29, 0(x2) # load 0x7be60f42451c9d07 from memory into f29
fadd.s f29, f29, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0xeca41c482d474819 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe3adf5548df00bab # load x3 with value 0xe3adf5548df00bab
sw x3, 0(x2) # store 0xe3adf5548df00bab in memory
flw f3, 0(x2) # load 0xe3adf5548df00bab from memory into f3
li x3, 0x8a8e5f0b06462ed6 # load x3 with value 0x8a8e5f0b06462ed6
sw x3, 0(x2) # store 0x8a8e5f0b06462ed6 in memory
flw f30, 0(x2) # load 0x8a8e5f0b06462ed6 from memory into f30
fadd.s f30, f3, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xb0d6c9cb7a28f495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6c04f73dac11d9 # load x3 with value 0xe6c04f73dac11d9
sw x3, 0(x2) # store 0xe6c04f73dac11d9 in memory
flw f4, 0(x2) # load 0xe6c04f73dac11d9 from memory into f4
li x3, 0x1024848a2845c463 # load x3 with value 0x1024848a2845c463
sw x3, 0(x2) # store 0x1024848a2845c463 in memory
flw f31, 0(x2) # load 0x1024848a2845c463 from memory into f31
fadd.s f31, f4, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x22, 0x01b198e1ceacfdc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x252837c6a444a843 # load x3 with value 0x252837c6a444a843
sw x3, 0(x2) # store 0x252837c6a444a843 in memory
flw f12, 0(x2) # load 0x252837c6a444a843 from memory into f12
fadd.s f22, f11, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x30, 0x7b209ad9c2462103 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
li x3, 0x2a4965dcdca7041a # load x3 with value 0x2a4965dcdca7041a
sw x3, 0(x2) # store 0x2a4965dcdca7041a in memory
flw f1, 0(x2) # load 0x2a4965dcdca7041a from memory into f1
fadd.s f30, f26, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x2, 0x517304c205774014 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
li x3, 0x84c8299b3f9d979d # load x3 with value 0x84c8299b3f9d979d
sw x3, 0(x2) # store 0x84c8299b3f9d979d in memory
flw f6, 0(x2) # load 0x84c8299b3f9d979d from memory into f6
fadd.s f2, f9, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x30, 0x18e78d1c06ba5316 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
li x3, 0xfa650ed9410d3861 # load x3 with value 0xfa650ed9410d3861
sw x3, 0(x2) # store 0xfa650ed9410d3861 in memory
flw f4, 0(x2) # load 0xfa650ed9410d3861 from memory into f4
fadd.s f30, f6, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x10, 0x967f3920a826d763 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
li x3, 0x5c7e56b194691471 # load x3 with value 0x5c7e56b194691471
sw x3, 0(x2) # store 0x5c7e56b194691471 in memory
flw f11, 0(x2) # load 0x5c7e56b194691471 from memory into f11
fadd.s f10, f24, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x9, 0x25a3e40204695480 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
li x3, 0xa8485fb2241a6e98 # load x3 with value 0xa8485fb2241a6e98
sw x3, 0(x2) # store 0xa8485fb2241a6e98 in memory
flw f24, 0(x2) # load 0xa8485fb2241a6e98 from memory into f24
fadd.s f9, f15, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x29, 0xd1fda84d25169c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
li x3, 0x4142c6a727251025 # load x3 with value 0x4142c6a727251025
sw x3, 0(x2) # store 0x4142c6a727251025 in memory
flw f3, 0(x2) # load 0x4142c6a727251025 from memory into f3
fadd.s f29, f14, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x5, 0x2991afffbd18186c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
li x3, 0x4e0a16803e5a6510 # load x3 with value 0x4e0a16803e5a6510
sw x3, 0(x2) # store 0x4e0a16803e5a6510 in memory
flw f29, 0(x2) # load 0x4e0a16803e5a6510 from memory into f29
fadd.s f5, f30, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x28, 0x60f84ddbfd5a6e6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
li x3, 0xc64d29675dc0f294 # load x3 with value 0xc64d29675dc0f294
sw x3, 0(x2) # store 0xc64d29675dc0f294 in memory
flw f1, 0(x2) # load 0xc64d29675dc0f294 from memory into f1
fadd.s f28, f23, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x22, 0x1e790c53eeb3ef15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
li x3, 0xa2b2deabd4c97cdc # load x3 with value 0xa2b2deabd4c97cdc
sw x3, 0(x2) # store 0xa2b2deabd4c97cdc in memory
flw f25, 0(x2) # load 0xa2b2deabd4c97cdc from memory into f25
fadd.s f22, f27, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x26, 0x0dcea766d2498e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
li x3, 0xe1b9ecc808df629d # load x3 with value 0xe1b9ecc808df629d
sw x3, 0(x2) # store 0xe1b9ecc808df629d in memory
flw f16, 0(x2) # load 0xe1b9ecc808df629d from memory into f16
fadd.s f26, f10, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x14, 0xaf1721fa458147b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
li x3, 0x34550a5ab2563129 # load x3 with value 0x34550a5ab2563129
sw x3, 0(x2) # store 0x34550a5ab2563129 in memory
flw f17, 0(x2) # load 0x34550a5ab2563129 from memory into f17
fadd.s f14, f16, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x17, 0xaf30b4518d1fdd01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
li x3, 0x90991f5c2b68c560 # load x3 with value 0x90991f5c2b68c560
sw x3, 0(x2) # store 0x90991f5c2b68c560 in memory
flw f11, 0(x2) # load 0x90991f5c2b68c560 from memory into f11
fadd.s f17, f29, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x21, 0x9335d9caf371ca2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
li x3, 0x126b161a665c9a7a # load x3 with value 0x126b161a665c9a7a
sw x3, 0(x2) # store 0x126b161a665c9a7a in memory
flw f22, 0(x2) # load 0x126b161a665c9a7a from memory into f22
fadd.s f21, f3, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x17, 0x8ff079447a0ddd8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
li x3, 0xcf07aa386357319b # load x3 with value 0xcf07aa386357319b
sw x3, 0(x2) # store 0xcf07aa386357319b in memory
flw f6, 0(x2) # load 0xcf07aa386357319b from memory into f6
fadd.s f17, f28, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x23, 0x3e3f467c5d279352 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
li x3, 0x7a1746dfb49c8592 # load x3 with value 0x7a1746dfb49c8592
sw x3, 0(x2) # store 0x7a1746dfb49c8592 in memory
flw f17, 0(x2) # load 0x7a1746dfb49c8592 from memory into f17
fadd.s f23, f19, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x2, 0x6a0f8b82bbb24e24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0xdf7f3e546e47d373 # load x3 with value 0xdf7f3e546e47d373
sw x3, 0(x2) # store 0xdf7f3e546e47d373 in memory
flw f30, 0(x2) # load 0xdf7f3e546e47d373 from memory into f30
fadd.s f2, f11, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x3, 0xd90a4cd9b92ea362 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
li x3, 0x8dcd2339072b4a86 # load x3 with value 0x8dcd2339072b4a86
sw x3, 0(x2) # store 0x8dcd2339072b4a86 in memory
flw f14, 0(x2) # load 0x8dcd2339072b4a86 from memory into f14
fadd.s f3, f7, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x14, 0x1bd0dbfdbc5b4120 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
li x3, 0xc99d96fca1c7ec78 # load x3 with value 0xc99d96fca1c7ec78
sw x3, 0(x2) # store 0xc99d96fca1c7ec78 in memory
flw f13, 0(x2) # load 0xc99d96fca1c7ec78 from memory into f13
fadd.s f14, f10, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x13, 0x27d8a6e260848383 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
li x3, 0x9a4e2c05ac706386 # load x3 with value 0x9a4e2c05ac706386
sw x3, 0(x2) # store 0x9a4e2c05ac706386 in memory
flw f7, 0(x2) # load 0x9a4e2c05ac706386 from memory into f7
fadd.s f13, f1, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x14, 0x3db37f697aa32506 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
li x3, 0xb7b6289b1a1d7b3b # load x3 with value 0xb7b6289b1a1d7b3b
sw x3, 0(x2) # store 0xb7b6289b1a1d7b3b in memory
flw f22, 0(x2) # load 0xb7b6289b1a1d7b3b from memory into f22
fadd.s f14, f11, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x18, 0xb3beff54ec43ce88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
li x3, 0xf5921f266b7c5292 # load x3 with value 0xf5921f266b7c5292
sw x3, 0(x2) # store 0xf5921f266b7c5292 in memory
flw f23, 0(x2) # load 0xf5921f266b7c5292 from memory into f23
fadd.s f18, f10, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x18, 0xebc4af7d0b5e4d70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
li x3, 0x3d74eedf2d54af5c # load x3 with value 0x3d74eedf2d54af5c
sw x3, 0(x2) # store 0x3d74eedf2d54af5c in memory
flw f17, 0(x2) # load 0x3d74eedf2d54af5c from memory into f17
fadd.s f18, f20, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x25, 0x72777c9caa4af705 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
li x3, 0xd48bc82f23622d52 # load x3 with value 0xd48bc82f23622d52
sw x3, 0(x2) # store 0xd48bc82f23622d52 in memory
flw f22, 0(x2) # load 0xd48bc82f23622d52 from memory into f22
fadd.s f25, f10, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x3, 0x10630b3f0a181a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
li x3, 0xf3b156d770b68f80 # load x3 with value 0xf3b156d770b68f80
sw x3, 0(x2) # store 0xf3b156d770b68f80 in memory
flw f21, 0(x2) # load 0xf3b156d770b68f80 from memory into f21
fadd.s f3, f2, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x23, 0x166edb24b5439234 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
li x3, 0xea32892f704527f1 # load x3 with value 0xea32892f704527f1
sw x3, 0(x2) # store 0xea32892f704527f1 in memory
flw f19, 0(x2) # load 0xea32892f704527f1 from memory into f19
fadd.s f23, f1, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x9, 0x8a169259bc411f6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9006321f402f3607 # load x3 with value 0x9006321f402f3607
sw x3, 0(x2) # store 0x9006321f402f3607 in memory
flw f4, 0(x2) # load 0x9006321f402f3607 from memory into f4
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
fadd.s f9, f4, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x3, 0x29e5d375df949106 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f2cf74a803b10fe # load x3 with value 0x9f2cf74a803b10fe
sw x3, 0(x2) # store 0x9f2cf74a803b10fe in memory
flw f30, 0(x2) # load 0x9f2cf74a803b10fe from memory into f30
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fadd.s f3, f30, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x23, 0x088514f9b0a5f859 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x909d6a5195a0343c # load x3 with value 0x909d6a5195a0343c
sw x3, 0(x2) # store 0x909d6a5195a0343c in memory
flw f12, 0(x2) # load 0x909d6a5195a0343c from memory into f12
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fadd.s f23, f12, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x9, 0x100c64bbb674fb0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18db88151729cdf # load x3 with value 0x18db88151729cdf
sw x3, 0(x2) # store 0x18db88151729cdf in memory
flw f10, 0(x2) # load 0x18db88151729cdf from memory into f10
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
fadd.s f9, f10, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x24, 0x10e6564e38467054 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca6638af1d011483 # load x3 with value 0xca6638af1d011483
sw x3, 0(x2) # store 0xca6638af1d011483 in memory
flw f19, 0(x2) # load 0xca6638af1d011483 from memory into f19
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
fadd.s f24, f19, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x3, 0xf793e0ac33ea0c90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57500333e763b154 # load x3 with value 0x57500333e763b154
sw x3, 0(x2) # store 0x57500333e763b154 in memory
flw f21, 0(x2) # load 0x57500333e763b154 from memory into f21
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
fadd.s f3, f21, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x15, 0x44ffba146b882cea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1bb03dc463074125 # load x3 with value 0x1bb03dc463074125
sw x3, 0(x2) # store 0x1bb03dc463074125 in memory
flw f12, 0(x2) # load 0x1bb03dc463074125 from memory into f12
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fadd.s f15, f12, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x27, 0x238a7628d56925b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a0bea47281d0048 # load x3 with value 0x4a0bea47281d0048
sw x3, 0(x2) # store 0x4a0bea47281d0048 in memory
flw f25, 0(x2) # load 0x4a0bea47281d0048 from memory into f25
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fadd.s f27, f25, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x2, 0xaebdf38970a6e392 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb38069959a86c2fb # load x3 with value 0xb38069959a86c2fb
sw x3, 0(x2) # store 0xb38069959a86c2fb in memory
flw f11, 0(x2) # load 0xb38069959a86c2fb from memory into f11
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
fadd.s f2, f11, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x25, 0x72b388e5b4fa9b94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b2d68cd9549843c # load x3 with value 0x3b2d68cd9549843c
sw x3, 0(x2) # store 0x3b2d68cd9549843c in memory
flw f27, 0(x2) # load 0x3b2d68cd9549843c from memory into f27
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fadd.s f25, f27, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x6, 0x0c5cd5b06496cebc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c6d5792f9336dfd # load x3 with value 0x2c6d5792f9336dfd
sw x3, 0(x2) # store 0x2c6d5792f9336dfd in memory
flw f12, 0(x2) # load 0x2c6d5792f9336dfd from memory into f12
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
fadd.s f6, f12, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x30, 0xaaec13b33264d77a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf568960ca2ae316 # load x3 with value 0xbf568960ca2ae316
sw x3, 0(x2) # store 0xbf568960ca2ae316 in memory
flw f31, 0(x2) # load 0xbf568960ca2ae316 from memory into f31
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fadd.s f30, f31, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x27, 0x3bbd66c11073e476 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38a76817316f3f62 # load x3 with value 0x38a76817316f3f62
sw x3, 0(x2) # store 0x38a76817316f3f62 in memory
flw f6, 0(x2) # load 0x38a76817316f3f62 from memory into f6
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fadd.s f27, f6, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x15, 0xfd6049e70f9968fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70919cd49b872a1f # load x3 with value 0x70919cd49b872a1f
sw x3, 0(x2) # store 0x70919cd49b872a1f in memory
flw f25, 0(x2) # load 0x70919cd49b872a1f from memory into f25
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
fadd.s f15, f25, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x2, 0x338364f6859347cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64b2b9774c090e42 # load x3 with value 0x64b2b9774c090e42
sw x3, 0(x2) # store 0x64b2b9774c090e42 in memory
flw f15, 0(x2) # load 0x64b2b9774c090e42 from memory into f15
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fadd.s f2, f15, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x24, 0x5fcfe1ae46168262 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2818725f4dcbd414 # load x3 with value 0x2818725f4dcbd414
sw x3, 0(x2) # store 0x2818725f4dcbd414 in memory
flw f3, 0(x2) # load 0x2818725f4dcbd414 from memory into f3
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fadd.s f24, f3, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x10, 0xf2e38647c4f176cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f31bad7eda14d4c # load x3 with value 0x2f31bad7eda14d4c
sw x3, 0(x2) # store 0x2f31bad7eda14d4c in memory
flw f27, 0(x2) # load 0x2f31bad7eda14d4c from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fadd.s f10, f27, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x4, 0xf7563bd4a32688a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76d6cc535115ddfb # load x3 with value 0x76d6cc535115ddfb
sw x3, 0(x2) # store 0x76d6cc535115ddfb in memory
flw f29, 0(x2) # load 0x76d6cc535115ddfb from memory into f29
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fadd.s f4, f29, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x16, 0x58f7d7ad63af9ccb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21ceb25a8073b381 # load x3 with value 0x21ceb25a8073b381
sw x3, 0(x2) # store 0x21ceb25a8073b381 in memory
flw f6, 0(x2) # load 0x21ceb25a8073b381 from memory into f6
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fadd.s f16, f6, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x7, 0xd1547d98dd291c0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff98cc939d05091 # load x3 with value 0xfff98cc939d05091
sw x3, 0(x2) # store 0xfff98cc939d05091 in memory
flw f25, 0(x2) # load 0xfff98cc939d05091 from memory into f25
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
fadd.s f7, f25, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x27, 0xedc523e8a44b09fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x30f5905029978f57 # load x3 with value 0x30f5905029978f57
sw x3, 0(x2) # store 0x30f5905029978f57 in memory
flw f31, 0(x2) # load 0x30f5905029978f57 from memory into f31
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fadd.s f27, f31, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x13, 0xf81b4b9c6858fd91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5f30af8b271d9e7 # load x3 with value 0xc5f30af8b271d9e7
sw x3, 0(x2) # store 0xc5f30af8b271d9e7 in memory
flw f5, 0(x2) # load 0xc5f30af8b271d9e7 from memory into f5
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fadd.s f13, f5, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x21, 0x6b1c3b3050a6168d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b9a200b241c1919 # load x3 with value 0x3b9a200b241c1919
sw x3, 0(x2) # store 0x3b9a200b241c1919 in memory
flw f17, 0(x2) # load 0x3b9a200b241c1919 from memory into f17
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
fadd.s f21, f17, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x2, 0x3e81cb68bfc544a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e3a43e8902504cb # load x3 with value 0x7e3a43e8902504cb
sw x3, 0(x2) # store 0x7e3a43e8902504cb in memory
flw f5, 0(x2) # load 0x7e3a43e8902504cb from memory into f5
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
fadd.s f2, f5, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x7, 0x2033d298ad848da7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x771f7343c4b0f943 # load x3 with value 0x771f7343c4b0f943
sw x3, 0(x2) # store 0x771f7343c4b0f943 in memory
flw f25, 0(x2) # load 0x771f7343c4b0f943 from memory into f25
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
fadd.s f7, f25, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x14, 0xddfaf8f8fc4020c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfd048fc568f478e # load x3 with value 0xdfd048fc568f478e
sw x3, 0(x2) # store 0xdfd048fc568f478e in memory
flw f25, 0(x2) # load 0xdfd048fc568f478e from memory into f25
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fadd.s f14, f25, f19 # perform operation

# Testcase cp_frm
li x3, 0x36ca8d06a8710f85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf8fadfe15851552a # load x3 with value 0xf8fadfe15851552a
sw x3, 0(x2) # store 0xf8fadfe15851552a in memory
flw f14, 0(x2) # load 0xf8fadfe15851552a from memory into f14
li x3, 0x8f0babcf208bfa5 # load x3 with value 0x8f0babcf208bfa5
sw x3, 0(x2) # store 0x8f0babcf208bfa5 in memory
flw f7, 0(x2) # load 0x8f0babcf208bfa5 from memory into f7
fadd.s f3, f14, f7, dyn # perform operation
fadd.s f3, f14, f7, rdn # perform operation
fadd.s f3, f14, f7, rmm # perform operation
fadd.s f3, f14, f7, rne # perform operation
fadd.s f3, f14, f7, rtz # perform operation
fadd.s f3, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x28, 0xf5a03062f4f4b41e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fadd.s f28, f6, f13, dyn # perform operation
fadd.s f28, f6, f13, rdn # perform operation
fadd.s f28, f6, f13, rmm # perform operation
fadd.s f28, f6, f13, rne # perform operation
fadd.s f28, f6, f13, rtz # perform operation
fadd.s f28, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
li x5, 0x1d7ed62e59cc46e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fadd.s f5, f13, f8, dyn # perform operation
fadd.s f5, f13, f8, rdn # perform operation
fadd.s f5, f13, f8, rmm # perform operation
fadd.s f5, f13, f8, rne # perform operation
fadd.s f5, f13, f8, rtz # perform operation
fadd.s f5, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
li x21, 0xaf072577e163b6b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fadd.s f21, f20, f3, dyn # perform operation
fadd.s f21, f20, f3, rdn # perform operation
fadd.s f21, f20, f3, rmm # perform operation
fadd.s f21, f20, f3, rne # perform operation
fadd.s f21, f20, f3, rtz # perform operation
fadd.s f21, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
li x11, 0x807f3d841159af34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
fadd.s f11, f12, f26, dyn # perform operation
fadd.s f11, f12, f26, rdn # perform operation
fadd.s f11, f12, f26, rmm # perform operation
fadd.s f11, f12, f26, rne # perform operation
fadd.s f11, f12, f26, rtz # perform operation
fadd.s f11, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
li x11, 0x89c6dd67e2b0967c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fadd.s f11, f3, f10, dyn # perform operation
fadd.s f11, f3, f10, rdn # perform operation
fadd.s f11, f3, f10, rmm # perform operation
fadd.s f11, f3, f10, rne # perform operation
fadd.s f11, f3, f10, rtz # perform operation
fadd.s f11, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
li x12, 0xc11e8534155b5538 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fadd.s f12, f7, f13, dyn # perform operation
fadd.s f12, f7, f13, rdn # perform operation
fadd.s f12, f7, f13, rmm # perform operation
fadd.s f12, f7, f13, rne # perform operation
fadd.s f12, f7, f13, rtz # perform operation
fadd.s f12, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
li x2, 0xee29a8b4286de44f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fadd.s f2, f16, f23, dyn # perform operation
fadd.s f2, f16, f23, rdn # perform operation
fadd.s f2, f16, f23, rmm # perform operation
fadd.s f2, f16, f23, rne # perform operation
fadd.s f2, f16, f23, rtz # perform operation
fadd.s f2, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
li x19, 0x44a70373185908c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fadd.s f19, f7, f14, dyn # perform operation
fadd.s f19, f7, f14, rdn # perform operation
fadd.s f19, f7, f14, rmm # perform operation
fadd.s f19, f7, f14, rne # perform operation
fadd.s f19, f7, f14, rtz # perform operation
fadd.s f19, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
li x9, 0x24f30124e14ef2ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fadd.s f9, f21, f5, dyn # perform operation
fadd.s f9, f21, f5, rdn # perform operation
fadd.s f9, f21, f5, rmm # perform operation
fadd.s f9, f21, f5, rne # perform operation
fadd.s f9, f21, f5, rtz # perform operation
fadd.s f9, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
li x24, 0x3f5b1405dbb21f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fadd.s f24, f22, f30, dyn # perform operation
fadd.s f24, f22, f30, rdn # perform operation
fadd.s f24, f22, f30, rmm # perform operation
fadd.s f24, f22, f30, rne # perform operation
fadd.s f24, f22, f30, rtz # perform operation
fadd.s f24, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
li x8, 0x01dca4d1471d6515 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fadd.s f8, f11, f5, dyn # perform operation
fadd.s f8, f11, f5, rdn # perform operation
fadd.s f8, f11, f5, rmm # perform operation
fadd.s f8, f11, f5, rne # perform operation
fadd.s f8, f11, f5, rtz # perform operation
fadd.s f8, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
li x20, 0xf2c98ae45defcddf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
fadd.s f20, f23, f7, dyn # perform operation
fadd.s f20, f23, f7, rdn # perform operation
fadd.s f20, f23, f7, rmm # perform operation
fadd.s f20, f23, f7, rne # perform operation
fadd.s f20, f23, f7, rtz # perform operation
fadd.s f20, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
li x27, 0xf76b7311966a4cb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fadd.s f27, f23, f12, dyn # perform operation
fadd.s f27, f23, f12, rdn # perform operation
fadd.s f27, f23, f12, rmm # perform operation
fadd.s f27, f23, f12, rne # perform operation
fadd.s f27, f23, f12, rtz # perform operation
fadd.s f27, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
li x7, 0xe76bfaeec23512fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f4, 0(x2) # load 0x00000000 from memory into f4
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fadd.s f7, f4, f15, dyn # perform operation
fadd.s f7, f4, f15, rdn # perform operation
fadd.s f7, f4, f15, rmm # perform operation
fadd.s f7, f4, f15, rne # perform operation
fadd.s f7, f4, f15, rtz # perform operation
fadd.s f7, f4, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f4, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f4, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f4, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f4, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
li x16, 0x857e549c42dd5e0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
fadd.s f16, f9, f19, dyn # perform operation
fadd.s f16, f9, f19, rdn # perform operation
fadd.s f16, f9, f19, rmm # perform operation
fadd.s f16, f9, f19, rne # perform operation
fadd.s f16, f9, f19, rtz # perform operation
fadd.s f16, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
li x25, 0x26f14274dbbd12b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fadd.s f25, f12, f29, dyn # perform operation
fadd.s f25, f12, f29, rdn # perform operation
fadd.s f25, f12, f29, rmm # perform operation
fadd.s f25, f12, f29, rne # perform operation
fadd.s f25, f12, f29, rtz # perform operation
fadd.s f25, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x26, 0x3b7dfb437a7906fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fadd.s f26, f5, f13, dyn # perform operation
fadd.s f26, f5, f13, rdn # perform operation
fadd.s f26, f5, f13, rmm # perform operation
fadd.s f26, f5, f13, rne # perform operation
fadd.s f26, f5, f13, rtz # perform operation
fadd.s f26, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
li x28, 0xdce26d1bb93538b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fadd.s f28, f12, f18, dyn # perform operation
fadd.s f28, f12, f18, rdn # perform operation
fadd.s f28, f12, f18, rmm # perform operation
fadd.s f28, f12, f18, rne # perform operation
fadd.s f28, f12, f18, rtz # perform operation
fadd.s f28, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
li x23, 0x0b3bf3f19e272f3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fadd.s f23, f18, f31, dyn # perform operation
fadd.s f23, f18, f31, rdn # perform operation
fadd.s f23, f18, f31, rmm # perform operation
fadd.s f23, f18, f31, rne # perform operation
fadd.s f23, f18, f31, rtz # perform operation
fadd.s f23, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
li x8, 0x748cf1827a93fb42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fadd.s f8, f29, f20, dyn # perform operation
fadd.s f8, f29, f20, rdn # perform operation
fadd.s f8, f29, f20, rmm # perform operation
fadd.s f8, f29, f20, rne # perform operation
fadd.s f8, f29, f20, rtz # perform operation
fadd.s f8, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
li x8, 0x2a8ecdb548286521 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
fadd.s f8, f1, f4, dyn # perform operation
fadd.s f8, f1, f4, rdn # perform operation
fadd.s f8, f1, f4, rmm # perform operation
fadd.s f8, f1, f4, rne # perform operation
fadd.s f8, f1, f4, rtz # perform operation
fadd.s f8, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
li x3, 0xcea1d5e497df9a9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fadd.s f3, f21, f22, dyn # perform operation
fadd.s f3, f21, f22, rdn # perform operation
fadd.s f3, f21, f22, rmm # perform operation
fadd.s f3, f21, f22, rne # perform operation
fadd.s f3, f21, f22, rtz # perform operation
fadd.s f3, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
li x20, 0xcb91e3d3fff68e66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
fadd.s f20, f6, f25, dyn # perform operation
fadd.s f20, f6, f25, rdn # perform operation
fadd.s f20, f6, f25, rmm # perform operation
fadd.s f20, f6, f25, rne # perform operation
fadd.s f20, f6, f25, rtz # perform operation
fadd.s f20, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
li x13, 0x92766bb048285344 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
fadd.s f13, f10, f18, dyn # perform operation
fadd.s f13, f10, f18, rdn # perform operation
fadd.s f13, f10, f18, rmm # perform operation
fadd.s f13, f10, f18, rne # perform operation
fadd.s f13, f10, f18, rtz # perform operation
fadd.s f13, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
li x5, 0x79c5578431a5ddad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
fadd.s f5, f30, f23, dyn # perform operation
fadd.s f5, f30, f23, rdn # perform operation
fadd.s f5, f30, f23, rmm # perform operation
fadd.s f5, f30, f23, rne # perform operation
fadd.s f5, f30, f23, rtz # perform operation
fadd.s f5, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
li x17, 0xfdc823d7464d512b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fadd.s f17, f25, f10, dyn # perform operation
fadd.s f17, f25, f10, rdn # perform operation
fadd.s f17, f25, f10, rmm # perform operation
fadd.s f17, f25, f10, rne # perform operation
fadd.s f17, f25, f10, rtz # perform operation
fadd.s f17, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
li x16, 0x9732a44ae61a0704 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
fadd.s f16, f29, f6, dyn # perform operation
fadd.s f16, f29, f6, rdn # perform operation
fadd.s f16, f29, f6, rmm # perform operation
fadd.s f16, f29, f6, rne # perform operation
fadd.s f16, f29, f6, rtz # perform operation
fadd.s f16, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
li x10, 0x854c47224ddab705 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fadd.s f10, f23, f14, dyn # perform operation
fadd.s f10, f23, f14, rdn # perform operation
fadd.s f10, f23, f14, rmm # perform operation
fadd.s f10, f23, f14, rne # perform operation
fadd.s f10, f23, f14, rtz # perform operation
fadd.s f10, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f23, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
li x26, 0x753325f5e0bc8688 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
fadd.s f26, f25, f27, dyn # perform operation
fadd.s f26, f25, f27, rdn # perform operation
fadd.s f26, f25, f27, rmm # perform operation
fadd.s f26, f25, f27, rne # perform operation
fadd.s f26, f25, f27, rtz # perform operation
fadd.s f26, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
li x21, 0x4f080d4781e7f986 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fadd.s f21, f17, f27, dyn # perform operation
fadd.s f21, f17, f27, rdn # perform operation
fadd.s f21, f17, f27, rmm # perform operation
fadd.s f21, f17, f27, rne # perform operation
fadd.s f21, f17, f27, rtz # perform operation
fadd.s f21, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
li x31, 0x50f62d6a5e4b606e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
fadd.s f31, f26, f5, dyn # perform operation
fadd.s f31, f26, f5, rdn # perform operation
fadd.s f31, f26, f5, rmm # perform operation
fadd.s f31, f26, f5, rne # perform operation
fadd.s f31, f26, f5, rtz # perform operation
fadd.s f31, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f26, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
li x6, 0xbbfe0ec2ddbea53e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fadd.s f6, f7, f3, dyn # perform operation
fadd.s f6, f7, f3, rdn # perform operation
fadd.s f6, f7, f3, rmm # perform operation
fadd.s f6, f7, f3, rne # perform operation
fadd.s f6, f7, f3, rtz # perform operation
fadd.s f6, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
li x9, 0x8828d846a09ed33d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fadd.s f9, f11, f16, dyn # perform operation
fadd.s f9, f11, f16, rdn # perform operation
fadd.s f9, f11, f16, rmm # perform operation
fadd.s f9, f11, f16, rne # perform operation
fadd.s f9, f11, f16, rtz # perform operation
fadd.s f9, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f11, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
li x23, 0xe305c23bbcd6e04a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
fadd.s f23, f28, f9, dyn # perform operation
fadd.s f23, f28, f9, rdn # perform operation
fadd.s f23, f28, f9, rmm # perform operation
fadd.s f23, f28, f9, rne # perform operation
fadd.s f23, f28, f9, rtz # perform operation
fadd.s f23, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
li x24, 0x280813cdfd57f6f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
fadd.s f24, f6, f4, dyn # perform operation
fadd.s f24, f6, f4, rdn # perform operation
fadd.s f24, f6, f4, rmm # perform operation
fadd.s f24, f6, f4, rne # perform operation
fadd.s f24, f6, f4, rtz # perform operation
fadd.s f24, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
li x3, 0x51c8b6969ef7ad3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fadd.s f3, f9, f13, dyn # perform operation
fadd.s f3, f9, f13, rdn # perform operation
fadd.s f3, f9, f13, rmm # perform operation
fadd.s f3, f9, f13, rne # perform operation
fadd.s f3, f9, f13, rtz # perform operation
fadd.s f3, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
li x8, 0x580feafa3c1d9630 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
fadd.s f8, f24, f19, dyn # perform operation
fadd.s f8, f24, f19, rdn # perform operation
fadd.s f8, f24, f19, rmm # perform operation
fadd.s f8, f24, f19, rne # perform operation
fadd.s f8, f24, f19, rtz # perform operation
fadd.s f8, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f24, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
li x9, 0xb3bce08f6aed17cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
fadd.s f9, f5, f16, dyn # perform operation
fadd.s f9, f5, f16, rdn # perform operation
fadd.s f9, f5, f16, rmm # perform operation
fadd.s f9, f5, f16, rne # perform operation
fadd.s f9, f5, f16, rtz # perform operation
fadd.s f9, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
li x8, 0x03327afd5b948eb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fadd.s f8, f26, f12, dyn # perform operation
fadd.s f8, f26, f12, rdn # perform operation
fadd.s f8, f26, f12, rmm # perform operation
fadd.s f8, f26, f12, rne # perform operation
fadd.s f8, f26, f12, rtz # perform operation
fadd.s f8, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
li x15, 0x4cbd4ea16154798f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fadd.s f15, f8, f23, dyn # perform operation
fadd.s f15, f8, f23, rdn # perform operation
fadd.s f15, f8, f23, rmm # perform operation
fadd.s f15, f8, f23, rne # perform operation
fadd.s f15, f8, f23, rtz # perform operation
fadd.s f15, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
li x5, 0x4099ed963fb60db6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
fadd.s f5, f11, f8, dyn # perform operation
fadd.s f5, f11, f8, rdn # perform operation
fadd.s f5, f11, f8, rmm # perform operation
fadd.s f5, f11, f8, rne # perform operation
fadd.s f5, f11, f8, rtz # perform operation
fadd.s f5, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
li x3, 0x5c24ab87725e3342 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fadd.s f3, f23, f30, dyn # perform operation
fadd.s f3, f23, f30, rdn # perform operation
fadd.s f3, f23, f30, rmm # perform operation
fadd.s f3, f23, f30, rne # perform operation
fadd.s f3, f23, f30, rtz # perform operation
fadd.s f3, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
li x30, 0xb6e610d99e3f468e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
fadd.s f30, f31, f10, dyn # perform operation
fadd.s f30, f31, f10, rdn # perform operation
fadd.s f30, f31, f10, rmm # perform operation
fadd.s f30, f31, f10, rne # perform operation
fadd.s f30, f31, f10, rtz # perform operation
fadd.s f30, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
li x26, 0x00c79ced069bed43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fadd.s f26, f10, f31, dyn # perform operation
fadd.s f26, f10, f31, rdn # perform operation
fadd.s f26, f10, f31, rmm # perform operation
fadd.s f26, f10, f31, rne # perform operation
fadd.s f26, f10, f31, rtz # perform operation
fadd.s f26, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
li x17, 0x5d110ba1a0de3b19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
fadd.s f17, f19, f4, dyn # perform operation
fadd.s f17, f19, f4, rdn # perform operation
fadd.s f17, f19, f4, rmm # perform operation
fadd.s f17, f19, f4, rne # perform operation
fadd.s f17, f19, f4, rtz # perform operation
fadd.s f17, f19, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f19, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f19, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f19, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f19, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f19, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
li x20, 0xacfa94e0934f2b08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
fadd.s f20, f13, f11, dyn # perform operation
fadd.s f20, f13, f11, rdn # perform operation
fadd.s f20, f13, f11, rmm # perform operation
fadd.s f20, f13, f11, rne # perform operation
fadd.s f20, f13, f11, rtz # perform operation
fadd.s f20, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f13, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
li x4, 0x4caf94765a6826f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
fadd.s f4, f31, f13, dyn # perform operation
fadd.s f4, f31, f13, rdn # perform operation
fadd.s f4, f31, f13, rmm # perform operation
fadd.s f4, f31, f13, rne # perform operation
fadd.s f4, f31, f13, rtz # perform operation
fadd.s f4, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
li x13, 0xb0f671e0cf360dd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fadd.s f13, f22, f19, dyn # perform operation
fadd.s f13, f22, f19, rdn # perform operation
fadd.s f13, f22, f19, rmm # perform operation
fadd.s f13, f22, f19, rne # perform operation
fadd.s f13, f22, f19, rtz # perform operation
fadd.s f13, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
li x16, 0x21d65782345c0d3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fadd.s f16, f15, f21, dyn # perform operation
fadd.s f16, f15, f21, rdn # perform operation
fadd.s f16, f15, f21, rmm # perform operation
fadd.s f16, f15, f21, rne # perform operation
fadd.s f16, f15, f21, rtz # perform operation
fadd.s f16, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
li x23, 0x44a0f5a059129377 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
fadd.s f23, f1, f7, dyn # perform operation
fadd.s f23, f1, f7, rdn # perform operation
fadd.s f23, f1, f7, rmm # perform operation
fadd.s f23, f1, f7, rne # perform operation
fadd.s f23, f1, f7, rtz # perform operation
fadd.s f23, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f1, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
li x3, 0x120615896d9b8ef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
fadd.s f3, f17, f26, dyn # perform operation
fadd.s f3, f17, f26, rdn # perform operation
fadd.s f3, f17, f26, rmm # perform operation
fadd.s f3, f17, f26, rne # perform operation
fadd.s f3, f17, f26, rtz # perform operation
fadd.s f3, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
li x27, 0x041f60a2cdd3260b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
fadd.s f27, f12, f25, dyn # perform operation
fadd.s f27, f12, f25, rdn # perform operation
fadd.s f27, f12, f25, rmm # perform operation
fadd.s f27, f12, f25, rne # perform operation
fadd.s f27, f12, f25, rtz # perform operation
fadd.s f27, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
li x2, 0xc6e1fd37a197e273 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
fadd.s f2, f25, f21, dyn # perform operation
fadd.s f2, f25, f21, rdn # perform operation
fadd.s f2, f25, f21, rmm # perform operation
fadd.s f2, f25, f21, rne # perform operation
fadd.s f2, f25, f21, rtz # perform operation
fadd.s f2, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
li x9, 0xa0d1180e6bfec014 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
fadd.s f9, f18, f22, dyn # perform operation
fadd.s f9, f18, f22, rdn # perform operation
fadd.s f9, f18, f22, rmm # perform operation
fadd.s f9, f18, f22, rne # perform operation
fadd.s f9, f18, f22, rtz # perform operation
fadd.s f9, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
li x28, 0x0275085e0dd67a65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
fadd.s f28, f19, f20, dyn # perform operation
fadd.s f28, f19, f20, rdn # perform operation
fadd.s f28, f19, f20, rmm # perform operation
fadd.s f28, f19, f20, rne # perform operation
fadd.s f28, f19, f20, rtz # perform operation
fadd.s f28, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f19, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
li x9, 0x8fab44e0a0d10aa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
fadd.s f9, f28, f11, dyn # perform operation
fadd.s f9, f28, f11, rdn # perform operation
fadd.s f9, f28, f11, rmm # perform operation
fadd.s f9, f28, f11, rne # perform operation
fadd.s f9, f28, f11, rtz # perform operation
fadd.s f9, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
li x25, 0x03d47905566b9b97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fadd.s f25, f29, f10, dyn # perform operation
fadd.s f25, f29, f10, rdn # perform operation
fadd.s f25, f29, f10, rmm # perform operation
fadd.s f25, f29, f10, rne # perform operation
fadd.s f25, f29, f10, rtz # perform operation
fadd.s f25, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
li x13, 0x5513a29b8d0ba9d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fadd.s f13, f23, f10, dyn # perform operation
fadd.s f13, f23, f10, rdn # perform operation
fadd.s f13, f23, f10, rmm # perform operation
fadd.s f13, f23, f10, rne # perform operation
fadd.s f13, f23, f10, rtz # perform operation
fadd.s f13, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
li x7, 0xfb6858c7648e57d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fadd.s f7, f11, f27, dyn # perform operation
fadd.s f7, f11, f27, rdn # perform operation
fadd.s f7, f11, f27, rmm # perform operation
fadd.s f7, f11, f27, rne # perform operation
fadd.s f7, f11, f27, rtz # perform operation
fadd.s f7, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
li x16, 0xe0490423ef13381f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
fadd.s f16, f4, f26, dyn # perform operation
fadd.s f16, f4, f26, rdn # perform operation
fadd.s f16, f4, f26, rmm # perform operation
fadd.s f16, f4, f26, rne # perform operation
fadd.s f16, f4, f26, rtz # perform operation
fadd.s f16, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
li x27, 0x7487de983e9e1a8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fadd.s f27, f14, f11, dyn # perform operation
fadd.s f27, f14, f11, rdn # perform operation
fadd.s f27, f14, f11, rmm # perform operation
fadd.s f27, f14, f11, rne # perform operation
fadd.s f27, f14, f11, rtz # perform operation
fadd.s f27, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
li x29, 0x389e1b39d639f630 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fadd.s f29, f20, f26, dyn # perform operation
fadd.s f29, f20, f26, rdn # perform operation
fadd.s f29, f20, f26, rmm # perform operation
fadd.s f29, f20, f26, rne # perform operation
fadd.s f29, f20, f26, rtz # perform operation
fadd.s f29, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
li x11, 0xaaa576a4903b0a6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
fadd.s f11, f3, f10, dyn # perform operation
fadd.s f11, f3, f10, rdn # perform operation
fadd.s f11, f3, f10, rmm # perform operation
fadd.s f11, f3, f10, rne # perform operation
fadd.s f11, f3, f10, rtz # perform operation
fadd.s f11, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
li x9, 0x6b42a6469eb883a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fadd.s f9, f13, f26, dyn # perform operation
fadd.s f9, f13, f26, rdn # perform operation
fadd.s f9, f13, f26, rmm # perform operation
fadd.s f9, f13, f26, rne # perform operation
fadd.s f9, f13, f26, rtz # perform operation
fadd.s f9, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
li x2, 0x12bf28fcb0bbf253 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
fadd.s f2, f5, f1, dyn # perform operation
fadd.s f2, f5, f1, rdn # perform operation
fadd.s f2, f5, f1, rmm # perform operation
fadd.s f2, f5, f1, rne # perform operation
fadd.s f2, f5, f1, rtz # perform operation
fadd.s f2, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
li x28, 0x4d1d0d023b63dc9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fadd.s f28, f8, f17, dyn # perform operation
fadd.s f28, f8, f17, rdn # perform operation
fadd.s f28, f8, f17, rmm # perform operation
fadd.s f28, f8, f17, rne # perform operation
fadd.s f28, f8, f17, rtz # perform operation
fadd.s f28, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
li x8, 0x8f2bb01715945d26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fadd.s f8, f14, f22, dyn # perform operation
fadd.s f8, f14, f22, rdn # perform operation
fadd.s f8, f14, f22, rmm # perform operation
fadd.s f8, f14, f22, rne # perform operation
fadd.s f8, f14, f22, rtz # perform operation
fadd.s f8, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
li x19, 0xc4afbe1b22e7592e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fadd.s f19, f9, f11, dyn # perform operation
fadd.s f19, f9, f11, rdn # perform operation
fadd.s f19, f9, f11, rmm # perform operation
fadd.s f19, f9, f11, rne # perform operation
fadd.s f19, f9, f11, rtz # perform operation
fadd.s f19, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f9, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
li x22, 0x8a122201808608e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
fadd.s f22, f23, f25, dyn # perform operation
fadd.s f22, f23, f25, rdn # perform operation
fadd.s f22, f23, f25, rmm # perform operation
fadd.s f22, f23, f25, rne # perform operation
fadd.s f22, f23, f25, rtz # perform operation
fadd.s f22, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
li x18, 0x5786f82d9f615d8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fadd.s f18, f30, f15, dyn # perform operation
fadd.s f18, f30, f15, rdn # perform operation
fadd.s f18, f30, f15, rmm # perform operation
fadd.s f18, f30, f15, rne # perform operation
fadd.s f18, f30, f15, rtz # perform operation
fadd.s f18, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
li x26, 0x85a950886e985f1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
fadd.s f26, f3, f4, dyn # perform operation
fadd.s f26, f3, f4, rdn # perform operation
fadd.s f26, f3, f4, rmm # perform operation
fadd.s f26, f3, f4, rne # perform operation
fadd.s f26, f3, f4, rtz # perform operation
fadd.s f26, f3, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f3, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f3, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f3, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f3, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
li x29, 0x770b18c4f09a2908 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fadd.s f29, f8, f22, dyn # perform operation
fadd.s f29, f8, f22, rdn # perform operation
fadd.s f29, f8, f22, rmm # perform operation
fadd.s f29, f8, f22, rne # perform operation
fadd.s f29, f8, f22, rtz # perform operation
fadd.s f29, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
li x17, 0x841f236e69ca82b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fadd.s f17, f23, f16, dyn # perform operation
fadd.s f17, f23, f16, rdn # perform operation
fadd.s f17, f23, f16, rmm # perform operation
fadd.s f17, f23, f16, rne # perform operation
fadd.s f17, f23, f16, rtz # perform operation
fadd.s f17, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
li x12, 0xe2e134fbbef94467 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fadd.s f12, f5, f10, dyn # perform operation
fadd.s f12, f5, f10, rdn # perform operation
fadd.s f12, f5, f10, rmm # perform operation
fadd.s f12, f5, f10, rne # perform operation
fadd.s f12, f5, f10, rtz # perform operation
fadd.s f12, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
li x27, 0x4a78b7d7f9cfa4fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
fadd.s f27, f11, f26, dyn # perform operation
fadd.s f27, f11, f26, rdn # perform operation
fadd.s f27, f11, f26, rmm # perform operation
fadd.s f27, f11, f26, rne # perform operation
fadd.s f27, f11, f26, rtz # perform operation
fadd.s f27, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
li x2, 0xc84b8ad4d8b80efd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
fadd.s f2, f11, f4, dyn # perform operation
fadd.s f2, f11, f4, rdn # perform operation
fadd.s f2, f11, f4, rmm # perform operation
fadd.s f2, f11, f4, rne # perform operation
fadd.s f2, f11, f4, rtz # perform operation
fadd.s f2, f11, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f11, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f11, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f11, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f11, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
li x17, 0xcaa98615d7a5e457 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
fadd.s f17, f29, f19, dyn # perform operation
fadd.s f17, f29, f19, rdn # perform operation
fadd.s f17, f29, f19, rmm # perform operation
fadd.s f17, f29, f19, rne # perform operation
fadd.s f17, f29, f19, rtz # perform operation
fadd.s f17, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
li x26, 0x5d39594d555100fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fadd.s f26, f13, f19, dyn # perform operation
fadd.s f26, f13, f19, rdn # perform operation
fadd.s f26, f13, f19, rmm # perform operation
fadd.s f26, f13, f19, rne # perform operation
fadd.s f26, f13, f19, rtz # perform operation
fadd.s f26, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
li x14, 0x3892def2e70c4fcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
fadd.s f14, f26, f12, dyn # perform operation
fadd.s f14, f26, f12, rdn # perform operation
fadd.s f14, f26, f12, rmm # perform operation
fadd.s f14, f26, f12, rne # perform operation
fadd.s f14, f26, f12, rtz # perform operation
fadd.s f14, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
li x30, 0xd2c8350a46e0d3cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
fadd.s f30, f3, f5, dyn # perform operation
fadd.s f30, f3, f5, rdn # perform operation
fadd.s f30, f3, f5, rmm # perform operation
fadd.s f30, f3, f5, rne # perform operation
fadd.s f30, f3, f5, rtz # perform operation
fadd.s f30, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
li x19, 0xce7676fa1a50d814 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fadd.s f19, f12, f3, dyn # perform operation
fadd.s f19, f12, f3, rdn # perform operation
fadd.s f19, f12, f3, rmm # perform operation
fadd.s f19, f12, f3, rne # perform operation
fadd.s f19, f12, f3, rtz # perform operation
fadd.s f19, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
li x9, 0xdd41fdb9493bd216 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
fadd.s f9, f18, f14, dyn # perform operation
fadd.s f9, f18, f14, rdn # perform operation
fadd.s f9, f18, f14, rmm # perform operation
fadd.s f9, f18, f14, rne # perform operation
fadd.s f9, f18, f14, rtz # perform operation
fadd.s f9, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
li x6, 0xd5da651499662132 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fadd.s f6, f19, f23, dyn # perform operation
fadd.s f6, f19, f23, rdn # perform operation
fadd.s f6, f19, f23, rmm # perform operation
fadd.s f6, f19, f23, rne # perform operation
fadd.s f6, f19, f23, rtz # perform operation
fadd.s f6, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
li x25, 0x4dbf25221ff77b1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
fadd.s f25, f1, f21, dyn # perform operation
fadd.s f25, f1, f21, rdn # perform operation
fadd.s f25, f1, f21, rmm # perform operation
fadd.s f25, f1, f21, rne # perform operation
fadd.s f25, f1, f21, rtz # perform operation
fadd.s f25, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f1, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
li x23, 0xc77bd19713a92c45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fadd.s f23, f6, f24, dyn # perform operation
fadd.s f23, f6, f24, rdn # perform operation
fadd.s f23, f6, f24, rmm # perform operation
fadd.s f23, f6, f24, rne # perform operation
fadd.s f23, f6, f24, rtz # perform operation
fadd.s f23, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
li x19, 0xe0e8771c7b61a9e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fadd.s f19, f26, f18, dyn # perform operation
fadd.s f19, f26, f18, rdn # perform operation
fadd.s f19, f26, f18, rmm # perform operation
fadd.s f19, f26, f18, rne # perform operation
fadd.s f19, f26, f18, rtz # perform operation
fadd.s f19, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
li x31, 0x7cc3a6d6b0100537 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fadd.s f31, f21, f5, dyn # perform operation
fadd.s f31, f21, f5, rdn # perform operation
fadd.s f31, f21, f5, rmm # perform operation
fadd.s f31, f21, f5, rne # perform operation
fadd.s f31, f21, f5, rtz # perform operation
fadd.s f31, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
li x20, 0x7f2a6166a079ad56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
fadd.s f20, f19, f23, dyn # perform operation
fadd.s f20, f19, f23, rdn # perform operation
fadd.s f20, f19, f23, rmm # perform operation
fadd.s f20, f19, f23, rne # perform operation
fadd.s f20, f19, f23, rtz # perform operation
fadd.s f20, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
li x17, 0x544b56248c887100 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fadd.s f17, f2, f1, dyn # perform operation
fadd.s f17, f2, f1, rdn # perform operation
fadd.s f17, f2, f1, rmm # perform operation
fadd.s f17, f2, f1, rne # perform operation
fadd.s f17, f2, f1, rtz # perform operation
fadd.s f17, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
li x1, 0xd1a676e67dd34cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fadd.s f1, f20, f19, dyn # perform operation
fadd.s f1, f20, f19, rdn # perform operation
fadd.s f1, f20, f19, rmm # perform operation
fadd.s f1, f20, f19, rne # perform operation
fadd.s f1, f20, f19, rtz # perform operation
fadd.s f1, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
li x26, 0xcaf063c1d890d649 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fadd.s f26, f30, f23, dyn # perform operation
fadd.s f26, f30, f23, rdn # perform operation
fadd.s f26, f30, f23, rmm # perform operation
fadd.s f26, f30, f23, rne # perform operation
fadd.s f26, f30, f23, rtz # perform operation
fadd.s f26, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
li x26, 0x6280933235925373 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
fadd.s f26, f29, f13, dyn # perform operation
fadd.s f26, f29, f13, rdn # perform operation
fadd.s f26, f29, f13, rmm # perform operation
fadd.s f26, f29, f13, rne # perform operation
fadd.s f26, f29, f13, rtz # perform operation
fadd.s f26, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
li x2, 0x4089f3ccabb2967a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fadd.s f2, f5, f6, dyn # perform operation
fadd.s f2, f5, f6, rdn # perform operation
fadd.s f2, f5, f6, rmm # perform operation
fadd.s f2, f5, f6, rne # perform operation
fadd.s f2, f5, f6, rtz # perform operation
fadd.s f2, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f5, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
li x11, 0xf6fce41e087107e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fadd.s f11, f29, f13, dyn # perform operation
fadd.s f11, f29, f13, rdn # perform operation
fadd.s f11, f29, f13, rmm # perform operation
fadd.s f11, f29, f13, rne # perform operation
fadd.s f11, f29, f13, rtz # perform operation
fadd.s f11, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
li x20, 0x9d69ffcf4959f584 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
fadd.s f20, f17, f25, dyn # perform operation
fadd.s f20, f17, f25, rdn # perform operation
fadd.s f20, f17, f25, rmm # perform operation
fadd.s f20, f17, f25, rne # perform operation
fadd.s f20, f17, f25, rtz # perform operation
fadd.s f20, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
li x22, 0xba484382bd583c0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
fadd.s f22, f6, f12, dyn # perform operation
fadd.s f22, f6, f12, rdn # perform operation
fadd.s f22, f6, f12, rmm # perform operation
fadd.s f22, f6, f12, rne # perform operation
fadd.s f22, f6, f12, rtz # perform operation
fadd.s f22, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
li x6, 0x899f07b8a7c3072e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fadd.s f6, f9, f31, dyn # perform operation
fadd.s f6, f9, f31, rdn # perform operation
fadd.s f6, f9, f31, rmm # perform operation
fadd.s f6, f9, f31, rne # perform operation
fadd.s f6, f9, f31, rtz # perform operation
fadd.s f6, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
li x30, 0xe30283339e59a483 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fadd.s f30, f3, f12, dyn # perform operation
fadd.s f30, f3, f12, rdn # perform operation
fadd.s f30, f3, f12, rmm # perform operation
fadd.s f30, f3, f12, rne # perform operation
fadd.s f30, f3, f12, rtz # perform operation
fadd.s f30, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
li x5, 0xdfa94854a22fdc96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
fadd.s f5, f23, f8, dyn # perform operation
fadd.s f5, f23, f8, rdn # perform operation
fadd.s f5, f23, f8, rmm # perform operation
fadd.s f5, f23, f8, rne # perform operation
fadd.s f5, f23, f8, rtz # perform operation
fadd.s f5, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
li x20, 0xb1c2079f8a19f9cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
fadd.s f20, f27, f14, dyn # perform operation
fadd.s f20, f27, f14, rdn # perform operation
fadd.s f20, f27, f14, rmm # perform operation
fadd.s f20, f27, f14, rne # perform operation
fadd.s f20, f27, f14, rtz # perform operation
fadd.s f20, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f27, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
li x22, 0x540775a688d819a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fadd.s f22, f27, f24, dyn # perform operation
fadd.s f22, f27, f24, rdn # perform operation
fadd.s f22, f27, f24, rmm # perform operation
fadd.s f22, f27, f24, rne # perform operation
fadd.s f22, f27, f24, rtz # perform operation
fadd.s f22, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
li x22, 0x8b644e2ff76eb3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
fadd.s f22, f29, f9, dyn # perform operation
fadd.s f22, f29, f9, rdn # perform operation
fadd.s f22, f29, f9, rmm # perform operation
fadd.s f22, f29, f9, rne # perform operation
fadd.s f22, f29, f9, rtz # perform operation
fadd.s f22, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
li x12, 0x578d4f175a4cb6c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
fadd.s f12, f5, f18, dyn # perform operation
fadd.s f12, f5, f18, rdn # perform operation
fadd.s f12, f5, f18, rmm # perform operation
fadd.s f12, f5, f18, rne # perform operation
fadd.s f12, f5, f18, rtz # perform operation
fadd.s f12, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
li x30, 0x91d70eddb7ec85a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
fadd.s f30, f23, f31, dyn # perform operation
fadd.s f30, f23, f31, rdn # perform operation
fadd.s f30, f23, f31, rmm # perform operation
fadd.s f30, f23, f31, rne # perform operation
fadd.s f30, f23, f31, rtz # perform operation
fadd.s f30, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
li x30, 0xe5f6f443ea48ddf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fadd.s f30, f8, f9, dyn # perform operation
fadd.s f30, f8, f9, rdn # perform operation
fadd.s f30, f8, f9, rmm # perform operation
fadd.s f30, f8, f9, rne # perform operation
fadd.s f30, f8, f9, rtz # perform operation
fadd.s f30, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
li x10, 0xc67da33126a0dbc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fadd.s f10, f19, f14, dyn # perform operation
fadd.s f10, f19, f14, rdn # perform operation
fadd.s f10, f19, f14, rmm # perform operation
fadd.s f10, f19, f14, rne # perform operation
fadd.s f10, f19, f14, rtz # perform operation
fadd.s f10, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
li x30, 0xe672972ea4d128f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
fadd.s f30, f23, f27, dyn # perform operation
fadd.s f30, f23, f27, rdn # perform operation
fadd.s f30, f23, f27, rmm # perform operation
fadd.s f30, f23, f27, rne # perform operation
fadd.s f30, f23, f27, rtz # perform operation
fadd.s f30, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f23, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
li x16, 0xc74fce69f70f1bc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
fadd.s f16, f4, f12, dyn # perform operation
fadd.s f16, f4, f12, rdn # perform operation
fadd.s f16, f4, f12, rmm # perform operation
fadd.s f16, f4, f12, rne # perform operation
fadd.s f16, f4, f12, rtz # perform operation
fadd.s f16, f4, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f4, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f4, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f4, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f4, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
li x13, 0xe7400466a258206b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
fadd.s f13, f11, f8, dyn # perform operation
fadd.s f13, f11, f8, rdn # perform operation
fadd.s f13, f11, f8, rmm # perform operation
fadd.s f13, f11, f8, rne # perform operation
fadd.s f13, f11, f8, rtz # perform operation
fadd.s f13, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
li x30, 0x51fc06b6881b58d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fadd.s f30, f24, f2, dyn # perform operation
fadd.s f30, f24, f2, rdn # perform operation
fadd.s f30, f24, f2, rmm # perform operation
fadd.s f30, f24, f2, rne # perform operation
fadd.s f30, f24, f2, rtz # perform operation
fadd.s f30, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
li x22, 0x74ed8ac4cfa83129 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
fadd.s f22, f26, f3, dyn # perform operation
fadd.s f22, f26, f3, rdn # perform operation
fadd.s f22, f26, f3, rmm # perform operation
fadd.s f22, f26, f3, rne # perform operation
fadd.s f22, f26, f3, rtz # perform operation
fadd.s f22, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
li x26, 0xf024d065679e747a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fadd.s f26, f11, f31, dyn # perform operation
fadd.s f26, f11, f31, rdn # perform operation
fadd.s f26, f11, f31, rmm # perform operation
fadd.s f26, f11, f31, rne # perform operation
fadd.s f26, f11, f31, rtz # perform operation
fadd.s f26, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
li x16, 0xc7398d717f74a873 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fadd.s f16, f21, f26, dyn # perform operation
fadd.s f16, f21, f26, rdn # perform operation
fadd.s f16, f21, f26, rmm # perform operation
fadd.s f16, f21, f26, rne # perform operation
fadd.s f16, f21, f26, rtz # perform operation
fadd.s f16, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
li x7, 0xff9dd177146cdb27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fadd.s f7, f23, f30, dyn # perform operation
fadd.s f7, f23, f30, rdn # perform operation
fadd.s f7, f23, f30, rmm # perform operation
fadd.s f7, f23, f30, rne # perform operation
fadd.s f7, f23, f30, rtz # perform operation
fadd.s f7, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
li x31, 0xed384480054559df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fadd.s f31, f3, f29, dyn # perform operation
fadd.s f31, f3, f29, rdn # perform operation
fadd.s f31, f3, f29, rmm # perform operation
fadd.s f31, f3, f29, rne # perform operation
fadd.s f31, f3, f29, rtz # perform operation
fadd.s f31, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
li x12, 0xff72f62f0df4c6fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fadd.s f12, f16, f1, dyn # perform operation
fadd.s f12, f16, f1, rdn # perform operation
fadd.s f12, f16, f1, rmm # perform operation
fadd.s f12, f16, f1, rne # perform operation
fadd.s f12, f16, f1, rtz # perform operation
fadd.s f12, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
li x6, 0xa521dd322aa3eb96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
fadd.s f6, f16, f15, dyn # perform operation
fadd.s f6, f16, f15, rdn # perform operation
fadd.s f6, f16, f15, rmm # perform operation
fadd.s f6, f16, f15, rne # perform operation
fadd.s f6, f16, f15, rtz # perform operation
fadd.s f6, f16, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f16, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f16, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f16, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f16, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f16, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
li x7, 0x150d802f7faafb88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fadd.s f7, f19, f12, dyn # perform operation
fadd.s f7, f19, f12, rdn # perform operation
fadd.s f7, f19, f12, rmm # perform operation
fadd.s f7, f19, f12, rne # perform operation
fadd.s f7, f19, f12, rtz # perform operation
fadd.s f7, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
li x29, 0x7f4bc7de89bf7a30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
fadd.s f29, f3, f18, dyn # perform operation
fadd.s f29, f3, f18, rdn # perform operation
fadd.s f29, f3, f18, rmm # perform operation
fadd.s f29, f3, f18, rne # perform operation
fadd.s f29, f3, f18, rtz # perform operation
fadd.s f29, f3, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f3, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f3, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f3, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f3, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f3, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
li x29, 0xfe0fe117cab6c99c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
fadd.s f29, f3, f7, dyn # perform operation
fadd.s f29, f3, f7, rdn # perform operation
fadd.s f29, f3, f7, rmm # perform operation
fadd.s f29, f3, f7, rne # perform operation
fadd.s f29, f3, f7, rtz # perform operation
fadd.s f29, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
li x27, 0xc1025d349fb2fe5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fadd.s f27, f28, f6, dyn # perform operation
fadd.s f27, f28, f6, rdn # perform operation
fadd.s f27, f28, f6, rmm # perform operation
fadd.s f27, f28, f6, rne # perform operation
fadd.s f27, f28, f6, rtz # perform operation
fadd.s f27, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
li x27, 0x0417205390ab495f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
fadd.s f27, f22, f2, dyn # perform operation
fadd.s f27, f22, f2, rdn # perform operation
fadd.s f27, f22, f2, rmm # perform operation
fadd.s f27, f22, f2, rne # perform operation
fadd.s f27, f22, f2, rtz # perform operation
fadd.s f27, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
li x31, 0x6310c421e04d7af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fadd.s f31, f14, f22, dyn # perform operation
fadd.s f31, f14, f22, rdn # perform operation
fadd.s f31, f14, f22, rmm # perform operation
fadd.s f31, f14, f22, rne # perform operation
fadd.s f31, f14, f22, rtz # perform operation
fadd.s f31, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
li x29, 0x1d8982e2af55332a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
fadd.s f29, f2, f25, dyn # perform operation
fadd.s f29, f2, f25, rdn # perform operation
fadd.s f29, f2, f25, rmm # perform operation
fadd.s f29, f2, f25, rne # perform operation
fadd.s f29, f2, f25, rtz # perform operation
fadd.s f29, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
li x21, 0x3009d0b0ef757d49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
fadd.s f21, f18, f24, dyn # perform operation
fadd.s f21, f18, f24, rdn # perform operation
fadd.s f21, f18, f24, rmm # perform operation
fadd.s f21, f18, f24, rne # perform operation
fadd.s f21, f18, f24, rtz # perform operation
fadd.s f21, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
li x5, 0x170d09303140a751 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fadd.s f5, f3, f15, dyn # perform operation
fadd.s f5, f3, f15, rdn # perform operation
fadd.s f5, f3, f15, rmm # perform operation
fadd.s f5, f3, f15, rne # perform operation
fadd.s f5, f3, f15, rtz # perform operation
fadd.s f5, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f3, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
li x1, 0xa0786f68f8b00461 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fadd.s f1, f26, f21, dyn # perform operation
fadd.s f1, f26, f21, rdn # perform operation
fadd.s f1, f26, f21, rmm # perform operation
fadd.s f1, f26, f21, rne # perform operation
fadd.s f1, f26, f21, rtz # perform operation
fadd.s f1, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
li x23, 0x26c7ac2997c9c84c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fadd.s f23, f1, f26, dyn # perform operation
fadd.s f23, f1, f26, rdn # perform operation
fadd.s f23, f1, f26, rmm # perform operation
fadd.s f23, f1, f26, rne # perform operation
fadd.s f23, f1, f26, rtz # perform operation
fadd.s f23, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f1, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
li x15, 0x15912b035f3ec515 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fadd.s f15, f13, f29, dyn # perform operation
fadd.s f15, f13, f29, rdn # perform operation
fadd.s f15, f13, f29, rmm # perform operation
fadd.s f15, f13, f29, rne # perform operation
fadd.s f15, f13, f29, rtz # perform operation
fadd.s f15, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f13, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
li x8, 0x690b41e2319af2e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fadd.s f8, f2, f22, dyn # perform operation
fadd.s f8, f2, f22, rdn # perform operation
fadd.s f8, f2, f22, rmm # perform operation
fadd.s f8, f2, f22, rne # perform operation
fadd.s f8, f2, f22, rtz # perform operation
fadd.s f8, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
li x30, 0xf54438e811c69455 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
fadd.s f30, f12, f8, dyn # perform operation
fadd.s f30, f12, f8, rdn # perform operation
fadd.s f30, f12, f8, rmm # perform operation
fadd.s f30, f12, f8, rne # perform operation
fadd.s f30, f12, f8, rtz # perform operation
fadd.s f30, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
li x8, 0xcd763ba9f15f8c57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fadd.s f8, f25, f29, dyn # perform operation
fadd.s f8, f25, f29, rdn # perform operation
fadd.s f8, f25, f29, rmm # perform operation
fadd.s f8, f25, f29, rne # perform operation
fadd.s f8, f25, f29, rtz # perform operation
fadd.s f8, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
li x5, 0xf4b32a1c8b0c1341 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
fadd.s f5, f8, f13, dyn # perform operation
fadd.s f5, f8, f13, rdn # perform operation
fadd.s f5, f8, f13, rmm # perform operation
fadd.s f5, f8, f13, rne # perform operation
fadd.s f5, f8, f13, rtz # perform operation
fadd.s f5, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
li x4, 0xc272def3e162af86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fadd.s f4, f6, f13, dyn # perform operation
fadd.s f4, f6, f13, rdn # perform operation
fadd.s f4, f6, f13, rmm # perform operation
fadd.s f4, f6, f13, rne # perform operation
fadd.s f4, f6, f13, rtz # perform operation
fadd.s f4, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
li x7, 0x2747ae7a687ea5aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
fadd.s f7, f25, f4, dyn # perform operation
fadd.s f7, f25, f4, rdn # perform operation
fadd.s f7, f25, f4, rmm # perform operation
fadd.s f7, f25, f4, rne # perform operation
fadd.s f7, f25, f4, rtz # perform operation
fadd.s f7, f25, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f25, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f25, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f25, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f25, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f25, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
li x5, 0x21ee52fbdce87e7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
fadd.s f5, f30, f15, dyn # perform operation
fadd.s f5, f30, f15, rdn # perform operation
fadd.s f5, f30, f15, rmm # perform operation
fadd.s f5, f30, f15, rne # perform operation
fadd.s f5, f30, f15, rtz # perform operation
fadd.s f5, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
li x11, 0x55b8026da06e40ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fadd.s f11, f25, f23, dyn # perform operation
fadd.s f11, f25, f23, rdn # perform operation
fadd.s f11, f25, f23, rmm # perform operation
fadd.s f11, f25, f23, rne # perform operation
fadd.s f11, f25, f23, rtz # perform operation
fadd.s f11, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f25, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
li x11, 0xe87972384f707cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
fadd.s f11, f18, f21, dyn # perform operation
fadd.s f11, f18, f21, rdn # perform operation
fadd.s f11, f18, f21, rmm # perform operation
fadd.s f11, f18, f21, rne # perform operation
fadd.s f11, f18, f21, rtz # perform operation
fadd.s f11, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
li x19, 0x31c052e4257e8f7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fadd.s f19, f13, f11, dyn # perform operation
fadd.s f19, f13, f11, rdn # perform operation
fadd.s f19, f13, f11, rmm # perform operation
fadd.s f19, f13, f11, rne # perform operation
fadd.s f19, f13, f11, rtz # perform operation
fadd.s f19, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f13, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
li x25, 0x819f75616e76a2ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
fadd.s f25, f15, f14, dyn # perform operation
fadd.s f25, f15, f14, rdn # perform operation
fadd.s f25, f15, f14, rmm # perform operation
fadd.s f25, f15, f14, rne # perform operation
fadd.s f25, f15, f14, rtz # perform operation
fadd.s f25, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f15, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
li x7, 0x58778c7c42af4435 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fadd.s f7, f11, f6, dyn # perform operation
fadd.s f7, f11, f6, rdn # perform operation
fadd.s f7, f11, f6, rmm # perform operation
fadd.s f7, f11, f6, rne # perform operation
fadd.s f7, f11, f6, rtz # perform operation
fadd.s f7, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
li x7, 0x8f4cee8bef4f7c41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fadd.s f7, f1, f12, dyn # perform operation
fadd.s f7, f1, f12, rdn # perform operation
fadd.s f7, f1, f12, rmm # perform operation
fadd.s f7, f1, f12, rne # perform operation
fadd.s f7, f1, f12, rtz # perform operation
fadd.s f7, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
li x9, 0x79fd52cb9e1eb3f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fadd.s f9, f14, f29, dyn # perform operation
fadd.s f9, f14, f29, rdn # perform operation
fadd.s f9, f14, f29, rmm # perform operation
fadd.s f9, f14, f29, rne # perform operation
fadd.s f9, f14, f29, rtz # perform operation
fadd.s f9, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
li x28, 0xe9ff2329c1ca0440 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
fadd.s f28, f10, f5, dyn # perform operation
fadd.s f28, f10, f5, rdn # perform operation
fadd.s f28, f10, f5, rmm # perform operation
fadd.s f28, f10, f5, rne # perform operation
fadd.s f28, f10, f5, rtz # perform operation
fadd.s f28, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
li x12, 0xafaf73fe1aebea1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fadd.s f12, f25, f24, dyn # perform operation
fadd.s f12, f25, f24, rdn # perform operation
fadd.s f12, f25, f24, rmm # perform operation
fadd.s f12, f25, f24, rne # perform operation
fadd.s f12, f25, f24, rtz # perform operation
fadd.s f12, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
li x4, 0x21269653846a2d2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fadd.s f4, f7, f28, dyn # perform operation
fadd.s f4, f7, f28, rdn # perform operation
fadd.s f4, f7, f28, rmm # perform operation
fadd.s f4, f7, f28, rne # perform operation
fadd.s f4, f7, f28, rtz # perform operation
fadd.s f4, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
li x7, 0x15fcf7a9d6773ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fadd.s f7, f30, f13, dyn # perform operation
fadd.s f7, f30, f13, rdn # perform operation
fadd.s f7, f30, f13, rmm # perform operation
fadd.s f7, f30, f13, rne # perform operation
fadd.s f7, f30, f13, rtz # perform operation
fadd.s f7, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
li x7, 0x592afb8245ee54b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
fadd.s f7, f28, f12, dyn # perform operation
fadd.s f7, f28, f12, rdn # perform operation
fadd.s f7, f28, f12, rmm # perform operation
fadd.s f7, f28, f12, rne # perform operation
fadd.s f7, f28, f12, rtz # perform operation
fadd.s f7, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
li x5, 0xccc77588693ff8d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fadd.s f5, f27, f15, dyn # perform operation
fadd.s f5, f27, f15, rdn # perform operation
fadd.s f5, f27, f15, rmm # perform operation
fadd.s f5, f27, f15, rne # perform operation
fadd.s f5, f27, f15, rtz # perform operation
fadd.s f5, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
li x5, 0x1ddeea5c7a1eb3b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fadd.s f5, f6, f26, dyn # perform operation
fadd.s f5, f6, f26, rdn # perform operation
fadd.s f5, f6, f26, rmm # perform operation
fadd.s f5, f6, f26, rne # perform operation
fadd.s f5, f6, f26, rtz # perform operation
fadd.s f5, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
li x2, 0xd641123fe509b602 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fadd.s f2, f25, f16, dyn # perform operation
fadd.s f2, f25, f16, rdn # perform operation
fadd.s f2, f25, f16, rmm # perform operation
fadd.s f2, f25, f16, rne # perform operation
fadd.s f2, f25, f16, rtz # perform operation
fadd.s f2, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
li x31, 0x270c9770780589c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
fadd.s f31, f3, f7, dyn # perform operation
fadd.s f31, f3, f7, rdn # perform operation
fadd.s f31, f3, f7, rmm # perform operation
fadd.s f31, f3, f7, rne # perform operation
fadd.s f31, f3, f7, rtz # perform operation
fadd.s f31, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
li x18, 0xaae3477bc5077f65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
fadd.s f18, f29, f22, dyn # perform operation
fadd.s f18, f29, f22, rdn # perform operation
fadd.s f18, f29, f22, rmm # perform operation
fadd.s f18, f29, f22, rne # perform operation
fadd.s f18, f29, f22, rtz # perform operation
fadd.s f18, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
li x3, 0x0e0a6254fb71b7c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fadd.s f3, f10, f16, dyn # perform operation
fadd.s f3, f10, f16, rdn # perform operation
fadd.s f3, f10, f16, rmm # perform operation
fadd.s f3, f10, f16, rne # perform operation
fadd.s f3, f10, f16, rtz # perform operation
fadd.s f3, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
li x1, 0xf400cee9a43a35b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f4, 0(x2) # load 0xbfc00000 from memory into f4
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
fadd.s f1, f4, f26, dyn # perform operation
fadd.s f1, f4, f26, rdn # perform operation
fadd.s f1, f4, f26, rmm # perform operation
fadd.s f1, f4, f26, rne # perform operation
fadd.s f1, f4, f26, rtz # perform operation
fadd.s f1, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
li x9, 0xc11de546c4788a06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
fadd.s f9, f2, f29, dyn # perform operation
fadd.s f9, f2, f29, rdn # perform operation
fadd.s f9, f2, f29, rmm # perform operation
fadd.s f9, f2, f29, rne # perform operation
fadd.s f9, f2, f29, rtz # perform operation
fadd.s f9, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
li x31, 0xb20e3d79f22fa8ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
fadd.s f31, f18, f22, dyn # perform operation
fadd.s f31, f18, f22, rdn # perform operation
fadd.s f31, f18, f22, rmm # perform operation
fadd.s f31, f18, f22, rne # perform operation
fadd.s f31, f18, f22, rtz # perform operation
fadd.s f31, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
li x12, 0xf21aaad840c68fad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fadd.s f12, f24, f8, dyn # perform operation
fadd.s f12, f24, f8, rdn # perform operation
fadd.s f12, f24, f8, rmm # perform operation
fadd.s f12, f24, f8, rne # perform operation
fadd.s f12, f24, f8, rtz # perform operation
fadd.s f12, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
li x5, 0x02e76ebefdfed613 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fadd.s f5, f18, f19, dyn # perform operation
fadd.s f5, f18, f19, rdn # perform operation
fadd.s f5, f18, f19, rmm # perform operation
fadd.s f5, f18, f19, rne # perform operation
fadd.s f5, f18, f19, rtz # perform operation
fadd.s f5, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
li x31, 0x34369746b7472014 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
fadd.s f31, f10, f24, dyn # perform operation
fadd.s f31, f10, f24, rdn # perform operation
fadd.s f31, f10, f24, rmm # perform operation
fadd.s f31, f10, f24, rne # perform operation
fadd.s f31, f10, f24, rtz # perform operation
fadd.s f31, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
li x27, 0x0151b73a7ad768a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
fadd.s f27, f10, f7, dyn # perform operation
fadd.s f27, f10, f7, rdn # perform operation
fadd.s f27, f10, f7, rmm # perform operation
fadd.s f27, f10, f7, rne # perform operation
fadd.s f27, f10, f7, rtz # perform operation
fadd.s f27, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
li x30, 0xcfd4979902f37aac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
fadd.s f30, f10, f8, dyn # perform operation
fadd.s f30, f10, f8, rdn # perform operation
fadd.s f30, f10, f8, rmm # perform operation
fadd.s f30, f10, f8, rne # perform operation
fadd.s f30, f10, f8, rtz # perform operation
fadd.s f30, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
li x15, 0x3f578cdb477986af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fadd.s f15, f31, f4, dyn # perform operation
fadd.s f15, f31, f4, rdn # perform operation
fadd.s f15, f31, f4, rmm # perform operation
fadd.s f15, f31, f4, rne # perform operation
fadd.s f15, f31, f4, rtz # perform operation
fadd.s f15, f31, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f31, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f31, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f31, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f31, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
li x14, 0x665705285fd674aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fadd.s f14, f10, f27, dyn # perform operation
fadd.s f14, f10, f27, rdn # perform operation
fadd.s f14, f10, f27, rmm # perform operation
fadd.s f14, f10, f27, rne # perform operation
fadd.s f14, f10, f27, rtz # perform operation
fadd.s f14, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
li x18, 0xae1739e2d300e017 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fadd.s f18, f21, f27, dyn # perform operation
fadd.s f18, f21, f27, rdn # perform operation
fadd.s f18, f21, f27, rmm # perform operation
fadd.s f18, f21, f27, rne # perform operation
fadd.s f18, f21, f27, rtz # perform operation
fadd.s f18, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
li x15, 0xed9c4c9e2c9096c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
fadd.s f15, f18, f25, dyn # perform operation
fadd.s f15, f18, f25, rdn # perform operation
fadd.s f15, f18, f25, rmm # perform operation
fadd.s f15, f18, f25, rne # perform operation
fadd.s f15, f18, f25, rtz # perform operation
fadd.s f15, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
li x7, 0xf3b860820bcdd547 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
fadd.s f7, f12, f28, dyn # perform operation
fadd.s f7, f12, f28, rdn # perform operation
fadd.s f7, f12, f28, rmm # perform operation
fadd.s f7, f12, f28, rne # perform operation
fadd.s f7, f12, f28, rtz # perform operation
fadd.s f7, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
li x21, 0x947ea0ca0f56cead # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fadd.s f21, f27, f5, dyn # perform operation
fadd.s f21, f27, f5, rdn # perform operation
fadd.s f21, f27, f5, rmm # perform operation
fadd.s f21, f27, f5, rne # perform operation
fadd.s f21, f27, f5, rtz # perform operation
fadd.s f21, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f27, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
li x29, 0x2440dc88b8156b56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
fadd.s f29, f8, f4, dyn # perform operation
fadd.s f29, f8, f4, rdn # perform operation
fadd.s f29, f8, f4, rmm # perform operation
fadd.s f29, f8, f4, rne # perform operation
fadd.s f29, f8, f4, rtz # perform operation
fadd.s f29, f8, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f8, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f8, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f8, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f8, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
li x25, 0xd4cdccd7b948ead9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
fadd.s f25, f18, f16, dyn # perform operation
fadd.s f25, f18, f16, rdn # perform operation
fadd.s f25, f18, f16, rmm # perform operation
fadd.s f25, f18, f16, rne # perform operation
fadd.s f25, f18, f16, rtz # perform operation
fadd.s f25, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
li x21, 0xf153d06831a162b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fadd.s f21, f4, f22, dyn # perform operation
fadd.s f21, f4, f22, rdn # perform operation
fadd.s f21, f4, f22, rmm # perform operation
fadd.s f21, f4, f22, rne # perform operation
fadd.s f21, f4, f22, rtz # perform operation
fadd.s f21, f4, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f4, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f4, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f4, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f4, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
li x7, 0xae8fcd541187b616 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fadd.s f7, f1, f3, dyn # perform operation
fadd.s f7, f1, f3, rdn # perform operation
fadd.s f7, f1, f3, rmm # perform operation
fadd.s f7, f1, f3, rne # perform operation
fadd.s f7, f1, f3, rtz # perform operation
fadd.s f7, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
li x6, 0x8a634d1f772a5c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fadd.s f6, f21, f5, dyn # perform operation
fadd.s f6, f21, f5, rdn # perform operation
fadd.s f6, f21, f5, rmm # perform operation
fadd.s f6, f21, f5, rne # perform operation
fadd.s f6, f21, f5, rtz # perform operation
fadd.s f6, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
li x22, 0xf2a6c53ee59e4ef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fadd.s f22, f19, f23, dyn # perform operation
fadd.s f22, f19, f23, rdn # perform operation
fadd.s f22, f19, f23, rmm # perform operation
fadd.s f22, f19, f23, rne # perform operation
fadd.s f22, f19, f23, rtz # perform operation
fadd.s f22, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
li x25, 0xbbc31e57109f3ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fadd.s f25, f4, f3, dyn # perform operation
fadd.s f25, f4, f3, rdn # perform operation
fadd.s f25, f4, f3, rmm # perform operation
fadd.s f25, f4, f3, rne # perform operation
fadd.s f25, f4, f3, rtz # perform operation
fadd.s f25, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
li x22, 0x0bc0b753c69a9c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
fadd.s f22, f5, f25, dyn # perform operation
fadd.s f22, f5, f25, rdn # perform operation
fadd.s f22, f5, f25, rmm # perform operation
fadd.s f22, f5, f25, rne # perform operation
fadd.s f22, f5, f25, rtz # perform operation
fadd.s f22, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
li x26, 0x19780df316018bdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
fadd.s f26, f16, f23, dyn # perform operation
fadd.s f26, f16, f23, rdn # perform operation
fadd.s f26, f16, f23, rmm # perform operation
fadd.s f26, f16, f23, rne # perform operation
fadd.s f26, f16, f23, rtz # perform operation
fadd.s f26, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
li x16, 0x1a3914009da76256 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fadd.s f16, f13, f17, dyn # perform operation
fadd.s f16, f13, f17, rdn # perform operation
fadd.s f16, f13, f17, rmm # perform operation
fadd.s f16, f13, f17, rne # perform operation
fadd.s f16, f13, f17, rtz # perform operation
fadd.s f16, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
li x25, 0xe8cef7f346d46db7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fadd.s f25, f8, f21, dyn # perform operation
fadd.s f25, f8, f21, rdn # perform operation
fadd.s f25, f8, f21, rmm # perform operation
fadd.s f25, f8, f21, rne # perform operation
fadd.s f25, f8, f21, rtz # perform operation
fadd.s f25, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
li x5, 0x40a17a212e141039 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
fadd.s f5, f1, f2, dyn # perform operation
fadd.s f5, f1, f2, rdn # perform operation
fadd.s f5, f1, f2, rmm # perform operation
fadd.s f5, f1, f2, rne # perform operation
fadd.s f5, f1, f2, rtz # perform operation
fadd.s f5, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
li x11, 0x6908fc240dba6ce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fadd.s f11, f24, f2, dyn # perform operation
fadd.s f11, f24, f2, rdn # perform operation
fadd.s f11, f24, f2, rmm # perform operation
fadd.s f11, f24, f2, rne # perform operation
fadd.s f11, f24, f2, rtz # perform operation
fadd.s f11, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
li x9, 0xc4f0337c77a22487 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
fadd.s f9, f24, f25, dyn # perform operation
fadd.s f9, f24, f25, rdn # perform operation
fadd.s f9, f24, f25, rmm # perform operation
fadd.s f9, f24, f25, rne # perform operation
fadd.s f9, f24, f25, rtz # perform operation
fadd.s f9, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
li x13, 0xe794727664d76988 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fadd.s f13, f5, f2, dyn # perform operation
fadd.s f13, f5, f2, rdn # perform operation
fadd.s f13, f5, f2, rmm # perform operation
fadd.s f13, f5, f2, rne # perform operation
fadd.s f13, f5, f2, rtz # perform operation
fadd.s f13, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
li x10, 0x070d4b125c4ea56c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
fadd.s f10, f31, f18, dyn # perform operation
fadd.s f10, f31, f18, rdn # perform operation
fadd.s f10, f31, f18, rmm # perform operation
fadd.s f10, f31, f18, rne # perform operation
fadd.s f10, f31, f18, rtz # perform operation
fadd.s f10, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
li x29, 0xeeb5856805d3f820 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fadd.s f29, f18, f1, dyn # perform operation
fadd.s f29, f18, f1, rdn # perform operation
fadd.s f29, f18, f1, rmm # perform operation
fadd.s f29, f18, f1, rne # perform operation
fadd.s f29, f18, f1, rtz # perform operation
fadd.s f29, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
li x20, 0x371ac2aed6df76a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
fadd.s f20, f25, f30, dyn # perform operation
fadd.s f20, f25, f30, rdn # perform operation
fadd.s f20, f25, f30, rmm # perform operation
fadd.s f20, f25, f30, rne # perform operation
fadd.s f20, f25, f30, rtz # perform operation
fadd.s f20, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
li x20, 0xd509d07fed068c61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fadd.s f20, f26, f17, dyn # perform operation
fadd.s f20, f26, f17, rdn # perform operation
fadd.s f20, f26, f17, rmm # perform operation
fadd.s f20, f26, f17, rne # perform operation
fadd.s f20, f26, f17, rtz # perform operation
fadd.s f20, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
li x30, 0x6dbf2737e66fd3d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fadd.s f30, f8, f31, dyn # perform operation
fadd.s f30, f8, f31, rdn # perform operation
fadd.s f30, f8, f31, rmm # perform operation
fadd.s f30, f8, f31, rne # perform operation
fadd.s f30, f8, f31, rtz # perform operation
fadd.s f30, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f8, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
li x3, 0xca95b307bf85fb51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
fadd.s f3, f24, f10, dyn # perform operation
fadd.s f3, f24, f10, rdn # perform operation
fadd.s f3, f24, f10, rmm # perform operation
fadd.s f3, f24, f10, rne # perform operation
fadd.s f3, f24, f10, rtz # perform operation
fadd.s f3, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f24, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
li x26, 0xfcef10738f965925 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fadd.s f26, f19, f23, dyn # perform operation
fadd.s f26, f19, f23, rdn # perform operation
fadd.s f26, f19, f23, rmm # perform operation
fadd.s f26, f19, f23, rne # perform operation
fadd.s f26, f19, f23, rtz # perform operation
fadd.s f26, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
li x8, 0xf4a1413172ba80ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fadd.s f8, f30, f10, dyn # perform operation
fadd.s f8, f30, f10, rdn # perform operation
fadd.s f8, f30, f10, rmm # perform operation
fadd.s f8, f30, f10, rne # perform operation
fadd.s f8, f30, f10, rtz # perform operation
fadd.s f8, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
li x13, 0xb32f7ab488e6a489 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fadd.s f13, f22, f21, dyn # perform operation
fadd.s f13, f22, f21, rdn # perform operation
fadd.s f13, f22, f21, rmm # perform operation
fadd.s f13, f22, f21, rne # perform operation
fadd.s f13, f22, f21, rtz # perform operation
fadd.s f13, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
li x25, 0x22250d5e1d5af1c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fadd.s f25, f9, f22, dyn # perform operation
fadd.s f25, f9, f22, rdn # perform operation
fadd.s f25, f9, f22, rmm # perform operation
fadd.s f25, f9, f22, rne # perform operation
fadd.s f25, f9, f22, rtz # perform operation
fadd.s f25, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
li x8, 0xf0c9ca05c96fb366 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fadd.s f8, f25, f17, dyn # perform operation
fadd.s f8, f25, f17, rdn # perform operation
fadd.s f8, f25, f17, rmm # perform operation
fadd.s f8, f25, f17, rne # perform operation
fadd.s f8, f25, f17, rtz # perform operation
fadd.s f8, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
li x18, 0x5db9bf61f2c664a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
fadd.s f18, f24, f5, dyn # perform operation
fadd.s f18, f24, f5, rdn # perform operation
fadd.s f18, f24, f5, rmm # perform operation
fadd.s f18, f24, f5, rne # perform operation
fadd.s f18, f24, f5, rtz # perform operation
fadd.s f18, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
li x11, 0x99c1193eba5b8bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fadd.s f11, f5, f12, dyn # perform operation
fadd.s f11, f5, f12, rdn # perform operation
fadd.s f11, f5, f12, rmm # perform operation
fadd.s f11, f5, f12, rne # perform operation
fadd.s f11, f5, f12, rtz # perform operation
fadd.s f11, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
li x4, 0x4e8e49a701169dcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fadd.s f4, f3, f26, dyn # perform operation
fadd.s f4, f3, f26, rdn # perform operation
fadd.s f4, f3, f26, rmm # perform operation
fadd.s f4, f3, f26, rne # perform operation
fadd.s f4, f3, f26, rtz # perform operation
fadd.s f4, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f3, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
li x7, 0xe26d7402715a8bba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fadd.s f7, f21, f12, dyn # perform operation
fadd.s f7, f21, f12, rdn # perform operation
fadd.s f7, f21, f12, rmm # perform operation
fadd.s f7, f21, f12, rne # perform operation
fadd.s f7, f21, f12, rtz # perform operation
fadd.s f7, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
li x29, 0xa025cc1111fc4265 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fadd.s f29, f24, f30, dyn # perform operation
fadd.s f29, f24, f30, rdn # perform operation
fadd.s f29, f24, f30, rmm # perform operation
fadd.s f29, f24, f30, rne # perform operation
fadd.s f29, f24, f30, rtz # perform operation
fadd.s f29, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f24, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
li x12, 0x7e6ae49d6689fed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fadd.s f12, f25, f27, dyn # perform operation
fadd.s f12, f25, f27, rdn # perform operation
fadd.s f12, f25, f27, rmm # perform operation
fadd.s f12, f25, f27, rne # perform operation
fadd.s f12, f25, f27, rtz # perform operation
fadd.s f12, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
li x23, 0x9db4c800dc0d273b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fadd.s f23, f19, f30, dyn # perform operation
fadd.s f23, f19, f30, rdn # perform operation
fadd.s f23, f19, f30, rmm # perform operation
fadd.s f23, f19, f30, rne # perform operation
fadd.s f23, f19, f30, rtz # perform operation
fadd.s f23, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
li x15, 0xefc3d52e6916d0d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fadd.s f15, f5, f1, dyn # perform operation
fadd.s f15, f5, f1, rdn # perform operation
fadd.s f15, f5, f1, rmm # perform operation
fadd.s f15, f5, f1, rne # perform operation
fadd.s f15, f5, f1, rtz # perform operation
fadd.s f15, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
li x12, 0x24b2161fb8cf061a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
fadd.s f12, f1, f11, dyn # perform operation
fadd.s f12, f1, f11, rdn # perform operation
fadd.s f12, f1, f11, rmm # perform operation
fadd.s f12, f1, f11, rne # perform operation
fadd.s f12, f1, f11, rtz # perform operation
fadd.s f12, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
li x18, 0xe5b2bdd759dd50ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fadd.s f18, f26, f2, dyn # perform operation
fadd.s f18, f26, f2, rdn # perform operation
fadd.s f18, f26, f2, rmm # perform operation
fadd.s f18, f26, f2, rne # perform operation
fadd.s f18, f26, f2, rtz # perform operation
fadd.s f18, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
li x20, 0x930a9193a9078ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
fadd.s f20, f7, f11, dyn # perform operation
fadd.s f20, f7, f11, rdn # perform operation
fadd.s f20, f7, f11, rmm # perform operation
fadd.s f20, f7, f11, rne # perform operation
fadd.s f20, f7, f11, rtz # perform operation
fadd.s f20, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
li x27, 0xcfb6c695b4881113 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fadd.s f27, f5, f22, dyn # perform operation
fadd.s f27, f5, f22, rdn # perform operation
fadd.s f27, f5, f22, rmm # perform operation
fadd.s f27, f5, f22, rne # perform operation
fadd.s f27, f5, f22, rtz # perform operation
fadd.s f27, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
li x31, 0xe5043fb086edfdf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
fadd.s f31, f6, f5, dyn # perform operation
fadd.s f31, f6, f5, rdn # perform operation
fadd.s f31, f6, f5, rmm # perform operation
fadd.s f31, f6, f5, rne # perform operation
fadd.s f31, f6, f5, rtz # perform operation
fadd.s f31, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
li x24, 0x5ca5de00243d855e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
fadd.s f24, f20, f30, dyn # perform operation
fadd.s f24, f20, f30, rdn # perform operation
fadd.s f24, f20, f30, rmm # perform operation
fadd.s f24, f20, f30, rne # perform operation
fadd.s f24, f20, f30, rtz # perform operation
fadd.s f24, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
li x19, 0x7fa3f3d460c82383 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fadd.s f19, f12, f24, dyn # perform operation
fadd.s f19, f12, f24, rdn # perform operation
fadd.s f19, f12, f24, rmm # perform operation
fadd.s f19, f12, f24, rne # perform operation
fadd.s f19, f12, f24, rtz # perform operation
fadd.s f19, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f12, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
li x17, 0x5f3f34cb65da14e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fadd.s f17, f15, f29, dyn # perform operation
fadd.s f17, f15, f29, rdn # perform operation
fadd.s f17, f15, f29, rmm # perform operation
fadd.s f17, f15, f29, rne # perform operation
fadd.s f17, f15, f29, rtz # perform operation
fadd.s f17, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
li x16, 0x75a2f1692fd4d452 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fadd.s f16, f3, f29, dyn # perform operation
fadd.s f16, f3, f29, rdn # perform operation
fadd.s f16, f3, f29, rmm # perform operation
fadd.s f16, f3, f29, rne # perform operation
fadd.s f16, f3, f29, rtz # perform operation
fadd.s f16, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
li x10, 0x03b4d17b54d080bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fadd.s f10, f4, f3, dyn # perform operation
fadd.s f10, f4, f3, rdn # perform operation
fadd.s f10, f4, f3, rmm # perform operation
fadd.s f10, f4, f3, rne # perform operation
fadd.s f10, f4, f3, rtz # perform operation
fadd.s f10, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
li x20, 0x82a7812d2365dd5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
fadd.s f20, f18, f5, dyn # perform operation
fadd.s f20, f18, f5, rdn # perform operation
fadd.s f20, f18, f5, rmm # perform operation
fadd.s f20, f18, f5, rne # perform operation
fadd.s f20, f18, f5, rtz # perform operation
fadd.s f20, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f18, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
li x18, 0x62c02ae60841e139 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fadd.s f18, f16, f25, dyn # perform operation
fadd.s f18, f16, f25, rdn # perform operation
fadd.s f18, f16, f25, rmm # perform operation
fadd.s f18, f16, f25, rne # perform operation
fadd.s f18, f16, f25, rtz # perform operation
fadd.s f18, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
li x13, 0xb3c264ee945fec55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
fadd.s f13, f19, f28, dyn # perform operation
fadd.s f13, f19, f28, rdn # perform operation
fadd.s f13, f19, f28, rmm # perform operation
fadd.s f13, f19, f28, rne # perform operation
fadd.s f13, f19, f28, rtz # perform operation
fadd.s f13, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
li x2, 0x11bce846736f2212 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
fadd.s f2, f28, f12, dyn # perform operation
fadd.s f2, f28, f12, rdn # perform operation
fadd.s f2, f28, f12, rmm # perform operation
fadd.s f2, f28, f12, rne # perform operation
fadd.s f2, f28, f12, rtz # perform operation
fadd.s f2, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
li x25, 0x6c9fc39b9674edae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fadd.s f25, f26, f23, dyn # perform operation
fadd.s f25, f26, f23, rdn # perform operation
fadd.s f25, f26, f23, rmm # perform operation
fadd.s f25, f26, f23, rne # perform operation
fadd.s f25, f26, f23, rtz # perform operation
fadd.s f25, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f26, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
li x6, 0x3762bc29b6a45f18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
fadd.s f6, f12, f17, dyn # perform operation
fadd.s f6, f12, f17, rdn # perform operation
fadd.s f6, f12, f17, rmm # perform operation
fadd.s f6, f12, f17, rne # perform operation
fadd.s f6, f12, f17, rtz # perform operation
fadd.s f6, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
li x17, 0x48b24ff482b370ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fadd.s f17, f22, f7, dyn # perform operation
fadd.s f17, f22, f7, rdn # perform operation
fadd.s f17, f22, f7, rmm # perform operation
fadd.s f17, f22, f7, rne # perform operation
fadd.s f17, f22, f7, rtz # perform operation
fadd.s f17, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
li x17, 0x961e1b4cd266bcc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fadd.s f17, f2, f9, dyn # perform operation
fadd.s f17, f2, f9, rdn # perform operation
fadd.s f17, f2, f9, rmm # perform operation
fadd.s f17, f2, f9, rne # perform operation
fadd.s f17, f2, f9, rtz # perform operation
fadd.s f17, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
li x21, 0xd205907570b5aaf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fadd.s f21, f2, f29, dyn # perform operation
fadd.s f21, f2, f29, rdn # perform operation
fadd.s f21, f2, f29, rmm # perform operation
fadd.s f21, f2, f29, rne # perform operation
fadd.s f21, f2, f29, rtz # perform operation
fadd.s f21, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
li x29, 0xf6fe80fd2f1fa563 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
fadd.s f29, f21, f13, dyn # perform operation
fadd.s f29, f21, f13, rdn # perform operation
fadd.s f29, f21, f13, rmm # perform operation
fadd.s f29, f21, f13, rne # perform operation
fadd.s f29, f21, f13, rtz # perform operation
fadd.s f29, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
li x31, 0x7b0f3d8ecabb4124 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
fadd.s f31, f22, f18, dyn # perform operation
fadd.s f31, f22, f18, rdn # perform operation
fadd.s f31, f22, f18, rmm # perform operation
fadd.s f31, f22, f18, rne # perform operation
fadd.s f31, f22, f18, rtz # perform operation
fadd.s f31, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f22, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
li x11, 0x4f30ee60e866a4a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
fadd.s f11, f6, f8, dyn # perform operation
fadd.s f11, f6, f8, rdn # perform operation
fadd.s f11, f6, f8, rmm # perform operation
fadd.s f11, f6, f8, rne # perform operation
fadd.s f11, f6, f8, rtz # perform operation
fadd.s f11, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
li x14, 0xc52df115e815d442 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
fadd.s f14, f19, f12, dyn # perform operation
fadd.s f14, f19, f12, rdn # perform operation
fadd.s f14, f19, f12, rmm # perform operation
fadd.s f14, f19, f12, rne # perform operation
fadd.s f14, f19, f12, rtz # perform operation
fadd.s f14, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
li x12, 0x603df00a0ca2f15b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
fadd.s f12, f23, f24, dyn # perform operation
fadd.s f12, f23, f24, rdn # perform operation
fadd.s f12, f23, f24, rmm # perform operation
fadd.s f12, f23, f24, rne # perform operation
fadd.s f12, f23, f24, rtz # perform operation
fadd.s f12, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
li x27, 0xdeb0019c42da8cb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fadd.s f27, f20, f28, dyn # perform operation
fadd.s f27, f20, f28, rdn # perform operation
fadd.s f27, f20, f28, rmm # perform operation
fadd.s f27, f20, f28, rne # perform operation
fadd.s f27, f20, f28, rtz # perform operation
fadd.s f27, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
li x9, 0x4af70dddbaaab6f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fadd.s f9, f7, f22, dyn # perform operation
fadd.s f9, f7, f22, rdn # perform operation
fadd.s f9, f7, f22, rmm # perform operation
fadd.s f9, f7, f22, rne # perform operation
fadd.s f9, f7, f22, rtz # perform operation
fadd.s f9, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
li x21, 0x5615d601846bac88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fadd.s f21, f22, f26, dyn # perform operation
fadd.s f21, f22, f26, rdn # perform operation
fadd.s f21, f22, f26, rmm # perform operation
fadd.s f21, f22, f26, rne # perform operation
fadd.s f21, f22, f26, rtz # perform operation
fadd.s f21, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
li x4, 0xfc4fb6f38a90b67d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fadd.s f4, f18, f15, dyn # perform operation
fadd.s f4, f18, f15, rdn # perform operation
fadd.s f4, f18, f15, rmm # perform operation
fadd.s f4, f18, f15, rne # perform operation
fadd.s f4, f18, f15, rtz # perform operation
fadd.s f4, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
li x23, 0xe82ab315bf58843e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fadd.s f23, f11, f19, dyn # perform operation
fadd.s f23, f11, f19, rdn # perform operation
fadd.s f23, f11, f19, rmm # perform operation
fadd.s f23, f11, f19, rne # perform operation
fadd.s f23, f11, f19, rtz # perform operation
fadd.s f23, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
li x6, 0x79f9d0c26e12864e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
fadd.s f6, f4, f17, dyn # perform operation
fadd.s f6, f4, f17, rdn # perform operation
fadd.s f6, f4, f17, rmm # perform operation
fadd.s f6, f4, f17, rne # perform operation
fadd.s f6, f4, f17, rtz # perform operation
fadd.s f6, f4, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f4, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f4, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f4, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f4, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
li x22, 0xcfa899918ecfc592 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fadd.s f22, f19, f16, dyn # perform operation
fadd.s f22, f19, f16, rdn # perform operation
fadd.s f22, f19, f16, rmm # perform operation
fadd.s f22, f19, f16, rne # perform operation
fadd.s f22, f19, f16, rtz # perform operation
fadd.s f22, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
li x28, 0x99e35f0bca452fca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fadd.s f28, f31, f21, dyn # perform operation
fadd.s f28, f31, f21, rdn # perform operation
fadd.s f28, f31, f21, rmm # perform operation
fadd.s f28, f31, f21, rne # perform operation
fadd.s f28, f31, f21, rtz # perform operation
fadd.s f28, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
li x1, 0xbf9e013dc20f39e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fadd.s f1, f9, f29, dyn # perform operation
fadd.s f1, f9, f29, rdn # perform operation
fadd.s f1, f9, f29, rmm # perform operation
fadd.s f1, f9, f29, rne # perform operation
fadd.s f1, f9, f29, rtz # perform operation
fadd.s f1, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
li x22, 0xf857cff6befa40f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
fadd.s f22, f20, f5, dyn # perform operation
fadd.s f22, f20, f5, rdn # perform operation
fadd.s f22, f20, f5, rmm # perform operation
fadd.s f22, f20, f5, rne # perform operation
fadd.s f22, f20, f5, rtz # perform operation
fadd.s f22, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
li x9, 0x807027d8c440225a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
fadd.s f9, f1, f14, dyn # perform operation
fadd.s f9, f1, f14, rdn # perform operation
fadd.s f9, f1, f14, rmm # perform operation
fadd.s f9, f1, f14, rne # perform operation
fadd.s f9, f1, f14, rtz # perform operation
fadd.s f9, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
li x19, 0x5fcb5fdad2bdca98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fadd.s f19, f10, f9, dyn # perform operation
fadd.s f19, f10, f9, rdn # perform operation
fadd.s f19, f10, f9, rmm # perform operation
fadd.s f19, f10, f9, rne # perform operation
fadd.s f19, f10, f9, rtz # perform operation
fadd.s f19, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
li x30, 0x4dc635320afe0c6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fadd.s f30, f12, f14, dyn # perform operation
fadd.s f30, f12, f14, rdn # perform operation
fadd.s f30, f12, f14, rmm # perform operation
fadd.s f30, f12, f14, rne # perform operation
fadd.s f30, f12, f14, rtz # perform operation
fadd.s f30, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
li x1, 0xb619a112cdbb95cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
fadd.s f1, f12, f6, dyn # perform operation
fadd.s f1, f12, f6, rdn # perform operation
fadd.s f1, f12, f6, rmm # perform operation
fadd.s f1, f12, f6, rne # perform operation
fadd.s f1, f12, f6, rtz # perform operation
fadd.s f1, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
li x5, 0xbe7d01566f739f00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fadd.s f5, f13, f9, dyn # perform operation
fadd.s f5, f13, f9, rdn # perform operation
fadd.s f5, f13, f9, rmm # perform operation
fadd.s f5, f13, f9, rne # perform operation
fadd.s f5, f13, f9, rtz # perform operation
fadd.s f5, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
li x27, 0xed428e863d189081 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
fadd.s f27, f1, f17, dyn # perform operation
fadd.s f27, f1, f17, rdn # perform operation
fadd.s f27, f1, f17, rmm # perform operation
fadd.s f27, f1, f17, rne # perform operation
fadd.s f27, f1, f17, rtz # perform operation
fadd.s f27, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
li x6, 0x00473d0c44e0fe73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
fadd.s f6, f20, f13, dyn # perform operation
fadd.s f6, f20, f13, rdn # perform operation
fadd.s f6, f20, f13, rmm # perform operation
fadd.s f6, f20, f13, rne # perform operation
fadd.s f6, f20, f13, rtz # perform operation
fadd.s f6, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
li x25, 0x473de5d029210aff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fadd.s f25, f13, f18, dyn # perform operation
fadd.s f25, f13, f18, rdn # perform operation
fadd.s f25, f13, f18, rmm # perform operation
fadd.s f25, f13, f18, rne # perform operation
fadd.s f25, f13, f18, rtz # perform operation
fadd.s f25, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
li x26, 0x36da68404abde6a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
fadd.s f26, f12, f15, dyn # perform operation
fadd.s f26, f12, f15, rdn # perform operation
fadd.s f26, f12, f15, rmm # perform operation
fadd.s f26, f12, f15, rne # perform operation
fadd.s f26, f12, f15, rtz # perform operation
fadd.s f26, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
li x2, 0x5ea1f8a3f798ad59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fadd.s f2, f4, f11, dyn # perform operation
fadd.s f2, f4, f11, rdn # perform operation
fadd.s f2, f4, f11, rmm # perform operation
fadd.s f2, f4, f11, rne # perform operation
fadd.s f2, f4, f11, rtz # perform operation
fadd.s f2, f4, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f4, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f4, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f4, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f4, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
li x17, 0x1b5ef5531abaf508 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fadd.s f17, f2, f20, dyn # perform operation
fadd.s f17, f2, f20, rdn # perform operation
fadd.s f17, f2, f20, rmm # perform operation
fadd.s f17, f2, f20, rne # perform operation
fadd.s f17, f2, f20, rtz # perform operation
fadd.s f17, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
li x25, 0x5e52a12d074e92ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
fadd.s f25, f10, f28, dyn # perform operation
fadd.s f25, f10, f28, rdn # perform operation
fadd.s f25, f10, f28, rmm # perform operation
fadd.s f25, f10, f28, rne # perform operation
fadd.s f25, f10, f28, rtz # perform operation
fadd.s f25, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
li x25, 0x7f4b1e311982c0ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fadd.s f25, f4, f17, dyn # perform operation
fadd.s f25, f4, f17, rdn # perform operation
fadd.s f25, f4, f17, rmm # perform operation
fadd.s f25, f4, f17, rne # perform operation
fadd.s f25, f4, f17, rtz # perform operation
fadd.s f25, f4, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f4, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f4, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f4, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f4, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
li x6, 0x78874a409b2019d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fadd.s f6, f4, f12, dyn # perform operation
fadd.s f6, f4, f12, rdn # perform operation
fadd.s f6, f4, f12, rmm # perform operation
fadd.s f6, f4, f12, rne # perform operation
fadd.s f6, f4, f12, rtz # perform operation
fadd.s f6, f4, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f4, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f4, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f4, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f4, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
li x1, 0x1c0ced0033c26d0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fadd.s f1, f22, f2, dyn # perform operation
fadd.s f1, f22, f2, rdn # perform operation
fadd.s f1, f22, f2, rmm # perform operation
fadd.s f1, f22, f2, rne # perform operation
fadd.s f1, f22, f2, rtz # perform operation
fadd.s f1, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
li x29, 0x94bf9437e5f69de2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fadd.s f29, f12, f18, dyn # perform operation
fadd.s f29, f12, f18, rdn # perform operation
fadd.s f29, f12, f18, rmm # perform operation
fadd.s f29, f12, f18, rne # perform operation
fadd.s f29, f12, f18, rtz # perform operation
fadd.s f29, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
li x14, 0xb3657e8914c0bb03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fadd.s f14, f7, f13, dyn # perform operation
fadd.s f14, f7, f13, rdn # perform operation
fadd.s f14, f7, f13, rmm # perform operation
fadd.s f14, f7, f13, rne # perform operation
fadd.s f14, f7, f13, rtz # perform operation
fadd.s f14, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
li x31, 0x9b7fbf112d262c32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fadd.s f31, f10, f26, dyn # perform operation
fadd.s f31, f10, f26, rdn # perform operation
fadd.s f31, f10, f26, rmm # perform operation
fadd.s f31, f10, f26, rne # perform operation
fadd.s f31, f10, f26, rtz # perform operation
fadd.s f31, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
li x31, 0x690b55cde3cb5171 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
fadd.s f31, f23, f20, dyn # perform operation
fadd.s f31, f23, f20, rdn # perform operation
fadd.s f31, f23, f20, rmm # perform operation
fadd.s f31, f23, f20, rne # perform operation
fadd.s f31, f23, f20, rtz # perform operation
fadd.s f31, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
li x1, 0x70ee5aca751799da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fadd.s f1, f23, f5, dyn # perform operation
fadd.s f1, f23, f5, rdn # perform operation
fadd.s f1, f23, f5, rmm # perform operation
fadd.s f1, f23, f5, rne # perform operation
fadd.s f1, f23, f5, rtz # perform operation
fadd.s f1, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
li x24, 0x3058113df0399614 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
fadd.s f24, f7, f29, dyn # perform operation
fadd.s f24, f7, f29, rdn # perform operation
fadd.s f24, f7, f29, rmm # perform operation
fadd.s f24, f7, f29, rne # perform operation
fadd.s f24, f7, f29, rtz # perform operation
fadd.s f24, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
li x26, 0x8fe1cbebfe4ed2ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
fadd.s f26, f4, f24, dyn # perform operation
fadd.s f26, f4, f24, rdn # perform operation
fadd.s f26, f4, f24, rmm # perform operation
fadd.s f26, f4, f24, rne # perform operation
fadd.s f26, f4, f24, rtz # perform operation
fadd.s f26, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
li x27, 0x737037fe4f70f34b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fadd.s f27, f19, f12, dyn # perform operation
fadd.s f27, f19, f12, rdn # perform operation
fadd.s f27, f19, f12, rmm # perform operation
fadd.s f27, f19, f12, rne # perform operation
fadd.s f27, f19, f12, rtz # perform operation
fadd.s f27, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
li x16, 0xb2eff6e6cf92a214 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fadd.s f16, f21, f8, dyn # perform operation
fadd.s f16, f21, f8, rdn # perform operation
fadd.s f16, f21, f8, rmm # perform operation
fadd.s f16, f21, f8, rne # perform operation
fadd.s f16, f21, f8, rtz # perform operation
fadd.s f16, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
li x2, 0x22df5d3c5810cb1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fadd.s f2, f15, f25, dyn # perform operation
fadd.s f2, f15, f25, rdn # perform operation
fadd.s f2, f15, f25, rmm # perform operation
fadd.s f2, f15, f25, rne # perform operation
fadd.s f2, f15, f25, rtz # perform operation
fadd.s f2, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
li x4, 0xd6abeab6cbe8f6b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
fadd.s f4, f27, f18, dyn # perform operation
fadd.s f4, f27, f18, rdn # perform operation
fadd.s f4, f27, f18, rmm # perform operation
fadd.s f4, f27, f18, rne # perform operation
fadd.s f4, f27, f18, rtz # perform operation
fadd.s f4, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
li x2, 0x0719b71e319dbc98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fadd.s f2, f25, f1, dyn # perform operation
fadd.s f2, f25, f1, rdn # perform operation
fadd.s f2, f25, f1, rmm # perform operation
fadd.s f2, f25, f1, rne # perform operation
fadd.s f2, f25, f1, rtz # perform operation
fadd.s f2, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
li x12, 0xb8c51d7d9998a9a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fadd.s f12, f2, f7, dyn # perform operation
fadd.s f12, f2, f7, rdn # perform operation
fadd.s f12, f2, f7, rmm # perform operation
fadd.s f12, f2, f7, rne # perform operation
fadd.s f12, f2, f7, rtz # perform operation
fadd.s f12, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
li x7, 0xd69730f606863da0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fadd.s f7, f16, f31, dyn # perform operation
fadd.s f7, f16, f31, rdn # perform operation
fadd.s f7, f16, f31, rmm # perform operation
fadd.s f7, f16, f31, rne # perform operation
fadd.s f7, f16, f31, rtz # perform operation
fadd.s f7, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
li x4, 0x2cdff888041783a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fadd.s f4, f15, f22, dyn # perform operation
fadd.s f4, f15, f22, rdn # perform operation
fadd.s f4, f15, f22, rmm # perform operation
fadd.s f4, f15, f22, rne # perform operation
fadd.s f4, f15, f22, rtz # perform operation
fadd.s f4, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
li x9, 0x2ac41658537c56bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
fadd.s f9, f16, f7, dyn # perform operation
fadd.s f9, f16, f7, rdn # perform operation
fadd.s f9, f16, f7, rmm # perform operation
fadd.s f9, f16, f7, rne # perform operation
fadd.s f9, f16, f7, rtz # perform operation
fadd.s f9, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
li x31, 0xcdab495ea8c420b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fadd.s f31, f8, f29, dyn # perform operation
fadd.s f31, f8, f29, rdn # perform operation
fadd.s f31, f8, f29, rmm # perform operation
fadd.s f31, f8, f29, rne # perform operation
fadd.s f31, f8, f29, rtz # perform operation
fadd.s f31, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
li x7, 0x12f773813fc07ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
fadd.s f7, f3, f29, dyn # perform operation
fadd.s f7, f3, f29, rdn # perform operation
fadd.s f7, f3, f29, rmm # perform operation
fadd.s f7, f3, f29, rne # perform operation
fadd.s f7, f3, f29, rtz # perform operation
fadd.s f7, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
li x31, 0xf82c48ccac243940 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
fadd.s f31, f29, f14, dyn # perform operation
fadd.s f31, f29, f14, rdn # perform operation
fadd.s f31, f29, f14, rmm # perform operation
fadd.s f31, f29, f14, rne # perform operation
fadd.s f31, f29, f14, rtz # perform operation
fadd.s f31, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f29, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
li x18, 0xccbb7d3b84e237de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
fadd.s f18, f31, f14, dyn # perform operation
fadd.s f18, f31, f14, rdn # perform operation
fadd.s f18, f31, f14, rmm # perform operation
fadd.s f18, f31, f14, rne # perform operation
fadd.s f18, f31, f14, rtz # perform operation
fadd.s f18, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
li x22, 0xd94a88be18c3b0f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fadd.s f22, f10, f21, dyn # perform operation
fadd.s f22, f10, f21, rdn # perform operation
fadd.s f22, f10, f21, rmm # perform operation
fadd.s f22, f10, f21, rne # perform operation
fadd.s f22, f10, f21, rtz # perform operation
fadd.s f22, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
li x5, 0x2c4f77fde33b339f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fadd.s f5, f19, f24, dyn # perform operation
fadd.s f5, f19, f24, rdn # perform operation
fadd.s f5, f19, f24, rmm # perform operation
fadd.s f5, f19, f24, rne # perform operation
fadd.s f5, f19, f24, rtz # perform operation
fadd.s f5, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
li x25, 0x1c7aad9fcbf320bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fadd.s f25, f19, f12, dyn # perform operation
fadd.s f25, f19, f12, rdn # perform operation
fadd.s f25, f19, f12, rmm # perform operation
fadd.s f25, f19, f12, rne # perform operation
fadd.s f25, f19, f12, rtz # perform operation
fadd.s f25, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
li x17, 0x7034bb904823241c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fadd.s f17, f2, f14, dyn # perform operation
fadd.s f17, f2, f14, rdn # perform operation
fadd.s f17, f2, f14, rmm # perform operation
fadd.s f17, f2, f14, rne # perform operation
fadd.s f17, f2, f14, rtz # perform operation
fadd.s f17, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
li x20, 0xc73b95ea5d88a415 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fadd.s f20, f23, f29, dyn # perform operation
fadd.s f20, f23, f29, rdn # perform operation
fadd.s f20, f23, f29, rmm # perform operation
fadd.s f20, f23, f29, rne # perform operation
fadd.s f20, f23, f29, rtz # perform operation
fadd.s f20, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
li x9, 0x54b57eb532596abb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fadd.s f9, f11, f6, dyn # perform operation
fadd.s f9, f11, f6, rdn # perform operation
fadd.s f9, f11, f6, rmm # perform operation
fadd.s f9, f11, f6, rne # perform operation
fadd.s f9, f11, f6, rtz # perform operation
fadd.s f9, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
li x28, 0xeffd5ca91bc0125c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fadd.s f28, f17, f23, dyn # perform operation
fadd.s f28, f17, f23, rdn # perform operation
fadd.s f28, f17, f23, rmm # perform operation
fadd.s f28, f17, f23, rne # perform operation
fadd.s f28, f17, f23, rtz # perform operation
fadd.s f28, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f17, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
li x17, 0xe1031f4bbd16e6b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
fadd.s f17, f1, f29, dyn # perform operation
fadd.s f17, f1, f29, rdn # perform operation
fadd.s f17, f1, f29, rmm # perform operation
fadd.s f17, f1, f29, rne # perform operation
fadd.s f17, f1, f29, rtz # perform operation
fadd.s f17, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
li x22, 0x5bf00fdbed35e890 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fadd.s f22, f31, f9, dyn # perform operation
fadd.s f22, f31, f9, rdn # perform operation
fadd.s f22, f31, f9, rmm # perform operation
fadd.s f22, f31, f9, rne # perform operation
fadd.s f22, f31, f9, rtz # perform operation
fadd.s f22, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
li x15, 0x36ab9487c855aeff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fadd.s f15, f3, f7, dyn # perform operation
fadd.s f15, f3, f7, rdn # perform operation
fadd.s f15, f3, f7, rmm # perform operation
fadd.s f15, f3, f7, rne # perform operation
fadd.s f15, f3, f7, rtz # perform operation
fadd.s f15, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
li x25, 0x055498f752de4fd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
fadd.s f25, f11, f31, dyn # perform operation
fadd.s f25, f11, f31, rdn # perform operation
fadd.s f25, f11, f31, rmm # perform operation
fadd.s f25, f11, f31, rne # perform operation
fadd.s f25, f11, f31, rtz # perform operation
fadd.s f25, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
li x29, 0x8ee13962e2b20c4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
fadd.s f29, f31, f5, dyn # perform operation
fadd.s f29, f31, f5, rdn # perform operation
fadd.s f29, f31, f5, rmm # perform operation
fadd.s f29, f31, f5, rne # perform operation
fadd.s f29, f31, f5, rtz # perform operation
fadd.s f29, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
li x20, 0x4d5a07474549690f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
fadd.s f20, f7, f18, dyn # perform operation
fadd.s f20, f7, f18, rdn # perform operation
fadd.s f20, f7, f18, rmm # perform operation
fadd.s f20, f7, f18, rne # perform operation
fadd.s f20, f7, f18, rtz # perform operation
fadd.s f20, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
li x27, 0x5708b319db400366 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
fadd.s f27, f29, f6, dyn # perform operation
fadd.s f27, f29, f6, rdn # perform operation
fadd.s f27, f29, f6, rmm # perform operation
fadd.s f27, f29, f6, rne # perform operation
fadd.s f27, f29, f6, rtz # perform operation
fadd.s f27, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
li x12, 0x6acae83f1711a9cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
fadd.s f12, f31, f3, dyn # perform operation
fadd.s f12, f31, f3, rdn # perform operation
fadd.s f12, f31, f3, rmm # perform operation
fadd.s f12, f31, f3, rne # perform operation
fadd.s f12, f31, f3, rtz # perform operation
fadd.s f12, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f31, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
li x9, 0x12cade7d50addb77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
fadd.s f9, f11, f5, dyn # perform operation
fadd.s f9, f11, f5, rdn # perform operation
fadd.s f9, f11, f5, rmm # perform operation
fadd.s f9, f11, f5, rne # perform operation
fadd.s f9, f11, f5, rtz # perform operation
fadd.s f9, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
li x5, 0x9bc1885796ee347b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fadd.s f5, f18, f21, dyn # perform operation
fadd.s f5, f18, f21, rdn # perform operation
fadd.s f5, f18, f21, rmm # perform operation
fadd.s f5, f18, f21, rne # perform operation
fadd.s f5, f18, f21, rtz # perform operation
fadd.s f5, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
li x20, 0x0d0c4812603b4a47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
fadd.s f20, f2, f26, dyn # perform operation
fadd.s f20, f2, f26, rdn # perform operation
fadd.s f20, f2, f26, rmm # perform operation
fadd.s f20, f2, f26, rne # perform operation
fadd.s f20, f2, f26, rtz # perform operation
fadd.s f20, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f2, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
li x8, 0x99efac9fb0d7b90a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fadd.s f8, f1, f22, dyn # perform operation
fadd.s f8, f1, f22, rdn # perform operation
fadd.s f8, f1, f22, rmm # perform operation
fadd.s f8, f1, f22, rne # perform operation
fadd.s f8, f1, f22, rtz # perform operation
fadd.s f8, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
li x20, 0xc9f47e96639536a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fadd.s f20, f15, f29, dyn # perform operation
fadd.s f20, f15, f29, rdn # perform operation
fadd.s f20, f15, f29, rmm # perform operation
fadd.s f20, f15, f29, rne # perform operation
fadd.s f20, f15, f29, rtz # perform operation
fadd.s f20, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
li x24, 0xcce7041affdeda75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fadd.s f24, f29, f27, dyn # perform operation
fadd.s f24, f29, f27, rdn # perform operation
fadd.s f24, f29, f27, rmm # perform operation
fadd.s f24, f29, f27, rne # perform operation
fadd.s f24, f29, f27, rtz # perform operation
fadd.s f24, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
li x16, 0x5f96ac755aceb318 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
fadd.s f16, f31, f21, dyn # perform operation
fadd.s f16, f31, f21, rdn # perform operation
fadd.s f16, f31, f21, rmm # perform operation
fadd.s f16, f31, f21, rne # perform operation
fadd.s f16, f31, f21, rtz # perform operation
fadd.s f16, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
li x28, 0xe2ff64b5cff267b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
fadd.s f28, f15, f26, dyn # perform operation
fadd.s f28, f15, f26, rdn # perform operation
fadd.s f28, f15, f26, rmm # perform operation
fadd.s f28, f15, f26, rne # perform operation
fadd.s f28, f15, f26, rtz # perform operation
fadd.s f28, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
li x24, 0x9cd529ccc2cb714e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fadd.s f24, f11, f14, dyn # perform operation
fadd.s f24, f11, f14, rdn # perform operation
fadd.s f24, f11, f14, rmm # perform operation
fadd.s f24, f11, f14, rne # perform operation
fadd.s f24, f11, f14, rtz # perform operation
fadd.s f24, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f11, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
li x3, 0x0f6bdc6abbf0a2e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
fadd.s f3, f16, f1, dyn # perform operation
fadd.s f3, f16, f1, rdn # perform operation
fadd.s f3, f16, f1, rmm # perform operation
fadd.s f3, f16, f1, rne # perform operation
fadd.s f3, f16, f1, rtz # perform operation
fadd.s f3, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
li x20, 0x0fe50c4e1cafc5de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
fadd.s f20, f31, f11, dyn # perform operation
fadd.s f20, f31, f11, rdn # perform operation
fadd.s f20, f31, f11, rmm # perform operation
fadd.s f20, f31, f11, rne # perform operation
fadd.s f20, f31, f11, rtz # perform operation
fadd.s f20, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
li x18, 0xb155e1205bfe6c2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fadd.s f18, f3, f21, dyn # perform operation
fadd.s f18, f3, f21, rdn # perform operation
fadd.s f18, f3, f21, rmm # perform operation
fadd.s f18, f3, f21, rne # perform operation
fadd.s f18, f3, f21, rtz # perform operation
fadd.s f18, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
li x25, 0x4ca25ab224636c08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
fadd.s f25, f19, f4, dyn # perform operation
fadd.s f25, f19, f4, rdn # perform operation
fadd.s f25, f19, f4, rmm # perform operation
fadd.s f25, f19, f4, rne # perform operation
fadd.s f25, f19, f4, rtz # perform operation
fadd.s f25, f19, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f19, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f19, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f19, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f19, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f19, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
li x2, 0xd691387425c9626c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
fadd.s f2, f12, f16, dyn # perform operation
fadd.s f2, f12, f16, rdn # perform operation
fadd.s f2, f12, f16, rmm # perform operation
fadd.s f2, f12, f16, rne # perform operation
fadd.s f2, f12, f16, rtz # perform operation
fadd.s f2, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
li x21, 0xf3c85612d2fdee4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fadd.s f21, f20, f25, dyn # perform operation
fadd.s f21, f20, f25, rdn # perform operation
fadd.s f21, f20, f25, rmm # perform operation
fadd.s f21, f20, f25, rne # perform operation
fadd.s f21, f20, f25, rtz # perform operation
fadd.s f21, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
li x9, 0xa70e5630b5088198 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fadd.s f9, f25, f26, dyn # perform operation
fadd.s f9, f25, f26, rdn # perform operation
fadd.s f9, f25, f26, rmm # perform operation
fadd.s f9, f25, f26, rne # perform operation
fadd.s f9, f25, f26, rtz # perform operation
fadd.s f9, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
li x13, 0x080977f3def4d8fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
fadd.s f13, f23, f27, dyn # perform operation
fadd.s f13, f23, f27, rdn # perform operation
fadd.s f13, f23, f27, rmm # perform operation
fadd.s f13, f23, f27, rne # perform operation
fadd.s f13, f23, f27, rtz # perform operation
fadd.s f13, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f23, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
li x18, 0x4fef8926edb6ea4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
fadd.s f18, f3, f26, dyn # perform operation
fadd.s f18, f3, f26, rdn # perform operation
fadd.s f18, f3, f26, rmm # perform operation
fadd.s f18, f3, f26, rne # perform operation
fadd.s f18, f3, f26, rtz # perform operation
fadd.s f18, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f3, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
li x20, 0x603d628ea7e6b17d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fadd.s f20, f25, f21, dyn # perform operation
fadd.s f20, f25, f21, rdn # perform operation
fadd.s f20, f25, f21, rmm # perform operation
fadd.s f20, f25, f21, rne # perform operation
fadd.s f20, f25, f21, rtz # perform operation
fadd.s f20, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
li x12, 0x6eb409e5f916bafe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
fadd.s f12, f18, f3, dyn # perform operation
fadd.s f12, f18, f3, rdn # perform operation
fadd.s f12, f18, f3, rmm # perform operation
fadd.s f12, f18, f3, rne # perform operation
fadd.s f12, f18, f3, rtz # perform operation
fadd.s f12, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
li x22, 0x14ebb05b5243c11a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fadd.s f22, f20, f17, dyn # perform operation
fadd.s f22, f20, f17, rdn # perform operation
fadd.s f22, f20, f17, rmm # perform operation
fadd.s f22, f20, f17, rne # perform operation
fadd.s f22, f20, f17, rtz # perform operation
fadd.s f22, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
li x21, 0x02f9770f75c14034 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
fadd.s f21, f26, f23, dyn # perform operation
fadd.s f21, f26, f23, rdn # perform operation
fadd.s f21, f26, f23, rmm # perform operation
fadd.s f21, f26, f23, rne # perform operation
fadd.s f21, f26, f23, rtz # perform operation
fadd.s f21, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f26, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
li x25, 0x5dc702689c6bfad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
fadd.s f25, f8, f23, dyn # perform operation
fadd.s f25, f8, f23, rdn # perform operation
fadd.s f25, f8, f23, rmm # perform operation
fadd.s f25, f8, f23, rne # perform operation
fadd.s f25, f8, f23, rtz # perform operation
fadd.s f25, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
li x24, 0x3053c31f3b2103db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
fadd.s f24, f16, f27, dyn # perform operation
fadd.s f24, f16, f27, rdn # perform operation
fadd.s f24, f16, f27, rmm # perform operation
fadd.s f24, f16, f27, rne # perform operation
fadd.s f24, f16, f27, rtz # perform operation
fadd.s f24, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
li x19, 0x403d3881b5357bf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fadd.s f19, f5, f21, dyn # perform operation
fadd.s f19, f5, f21, rdn # perform operation
fadd.s f19, f5, f21, rmm # perform operation
fadd.s f19, f5, f21, rne # perform operation
fadd.s f19, f5, f21, rtz # perform operation
fadd.s f19, f5, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f5, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f5, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f5, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f5, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
li x29, 0x9c0cd6b8449cc077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
fadd.s f29, f23, f18, dyn # perform operation
fadd.s f29, f23, f18, rdn # perform operation
fadd.s f29, f23, f18, rmm # perform operation
fadd.s f29, f23, f18, rne # perform operation
fadd.s f29, f23, f18, rtz # perform operation
fadd.s f29, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
li x3, 0xf1993ca8a5825ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fadd.s f3, f11, f13, dyn # perform operation
fadd.s f3, f11, f13, rdn # perform operation
fadd.s f3, f11, f13, rmm # perform operation
fadd.s f3, f11, f13, rne # perform operation
fadd.s f3, f11, f13, rtz # perform operation
fadd.s f3, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
li x5, 0xe11a9db6c128c06f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fadd.s f5, f26, f14, dyn # perform operation
fadd.s f5, f26, f14, rdn # perform operation
fadd.s f5, f26, f14, rmm # perform operation
fadd.s f5, f26, f14, rne # perform operation
fadd.s f5, f26, f14, rtz # perform operation
fadd.s f5, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
li x30, 0x2445586d5ae4ca57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
fadd.s f30, f23, f4, dyn # perform operation
fadd.s f30, f23, f4, rdn # perform operation
fadd.s f30, f23, f4, rmm # perform operation
fadd.s f30, f23, f4, rne # perform operation
fadd.s f30, f23, f4, rtz # perform operation
fadd.s f30, f23, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f23, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f23, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f23, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f23, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f23, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
li x28, 0x2970feecadfc6658 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fadd.s f28, f31, f20, dyn # perform operation
fadd.s f28, f31, f20, rdn # perform operation
fadd.s f28, f31, f20, rmm # perform operation
fadd.s f28, f31, f20, rne # perform operation
fadd.s f28, f31, f20, rtz # perform operation
fadd.s f28, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
li x29, 0x1d2f86278ab88664 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fadd.s f29, f9, f31, dyn # perform operation
fadd.s f29, f9, f31, rdn # perform operation
fadd.s f29, f9, f31, rmm # perform operation
fadd.s f29, f9, f31, rne # perform operation
fadd.s f29, f9, f31, rtz # perform operation
fadd.s f29, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
li x22, 0xbccf4f6e19feef86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
fadd.s f22, f14, f15, dyn # perform operation
fadd.s f22, f14, f15, rdn # perform operation
fadd.s f22, f14, f15, rmm # perform operation
fadd.s f22, f14, f15, rne # perform operation
fadd.s f22, f14, f15, rtz # perform operation
fadd.s f22, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
li x3, 0xc9fe5e9bd53f6dc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
fadd.s f3, f25, f6, dyn # perform operation
fadd.s f3, f25, f6, rdn # perform operation
fadd.s f3, f25, f6, rmm # perform operation
fadd.s f3, f25, f6, rne # perform operation
fadd.s f3, f25, f6, rtz # perform operation
fadd.s f3, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
li x21, 0x2cc10012ee3d8791 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f4, 0(x2) # load 0xc0000000 from memory into f4
fadd.s f21, f27, f4, dyn # perform operation
fadd.s f21, f27, f4, rdn # perform operation
fadd.s f21, f27, f4, rmm # perform operation
fadd.s f21, f27, f4, rne # perform operation
fadd.s f21, f27, f4, rtz # perform operation
fadd.s f21, f27, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f27, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f27, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f27, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f27, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
li x18, 0xd76174adc9c1da08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
fadd.s f18, f5, f29, dyn # perform operation
fadd.s f18, f5, f29, rdn # perform operation
fadd.s f18, f5, f29, rmm # perform operation
fadd.s f18, f5, f29, rne # perform operation
fadd.s f18, f5, f29, rtz # perform operation
fadd.s f18, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
li x1, 0xee5ac24a78bf1c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fadd.s f1, f4, f28, dyn # perform operation
fadd.s f1, f4, f28, rdn # perform operation
fadd.s f1, f4, f28, rmm # perform operation
fadd.s f1, f4, f28, rne # perform operation
fadd.s f1, f4, f28, rtz # perform operation
fadd.s f1, f4, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f4, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f4, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f4, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f4, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
li x9, 0x6de671e0117f9b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
fadd.s f9, f24, f13, dyn # perform operation
fadd.s f9, f24, f13, rdn # perform operation
fadd.s f9, f24, f13, rmm # perform operation
fadd.s f9, f24, f13, rne # perform operation
fadd.s f9, f24, f13, rtz # perform operation
fadd.s f9, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
li x14, 0x9f2ee79edd45cf8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fadd.s f14, f28, f9, dyn # perform operation
fadd.s f14, f28, f9, rdn # perform operation
fadd.s f14, f28, f9, rmm # perform operation
fadd.s f14, f28, f9, rne # perform operation
fadd.s f14, f28, f9, rtz # perform operation
fadd.s f14, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
li x2, 0xce721aa3113b8d33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fadd.s f2, f21, f27, dyn # perform operation
fadd.s f2, f21, f27, rdn # perform operation
fadd.s f2, f21, f27, rmm # perform operation
fadd.s f2, f21, f27, rne # perform operation
fadd.s f2, f21, f27, rtz # perform operation
fadd.s f2, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
li x4, 0x14281c7d7cebe11d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fadd.s f4, f24, f11, dyn # perform operation
fadd.s f4, f24, f11, rdn # perform operation
fadd.s f4, f24, f11, rmm # perform operation
fadd.s f4, f24, f11, rne # perform operation
fadd.s f4, f24, f11, rtz # perform operation
fadd.s f4, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
li x22, 0x7b03f5474a2b8ce1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fadd.s f22, f30, f16, dyn # perform operation
fadd.s f22, f30, f16, rdn # perform operation
fadd.s f22, f30, f16, rmm # perform operation
fadd.s f22, f30, f16, rne # perform operation
fadd.s f22, f30, f16, rtz # perform operation
fadd.s f22, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
li x29, 0x83597d3d40eab052 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
fadd.s f29, f10, f5, dyn # perform operation
fadd.s f29, f10, f5, rdn # perform operation
fadd.s f29, f10, f5, rmm # perform operation
fadd.s f29, f10, f5, rne # perform operation
fadd.s f29, f10, f5, rtz # perform operation
fadd.s f29, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
li x14, 0xc2620e3c2abed6b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fadd.s f14, f24, f23, dyn # perform operation
fadd.s f14, f24, f23, rdn # perform operation
fadd.s f14, f24, f23, rmm # perform operation
fadd.s f14, f24, f23, rne # perform operation
fadd.s f14, f24, f23, rtz # perform operation
fadd.s f14, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
li x11, 0xcae0229188f87e7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
fadd.s f11, f27, f17, dyn # perform operation
fadd.s f11, f27, f17, rdn # perform operation
fadd.s f11, f27, f17, rmm # perform operation
fadd.s f11, f27, f17, rne # perform operation
fadd.s f11, f27, f17, rtz # perform operation
fadd.s f11, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
li x28, 0x16c12481f223457a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fadd.s f28, f31, f9, dyn # perform operation
fadd.s f28, f31, f9, rdn # perform operation
fadd.s f28, f31, f9, rmm # perform operation
fadd.s f28, f31, f9, rne # perform operation
fadd.s f28, f31, f9, rtz # perform operation
fadd.s f28, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
li x19, 0x583c82aa4753eb01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fadd.s f19, f4, f23, dyn # perform operation
fadd.s f19, f4, f23, rdn # perform operation
fadd.s f19, f4, f23, rmm # perform operation
fadd.s f19, f4, f23, rne # perform operation
fadd.s f19, f4, f23, rtz # perform operation
fadd.s f19, f4, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f4, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f4, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f4, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f4, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
li x23, 0xf4d4a5a938379832 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fadd.s f23, f8, f17, dyn # perform operation
fadd.s f23, f8, f17, rdn # perform operation
fadd.s f23, f8, f17, rmm # perform operation
fadd.s f23, f8, f17, rne # perform operation
fadd.s f23, f8, f17, rtz # perform operation
fadd.s f23, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
li x5, 0xdbe8c4bb1b244aa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fadd.s f5, f14, f13, dyn # perform operation
fadd.s f5, f14, f13, rdn # perform operation
fadd.s f5, f14, f13, rmm # perform operation
fadd.s f5, f14, f13, rne # perform operation
fadd.s f5, f14, f13, rtz # perform operation
fadd.s f5, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f14, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
li x8, 0xed4a23f57056608a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
fadd.s f8, f24, f1, dyn # perform operation
fadd.s f8, f24, f1, rdn # perform operation
fadd.s f8, f24, f1, rmm # perform operation
fadd.s f8, f24, f1, rne # perform operation
fadd.s f8, f24, f1, rtz # perform operation
fadd.s f8, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f24, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
li x9, 0xf12a2637e84aae4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
fadd.s f9, f25, f18, dyn # perform operation
fadd.s f9, f25, f18, rdn # perform operation
fadd.s f9, f25, f18, rmm # perform operation
fadd.s f9, f25, f18, rne # perform operation
fadd.s f9, f25, f18, rtz # perform operation
fadd.s f9, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
li x31, 0xb63d82d4782914d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
fadd.s f31, f25, f22, dyn # perform operation
fadd.s f31, f25, f22, rdn # perform operation
fadd.s f31, f25, f22, rmm # perform operation
fadd.s f31, f25, f22, rne # perform operation
fadd.s f31, f25, f22, rtz # perform operation
fadd.s f31, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
li x8, 0x9e3cd48533cc2880 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fadd.s f8, f10, f1, dyn # perform operation
fadd.s f8, f10, f1, rdn # perform operation
fadd.s f8, f10, f1, rmm # perform operation
fadd.s f8, f10, f1, rne # perform operation
fadd.s f8, f10, f1, rtz # perform operation
fadd.s f8, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
li x6, 0x0dba8613c32a78d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
fadd.s f6, f25, f12, dyn # perform operation
fadd.s f6, f25, f12, rdn # perform operation
fadd.s f6, f25, f12, rmm # perform operation
fadd.s f6, f25, f12, rne # perform operation
fadd.s f6, f25, f12, rtz # perform operation
fadd.s f6, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f25, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
li x15, 0x1f1ec651c2700b7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fadd.s f15, f11, f2, dyn # perform operation
fadd.s f15, f11, f2, rdn # perform operation
fadd.s f15, f11, f2, rmm # perform operation
fadd.s f15, f11, f2, rne # perform operation
fadd.s f15, f11, f2, rtz # perform operation
fadd.s f15, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
li x15, 0xe3b6cf24db3dd8af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fadd.s f15, f30, f7, dyn # perform operation
fadd.s f15, f30, f7, rdn # perform operation
fadd.s f15, f30, f7, rmm # perform operation
fadd.s f15, f30, f7, rne # perform operation
fadd.s f15, f30, f7, rtz # perform operation
fadd.s f15, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
li x25, 0x44bb48227e5f0223 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fadd.s f25, f27, f2, dyn # perform operation
fadd.s f25, f27, f2, rdn # perform operation
fadd.s f25, f27, f2, rmm # perform operation
fadd.s f25, f27, f2, rne # perform operation
fadd.s f25, f27, f2, rtz # perform operation
fadd.s f25, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
li x17, 0xfda3832c875be38c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fadd.s f17, f24, f2, dyn # perform operation
fadd.s f17, f24, f2, rdn # perform operation
fadd.s f17, f24, f2, rmm # perform operation
fadd.s f17, f24, f2, rne # perform operation
fadd.s f17, f24, f2, rtz # perform operation
fadd.s f17, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
li x7, 0xd5cc0e96fcef63ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fadd.s f7, f27, f28, dyn # perform operation
fadd.s f7, f27, f28, rdn # perform operation
fadd.s f7, f27, f28, rmm # perform operation
fadd.s f7, f27, f28, rne # perform operation
fadd.s f7, f27, f28, rtz # perform operation
fadd.s f7, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
li x21, 0xa365da4250c298d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fadd.s f21, f17, f27, dyn # perform operation
fadd.s f21, f17, f27, rdn # perform operation
fadd.s f21, f17, f27, rmm # perform operation
fadd.s f21, f17, f27, rne # perform operation
fadd.s f21, f17, f27, rtz # perform operation
fadd.s f21, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
li x13, 0x798a6c6b93bbd82e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fadd.s f13, f20, f29, dyn # perform operation
fadd.s f13, f20, f29, rdn # perform operation
fadd.s f13, f20, f29, rmm # perform operation
fadd.s f13, f20, f29, rne # perform operation
fadd.s f13, f20, f29, rtz # perform operation
fadd.s f13, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
li x27, 0x7b05d3f012110203 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
fadd.s f27, f1, f2, dyn # perform operation
fadd.s f27, f1, f2, rdn # perform operation
fadd.s f27, f1, f2, rmm # perform operation
fadd.s f27, f1, f2, rne # perform operation
fadd.s f27, f1, f2, rtz # perform operation
fadd.s f27, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
li x13, 0x656bf6c934760d5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fadd.s f13, f28, f19, dyn # perform operation
fadd.s f13, f28, f19, rdn # perform operation
fadd.s f13, f28, f19, rmm # perform operation
fadd.s f13, f28, f19, rne # perform operation
fadd.s f13, f28, f19, rtz # perform operation
fadd.s f13, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
li x17, 0x1dedbd2b3f6ac4f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
fadd.s f17, f16, f25, dyn # perform operation
fadd.s f17, f16, f25, rdn # perform operation
fadd.s f17, f16, f25, rmm # perform operation
fadd.s f17, f16, f25, rne # perform operation
fadd.s f17, f16, f25, rtz # perform operation
fadd.s f17, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
li x28, 0xb1bcfc4054bd3e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fadd.s f28, f2, f23, dyn # perform operation
fadd.s f28, f2, f23, rdn # perform operation
fadd.s f28, f2, f23, rmm # perform operation
fadd.s f28, f2, f23, rne # perform operation
fadd.s f28, f2, f23, rtz # perform operation
fadd.s f28, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f2, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
li x14, 0x86421cb47d7d1267 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fadd.s f14, f6, f24, dyn # perform operation
fadd.s f14, f6, f24, rdn # perform operation
fadd.s f14, f6, f24, rmm # perform operation
fadd.s f14, f6, f24, rne # perform operation
fadd.s f14, f6, f24, rtz # perform operation
fadd.s f14, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
li x10, 0x96034ae4dc87a6e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fadd.s f10, f13, f15, dyn # perform operation
fadd.s f10, f13, f15, rdn # perform operation
fadd.s f10, f13, f15, rmm # perform operation
fadd.s f10, f13, f15, rne # perform operation
fadd.s f10, f13, f15, rtz # perform operation
fadd.s f10, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
li x6, 0xd0dc54ea44b3ed51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fadd.s f6, f10, f21, dyn # perform operation
fadd.s f6, f10, f21, rdn # perform operation
fadd.s f6, f10, f21, rmm # perform operation
fadd.s f6, f10, f21, rne # perform operation
fadd.s f6, f10, f21, rtz # perform operation
fadd.s f6, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
li x11, 0x4787cd414e1d4e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fadd.s f11, f23, f20, dyn # perform operation
fadd.s f11, f23, f20, rdn # perform operation
fadd.s f11, f23, f20, rmm # perform operation
fadd.s f11, f23, f20, rne # perform operation
fadd.s f11, f23, f20, rtz # perform operation
fadd.s f11, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
li x10, 0x02845d387644df66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fadd.s f10, f9, f6, dyn # perform operation
fadd.s f10, f9, f6, rdn # perform operation
fadd.s f10, f9, f6, rmm # perform operation
fadd.s f10, f9, f6, rne # perform operation
fadd.s f10, f9, f6, rtz # perform operation
fadd.s f10, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
li x10, 0x8157fcd2b1dca3cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fadd.s f10, f6, f18, dyn # perform operation
fadd.s f10, f6, f18, rdn # perform operation
fadd.s f10, f6, f18, rmm # perform operation
fadd.s f10, f6, f18, rne # perform operation
fadd.s f10, f6, f18, rtz # perform operation
fadd.s f10, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
li x21, 0x01dcedc78a272f92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
fadd.s f21, f3, f24, dyn # perform operation
fadd.s f21, f3, f24, rdn # perform operation
fadd.s f21, f3, f24, rmm # perform operation
fadd.s f21, f3, f24, rne # perform operation
fadd.s f21, f3, f24, rtz # perform operation
fadd.s f21, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f3, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
li x19, 0xb747c8d7207f2b27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
fadd.s f19, f20, f18, dyn # perform operation
fadd.s f19, f20, f18, rdn # perform operation
fadd.s f19, f20, f18, rmm # perform operation
fadd.s f19, f20, f18, rne # perform operation
fadd.s f19, f20, f18, rtz # perform operation
fadd.s f19, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
li x15, 0x47bb866dedf57815 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
fadd.s f15, f16, f8, dyn # perform operation
fadd.s f15, f16, f8, rdn # perform operation
fadd.s f15, f16, f8, rmm # perform operation
fadd.s f15, f16, f8, rne # perform operation
fadd.s f15, f16, f8, rtz # perform operation
fadd.s f15, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f16, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
li x16, 0x21ccdcfdf60ae227 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fadd.s f16, f8, f13, dyn # perform operation
fadd.s f16, f8, f13, rdn # perform operation
fadd.s f16, f8, f13, rmm # perform operation
fadd.s f16, f8, f13, rne # perform operation
fadd.s f16, f8, f13, rtz # perform operation
fadd.s f16, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
li x15, 0x2b63a50739a13f2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
fadd.s f15, f8, f5, dyn # perform operation
fadd.s f15, f8, f5, rdn # perform operation
fadd.s f15, f8, f5, rmm # perform operation
fadd.s f15, f8, f5, rne # perform operation
fadd.s f15, f8, f5, rtz # perform operation
fadd.s f15, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
li x30, 0x0ae2ebb91a8db527 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fadd.s f30, f24, f16, dyn # perform operation
fadd.s f30, f24, f16, rdn # perform operation
fadd.s f30, f24, f16, rmm # perform operation
fadd.s f30, f24, f16, rne # perform operation
fadd.s f30, f24, f16, rtz # perform operation
fadd.s f30, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f24, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
li x11, 0xc37beb8a03309ca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fadd.s f11, f31, f15, dyn # perform operation
fadd.s f11, f31, f15, rdn # perform operation
fadd.s f11, f31, f15, rmm # perform operation
fadd.s f11, f31, f15, rne # perform operation
fadd.s f11, f31, f15, rtz # perform operation
fadd.s f11, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
li x7, 0xd501ab990c2cffbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
fadd.s f7, f10, f3, dyn # perform operation
fadd.s f7, f10, f3, rdn # perform operation
fadd.s f7, f10, f3, rmm # perform operation
fadd.s f7, f10, f3, rne # perform operation
fadd.s f7, f10, f3, rtz # perform operation
fadd.s f7, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
li x9, 0xf5d0f0ae0a514f31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fadd.s f9, f24, f2, dyn # perform operation
fadd.s f9, f24, f2, rdn # perform operation
fadd.s f9, f24, f2, rmm # perform operation
fadd.s f9, f24, f2, rne # perform operation
fadd.s f9, f24, f2, rtz # perform operation
fadd.s f9, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
li x2, 0xf420afadee9fecf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fadd.s f2, f28, f29, dyn # perform operation
fadd.s f2, f28, f29, rdn # perform operation
fadd.s f2, f28, f29, rmm # perform operation
fadd.s f2, f28, f29, rne # perform operation
fadd.s f2, f28, f29, rtz # perform operation
fadd.s f2, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
li x24, 0xca2fe47fdeb202f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
fadd.s f24, f8, f20, dyn # perform operation
fadd.s f24, f8, f20, rdn # perform operation
fadd.s f24, f8, f20, rmm # perform operation
fadd.s f24, f8, f20, rne # perform operation
fadd.s f24, f8, f20, rtz # perform operation
fadd.s f24, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
li x25, 0xc14c34fcee9955cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fadd.s f25, f29, f2, dyn # perform operation
fadd.s f25, f29, f2, rdn # perform operation
fadd.s f25, f29, f2, rmm # perform operation
fadd.s f25, f29, f2, rne # perform operation
fadd.s f25, f29, f2, rtz # perform operation
fadd.s f25, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
li x21, 0xcc01d87ce0cc219a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fadd.s f21, f29, f2, dyn # perform operation
fadd.s f21, f29, f2, rdn # perform operation
fadd.s f21, f29, f2, rmm # perform operation
fadd.s f21, f29, f2, rne # perform operation
fadd.s f21, f29, f2, rtz # perform operation
fadd.s f21, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
li x3, 0x2b3bf967857a5759 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fadd.s f3, f8, f28, dyn # perform operation
fadd.s f3, f8, f28, rdn # perform operation
fadd.s f3, f8, f28, rmm # perform operation
fadd.s f3, f8, f28, rne # perform operation
fadd.s f3, f8, f28, rtz # perform operation
fadd.s f3, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
li x14, 0x79ac6fe9f539a7b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
fadd.s f14, f12, f6, dyn # perform operation
fadd.s f14, f12, f6, rdn # perform operation
fadd.s f14, f12, f6, rmm # perform operation
fadd.s f14, f12, f6, rne # perform operation
fadd.s f14, f12, f6, rtz # perform operation
fadd.s f14, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
li x31, 0x77f6147a6fa2f24b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fadd.s f31, f20, f29, dyn # perform operation
fadd.s f31, f20, f29, rdn # perform operation
fadd.s f31, f20, f29, rmm # perform operation
fadd.s f31, f20, f29, rne # perform operation
fadd.s f31, f20, f29, rtz # perform operation
fadd.s f31, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
li x19, 0x6e867e7f15ce58e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
fadd.s f19, f26, f30, dyn # perform operation
fadd.s f19, f26, f30, rdn # perform operation
fadd.s f19, f26, f30, rmm # perform operation
fadd.s f19, f26, f30, rne # perform operation
fadd.s f19, f26, f30, rtz # perform operation
fadd.s f19, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
li x6, 0x7926a6cc2e67b7e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fadd.s f6, f5, f27, dyn # perform operation
fadd.s f6, f5, f27, rdn # perform operation
fadd.s f6, f5, f27, rmm # perform operation
fadd.s f6, f5, f27, rne # perform operation
fadd.s f6, f5, f27, rtz # perform operation
fadd.s f6, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
li x14, 0x6ca3271fb69dc626 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fadd.s f14, f8, f24, dyn # perform operation
fadd.s f14, f8, f24, rdn # perform operation
fadd.s f14, f8, f24, rmm # perform operation
fadd.s f14, f8, f24, rne # perform operation
fadd.s f14, f8, f24, rtz # perform operation
fadd.s f14, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
li x25, 0xf39a699e733f53e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fadd.s f25, f15, f22, dyn # perform operation
fadd.s f25, f15, f22, rdn # perform operation
fadd.s f25, f15, f22, rmm # perform operation
fadd.s f25, f15, f22, rne # perform operation
fadd.s f25, f15, f22, rtz # perform operation
fadd.s f25, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
li x22, 0xb9642f4a18f32c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fadd.s f22, f31, f17, dyn # perform operation
fadd.s f22, f31, f17, rdn # perform operation
fadd.s f22, f31, f17, rmm # perform operation
fadd.s f22, f31, f17, rne # perform operation
fadd.s f22, f31, f17, rtz # perform operation
fadd.s f22, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
li x8, 0x0f358d82166fd243 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
fadd.s f8, f18, f20, dyn # perform operation
fadd.s f8, f18, f20, rdn # perform operation
fadd.s f8, f18, f20, rmm # perform operation
fadd.s f8, f18, f20, rne # perform operation
fadd.s f8, f18, f20, rtz # perform operation
fadd.s f8, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
li x28, 0x2a7d8063506e9f1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
fadd.s f28, f31, f1, dyn # perform operation
fadd.s f28, f31, f1, rdn # perform operation
fadd.s f28, f31, f1, rmm # perform operation
fadd.s f28, f31, f1, rne # perform operation
fadd.s f28, f31, f1, rtz # perform operation
fadd.s f28, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
li x30, 0x9129fd7a92322667 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fadd.s f30, f1, f22, dyn # perform operation
fadd.s f30, f1, f22, rdn # perform operation
fadd.s f30, f1, f22, rmm # perform operation
fadd.s f30, f1, f22, rne # perform operation
fadd.s f30, f1, f22, rtz # perform operation
fadd.s f30, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
li x23, 0xeb42b56759f48e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fadd.s f23, f20, f15, dyn # perform operation
fadd.s f23, f20, f15, rdn # perform operation
fadd.s f23, f20, f15, rmm # perform operation
fadd.s f23, f20, f15, rne # perform operation
fadd.s f23, f20, f15, rtz # perform operation
fadd.s f23, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
li x31, 0xaa412fb91f2b01c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fadd.s f31, f3, f6, dyn # perform operation
fadd.s f31, f3, f6, rdn # perform operation
fadd.s f31, f3, f6, rmm # perform operation
fadd.s f31, f3, f6, rne # perform operation
fadd.s f31, f3, f6, rtz # perform operation
fadd.s f31, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
li x3, 0x46d61c71a874da3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fadd.s f3, f21, f28, dyn # perform operation
fadd.s f3, f21, f28, rdn # perform operation
fadd.s f3, f21, f28, rmm # perform operation
fadd.s f3, f21, f28, rne # perform operation
fadd.s f3, f21, f28, rtz # perform operation
fadd.s f3, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
li x11, 0x82e9eeb54ef15bd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
fadd.s f11, f9, f7, dyn # perform operation
fadd.s f11, f9, f7, rdn # perform operation
fadd.s f11, f9, f7, rmm # perform operation
fadd.s f11, f9, f7, rne # perform operation
fadd.s f11, f9, f7, rtz # perform operation
fadd.s f11, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
li x13, 0xfe823978e2ae4e19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
fadd.s f13, f22, f20, dyn # perform operation
fadd.s f13, f22, f20, rdn # perform operation
fadd.s f13, f22, f20, rmm # perform operation
fadd.s f13, f22, f20, rne # perform operation
fadd.s f13, f22, f20, rtz # perform operation
fadd.s f13, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
li x6, 0x7969710de290298f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
fadd.s f6, f28, f3, dyn # perform operation
fadd.s f6, f28, f3, rdn # perform operation
fadd.s f6, f28, f3, rmm # perform operation
fadd.s f6, f28, f3, rne # perform operation
fadd.s f6, f28, f3, rtz # perform operation
fadd.s f6, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
li x12, 0x02d195d126a29e14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
fadd.s f12, f15, f16, dyn # perform operation
fadd.s f12, f15, f16, rdn # perform operation
fadd.s f12, f15, f16, rmm # perform operation
fadd.s f12, f15, f16, rne # perform operation
fadd.s f12, f15, f16, rtz # perform operation
fadd.s f12, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
li x17, 0x6213a641334d19e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fadd.s f17, f25, f15, dyn # perform operation
fadd.s f17, f25, f15, rdn # perform operation
fadd.s f17, f25, f15, rmm # perform operation
fadd.s f17, f25, f15, rne # perform operation
fadd.s f17, f25, f15, rtz # perform operation
fadd.s f17, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
li x25, 0x486366466a656a9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
fadd.s f25, f23, f3, dyn # perform operation
fadd.s f25, f23, f3, rdn # perform operation
fadd.s f25, f23, f3, rmm # perform operation
fadd.s f25, f23, f3, rne # perform operation
fadd.s f25, f23, f3, rtz # perform operation
fadd.s f25, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
li x30, 0xa7817e36b5f8632f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
fadd.s f30, f24, f27, dyn # perform operation
fadd.s f30, f24, f27, rdn # perform operation
fadd.s f30, f24, f27, rmm # perform operation
fadd.s f30, f24, f27, rne # perform operation
fadd.s f30, f24, f27, rtz # perform operation
fadd.s f30, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
li x7, 0x39c82d64e768df1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fadd.s f7, f21, f15, dyn # perform operation
fadd.s f7, f21, f15, rdn # perform operation
fadd.s f7, f21, f15, rmm # perform operation
fadd.s f7, f21, f15, rne # perform operation
fadd.s f7, f21, f15, rtz # perform operation
fadd.s f7, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
li x20, 0xa7b62917d6de3165 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
fadd.s f20, f25, f1, dyn # perform operation
fadd.s f20, f25, f1, rdn # perform operation
fadd.s f20, f25, f1, rmm # perform operation
fadd.s f20, f25, f1, rne # perform operation
fadd.s f20, f25, f1, rtz # perform operation
fadd.s f20, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
li x8, 0x20e58a356291ae8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fadd.s f8, f18, f21, dyn # perform operation
fadd.s f8, f18, f21, rdn # perform operation
fadd.s f8, f18, f21, rmm # perform operation
fadd.s f8, f18, f21, rne # perform operation
fadd.s f8, f18, f21, rtz # perform operation
fadd.s f8, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
li x4, 0xcfd17a6890cf3993 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fadd.s f4, f24, f16, dyn # perform operation
fadd.s f4, f24, f16, rdn # perform operation
fadd.s f4, f24, f16, rmm # perform operation
fadd.s f4, f24, f16, rne # perform operation
fadd.s f4, f24, f16, rtz # perform operation
fadd.s f4, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f24, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
li x11, 0x4dcf70f81fe535c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
fadd.s f11, f27, f18, dyn # perform operation
fadd.s f11, f27, f18, rdn # perform operation
fadd.s f11, f27, f18, rmm # perform operation
fadd.s f11, f27, f18, rne # perform operation
fadd.s f11, f27, f18, rtz # perform operation
fadd.s f11, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
li x1, 0xd73f23124c5c3a7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fadd.s f1, f25, f20, dyn # perform operation
fadd.s f1, f25, f20, rdn # perform operation
fadd.s f1, f25, f20, rmm # perform operation
fadd.s f1, f25, f20, rne # perform operation
fadd.s f1, f25, f20, rtz # perform operation
fadd.s f1, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
li x21, 0xa79dbd22e9e9bd06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
fadd.s f21, f6, f31, dyn # perform operation
fadd.s f21, f6, f31, rdn # perform operation
fadd.s f21, f6, f31, rmm # perform operation
fadd.s f21, f6, f31, rne # perform operation
fadd.s f21, f6, f31, rtz # perform operation
fadd.s f21, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
li x6, 0x5fed74bdff4f3219 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
fadd.s f6, f4, f19, dyn # perform operation
fadd.s f6, f4, f19, rdn # perform operation
fadd.s f6, f4, f19, rmm # perform operation
fadd.s f6, f4, f19, rne # perform operation
fadd.s f6, f4, f19, rtz # perform operation
fadd.s f6, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
li x16, 0xcc39d8098ed13e1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fadd.s f16, f28, f27, dyn # perform operation
fadd.s f16, f28, f27, rdn # perform operation
fadd.s f16, f28, f27, rmm # perform operation
fadd.s f16, f28, f27, rne # perform operation
fadd.s f16, f28, f27, rtz # perform operation
fadd.s f16, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f28, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
li x26, 0x66dedb827305eaba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fadd.s f26, f9, f10, dyn # perform operation
fadd.s f26, f9, f10, rdn # perform operation
fadd.s f26, f9, f10, rmm # perform operation
fadd.s f26, f9, f10, rne # perform operation
fadd.s f26, f9, f10, rtz # perform operation
fadd.s f26, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
li x15, 0xe6df700416a10024 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
fadd.s f15, f4, f30, dyn # perform operation
fadd.s f15, f4, f30, rdn # perform operation
fadd.s f15, f4, f30, rmm # perform operation
fadd.s f15, f4, f30, rne # perform operation
fadd.s f15, f4, f30, rtz # perform operation
fadd.s f15, f4, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f4, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f4, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f4, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f4, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
li x7, 0x86904ccf1eb11658 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
fadd.s f7, f8, f3, dyn # perform operation
fadd.s f7, f8, f3, rdn # perform operation
fadd.s f7, f8, f3, rmm # perform operation
fadd.s f7, f8, f3, rne # perform operation
fadd.s f7, f8, f3, rtz # perform operation
fadd.s f7, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
li x24, 0xbbdbed49abad807f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fadd.s f24, f2, f31, dyn # perform operation
fadd.s f24, f2, f31, rdn # perform operation
fadd.s f24, f2, f31, rmm # perform operation
fadd.s f24, f2, f31, rne # perform operation
fadd.s f24, f2, f31, rtz # perform operation
fadd.s f24, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
li x23, 0x128e71e6d61f3d2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fadd.s f23, f4, f11, dyn # perform operation
fadd.s f23, f4, f11, rdn # perform operation
fadd.s f23, f4, f11, rmm # perform operation
fadd.s f23, f4, f11, rne # perform operation
fadd.s f23, f4, f11, rtz # perform operation
fadd.s f23, f4, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f4, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f4, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f4, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f4, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
li x17, 0x5e115b460a480437 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fadd.s f17, f24, f25, dyn # perform operation
fadd.s f17, f24, f25, rdn # perform operation
fadd.s f17, f24, f25, rmm # perform operation
fadd.s f17, f24, f25, rne # perform operation
fadd.s f17, f24, f25, rtz # perform operation
fadd.s f17, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
li x16, 0x8815a54c3503f119 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fadd.s f16, f5, f12, dyn # perform operation
fadd.s f16, f5, f12, rdn # perform operation
fadd.s f16, f5, f12, rmm # perform operation
fadd.s f16, f5, f12, rne # perform operation
fadd.s f16, f5, f12, rtz # perform operation
fadd.s f16, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
li x6, 0xbf8d4e868d22a152 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fadd.s f6, f11, f19, dyn # perform operation
fadd.s f6, f11, f19, rdn # perform operation
fadd.s f6, f11, f19, rmm # perform operation
fadd.s f6, f11, f19, rne # perform operation
fadd.s f6, f11, f19, rtz # perform operation
fadd.s f6, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
li x27, 0xacad0aeb132b27ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fadd.s f27, f13, f11, dyn # perform operation
fadd.s f27, f13, f11, rdn # perform operation
fadd.s f27, f13, f11, rmm # perform operation
fadd.s f27, f13, f11, rne # perform operation
fadd.s f27, f13, f11, rtz # perform operation
fadd.s f27, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f13, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
li x23, 0x658e0babde9c7be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
fadd.s f23, f10, f16, dyn # perform operation
fadd.s f23, f10, f16, rdn # perform operation
fadd.s f23, f10, f16, rmm # perform operation
fadd.s f23, f10, f16, rne # perform operation
fadd.s f23, f10, f16, rtz # perform operation
fadd.s f23, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
li x3, 0xa2b6be29f43a6695 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fadd.s f3, f5, f22, dyn # perform operation
fadd.s f3, f5, f22, rdn # perform operation
fadd.s f3, f5, f22, rmm # perform operation
fadd.s f3, f5, f22, rne # perform operation
fadd.s f3, f5, f22, rtz # perform operation
fadd.s f3, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
li x14, 0x4b0d490281255da9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fadd.s f14, f1, f16, dyn # perform operation
fadd.s f14, f1, f16, rdn # perform operation
fadd.s f14, f1, f16, rmm # perform operation
fadd.s f14, f1, f16, rne # perform operation
fadd.s f14, f1, f16, rtz # perform operation
fadd.s f14, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f1, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
li x13, 0x42774bd79715532c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fadd.s f13, f25, f28, dyn # perform operation
fadd.s f13, f25, f28, rdn # perform operation
fadd.s f13, f25, f28, rmm # perform operation
fadd.s f13, f25, f28, rne # perform operation
fadd.s f13, f25, f28, rtz # perform operation
fadd.s f13, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
li x26, 0xea162f123155dc45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
fadd.s f26, f12, f29, dyn # perform operation
fadd.s f26, f12, f29, rdn # perform operation
fadd.s f26, f12, f29, rmm # perform operation
fadd.s f26, f12, f29, rne # perform operation
fadd.s f26, f12, f29, rtz # perform operation
fadd.s f26, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
li x20, 0xea5d08be7ef579be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fadd.s f20, f24, f11, dyn # perform operation
fadd.s f20, f24, f11, rdn # perform operation
fadd.s f20, f24, f11, rmm # perform operation
fadd.s f20, f24, f11, rne # perform operation
fadd.s f20, f24, f11, rtz # perform operation
fadd.s f20, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
li x10, 0x78bb5f7a480dc4e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fadd.s f10, f24, f20, dyn # perform operation
fadd.s f10, f24, f20, rdn # perform operation
fadd.s f10, f24, f20, rmm # perform operation
fadd.s f10, f24, f20, rne # perform operation
fadd.s f10, f24, f20, rtz # perform operation
fadd.s f10, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
li x15, 0x552c86ee4901e9a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fadd.s f15, f1, f20, dyn # perform operation
fadd.s f15, f1, f20, rdn # perform operation
fadd.s f15, f1, f20, rmm # perform operation
fadd.s f15, f1, f20, rne # perform operation
fadd.s f15, f1, f20, rtz # perform operation
fadd.s f15, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x15, 0x8adf36a16f3d1211 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
fadd.s f15, f30, f10, dyn # perform operation
fadd.s f15, f30, f10, rdn # perform operation
fadd.s f15, f30, f10, rmm # perform operation
fadd.s f15, f30, f10, rne # perform operation
fadd.s f15, f30, f10, rtz # perform operation
fadd.s f15, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
li x11, 0xf382dd72976aa8d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
fadd.s f11, f24, f18, dyn # perform operation
fadd.s f11, f24, f18, rdn # perform operation
fadd.s f11, f24, f18, rmm # perform operation
fadd.s f11, f24, f18, rne # perform operation
fadd.s f11, f24, f18, rtz # perform operation
fadd.s f11, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
li x2, 0x733247ce1fbdf26d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fadd.s f2, f20, f24, dyn # perform operation
fadd.s f2, f20, f24, rdn # perform operation
fadd.s f2, f20, f24, rmm # perform operation
fadd.s f2, f20, f24, rne # perform operation
fadd.s f2, f20, f24, rtz # perform operation
fadd.s f2, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f20, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
li x13, 0x2946efcb4e2a8ce1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fadd.s f13, f18, f9, dyn # perform operation
fadd.s f13, f18, f9, rdn # perform operation
fadd.s f13, f18, f9, rmm # perform operation
fadd.s f13, f18, f9, rne # perform operation
fadd.s f13, f18, f9, rtz # perform operation
fadd.s f13, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
li x17, 0xb2159e85904e1aab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
fadd.s f17, f3, f7, dyn # perform operation
fadd.s f17, f3, f7, rdn # perform operation
fadd.s f17, f3, f7, rmm # perform operation
fadd.s f17, f3, f7, rne # perform operation
fadd.s f17, f3, f7, rtz # perform operation
fadd.s f17, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
li x31, 0x7cbf5489c3a0c74a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
fadd.s f31, f9, f8, dyn # perform operation
fadd.s f31, f9, f8, rdn # perform operation
fadd.s f31, f9, f8, rmm # perform operation
fadd.s f31, f9, f8, rne # perform operation
fadd.s f31, f9, f8, rtz # perform operation
fadd.s f31, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
li x2, 0xd53086a817a93c93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fadd.s f2, f9, f15, dyn # perform operation
fadd.s f2, f9, f15, rdn # perform operation
fadd.s f2, f9, f15, rmm # perform operation
fadd.s f2, f9, f15, rne # perform operation
fadd.s f2, f9, f15, rtz # perform operation
fadd.s f2, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
li x30, 0x6203e0aba1ea4b8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fadd.s f30, f2, f11, dyn # perform operation
fadd.s f30, f2, f11, rdn # perform operation
fadd.s f30, f2, f11, rmm # perform operation
fadd.s f30, f2, f11, rne # perform operation
fadd.s f30, f2, f11, rtz # perform operation
fadd.s f30, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
li x17, 0xe777a3383891873d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
fadd.s f17, f26, f29, dyn # perform operation
fadd.s f17, f26, f29, rdn # perform operation
fadd.s f17, f26, f29, rmm # perform operation
fadd.s f17, f26, f29, rne # perform operation
fadd.s f17, f26, f29, rtz # perform operation
fadd.s f17, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
li x17, 0x3a7308b7ee6d1b73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
fadd.s f17, f22, f6, dyn # perform operation
fadd.s f17, f22, f6, rdn # perform operation
fadd.s f17, f22, f6, rmm # perform operation
fadd.s f17, f22, f6, rne # perform operation
fadd.s f17, f22, f6, rtz # perform operation
fadd.s f17, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
li x9, 0x7e8c9a3c6be57ee3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
fadd.s f9, f28, f19, dyn # perform operation
fadd.s f9, f28, f19, rdn # perform operation
fadd.s f9, f28, f19, rmm # perform operation
fadd.s f9, f28, f19, rne # perform operation
fadd.s f9, f28, f19, rtz # perform operation
fadd.s f9, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
li x13, 0x8b121b205bfa64fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
fadd.s f13, f20, f6, dyn # perform operation
fadd.s f13, f20, f6, rdn # perform operation
fadd.s f13, f20, f6, rmm # perform operation
fadd.s f13, f20, f6, rne # perform operation
fadd.s f13, f20, f6, rtz # perform operation
fadd.s f13, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
li x12, 0x4a28d1a24a4b95af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fadd.s f12, f8, f10, dyn # perform operation
fadd.s f12, f8, f10, rdn # perform operation
fadd.s f12, f8, f10, rmm # perform operation
fadd.s f12, f8, f10, rne # perform operation
fadd.s f12, f8, f10, rtz # perform operation
fadd.s f12, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f8, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
li x27, 0x86ecac71da42be53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
fadd.s f27, f22, f21, dyn # perform operation
fadd.s f27, f22, f21, rdn # perform operation
fadd.s f27, f22, f21, rmm # perform operation
fadd.s f27, f22, f21, rne # perform operation
fadd.s f27, f22, f21, rtz # perform operation
fadd.s f27, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
li x28, 0x61cb77b709311764 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fadd.s f28, f22, f12, dyn # perform operation
fadd.s f28, f22, f12, rdn # perform operation
fadd.s f28, f22, f12, rmm # perform operation
fadd.s f28, f22, f12, rne # perform operation
fadd.s f28, f22, f12, rtz # perform operation
fadd.s f28, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
li x27, 0xb453cfccdf1bf608 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
fadd.s f27, f6, f14, dyn # perform operation
fadd.s f27, f6, f14, rdn # perform operation
fadd.s f27, f6, f14, rmm # perform operation
fadd.s f27, f6, f14, rne # perform operation
fadd.s f27, f6, f14, rtz # perform operation
fadd.s f27, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x27, 0xa98c798ca79d8756 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fadd.s f27, f22, f6, dyn # perform operation
fadd.s f27, f22, f6, rdn # perform operation
fadd.s f27, f22, f6, rmm # perform operation
fadd.s f27, f22, f6, rne # perform operation
fadd.s f27, f22, f6, rtz # perform operation
fadd.s f27, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
li x23, 0xe97ba6ca50ee4f91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fadd.s f23, f3, f30, dyn # perform operation
fadd.s f23, f3, f30, rdn # perform operation
fadd.s f23, f3, f30, rmm # perform operation
fadd.s f23, f3, f30, rne # perform operation
fadd.s f23, f3, f30, rtz # perform operation
fadd.s f23, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f3, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
li x4, 0x7b40a2d09560a802 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fadd.s f4, f20, f22, dyn # perform operation
fadd.s f4, f20, f22, rdn # perform operation
fadd.s f4, f20, f22, rmm # perform operation
fadd.s f4, f20, f22, rne # perform operation
fadd.s f4, f20, f22, rtz # perform operation
fadd.s f4, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
li x5, 0xf2c171f407955db0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fadd.s f5, f24, f22, dyn # perform operation
fadd.s f5, f24, f22, rdn # perform operation
fadd.s f5, f24, f22, rmm # perform operation
fadd.s f5, f24, f22, rne # perform operation
fadd.s f5, f24, f22, rtz # perform operation
fadd.s f5, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
li x19, 0xb665b551b9f03cec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
fadd.s f19, f15, f24, dyn # perform operation
fadd.s f19, f15, f24, rdn # perform operation
fadd.s f19, f15, f24, rmm # perform operation
fadd.s f19, f15, f24, rne # perform operation
fadd.s f19, f15, f24, rtz # perform operation
fadd.s f19, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
li x2, 0x59b431f234ecbfd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fadd.s f2, f10, f12, dyn # perform operation
fadd.s f2, f10, f12, rdn # perform operation
fadd.s f2, f10, f12, rmm # perform operation
fadd.s f2, f10, f12, rne # perform operation
fadd.s f2, f10, f12, rtz # perform operation
fadd.s f2, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
li x20, 0x7831a442340f85ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fadd.s f20, f19, f8, dyn # perform operation
fadd.s f20, f19, f8, rdn # perform operation
fadd.s f20, f19, f8, rmm # perform operation
fadd.s f20, f19, f8, rne # perform operation
fadd.s f20, f19, f8, rtz # perform operation
fadd.s f20, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f19, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
li x16, 0xd8e69cf9a895b117 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
fadd.s f16, f9, f17, dyn # perform operation
fadd.s f16, f9, f17, rdn # perform operation
fadd.s f16, f9, f17, rmm # perform operation
fadd.s f16, f9, f17, rne # perform operation
fadd.s f16, f9, f17, rtz # perform operation
fadd.s f16, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
li x24, 0xcd05dc92273a23d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
fadd.s f24, f3, f17, dyn # perform operation
fadd.s f24, f3, f17, rdn # perform operation
fadd.s f24, f3, f17, rmm # perform operation
fadd.s f24, f3, f17, rne # perform operation
fadd.s f24, f3, f17, rtz # perform operation
fadd.s f24, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
li x26, 0x05fd59a22d51d766 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
fadd.s f26, f15, f2, dyn # perform operation
fadd.s f26, f15, f2, rdn # perform operation
fadd.s f26, f15, f2, rmm # perform operation
fadd.s f26, f15, f2, rne # perform operation
fadd.s f26, f15, f2, rtz # perform operation
fadd.s f26, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
li x25, 0x5b807431ea315728 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fadd.s f25, f31, f18, dyn # perform operation
fadd.s f25, f31, f18, rdn # perform operation
fadd.s f25, f31, f18, rmm # perform operation
fadd.s f25, f31, f18, rne # perform operation
fadd.s f25, f31, f18, rtz # perform operation
fadd.s f25, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
li x12, 0xd2b9c462d4323115 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f4, 0(x2) # load 0x80000000 from memory into f4
fadd.s f12, f2, f4, dyn # perform operation
fadd.s f12, f2, f4, rdn # perform operation
fadd.s f12, f2, f4, rmm # perform operation
fadd.s f12, f2, f4, rne # perform operation
fadd.s f12, f2, f4, rtz # perform operation
fadd.s f12, f2, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f2, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f2, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f2, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f2, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
li x14, 0x09814597fc2ca075 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fadd.s f14, f20, f25, dyn # perform operation
fadd.s f14, f20, f25, rdn # perform operation
fadd.s f14, f20, f25, rmm # perform operation
fadd.s f14, f20, f25, rne # perform operation
fadd.s f14, f20, f25, rtz # perform operation
fadd.s f14, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
li x4, 0xee507d205a6077c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fadd.s f4, f30, f2, dyn # perform operation
fadd.s f4, f30, f2, rdn # perform operation
fadd.s f4, f30, f2, rmm # perform operation
fadd.s f4, f30, f2, rne # perform operation
fadd.s f4, f30, f2, rtz # perform operation
fadd.s f4, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
li x3, 0x92302f3978376084 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fadd.s f3, f14, f25, dyn # perform operation
fadd.s f3, f14, f25, rdn # perform operation
fadd.s f3, f14, f25, rmm # perform operation
fadd.s f3, f14, f25, rne # perform operation
fadd.s f3, f14, f25, rtz # perform operation
fadd.s f3, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f14, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
li x3, 0x929917c92aed8511 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fadd.s f3, f2, f31, dyn # perform operation
fadd.s f3, f2, f31, rdn # perform operation
fadd.s f3, f2, f31, rmm # perform operation
fadd.s f3, f2, f31, rne # perform operation
fadd.s f3, f2, f31, rtz # perform operation
fadd.s f3, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
li x15, 0x5ccb3535c5e3845d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fadd.s f15, f29, f24, dyn # perform operation
fadd.s f15, f29, f24, rdn # perform operation
fadd.s f15, f29, f24, rmm # perform operation
fadd.s f15, f29, f24, rne # perform operation
fadd.s f15, f29, f24, rtz # perform operation
fadd.s f15, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
li x20, 0xe8426cd143d1b271 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fadd.s f20, f16, f1, dyn # perform operation
fadd.s f20, f16, f1, rdn # perform operation
fadd.s f20, f16, f1, rmm # perform operation
fadd.s f20, f16, f1, rne # perform operation
fadd.s f20, f16, f1, rtz # perform operation
fadd.s f20, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
li x23, 0xa2ac97e94968f904 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fadd.s f23, f19, f6, dyn # perform operation
fadd.s f23, f19, f6, rdn # perform operation
fadd.s f23, f19, f6, rmm # perform operation
fadd.s f23, f19, f6, rne # perform operation
fadd.s f23, f19, f6, rtz # perform operation
fadd.s f23, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
li x25, 0xb0b6fb091b1a90dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
fadd.s f25, f3, f12, dyn # perform operation
fadd.s f25, f3, f12, rdn # perform operation
fadd.s f25, f3, f12, rmm # perform operation
fadd.s f25, f3, f12, rne # perform operation
fadd.s f25, f3, f12, rtz # perform operation
fadd.s f25, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
li x23, 0x7ce68ad86a4f38eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fadd.s f23, f4, f7, dyn # perform operation
fadd.s f23, f4, f7, rdn # perform operation
fadd.s f23, f4, f7, rmm # perform operation
fadd.s f23, f4, f7, rne # perform operation
fadd.s f23, f4, f7, rtz # perform operation
fadd.s f23, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
li x13, 0x8b2e46d3f42a5bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fadd.s f13, f27, f29, dyn # perform operation
fadd.s f13, f27, f29, rdn # perform operation
fadd.s f13, f27, f29, rmm # perform operation
fadd.s f13, f27, f29, rne # perform operation
fadd.s f13, f27, f29, rtz # perform operation
fadd.s f13, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
li x12, 0x7200080f87a65fcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fadd.s f12, f17, f20, dyn # perform operation
fadd.s f12, f17, f20, rdn # perform operation
fadd.s f12, f17, f20, rmm # perform operation
fadd.s f12, f17, f20, rne # perform operation
fadd.s f12, f17, f20, rtz # perform operation
fadd.s f12, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
li x21, 0xe6a056b597d4f818 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fadd.s f21, f19, f23, dyn # perform operation
fadd.s f21, f19, f23, rdn # perform operation
fadd.s f21, f19, f23, rmm # perform operation
fadd.s f21, f19, f23, rne # perform operation
fadd.s f21, f19, f23, rtz # perform operation
fadd.s f21, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
li x1, 0xe921623a9ba0d73b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
fadd.s f1, f12, f13, dyn # perform operation
fadd.s f1, f12, f13, rdn # perform operation
fadd.s f1, f12, f13, rmm # perform operation
fadd.s f1, f12, f13, rne # perform operation
fadd.s f1, f12, f13, rtz # perform operation
fadd.s f1, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
li x23, 0x58bc8677e2936b6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fadd.s f23, f18, f10, dyn # perform operation
fadd.s f23, f18, f10, rdn # perform operation
fadd.s f23, f18, f10, rmm # perform operation
fadd.s f23, f18, f10, rne # perform operation
fadd.s f23, f18, f10, rtz # perform operation
fadd.s f23, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
li x8, 0x55fb7a50803a043b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
fadd.s f8, f22, f24, dyn # perform operation
fadd.s f8, f22, f24, rdn # perform operation
fadd.s f8, f22, f24, rmm # perform operation
fadd.s f8, f22, f24, rne # perform operation
fadd.s f8, f22, f24, rtz # perform operation
fadd.s f8, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f22, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
li x28, 0x7317dd4abdeff069 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fadd.s f28, f29, f31, dyn # perform operation
fadd.s f28, f29, f31, rdn # perform operation
fadd.s f28, f29, f31, rmm # perform operation
fadd.s f28, f29, f31, rne # perform operation
fadd.s f28, f29, f31, rtz # perform operation
fadd.s f28, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
li x3, 0xbcbc1a5286871fef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
fadd.s f3, f15, f24, dyn # perform operation
fadd.s f3, f15, f24, rdn # perform operation
fadd.s f3, f15, f24, rmm # perform operation
fadd.s f3, f15, f24, rne # perform operation
fadd.s f3, f15, f24, rtz # perform operation
fadd.s f3, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
li x4, 0x32c0cabf9c1b5451 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
fadd.s f4, f28, f18, dyn # perform operation
fadd.s f4, f28, f18, rdn # perform operation
fadd.s f4, f28, f18, rmm # perform operation
fadd.s f4, f28, f18, rne # perform operation
fadd.s f4, f28, f18, rtz # perform operation
fadd.s f4, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f28, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
li x5, 0x48881a31184edff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
fadd.s f5, f20, f14, dyn # perform operation
fadd.s f5, f20, f14, rdn # perform operation
fadd.s f5, f20, f14, rmm # perform operation
fadd.s f5, f20, f14, rne # perform operation
fadd.s f5, f20, f14, rtz # perform operation
fadd.s f5, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
li x12, 0xd0ce00bf5efeb6d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
fadd.s f12, f31, f11, dyn # perform operation
fadd.s f12, f31, f11, rdn # perform operation
fadd.s f12, f31, f11, rmm # perform operation
fadd.s f12, f31, f11, rne # perform operation
fadd.s f12, f31, f11, rtz # perform operation
fadd.s f12, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
li x4, 0x56ac28283bbaba68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fadd.s f4, f17, f21, dyn # perform operation
fadd.s f4, f17, f21, rdn # perform operation
fadd.s f4, f17, f21, rmm # perform operation
fadd.s f4, f17, f21, rne # perform operation
fadd.s f4, f17, f21, rtz # perform operation
fadd.s f4, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
li x5, 0x98aa9144ae9f13d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fadd.s f5, f20, f3, dyn # perform operation
fadd.s f5, f20, f3, rdn # perform operation
fadd.s f5, f20, f3, rmm # perform operation
fadd.s f5, f20, f3, rne # perform operation
fadd.s f5, f20, f3, rtz # perform operation
fadd.s f5, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
li x19, 0xfc95512237ea90f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
fadd.s f19, f13, f14, dyn # perform operation
fadd.s f19, f13, f14, rdn # perform operation
fadd.s f19, f13, f14, rmm # perform operation
fadd.s f19, f13, f14, rne # perform operation
fadd.s f19, f13, f14, rtz # perform operation
fadd.s f19, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
li x9, 0x8f7296fb5a64cc7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
fadd.s f9, f5, f26, dyn # perform operation
fadd.s f9, f5, f26, rdn # perform operation
fadd.s f9, f5, f26, rmm # perform operation
fadd.s f9, f5, f26, rne # perform operation
fadd.s f9, f5, f26, rtz # perform operation
fadd.s f9, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f5, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
li x31, 0xdf384218feda1896 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fadd.s f31, f23, f16, dyn # perform operation
fadd.s f31, f23, f16, rdn # perform operation
fadd.s f31, f23, f16, rmm # perform operation
fadd.s f31, f23, f16, rne # perform operation
fadd.s f31, f23, f16, rtz # perform operation
fadd.s f31, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
li x17, 0x623f3136ebb9ee21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fadd.s f17, f20, f12, dyn # perform operation
fadd.s f17, f20, f12, rdn # perform operation
fadd.s f17, f20, f12, rmm # perform operation
fadd.s f17, f20, f12, rne # perform operation
fadd.s f17, f20, f12, rtz # perform operation
fadd.s f17, f20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f20, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f20, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f20, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f20, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f20, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
li x6, 0x44e92252600c1fbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
fadd.s f6, f7, f26, dyn # perform operation
fadd.s f6, f7, f26, rdn # perform operation
fadd.s f6, f7, f26, rmm # perform operation
fadd.s f6, f7, f26, rne # perform operation
fadd.s f6, f7, f26, rtz # perform operation
fadd.s f6, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
li x7, 0x9d444068bc58e800 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fadd.s f7, f15, f19, dyn # perform operation
fadd.s f7, f15, f19, rdn # perform operation
fadd.s f7, f15, f19, rmm # perform operation
fadd.s f7, f15, f19, rne # perform operation
fadd.s f7, f15, f19, rtz # perform operation
fadd.s f7, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f15, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
li x2, 0xbdd4a4ba68ab8874 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fadd.s f2, f9, f17, dyn # perform operation
fadd.s f2, f9, f17, rdn # perform operation
fadd.s f2, f9, f17, rmm # perform operation
fadd.s f2, f9, f17, rne # perform operation
fadd.s f2, f9, f17, rtz # perform operation
fadd.s f2, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
li x6, 0xdeb7e5744b4bbf6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fadd.s f6, f1, f28, dyn # perform operation
fadd.s f6, f1, f28, rdn # perform operation
fadd.s f6, f1, f28, rmm # perform operation
fadd.s f6, f1, f28, rne # perform operation
fadd.s f6, f1, f28, rtz # perform operation
fadd.s f6, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
li x8, 0xc1c76d393142f186 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
fadd.s f8, f17, f7, dyn # perform operation
fadd.s f8, f17, f7, rdn # perform operation
fadd.s f8, f17, f7, rmm # perform operation
fadd.s f8, f17, f7, rne # perform operation
fadd.s f8, f17, f7, rtz # perform operation
fadd.s f8, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
li x23, 0xa3dbdb7cabceeec0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
fadd.s f23, f3, f16, dyn # perform operation
fadd.s f23, f3, f16, rdn # perform operation
fadd.s f23, f3, f16, rmm # perform operation
fadd.s f23, f3, f16, rne # perform operation
fadd.s f23, f3, f16, rtz # perform operation
fadd.s f23, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
li x15, 0xec1694b39b51b0c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fadd.s f15, f27, f23, dyn # perform operation
fadd.s f15, f27, f23, rdn # perform operation
fadd.s f15, f27, f23, rmm # perform operation
fadd.s f15, f27, f23, rne # perform operation
fadd.s f15, f27, f23, rtz # perform operation
fadd.s f15, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
li x30, 0x6d75ce46803aad07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
fadd.s f30, f29, f31, dyn # perform operation
fadd.s f30, f29, f31, rdn # perform operation
fadd.s f30, f29, f31, rmm # perform operation
fadd.s f30, f29, f31, rne # perform operation
fadd.s f30, f29, f31, rtz # perform operation
fadd.s f30, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
li x1, 0x0b246d973a56c4d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
fadd.s f1, f11, f14, dyn # perform operation
fadd.s f1, f11, f14, rdn # perform operation
fadd.s f1, f11, f14, rmm # perform operation
fadd.s f1, f11, f14, rne # perform operation
fadd.s f1, f11, f14, rtz # perform operation
fadd.s f1, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f11, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
li x27, 0x238291b0b9dabce1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fadd.s f27, f26, f9, dyn # perform operation
fadd.s f27, f26, f9, rdn # perform operation
fadd.s f27, f26, f9, rmm # perform operation
fadd.s f27, f26, f9, rne # perform operation
fadd.s f27, f26, f9, rtz # perform operation
fadd.s f27, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
li x17, 0xd8623c317723789c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fadd.s f17, f31, f23, dyn # perform operation
fadd.s f17, f31, f23, rdn # perform operation
fadd.s f17, f31, f23, rmm # perform operation
fadd.s f17, f31, f23, rne # perform operation
fadd.s f17, f31, f23, rtz # perform operation
fadd.s f17, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
li x27, 0x3073e323cda701f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fadd.s f27, f4, f19, dyn # perform operation
fadd.s f27, f4, f19, rdn # perform operation
fadd.s f27, f4, f19, rmm # perform operation
fadd.s f27, f4, f19, rne # perform operation
fadd.s f27, f4, f19, rtz # perform operation
fadd.s f27, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
li x22, 0xa1d2adc5bf32ea04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fadd.s f22, f11, f9, dyn # perform operation
fadd.s f22, f11, f9, rdn # perform operation
fadd.s f22, f11, f9, rmm # perform operation
fadd.s f22, f11, f9, rne # perform operation
fadd.s f22, f11, f9, rtz # perform operation
fadd.s f22, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
li x24, 0x91f0d8dc19bb8f3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fadd.s f24, f14, f13, dyn # perform operation
fadd.s f24, f14, f13, rdn # perform operation
fadd.s f24, f14, f13, rmm # perform operation
fadd.s f24, f14, f13, rne # perform operation
fadd.s f24, f14, f13, rtz # perform operation
fadd.s f24, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f14, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
li x15, 0xfa6efd1e9ee68725 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fadd.s f15, f7, f19, dyn # perform operation
fadd.s f15, f7, f19, rdn # perform operation
fadd.s f15, f7, f19, rmm # perform operation
fadd.s f15, f7, f19, rne # perform operation
fadd.s f15, f7, f19, rtz # perform operation
fadd.s f15, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
li x6, 0xd53c081f7aaa85e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fadd.s f6, f21, f10, dyn # perform operation
fadd.s f6, f21, f10, rdn # perform operation
fadd.s f6, f21, f10, rmm # perform operation
fadd.s f6, f21, f10, rne # perform operation
fadd.s f6, f21, f10, rtz # perform operation
fadd.s f6, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
li x30, 0x79b4c6f6f38d4d9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
fadd.s f30, f26, f25, dyn # perform operation
fadd.s f30, f26, f25, rdn # perform operation
fadd.s f30, f26, f25, rmm # perform operation
fadd.s f30, f26, f25, rne # perform operation
fadd.s f30, f26, f25, rtz # perform operation
fadd.s f30, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
li x15, 0xd242290f72f11330 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fadd.s f15, f23, f22, dyn # perform operation
fadd.s f15, f23, f22, rdn # perform operation
fadd.s f15, f23, f22, rmm # perform operation
fadd.s f15, f23, f22, rne # perform operation
fadd.s f15, f23, f22, rtz # perform operation
fadd.s f15, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
li x18, 0xe79b0427b9bbc9cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fadd.s f18, f21, f26, dyn # perform operation
fadd.s f18, f21, f26, rdn # perform operation
fadd.s f18, f21, f26, rmm # perform operation
fadd.s f18, f21, f26, rne # perform operation
fadd.s f18, f21, f26, rtz # perform operation
fadd.s f18, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
li x27, 0xe992d05c7b1f42bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
fadd.s f27, f26, f11, dyn # perform operation
fadd.s f27, f26, f11, rdn # perform operation
fadd.s f27, f26, f11, rmm # perform operation
fadd.s f27, f26, f11, rne # perform operation
fadd.s f27, f26, f11, rtz # perform operation
fadd.s f27, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
li x3, 0x08de171c5592ebd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fadd.s f3, f12, f15, dyn # perform operation
fadd.s f3, f12, f15, rdn # perform operation
fadd.s f3, f12, f15, rmm # perform operation
fadd.s f3, f12, f15, rne # perform operation
fadd.s f3, f12, f15, rtz # perform operation
fadd.s f3, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
li x6, 0xbae3e5c400d760a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fadd.s f6, f10, f15, dyn # perform operation
fadd.s f6, f10, f15, rdn # perform operation
fadd.s f6, f10, f15, rmm # perform operation
fadd.s f6, f10, f15, rne # perform operation
fadd.s f6, f10, f15, rtz # perform operation
fadd.s f6, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
li x11, 0x37bb83994ec73cc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
fadd.s f11, f10, f27, dyn # perform operation
fadd.s f11, f10, f27, rdn # perform operation
fadd.s f11, f10, f27, rmm # perform operation
fadd.s f11, f10, f27, rne # perform operation
fadd.s f11, f10, f27, rtz # perform operation
fadd.s f11, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
li x12, 0x09257fe8bbf7e1ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fadd.s f12, f8, f22, dyn # perform operation
fadd.s f12, f8, f22, rdn # perform operation
fadd.s f12, f8, f22, rmm # perform operation
fadd.s f12, f8, f22, rne # perform operation
fadd.s f12, f8, f22, rtz # perform operation
fadd.s f12, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
li x15, 0x69bea1b682549e11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fadd.s f15, f19, f1, dyn # perform operation
fadd.s f15, f19, f1, rdn # perform operation
fadd.s f15, f19, f1, rmm # perform operation
fadd.s f15, f19, f1, rne # perform operation
fadd.s f15, f19, f1, rtz # perform operation
fadd.s f15, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f19, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
li x25, 0xaf390b50e437662c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
fadd.s f25, f20, f31, dyn # perform operation
fadd.s f25, f20, f31, rdn # perform operation
fadd.s f25, f20, f31, rmm # perform operation
fadd.s f25, f20, f31, rne # perform operation
fadd.s f25, f20, f31, rtz # perform operation
fadd.s f25, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
li x9, 0x3f2384b8978312ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
fadd.s f9, f22, f8, dyn # perform operation
fadd.s f9, f22, f8, rdn # perform operation
fadd.s f9, f22, f8, rmm # perform operation
fadd.s f9, f22, f8, rne # perform operation
fadd.s f9, f22, f8, rtz # perform operation
fadd.s f9, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
li x23, 0xd49beb3209087d1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fadd.s f23, f31, f3, dyn # perform operation
fadd.s f23, f31, f3, rdn # perform operation
fadd.s f23, f31, f3, rmm # perform operation
fadd.s f23, f31, f3, rne # perform operation
fadd.s f23, f31, f3, rtz # perform operation
fadd.s f23, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f31, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
li x23, 0xfa5e46c85a0955d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fadd.s f23, f6, f2, dyn # perform operation
fadd.s f23, f6, f2, rdn # perform operation
fadd.s f23, f6, f2, rmm # perform operation
fadd.s f23, f6, f2, rne # perform operation
fadd.s f23, f6, f2, rtz # perform operation
fadd.s f23, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f6, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
li x2, 0x5e35435db3fc6c55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fadd.s f2, f11, f27, dyn # perform operation
fadd.s f2, f11, f27, rdn # perform operation
fadd.s f2, f11, f27, rmm # perform operation
fadd.s f2, f11, f27, rne # perform operation
fadd.s f2, f11, f27, rtz # perform operation
fadd.s f2, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
li x27, 0x1b50706862b87f0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fadd.s f27, f10, f16, dyn # perform operation
fadd.s f27, f10, f16, rdn # perform operation
fadd.s f27, f10, f16, rmm # perform operation
fadd.s f27, f10, f16, rne # perform operation
fadd.s f27, f10, f16, rtz # perform operation
fadd.s f27, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
li x4, 0x2536e3fd571b6995 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
fadd.s f4, f12, f3, dyn # perform operation
fadd.s f4, f12, f3, rdn # perform operation
fadd.s f4, f12, f3, rmm # perform operation
fadd.s f4, f12, f3, rne # perform operation
fadd.s f4, f12, f3, rtz # perform operation
fadd.s f4, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
li x7, 0x1ec3749babb46aec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fadd.s f7, f5, f23, dyn # perform operation
fadd.s f7, f5, f23, rdn # perform operation
fadd.s f7, f5, f23, rmm # perform operation
fadd.s f7, f5, f23, rne # perform operation
fadd.s f7, f5, f23, rtz # perform operation
fadd.s f7, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
li x5, 0x2786b259bd8d4dfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fadd.s f5, f22, f21, dyn # perform operation
fadd.s f5, f22, f21, rdn # perform operation
fadd.s f5, f22, f21, rmm # perform operation
fadd.s f5, f22, f21, rne # perform operation
fadd.s f5, f22, f21, rtz # perform operation
fadd.s f5, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
li x6, 0x90a2c6a8a445ce95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
fadd.s f6, f24, f8, dyn # perform operation
fadd.s f6, f24, f8, rdn # perform operation
fadd.s f6, f24, f8, rmm # perform operation
fadd.s f6, f24, f8, rne # perform operation
fadd.s f6, f24, f8, rtz # perform operation
fadd.s f6, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
li x23, 0x9b7b6936237819c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f4, 0(x2) # load 0xff7fffff from memory into f4
fadd.s f23, f11, f4, dyn # perform operation
fadd.s f23, f11, f4, rdn # perform operation
fadd.s f23, f11, f4, rmm # perform operation
fadd.s f23, f11, f4, rne # perform operation
fadd.s f23, f11, f4, rtz # perform operation
fadd.s f23, f11, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f11, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f11, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f11, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f11, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
li x5, 0xdcea5daa66b725f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fadd.s f5, f25, f13, dyn # perform operation
fadd.s f5, f25, f13, rdn # perform operation
fadd.s f5, f25, f13, rmm # perform operation
fadd.s f5, f25, f13, rne # perform operation
fadd.s f5, f25, f13, rtz # perform operation
fadd.s f5, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
li x17, 0x372c63ee0a048d51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
fadd.s f17, f3, f7, dyn # perform operation
fadd.s f17, f3, f7, rdn # perform operation
fadd.s f17, f3, f7, rmm # perform operation
fadd.s f17, f3, f7, rne # perform operation
fadd.s f17, f3, f7, rtz # perform operation
fadd.s f17, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
li x31, 0xc633c777b1cbef87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fadd.s f31, f23, f21, dyn # perform operation
fadd.s f31, f23, f21, rdn # perform operation
fadd.s f31, f23, f21, rmm # perform operation
fadd.s f31, f23, f21, rne # perform operation
fadd.s f31, f23, f21, rtz # perform operation
fadd.s f31, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f23, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
li x23, 0x6bda52097cf53106 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
fadd.s f23, f13, f17, dyn # perform operation
fadd.s f23, f13, f17, rdn # perform operation
fadd.s f23, f13, f17, rmm # perform operation
fadd.s f23, f13, f17, rne # perform operation
fadd.s f23, f13, f17, rtz # perform operation
fadd.s f23, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
li x1, 0x3d4da2b18fb94574 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fadd.s f1, f27, f30, dyn # perform operation
fadd.s f1, f27, f30, rdn # perform operation
fadd.s f1, f27, f30, rmm # perform operation
fadd.s f1, f27, f30, rne # perform operation
fadd.s f1, f27, f30, rtz # perform operation
fadd.s f1, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
li x4, 0x88d13d1c3ac919e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
fadd.s f4, f26, f9, dyn # perform operation
fadd.s f4, f26, f9, rdn # perform operation
fadd.s f4, f26, f9, rmm # perform operation
fadd.s f4, f26, f9, rne # perform operation
fadd.s f4, f26, f9, rtz # perform operation
fadd.s f4, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
li x18, 0xe1f2e27c6aef24d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fadd.s f18, f24, f22, dyn # perform operation
fadd.s f18, f24, f22, rdn # perform operation
fadd.s f18, f24, f22, rmm # perform operation
fadd.s f18, f24, f22, rne # perform operation
fadd.s f18, f24, f22, rtz # perform operation
fadd.s f18, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
li x21, 0x3767f96827497562 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fadd.s f21, f18, f29, dyn # perform operation
fadd.s f21, f18, f29, rdn # perform operation
fadd.s f21, f18, f29, rmm # perform operation
fadd.s f21, f18, f29, rne # perform operation
fadd.s f21, f18, f29, rtz # perform operation
fadd.s f21, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
li x10, 0x3a76dba56a7a3602 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fadd.s f10, f3, f28, dyn # perform operation
fadd.s f10, f3, f28, rdn # perform operation
fadd.s f10, f3, f28, rmm # perform operation
fadd.s f10, f3, f28, rne # perform operation
fadd.s f10, f3, f28, rtz # perform operation
fadd.s f10, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
li x14, 0x389206e4f9910cc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
fadd.s f14, f11, f18, dyn # perform operation
fadd.s f14, f11, f18, rdn # perform operation
fadd.s f14, f11, f18, rmm # perform operation
fadd.s f14, f11, f18, rne # perform operation
fadd.s f14, f11, f18, rtz # perform operation
fadd.s f14, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
li x22, 0x880799bf148d74bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
fadd.s f22, f14, f5, dyn # perform operation
fadd.s f22, f14, f5, rdn # perform operation
fadd.s f22, f14, f5, rmm # perform operation
fadd.s f22, f14, f5, rne # perform operation
fadd.s f22, f14, f5, rtz # perform operation
fadd.s f22, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
li x23, 0x9388a3fc045cb714 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fadd.s f23, f18, f16, dyn # perform operation
fadd.s f23, f18, f16, rdn # perform operation
fadd.s f23, f18, f16, rmm # perform operation
fadd.s f23, f18, f16, rne # perform operation
fadd.s f23, f18, f16, rtz # perform operation
fadd.s f23, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
li x7, 0x91ed2a42d104894f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
fadd.s f7, f27, f24, dyn # perform operation
fadd.s f7, f27, f24, rdn # perform operation
fadd.s f7, f27, f24, rmm # perform operation
fadd.s f7, f27, f24, rne # perform operation
fadd.s f7, f27, f24, rtz # perform operation
fadd.s f7, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
li x26, 0x0f01cc9c2b354053 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fadd.s f26, f19, f21, dyn # perform operation
fadd.s f26, f19, f21, rdn # perform operation
fadd.s f26, f19, f21, rmm # perform operation
fadd.s f26, f19, f21, rne # perform operation
fadd.s f26, f19, f21, rtz # perform operation
fadd.s f26, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
li x2, 0xe5f98282cc0b2728 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
fadd.s f2, f25, f8, dyn # perform operation
fadd.s f2, f25, f8, rdn # perform operation
fadd.s f2, f25, f8, rmm # perform operation
fadd.s f2, f25, f8, rne # perform operation
fadd.s f2, f25, f8, rtz # perform operation
fadd.s f2, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
li x29, 0x940c951057225867 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fadd.s f29, f18, f21, dyn # perform operation
fadd.s f29, f18, f21, rdn # perform operation
fadd.s f29, f18, f21, rmm # perform operation
fadd.s f29, f18, f21, rne # perform operation
fadd.s f29, f18, f21, rtz # perform operation
fadd.s f29, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
li x19, 0xb45ddec608de0874 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
fadd.s f19, f26, f14, dyn # perform operation
fadd.s f19, f26, f14, rdn # perform operation
fadd.s f19, f26, f14, rmm # perform operation
fadd.s f19, f26, f14, rne # perform operation
fadd.s f19, f26, f14, rtz # perform operation
fadd.s f19, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
li x24, 0xb0971412ffcfb51c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fadd.s f24, f29, f27, dyn # perform operation
fadd.s f24, f29, f27, rdn # perform operation
fadd.s f24, f29, f27, rmm # perform operation
fadd.s f24, f29, f27, rne # perform operation
fadd.s f24, f29, f27, rtz # perform operation
fadd.s f24, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
li x1, 0xc3471b15b4cb6b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fadd.s f1, f20, f25, dyn # perform operation
fadd.s f1, f20, f25, rdn # perform operation
fadd.s f1, f20, f25, rmm # perform operation
fadd.s f1, f20, f25, rne # perform operation
fadd.s f1, f20, f25, rtz # perform operation
fadd.s f1, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
li x14, 0xed32888cd34d7464 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
fadd.s f14, f11, f30, dyn # perform operation
fadd.s f14, f11, f30, rdn # perform operation
fadd.s f14, f11, f30, rmm # perform operation
fadd.s f14, f11, f30, rne # perform operation
fadd.s f14, f11, f30, rtz # perform operation
fadd.s f14, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
li x11, 0xe95f26580257ba07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
fadd.s f11, f23, f6, dyn # perform operation
fadd.s f11, f23, f6, rdn # perform operation
fadd.s f11, f23, f6, rmm # perform operation
fadd.s f11, f23, f6, rne # perform operation
fadd.s f11, f23, f6, rtz # perform operation
fadd.s f11, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
li x8, 0xf8dc4e977ee025f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fadd.s f8, f4, f27, dyn # perform operation
fadd.s f8, f4, f27, rdn # perform operation
fadd.s f8, f4, f27, rmm # perform operation
fadd.s f8, f4, f27, rne # perform operation
fadd.s f8, f4, f27, rtz # perform operation
fadd.s f8, f4, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f4, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f4, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f4, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f4, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
li x13, 0x481455a001b28084 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fadd.s f13, f6, f10, dyn # perform operation
fadd.s f13, f6, f10, rdn # perform operation
fadd.s f13, f6, f10, rmm # perform operation
fadd.s f13, f6, f10, rne # perform operation
fadd.s f13, f6, f10, rtz # perform operation
fadd.s f13, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
li x28, 0x72d7071c6237c005 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
fadd.s f28, f5, f9, dyn # perform operation
fadd.s f28, f5, f9, rdn # perform operation
fadd.s f28, f5, f9, rmm # perform operation
fadd.s f28, f5, f9, rne # perform operation
fadd.s f28, f5, f9, rtz # perform operation
fadd.s f28, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
li x2, 0x5d130daa55d93bb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
fadd.s f2, f21, f28, dyn # perform operation
fadd.s f2, f21, f28, rdn # perform operation
fadd.s f2, f21, f28, rmm # perform operation
fadd.s f2, f21, f28, rne # perform operation
fadd.s f2, f21, f28, rtz # perform operation
fadd.s f2, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
li x11, 0x0e5663f11927f298 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fadd.s f11, f17, f22, dyn # perform operation
fadd.s f11, f17, f22, rdn # perform operation
fadd.s f11, f17, f22, rmm # perform operation
fadd.s f11, f17, f22, rne # perform operation
fadd.s f11, f17, f22, rtz # perform operation
fadd.s f11, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
li x29, 0xf9ce82620540f3a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
fadd.s f29, f19, f16, dyn # perform operation
fadd.s f29, f19, f16, rdn # perform operation
fadd.s f29, f19, f16, rmm # perform operation
fadd.s f29, f19, f16, rne # perform operation
fadd.s f29, f19, f16, rtz # perform operation
fadd.s f29, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
li x13, 0x9913b16b4eb744e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fadd.s f13, f11, f6, dyn # perform operation
fadd.s f13, f11, f6, rdn # perform operation
fadd.s f13, f11, f6, rmm # perform operation
fadd.s f13, f11, f6, rne # perform operation
fadd.s f13, f11, f6, rtz # perform operation
fadd.s f13, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
li x19, 0x492c09cd8addcf8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fadd.s f19, f13, f16, dyn # perform operation
fadd.s f19, f13, f16, rdn # perform operation
fadd.s f19, f13, f16, rmm # perform operation
fadd.s f19, f13, f16, rne # perform operation
fadd.s f19, f13, f16, rtz # perform operation
fadd.s f19, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
li x17, 0x561863c774db22fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
fadd.s f17, f21, f31, dyn # perform operation
fadd.s f17, f21, f31, rdn # perform operation
fadd.s f17, f21, f31, rmm # perform operation
fadd.s f17, f21, f31, rne # perform operation
fadd.s f17, f21, f31, rtz # perform operation
fadd.s f17, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
li x28, 0x5747383e258cc6e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fadd.s f28, f10, f13, dyn # perform operation
fadd.s f28, f10, f13, rdn # perform operation
fadd.s f28, f10, f13, rmm # perform operation
fadd.s f28, f10, f13, rne # perform operation
fadd.s f28, f10, f13, rtz # perform operation
fadd.s f28, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
li x9, 0x30c72535be69fa11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fadd.s f9, f25, f6, dyn # perform operation
fadd.s f9, f25, f6, rdn # perform operation
fadd.s f9, f25, f6, rmm # perform operation
fadd.s f9, f25, f6, rne # perform operation
fadd.s f9, f25, f6, rtz # perform operation
fadd.s f9, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
li x10, 0xba6c1f4b6928d66b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fadd.s f10, f26, f23, dyn # perform operation
fadd.s f10, f26, f23, rdn # perform operation
fadd.s f10, f26, f23, rmm # perform operation
fadd.s f10, f26, f23, rne # perform operation
fadd.s f10, f26, f23, rtz # perform operation
fadd.s f10, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f26, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
li x3, 0x76ef3300b4519696 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fadd.s f3, f5, f10, dyn # perform operation
fadd.s f3, f5, f10, rdn # perform operation
fadd.s f3, f5, f10, rmm # perform operation
fadd.s f3, f5, f10, rne # perform operation
fadd.s f3, f5, f10, rtz # perform operation
fadd.s f3, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
li x12, 0xa4e4ae977ba77002 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
fadd.s f12, f2, f5, dyn # perform operation
fadd.s f12, f2, f5, rdn # perform operation
fadd.s f12, f2, f5, rmm # perform operation
fadd.s f12, f2, f5, rne # perform operation
fadd.s f12, f2, f5, rtz # perform operation
fadd.s f12, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
li x17, 0x0638d5f7b1d12a3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fadd.s f17, f19, f12, dyn # perform operation
fadd.s f17, f19, f12, rdn # perform operation
fadd.s f17, f19, f12, rmm # perform operation
fadd.s f17, f19, f12, rne # perform operation
fadd.s f17, f19, f12, rtz # perform operation
fadd.s f17, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
li x3, 0x515aa067cea251bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
fadd.s f3, f26, f4, dyn # perform operation
fadd.s f3, f26, f4, rdn # perform operation
fadd.s f3, f26, f4, rmm # perform operation
fadd.s f3, f26, f4, rne # perform operation
fadd.s f3, f26, f4, rtz # perform operation
fadd.s f3, f26, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f26, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f26, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f26, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f26, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f26, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
li x13, 0x9aecf75c69390236 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fadd.s f13, f9, f11, dyn # perform operation
fadd.s f13, f9, f11, rdn # perform operation
fadd.s f13, f9, f11, rmm # perform operation
fadd.s f13, f9, f11, rne # perform operation
fadd.s f13, f9, f11, rtz # perform operation
fadd.s f13, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f9, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
li x9, 0x94c436a4b6cb4503 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
fadd.s f9, f24, f27, dyn # perform operation
fadd.s f9, f24, f27, rdn # perform operation
fadd.s f9, f24, f27, rmm # perform operation
fadd.s f9, f24, f27, rne # perform operation
fadd.s f9, f24, f27, rtz # perform operation
fadd.s f9, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
li x11, 0x6b33ca04e58234e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
fadd.s f11, f8, f2, dyn # perform operation
fadd.s f11, f8, f2, rdn # perform operation
fadd.s f11, f8, f2, rmm # perform operation
fadd.s f11, f8, f2, rne # perform operation
fadd.s f11, f8, f2, rtz # perform operation
fadd.s f11, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
li x19, 0xd33e33c41b09a98a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
fadd.s f19, f30, f7, dyn # perform operation
fadd.s f19, f30, f7, rdn # perform operation
fadd.s f19, f30, f7, rmm # perform operation
fadd.s f19, f30, f7, rne # perform operation
fadd.s f19, f30, f7, rtz # perform operation
fadd.s f19, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
li x28, 0x8cabe81c36db63ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fadd.s f28, f9, f26, dyn # perform operation
fadd.s f28, f9, f26, rdn # perform operation
fadd.s f28, f9, f26, rmm # perform operation
fadd.s f28, f9, f26, rne # perform operation
fadd.s f28, f9, f26, rtz # perform operation
fadd.s f28, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f9, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
li x4, 0xa9d659df8bfd5df6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fadd.s f4, f5, f6, dyn # perform operation
fadd.s f4, f5, f6, rdn # perform operation
fadd.s f4, f5, f6, rmm # perform operation
fadd.s f4, f5, f6, rne # perform operation
fadd.s f4, f5, f6, rtz # perform operation
fadd.s f4, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f5, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
li x16, 0xe0190ae47d30b69e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
fadd.s f16, f5, f26, dyn # perform operation
fadd.s f16, f5, f26, rdn # perform operation
fadd.s f16, f5, f26, rmm # perform operation
fadd.s f16, f5, f26, rne # perform operation
fadd.s f16, f5, f26, rtz # perform operation
fadd.s f16, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f5, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
li x4, 0x17f04cc0425243d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
fadd.s f4, f29, f7, dyn # perform operation
fadd.s f4, f29, f7, rdn # perform operation
fadd.s f4, f29, f7, rmm # perform operation
fadd.s f4, f29, f7, rne # perform operation
fadd.s f4, f29, f7, rtz # perform operation
fadd.s f4, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f29, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
li x13, 0xa332d7327cdcb8e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fadd.s f13, f6, f2, dyn # perform operation
fadd.s f13, f6, f2, rdn # perform operation
fadd.s f13, f6, f2, rmm # perform operation
fadd.s f13, f6, f2, rne # perform operation
fadd.s f13, f6, f2, rtz # perform operation
fadd.s f13, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f6, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
li x27, 0xd40ce1d49c842d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fadd.s f27, f12, f26, dyn # perform operation
fadd.s f27, f12, f26, rdn # perform operation
fadd.s f27, f12, f26, rmm # perform operation
fadd.s f27, f12, f26, rne # perform operation
fadd.s f27, f12, f26, rtz # perform operation
fadd.s f27, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
li x18, 0x318989b4f0352568 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fadd.s f18, f4, f24, dyn # perform operation
fadd.s f18, f4, f24, rdn # perform operation
fadd.s f18, f4, f24, rmm # perform operation
fadd.s f18, f4, f24, rne # perform operation
fadd.s f18, f4, f24, rtz # perform operation
fadd.s f18, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
li x31, 0x14d2bec0cf70ea34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fadd.s f31, f16, f5, dyn # perform operation
fadd.s f31, f16, f5, rdn # perform operation
fadd.s f31, f16, f5, rmm # perform operation
fadd.s f31, f16, f5, rne # perform operation
fadd.s f31, f16, f5, rtz # perform operation
fadd.s f31, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
li x19, 0xe47b747cbca470a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
fadd.s f19, f22, f4, dyn # perform operation
fadd.s f19, f22, f4, rdn # perform operation
fadd.s f19, f22, f4, rmm # perform operation
fadd.s f19, f22, f4, rne # perform operation
fadd.s f19, f22, f4, rtz # perform operation
fadd.s f19, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
li x1, 0xd3b360051ef2be3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
fadd.s f1, f14, f28, dyn # perform operation
fadd.s f1, f14, f28, rdn # perform operation
fadd.s f1, f14, f28, rmm # perform operation
fadd.s f1, f14, f28, rne # perform operation
fadd.s f1, f14, f28, rtz # perform operation
fadd.s f1, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f14, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
li x1, 0x55be063159b1b3bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
fadd.s f1, f31, f13, dyn # perform operation
fadd.s f1, f31, f13, rdn # perform operation
fadd.s f1, f31, f13, rmm # perform operation
fadd.s f1, f31, f13, rne # perform operation
fadd.s f1, f31, f13, rtz # perform operation
fadd.s f1, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
li x13, 0x5b81b9048952296f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fadd.s f13, f21, f23, dyn # perform operation
fadd.s f13, f21, f23, rdn # perform operation
fadd.s f13, f21, f23, rmm # perform operation
fadd.s f13, f21, f23, rne # perform operation
fadd.s f13, f21, f23, rtz # perform operation
fadd.s f13, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
li x2, 0xb3cfb86dab9963a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fadd.s f2, f16, f3, dyn # perform operation
fadd.s f2, f16, f3, rdn # perform operation
fadd.s f2, f16, f3, rmm # perform operation
fadd.s f2, f16, f3, rne # perform operation
fadd.s f2, f16, f3, rtz # perform operation
fadd.s f2, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
li x12, 0xddfd5efb87512493 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
fadd.s f12, f21, f8, dyn # perform operation
fadd.s f12, f21, f8, rdn # perform operation
fadd.s f12, f21, f8, rmm # perform operation
fadd.s f12, f21, f8, rne # perform operation
fadd.s f12, f21, f8, rtz # perform operation
fadd.s f12, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
li x6, 0xd25f854a91d9405e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fadd.s f6, f5, f25, dyn # perform operation
fadd.s f6, f5, f25, rdn # perform operation
fadd.s f6, f5, f25, rmm # perform operation
fadd.s f6, f5, f25, rne # perform operation
fadd.s f6, f5, f25, rtz # perform operation
fadd.s f6, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
li x29, 0xf020bdd3befbf2ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
fadd.s f29, f6, f9, dyn # perform operation
fadd.s f29, f6, f9, rdn # perform operation
fadd.s f29, f6, f9, rmm # perform operation
fadd.s f29, f6, f9, rne # perform operation
fadd.s f29, f6, f9, rtz # perform operation
fadd.s f29, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
li x4, 0x908774b9b9d7649d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fadd.s f4, f31, f30, dyn # perform operation
fadd.s f4, f31, f30, rdn # perform operation
fadd.s f4, f31, f30, rmm # perform operation
fadd.s f4, f31, f30, rne # perform operation
fadd.s f4, f31, f30, rtz # perform operation
fadd.s f4, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f31, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
li x16, 0x322a8d5a93169126 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fadd.s f16, f1, f23, dyn # perform operation
fadd.s f16, f1, f23, rdn # perform operation
fadd.s f16, f1, f23, rmm # perform operation
fadd.s f16, f1, f23, rne # perform operation
fadd.s f16, f1, f23, rtz # perform operation
fadd.s f16, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
li x13, 0xdf3c9eff3772fa49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
fadd.s f13, f9, f4, dyn # perform operation
fadd.s f13, f9, f4, rdn # perform operation
fadd.s f13, f9, f4, rmm # perform operation
fadd.s f13, f9, f4, rne # perform operation
fadd.s f13, f9, f4, rtz # perform operation
fadd.s f13, f9, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f9, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f9, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f9, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f9, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f9, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
li x23, 0x728e22d3cebd4a91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fadd.s f23, f3, f28, dyn # perform operation
fadd.s f23, f3, f28, rdn # perform operation
fadd.s f23, f3, f28, rmm # perform operation
fadd.s f23, f3, f28, rne # perform operation
fadd.s f23, f3, f28, rtz # perform operation
fadd.s f23, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
li x24, 0x1e259b534ffede81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
fadd.s f24, f16, f3, dyn # perform operation
fadd.s f24, f16, f3, rdn # perform operation
fadd.s f24, f16, f3, rmm # perform operation
fadd.s f24, f16, f3, rne # perform operation
fadd.s f24, f16, f3, rtz # perform operation
fadd.s f24, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
li x12, 0x911f9712085794d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
fadd.s f12, f29, f4, dyn # perform operation
fadd.s f12, f29, f4, rdn # perform operation
fadd.s f12, f29, f4, rmm # perform operation
fadd.s f12, f29, f4, rne # perform operation
fadd.s f12, f29, f4, rtz # perform operation
fadd.s f12, f29, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f29, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f29, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f29, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f29, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
li x10, 0xda9f58129e81424e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fadd.s f10, f8, f22, dyn # perform operation
fadd.s f10, f8, f22, rdn # perform operation
fadd.s f10, f8, f22, rmm # perform operation
fadd.s f10, f8, f22, rne # perform operation
fadd.s f10, f8, f22, rtz # perform operation
fadd.s f10, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
li x28, 0xe724e39fb58e3497 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fadd.s f28, f3, f10, dyn # perform operation
fadd.s f28, f3, f10, rdn # perform operation
fadd.s f28, f3, f10, rmm # perform operation
fadd.s f28, f3, f10, rne # perform operation
fadd.s f28, f3, f10, rtz # perform operation
fadd.s f28, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
li x31, 0xb1abc65c0433966e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fadd.s f31, f27, f7, dyn # perform operation
fadd.s f31, f27, f7, rdn # perform operation
fadd.s f31, f27, f7, rmm # perform operation
fadd.s f31, f27, f7, rne # perform operation
fadd.s f31, f27, f7, rtz # perform operation
fadd.s f31, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
li x26, 0xc8f2ccd9293fe176 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fadd.s f26, f8, f13, dyn # perform operation
fadd.s f26, f8, f13, rdn # perform operation
fadd.s f26, f8, f13, rmm # perform operation
fadd.s f26, f8, f13, rne # perform operation
fadd.s f26, f8, f13, rtz # perform operation
fadd.s f26, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
li x1, 0xc9e21464e4dd923f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
fadd.s f1, f19, f9, dyn # perform operation
fadd.s f1, f19, f9, rdn # perform operation
fadd.s f1, f19, f9, rmm # perform operation
fadd.s f1, f19, f9, rne # perform operation
fadd.s f1, f19, f9, rtz # perform operation
fadd.s f1, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
li x6, 0x55f9aeede73f0f44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
fadd.s f6, f19, f5, dyn # perform operation
fadd.s f6, f19, f5, rdn # perform operation
fadd.s f6, f19, f5, rmm # perform operation
fadd.s f6, f19, f5, rne # perform operation
fadd.s f6, f19, f5, rtz # perform operation
fadd.s f6, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
li x10, 0x14090e8018e9ddc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f4, 0(x2) # load 0xbf800000 from memory into f4
fadd.s f10, f9, f4, dyn # perform operation
fadd.s f10, f9, f4, rdn # perform operation
fadd.s f10, f9, f4, rmm # perform operation
fadd.s f10, f9, f4, rne # perform operation
fadd.s f10, f9, f4, rtz # perform operation
fadd.s f10, f9, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f9, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f9, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f9, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f9, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f9, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
li x13, 0xe13c80f9d6308342 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
fadd.s f13, f9, f8, dyn # perform operation
fadd.s f13, f9, f8, rdn # perform operation
fadd.s f13, f9, f8, rmm # perform operation
fadd.s f13, f9, f8, rne # perform operation
fadd.s f13, f9, f8, rtz # perform operation
fadd.s f13, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
li x16, 0xf254fb270c274a87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
fadd.s f16, f18, f8, dyn # perform operation
fadd.s f16, f18, f8, rdn # perform operation
fadd.s f16, f18, f8, rmm # perform operation
fadd.s f16, f18, f8, rne # perform operation
fadd.s f16, f18, f8, rtz # perform operation
fadd.s f16, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
li x10, 0xa9fbe66a184e6ac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fadd.s f10, f29, f24, dyn # perform operation
fadd.s f10, f29, f24, rdn # perform operation
fadd.s f10, f29, f24, rmm # perform operation
fadd.s f10, f29, f24, rne # perform operation
fadd.s f10, f29, f24, rtz # perform operation
fadd.s f10, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
li x2, 0xe22ca9f8f87201c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fadd.s f2, f7, f29, dyn # perform operation
fadd.s f2, f7, f29, rdn # perform operation
fadd.s f2, f7, f29, rmm # perform operation
fadd.s f2, f7, f29, rne # perform operation
fadd.s f2, f7, f29, rtz # perform operation
fadd.s f2, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
li x1, 0x61a782aaa1fc0e0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
fadd.s f1, f5, f13, dyn # perform operation
fadd.s f1, f5, f13, rdn # perform operation
fadd.s f1, f5, f13, rmm # perform operation
fadd.s f1, f5, f13, rne # perform operation
fadd.s f1, f5, f13, rtz # perform operation
fadd.s f1, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
li x18, 0xb946d846cc733688 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fadd.s f18, f3, f20, dyn # perform operation
fadd.s f18, f3, f20, rdn # perform operation
fadd.s f18, f3, f20, rmm # perform operation
fadd.s f18, f3, f20, rne # perform operation
fadd.s f18, f3, f20, rtz # perform operation
fadd.s f18, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
li x16, 0x69d8712f9219d480 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
fadd.s f16, f26, f31, dyn # perform operation
fadd.s f16, f26, f31, rdn # perform operation
fadd.s f16, f26, f31, rmm # perform operation
fadd.s f16, f26, f31, rne # perform operation
fadd.s f16, f26, f31, rtz # perform operation
fadd.s f16, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
li x7, 0xfa5c896b4d4d02be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fadd.s f7, f9, f12, dyn # perform operation
fadd.s f7, f9, f12, rdn # perform operation
fadd.s f7, f9, f12, rmm # perform operation
fadd.s f7, f9, f12, rne # perform operation
fadd.s f7, f9, f12, rtz # perform operation
fadd.s f7, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
li x21, 0x102f3001af72c73e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
fadd.s f21, f14, f25, dyn # perform operation
fadd.s f21, f14, f25, rdn # perform operation
fadd.s f21, f14, f25, rmm # perform operation
fadd.s f21, f14, f25, rne # perform operation
fadd.s f21, f14, f25, rtz # perform operation
fadd.s f21, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f14, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
li x9, 0xd1004bece626c84c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
fadd.s f9, f4, f18, dyn # perform operation
fadd.s f9, f4, f18, rdn # perform operation
fadd.s f9, f4, f18, rmm # perform operation
fadd.s f9, f4, f18, rne # perform operation
fadd.s f9, f4, f18, rtz # perform operation
fadd.s f9, f4, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f4, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f4, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f4, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f4, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
li x26, 0x105749414d7a3bc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
fadd.s f26, f5, f28, dyn # perform operation
fadd.s f26, f5, f28, rdn # perform operation
fadd.s f26, f5, f28, rmm # perform operation
fadd.s f26, f5, f28, rne # perform operation
fadd.s f26, f5, f28, rtz # perform operation
fadd.s f26, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
li x29, 0x3f2244e1c2c0b4a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
fadd.s f29, f6, f18, dyn # perform operation
fadd.s f29, f6, f18, rdn # perform operation
fadd.s f29, f6, f18, rmm # perform operation
fadd.s f29, f6, f18, rne # perform operation
fadd.s f29, f6, f18, rtz # perform operation
fadd.s f29, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
li x29, 0xf08fa619215051a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
fadd.s f29, f11, f18, dyn # perform operation
fadd.s f29, f11, f18, rdn # perform operation
fadd.s f29, f11, f18, rmm # perform operation
fadd.s f29, f11, f18, rne # perform operation
fadd.s f29, f11, f18, rtz # perform operation
fadd.s f29, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
li x23, 0xb06835ac8b50faba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
fadd.s f23, f8, f28, dyn # perform operation
fadd.s f23, f8, f28, rdn # perform operation
fadd.s f23, f8, f28, rmm # perform operation
fadd.s f23, f8, f28, rne # perform operation
fadd.s f23, f8, f28, rtz # perform operation
fadd.s f23, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
li x23, 0x52c4ef76dd0c840b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
fadd.s f23, f8, f18, dyn # perform operation
fadd.s f23, f8, f18, rdn # perform operation
fadd.s f23, f8, f18, rmm # perform operation
fadd.s f23, f8, f18, rne # perform operation
fadd.s f23, f8, f18, rtz # perform operation
fadd.s f23, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
li x25, 0x4ccb6048a9aaa660 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
fadd.s f25, f26, f4, dyn # perform operation
fadd.s f25, f26, f4, rdn # perform operation
fadd.s f25, f26, f4, rmm # perform operation
fadd.s f25, f26, f4, rne # perform operation
fadd.s f25, f26, f4, rtz # perform operation
fadd.s f25, f26, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f26, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f26, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f26, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f26, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f26, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
li x20, 0xa5a8a124d512abcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fadd.s f20, f15, f29, dyn # perform operation
fadd.s f20, f15, f29, rdn # perform operation
fadd.s f20, f15, f29, rmm # perform operation
fadd.s f20, f15, f29, rne # perform operation
fadd.s f20, f15, f29, rtz # perform operation
fadd.s f20, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
li x19, 0x05024be188ded6e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
fadd.s f19, f12, f3, dyn # perform operation
fadd.s f19, f12, f3, rdn # perform operation
fadd.s f19, f12, f3, rmm # perform operation
fadd.s f19, f12, f3, rne # perform operation
fadd.s f19, f12, f3, rtz # perform operation
fadd.s f19, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
li x13, 0xa4941d7f32987fd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
fadd.s f13, f29, f25, dyn # perform operation
fadd.s f13, f29, f25, rdn # perform operation
fadd.s f13, f29, f25, rmm # perform operation
fadd.s f13, f29, f25, rne # perform operation
fadd.s f13, f29, f25, rtz # perform operation
fadd.s f13, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
li x6, 0xcf0846692da1206d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
fadd.s f6, f18, f27, dyn # perform operation
fadd.s f6, f18, f27, rdn # perform operation
fadd.s f6, f18, f27, rmm # perform operation
fadd.s f6, f18, f27, rne # perform operation
fadd.s f6, f18, f27, rtz # perform operation
fadd.s f6, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
li x3, 0xfe5915c8c33f1eb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fadd.s f3, f24, f15, dyn # perform operation
fadd.s f3, f24, f15, rdn # perform operation
fadd.s f3, f24, f15, rmm # perform operation
fadd.s f3, f24, f15, rne # perform operation
fadd.s f3, f24, f15, rtz # perform operation
fadd.s f3, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
li x2, 0xd32bd5826bae99f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fadd.s f2, f5, f22, dyn # perform operation
fadd.s f2, f5, f22, rdn # perform operation
fadd.s f2, f5, f22, rmm # perform operation
fadd.s f2, f5, f22, rne # perform operation
fadd.s f2, f5, f22, rtz # perform operation
fadd.s f2, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
li x6, 0xc02403b179005b80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fadd.s f6, f15, f24, dyn # perform operation
fadd.s f6, f15, f24, rdn # perform operation
fadd.s f6, f15, f24, rmm # perform operation
fadd.s f6, f15, f24, rne # perform operation
fadd.s f6, f15, f24, rtz # perform operation
fadd.s f6, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
li x20, 0x4627f9dd79e98252 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fadd.s f20, f18, f12, dyn # perform operation
fadd.s f20, f18, f12, rdn # perform operation
fadd.s f20, f18, f12, rmm # perform operation
fadd.s f20, f18, f12, rne # perform operation
fadd.s f20, f18, f12, rtz # perform operation
fadd.s f20, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
li x9, 0xbf88e8403c738b02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fadd.s f9, f17, f30, dyn # perform operation
fadd.s f9, f17, f30, rdn # perform operation
fadd.s f9, f17, f30, rmm # perform operation
fadd.s f9, f17, f30, rne # perform operation
fadd.s f9, f17, f30, rtz # perform operation
fadd.s f9, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
li x12, 0x3108107c0f06b282 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f4, 0(x2) # load 0xbf800000 from memory into f4
fadd.s f12, f31, f4, dyn # perform operation
fadd.s f12, f31, f4, rdn # perform operation
fadd.s f12, f31, f4, rmm # perform operation
fadd.s f12, f31, f4, rne # perform operation
fadd.s f12, f31, f4, rtz # perform operation
fadd.s f12, f31, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f31, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f31, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f31, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f31, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
li x8, 0x6f2dbf4a17d9241f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fadd.s f8, f29, f15, dyn # perform operation
fadd.s f8, f29, f15, rdn # perform operation
fadd.s f8, f29, f15, rmm # perform operation
fadd.s f8, f29, f15, rne # perform operation
fadd.s f8, f29, f15, rtz # perform operation
fadd.s f8, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
li x17, 0xb1bd022a83c7fabf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
fadd.s f17, f27, f11, dyn # perform operation
fadd.s f17, f27, f11, rdn # perform operation
fadd.s f17, f27, f11, rmm # perform operation
fadd.s f17, f27, f11, rne # perform operation
fadd.s f17, f27, f11, rtz # perform operation
fadd.s f17, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
li x13, 0x0c2787d8cf42ab6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fadd.s f13, f1, f4, dyn # perform operation
fadd.s f13, f1, f4, rdn # perform operation
fadd.s f13, f1, f4, rmm # perform operation
fadd.s f13, f1, f4, rne # perform operation
fadd.s f13, f1, f4, rtz # perform operation
fadd.s f13, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
li x19, 0xb95ff63f5b0137fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
fadd.s f19, f11, f21, dyn # perform operation
fadd.s f19, f11, f21, rdn # perform operation
fadd.s f19, f11, f21, rmm # perform operation
fadd.s f19, f11, f21, rne # perform operation
fadd.s f19, f11, f21, rtz # perform operation
fadd.s f19, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
li x22, 0xd15734c0edc23b7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
fadd.s f22, f1, f28, dyn # perform operation
fadd.s f22, f1, f28, rdn # perform operation
fadd.s f22, f1, f28, rmm # perform operation
fadd.s f22, f1, f28, rne # perform operation
fadd.s f22, f1, f28, rtz # perform operation
fadd.s f22, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
li x19, 0x4cd29ed41b5fb981 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fadd.s f19, f25, f20, dyn # perform operation
fadd.s f19, f25, f20, rdn # perform operation
fadd.s f19, f25, f20, rmm # perform operation
fadd.s f19, f25, f20, rne # perform operation
fadd.s f19, f25, f20, rtz # perform operation
fadd.s f19, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
li x10, 0xdbd7e458750d2405 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fadd.s f10, f31, f16, dyn # perform operation
fadd.s f10, f31, f16, rdn # perform operation
fadd.s f10, f31, f16, rmm # perform operation
fadd.s f10, f31, f16, rne # perform operation
fadd.s f10, f31, f16, rtz # perform operation
fadd.s f10, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
li x17, 0x73c7749e0e73ed0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
fadd.s f17, f8, f7, dyn # perform operation
fadd.s f17, f8, f7, rdn # perform operation
fadd.s f17, f8, f7, rmm # perform operation
fadd.s f17, f8, f7, rne # perform operation
fadd.s f17, f8, f7, rtz # perform operation
fadd.s f17, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
li x21, 0x784acbedf1f256eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fadd.s f21, f5, f17, dyn # perform operation
fadd.s f21, f5, f17, rdn # perform operation
fadd.s f21, f5, f17, rmm # perform operation
fadd.s f21, f5, f17, rne # perform operation
fadd.s f21, f5, f17, rtz # perform operation
fadd.s f21, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
li x22, 0x55f09404ad3aa9e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
fadd.s f22, f16, f24, dyn # perform operation
fadd.s f22, f16, f24, rdn # perform operation
fadd.s f22, f16, f24, rmm # perform operation
fadd.s f22, f16, f24, rne # perform operation
fadd.s f22, f16, f24, rtz # perform operation
fadd.s f22, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f16, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
li x7, 0x0f4e140f310506f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fadd.s f7, f20, f21, dyn # perform operation
fadd.s f7, f20, f21, rdn # perform operation
fadd.s f7, f20, f21, rmm # perform operation
fadd.s f7, f20, f21, rne # perform operation
fadd.s f7, f20, f21, rtz # perform operation
fadd.s f7, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
li x26, 0x4be1b9b75f1a0eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fadd.s f26, f28, f6, dyn # perform operation
fadd.s f26, f28, f6, rdn # perform operation
fadd.s f26, f28, f6, rmm # perform operation
fadd.s f26, f28, f6, rne # perform operation
fadd.s f26, f28, f6, rtz # perform operation
fadd.s f26, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
li x15, 0x067121bfa42afbc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
fadd.s f15, f21, f10, dyn # perform operation
fadd.s f15, f21, f10, rdn # perform operation
fadd.s f15, f21, f10, rmm # perform operation
fadd.s f15, f21, f10, rne # perform operation
fadd.s f15, f21, f10, rtz # perform operation
fadd.s f15, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
li x14, 0xe336c14efc004cde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fadd.s f14, f25, f18, dyn # perform operation
fadd.s f14, f25, f18, rdn # perform operation
fadd.s f14, f25, f18, rmm # perform operation
fadd.s f14, f25, f18, rne # perform operation
fadd.s f14, f25, f18, rtz # perform operation
fadd.s f14, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
li x1, 0x568e28a080643847 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fadd.s f1, f16, f5, dyn # perform operation
fadd.s f1, f16, f5, rdn # perform operation
fadd.s f1, f16, f5, rmm # perform operation
fadd.s f1, f16, f5, rne # perform operation
fadd.s f1, f16, f5, rtz # perform operation
fadd.s f1, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
li x18, 0xadee8fa3d789e89e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fadd.s f18, f20, f17, dyn # perform operation
fadd.s f18, f20, f17, rdn # perform operation
fadd.s f18, f20, f17, rmm # perform operation
fadd.s f18, f20, f17, rne # perform operation
fadd.s f18, f20, f17, rtz # perform operation
fadd.s f18, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
li x14, 0x478fc9d57c3accb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fadd.s f14, f22, f18, dyn # perform operation
fadd.s f14, f22, f18, rdn # perform operation
fadd.s f14, f22, f18, rmm # perform operation
fadd.s f14, f22, f18, rne # perform operation
fadd.s f14, f22, f18, rtz # perform operation
fadd.s f14, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f22, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
li x29, 0xd0696f8e0a8f150a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fadd.s f29, f24, f8, dyn # perform operation
fadd.s f29, f24, f8, rdn # perform operation
fadd.s f29, f24, f8, rmm # perform operation
fadd.s f29, f24, f8, rne # perform operation
fadd.s f29, f24, f8, rtz # perform operation
fadd.s f29, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
li x7, 0xdc6a665962ff7a1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
fadd.s f7, f6, f10, dyn # perform operation
fadd.s f7, f6, f10, rdn # perform operation
fadd.s f7, f6, f10, rmm # perform operation
fadd.s f7, f6, f10, rne # perform operation
fadd.s f7, f6, f10, rtz # perform operation
fadd.s f7, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
li x27, 0xb8d83e684d5d90fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
fadd.s f27, f22, f12, dyn # perform operation
fadd.s f27, f22, f12, rdn # perform operation
fadd.s f27, f22, f12, rmm # perform operation
fadd.s f27, f22, f12, rne # perform operation
fadd.s f27, f22, f12, rtz # perform operation
fadd.s f27, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
li x31, 0xd14692d8beac45a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
fadd.s f31, f4, f23, dyn # perform operation
fadd.s f31, f4, f23, rdn # perform operation
fadd.s f31, f4, f23, rmm # perform operation
fadd.s f31, f4, f23, rne # perform operation
fadd.s f31, f4, f23, rtz # perform operation
fadd.s f31, f4, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f4, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f4, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f4, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f4, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
li x4, 0xa24eac0a9b1da361 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
fadd.s f4, f9, f6, dyn # perform operation
fadd.s f4, f9, f6, rdn # perform operation
fadd.s f4, f9, f6, rmm # perform operation
fadd.s f4, f9, f6, rne # perform operation
fadd.s f4, f9, f6, rtz # perform operation
fadd.s f4, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
li x31, 0xaf3684db38451e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fadd.s f31, f30, f14, dyn # perform operation
fadd.s f31, f30, f14, rdn # perform operation
fadd.s f31, f30, f14, rmm # perform operation
fadd.s f31, f30, f14, rne # perform operation
fadd.s f31, f30, f14, rtz # perform operation
fadd.s f31, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f30, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
li x30, 0x607d01692dd0d997 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fadd.s f30, f19, f13, dyn # perform operation
fadd.s f30, f19, f13, rdn # perform operation
fadd.s f30, f19, f13, rmm # perform operation
fadd.s f30, f19, f13, rne # perform operation
fadd.s f30, f19, f13, rtz # perform operation
fadd.s f30, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
li x6, 0xb33243f6216bbb34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fadd.s f6, f5, f29, dyn # perform operation
fadd.s f6, f5, f29, rdn # perform operation
fadd.s f6, f5, f29, rmm # perform operation
fadd.s f6, f5, f29, rne # perform operation
fadd.s f6, f5, f29, rtz # perform operation
fadd.s f6, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
li x9, 0x1f614a772affbf7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
fadd.s f9, f20, f8, dyn # perform operation
fadd.s f9, f20, f8, rdn # perform operation
fadd.s f9, f20, f8, rmm # perform operation
fadd.s f9, f20, f8, rne # perform operation
fadd.s f9, f20, f8, rtz # perform operation
fadd.s f9, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
li x7, 0x1954249bcfa70dfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
fadd.s f7, f20, f3, dyn # perform operation
fadd.s f7, f20, f3, rdn # perform operation
fadd.s f7, f20, f3, rmm # perform operation
fadd.s f7, f20, f3, rne # perform operation
fadd.s f7, f20, f3, rtz # perform operation
fadd.s f7, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
li x24, 0xa8f8217387d0d2b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fadd.s f24, f28, f31, dyn # perform operation
fadd.s f24, f28, f31, rdn # perform operation
fadd.s f24, f28, f31, rmm # perform operation
fadd.s f24, f28, f31, rne # perform operation
fadd.s f24, f28, f31, rtz # perform operation
fadd.s f24, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
li x18, 0x2ba438922d10d4ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
fadd.s f18, f12, f30, dyn # perform operation
fadd.s f18, f12, f30, rdn # perform operation
fadd.s f18, f12, f30, rmm # perform operation
fadd.s f18, f12, f30, rne # perform operation
fadd.s f18, f12, f30, rtz # perform operation
fadd.s f18, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
li x18, 0x650370e16a14589b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fadd.s f18, f19, f20, dyn # perform operation
fadd.s f18, f19, f20, rdn # perform operation
fadd.s f18, f19, f20, rmm # perform operation
fadd.s f18, f19, f20, rne # perform operation
fadd.s f18, f19, f20, rtz # perform operation
fadd.s f18, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f19, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
li x3, 0x3d684f8db60ddefb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fadd.s f3, f13, f8, dyn # perform operation
fadd.s f3, f13, f8, rdn # perform operation
fadd.s f3, f13, f8, rmm # perform operation
fadd.s f3, f13, f8, rne # perform operation
fadd.s f3, f13, f8, rtz # perform operation
fadd.s f3, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
li x14, 0x385736843e081dd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
fadd.s f14, f10, f1, dyn # perform operation
fadd.s f14, f10, f1, rdn # perform operation
fadd.s f14, f10, f1, rmm # perform operation
fadd.s f14, f10, f1, rne # perform operation
fadd.s f14, f10, f1, rtz # perform operation
fadd.s f14, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
li x14, 0x4d0398bfcb21a5c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fadd.s f14, f17, f3, dyn # perform operation
fadd.s f14, f17, f3, rdn # perform operation
fadd.s f14, f17, f3, rmm # perform operation
fadd.s f14, f17, f3, rne # perform operation
fadd.s f14, f17, f3, rtz # perform operation
fadd.s f14, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
li x16, 0xb8d168c063dc98a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fadd.s f16, f2, f12, dyn # perform operation
fadd.s f16, f2, f12, rdn # perform operation
fadd.s f16, f2, f12, rmm # perform operation
fadd.s f16, f2, f12, rne # perform operation
fadd.s f16, f2, f12, rtz # perform operation
fadd.s f16, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
li x27, 0x7ee71c1e30d93b9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fadd.s f27, f4, f3, dyn # perform operation
fadd.s f27, f4, f3, rdn # perform operation
fadd.s f27, f4, f3, rmm # perform operation
fadd.s f27, f4, f3, rne # perform operation
fadd.s f27, f4, f3, rtz # perform operation
fadd.s f27, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
li x31, 0x188de641ac56ef19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fadd.s f31, f4, f22, dyn # perform operation
fadd.s f31, f4, f22, rdn # perform operation
fadd.s f31, f4, f22, rmm # perform operation
fadd.s f31, f4, f22, rne # perform operation
fadd.s f31, f4, f22, rtz # perform operation
fadd.s f31, f4, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f4, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f4, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f4, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f4, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
li x25, 0xa4253a4b18281d94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fadd.s f25, f11, f16, dyn # perform operation
fadd.s f25, f11, f16, rdn # perform operation
fadd.s f25, f11, f16, rmm # perform operation
fadd.s f25, f11, f16, rne # perform operation
fadd.s f25, f11, f16, rtz # perform operation
fadd.s f25, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f11, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
li x10, 0xc20af877903f9759 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fadd.s f10, f8, f19, dyn # perform operation
fadd.s f10, f8, f19, rdn # perform operation
fadd.s f10, f8, f19, rmm # perform operation
fadd.s f10, f8, f19, rne # perform operation
fadd.s f10, f8, f19, rtz # perform operation
fadd.s f10, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
li x31, 0xb978b046f4dcc626 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fadd.s f31, f3, f11, dyn # perform operation
fadd.s f31, f3, f11, rdn # perform operation
fadd.s f31, f3, f11, rmm # perform operation
fadd.s f31, f3, f11, rne # perform operation
fadd.s f31, f3, f11, rtz # perform operation
fadd.s f31, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
li x1, 0x8ddb78ec9fee21a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fadd.s f1, f12, f10, dyn # perform operation
fadd.s f1, f12, f10, rdn # perform operation
fadd.s f1, f12, f10, rmm # perform operation
fadd.s f1, f12, f10, rne # perform operation
fadd.s f1, f12, f10, rtz # perform operation
fadd.s f1, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
li x12, 0xb70f8bdeae0c506c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
fadd.s f12, f21, f16, dyn # perform operation
fadd.s f12, f21, f16, rdn # perform operation
fadd.s f12, f21, f16, rmm # perform operation
fadd.s f12, f21, f16, rne # perform operation
fadd.s f12, f21, f16, rtz # perform operation
fadd.s f12, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
li x8, 0xb4819f95c5e33ab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
fadd.s f8, f26, f25, dyn # perform operation
fadd.s f8, f26, f25, rdn # perform operation
fadd.s f8, f26, f25, rmm # perform operation
fadd.s f8, f26, f25, rne # perform operation
fadd.s f8, f26, f25, rtz # perform operation
fadd.s f8, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
li x14, 0x631e278cfe12debd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fadd.s f14, f15, f18, dyn # perform operation
fadd.s f14, f15, f18, rdn # perform operation
fadd.s f14, f15, f18, rmm # perform operation
fadd.s f14, f15, f18, rne # perform operation
fadd.s f14, f15, f18, rtz # perform operation
fadd.s f14, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
li x20, 0x72893b42f9539cea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fadd.s f20, f21, f15, dyn # perform operation
fadd.s f20, f21, f15, rdn # perform operation
fadd.s f20, f21, f15, rmm # perform operation
fadd.s f20, f21, f15, rne # perform operation
fadd.s f20, f21, f15, rtz # perform operation
fadd.s f20, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
li x24, 0x6ed867de8cae1fca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
fadd.s f24, f15, f14, dyn # perform operation
fadd.s f24, f15, f14, rdn # perform operation
fadd.s f24, f15, f14, rmm # perform operation
fadd.s f24, f15, f14, rne # perform operation
fadd.s f24, f15, f14, rtz # perform operation
fadd.s f24, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f15, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
li x14, 0xdf0c45b2e5aac956 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fadd.s f14, f26, f31, dyn # perform operation
fadd.s f14, f26, f31, rdn # perform operation
fadd.s f14, f26, f31, rmm # perform operation
fadd.s f14, f26, f31, rne # perform operation
fadd.s f14, f26, f31, rtz # perform operation
fadd.s f14, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
li x29, 0x035f574738127d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fadd.s f29, f23, f7, dyn # perform operation
fadd.s f29, f23, f7, rdn # perform operation
fadd.s f29, f23, f7, rmm # perform operation
fadd.s f29, f23, f7, rne # perform operation
fadd.s f29, f23, f7, rtz # perform operation
fadd.s f29, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
li x8, 0x25ef7da80f1ec794 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fadd.s f8, f13, f10, dyn # perform operation
fadd.s f8, f13, f10, rdn # perform operation
fadd.s f8, f13, f10, rmm # perform operation
fadd.s f8, f13, f10, rne # perform operation
fadd.s f8, f13, f10, rtz # perform operation
fadd.s f8, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
li x8, 0x3965ed2cc0b43f88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
fadd.s f8, f22, f6, dyn # perform operation
fadd.s f8, f22, f6, rdn # perform operation
fadd.s f8, f22, f6, rmm # perform operation
fadd.s f8, f22, f6, rne # perform operation
fadd.s f8, f22, f6, rtz # perform operation
fadd.s f8, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
li x20, 0xb0a66e3db41fb11b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
fadd.s f20, f23, f18, dyn # perform operation
fadd.s f20, f23, f18, rdn # perform operation
fadd.s f20, f23, f18, rmm # perform operation
fadd.s f20, f23, f18, rne # perform operation
fadd.s f20, f23, f18, rtz # perform operation
fadd.s f20, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
li x27, 0xbba16c7aab472dfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
fadd.s f27, f9, f14, dyn # perform operation
fadd.s f27, f9, f14, rdn # perform operation
fadd.s f27, f9, f14, rmm # perform operation
fadd.s f27, f9, f14, rne # perform operation
fadd.s f27, f9, f14, rtz # perform operation
fadd.s f27, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
li x2, 0xab655d9e72cc4cfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
fadd.s f2, f11, f23, dyn # perform operation
fadd.s f2, f11, f23, rdn # perform operation
fadd.s f2, f11, f23, rmm # perform operation
fadd.s f2, f11, f23, rne # perform operation
fadd.s f2, f11, f23, rtz # perform operation
fadd.s f2, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
li x25, 0x1ecc0cac90b79709 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
fadd.s f25, f18, f5, dyn # perform operation
fadd.s f25, f18, f5, rdn # perform operation
fadd.s f25, f18, f5, rmm # perform operation
fadd.s f25, f18, f5, rne # perform operation
fadd.s f25, f18, f5, rtz # perform operation
fadd.s f25, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f18, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
li x15, 0x3f9f454168f97975 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
fadd.s f15, f16, f23, dyn # perform operation
fadd.s f15, f16, f23, rdn # perform operation
fadd.s f15, f16, f23, rmm # perform operation
fadd.s f15, f16, f23, rne # perform operation
fadd.s f15, f16, f23, rtz # perform operation
fadd.s f15, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
li x7, 0x62a78b67bd3cbe17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fadd.s f7, f25, f26, dyn # perform operation
fadd.s f7, f25, f26, rdn # perform operation
fadd.s f7, f25, f26, rmm # perform operation
fadd.s f7, f25, f26, rne # perform operation
fadd.s f7, f25, f26, rtz # perform operation
fadd.s f7, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
li x29, 0x3775b9b4cc9f3a25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fadd.s f29, f3, f20, dyn # perform operation
fadd.s f29, f3, f20, rdn # perform operation
fadd.s f29, f3, f20, rmm # perform operation
fadd.s f29, f3, f20, rne # perform operation
fadd.s f29, f3, f20, rtz # perform operation
fadd.s f29, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
li x23, 0xa040a49b0bfaf25c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fadd.s f23, f24, f3, dyn # perform operation
fadd.s f23, f24, f3, rdn # perform operation
fadd.s f23, f24, f3, rmm # perform operation
fadd.s f23, f24, f3, rne # perform operation
fadd.s f23, f24, f3, rtz # perform operation
fadd.s f23, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
li x8, 0x88262b3737777b6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fadd.s f8, f19, f10, dyn # perform operation
fadd.s f8, f19, f10, rdn # perform operation
fadd.s f8, f19, f10, rmm # perform operation
fadd.s f8, f19, f10, rne # perform operation
fadd.s f8, f19, f10, rtz # perform operation
fadd.s f8, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
li x10, 0x70e0b9c14c0f88fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
fadd.s f10, f4, f11, dyn # perform operation
fadd.s f10, f4, f11, rdn # perform operation
fadd.s f10, f4, f11, rmm # perform operation
fadd.s f10, f4, f11, rne # perform operation
fadd.s f10, f4, f11, rtz # perform operation
fadd.s f10, f4, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f4, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f4, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f4, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f4, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
li x28, 0x0e51a8b9cf5f1063 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
fadd.s f28, f3, f27, dyn # perform operation
fadd.s f28, f3, f27, rdn # perform operation
fadd.s f28, f3, f27, rmm # perform operation
fadd.s f28, f3, f27, rne # perform operation
fadd.s f28, f3, f27, rtz # perform operation
fadd.s f28, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
li x9, 0x25eafc81ece3d761 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fadd.s f9, f31, f23, dyn # perform operation
fadd.s f9, f31, f23, rdn # perform operation
fadd.s f9, f31, f23, rmm # perform operation
fadd.s f9, f31, f23, rne # perform operation
fadd.s f9, f31, f23, rtz # perform operation
fadd.s f9, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
li x6, 0xf8234b1ac1e98ac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fadd.s f6, f17, f23, dyn # perform operation
fadd.s f6, f17, f23, rdn # perform operation
fadd.s f6, f17, f23, rmm # perform operation
fadd.s f6, f17, f23, rne # perform operation
fadd.s f6, f17, f23, rtz # perform operation
fadd.s f6, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f17, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
li x13, 0x176ff90ec6127847 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
fadd.s f13, f2, f29, dyn # perform operation
fadd.s f13, f2, f29, rdn # perform operation
fadd.s f13, f2, f29, rmm # perform operation
fadd.s f13, f2, f29, rne # perform operation
fadd.s f13, f2, f29, rtz # perform operation
fadd.s f13, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
li x20, 0x6975231fec9582ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fadd.s f20, f31, f6, dyn # perform operation
fadd.s f20, f31, f6, rdn # perform operation
fadd.s f20, f31, f6, rmm # perform operation
fadd.s f20, f31, f6, rne # perform operation
fadd.s f20, f31, f6, rtz # perform operation
fadd.s f20, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
li x29, 0x435ca1e9dca1912a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
fadd.s f29, f12, f10, dyn # perform operation
fadd.s f29, f12, f10, rdn # perform operation
fadd.s f29, f12, f10, rmm # perform operation
fadd.s f29, f12, f10, rne # perform operation
fadd.s f29, f12, f10, rtz # perform operation
fadd.s f29, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
li x18, 0xdc89b3366ff884cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
fadd.s f18, f22, f21, dyn # perform operation
fadd.s f18, f22, f21, rdn # perform operation
fadd.s f18, f22, f21, rmm # perform operation
fadd.s f18, f22, f21, rne # perform operation
fadd.s f18, f22, f21, rtz # perform operation
fadd.s f18, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
li x9, 0xccee23589e8136c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fadd.s f9, f23, f7, dyn # perform operation
fadd.s f9, f23, f7, rdn # perform operation
fadd.s f9, f23, f7, rmm # perform operation
fadd.s f9, f23, f7, rne # perform operation
fadd.s f9, f23, f7, rtz # perform operation
fadd.s f9, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
li x28, 0x90b6bd5cf22eaaca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fadd.s f28, f21, f17, dyn # perform operation
fadd.s f28, f21, f17, rdn # perform operation
fadd.s f28, f21, f17, rmm # perform operation
fadd.s f28, f21, f17, rne # perform operation
fadd.s f28, f21, f17, rtz # perform operation
fadd.s f28, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
li x27, 0x9328e001be26c4df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fadd.s f27, f16, f22, dyn # perform operation
fadd.s f27, f16, f22, rdn # perform operation
fadd.s f27, f16, f22, rmm # perform operation
fadd.s f27, f16, f22, rne # perform operation
fadd.s f27, f16, f22, rtz # perform operation
fadd.s f27, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
li x3, 0xae8426cffbcce188 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fadd.s f3, f31, f10, dyn # perform operation
fadd.s f3, f31, f10, rdn # perform operation
fadd.s f3, f31, f10, rmm # perform operation
fadd.s f3, f31, f10, rne # perform operation
fadd.s f3, f31, f10, rtz # perform operation
fadd.s f3, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
li x23, 0x56b19588a20e016c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fadd.s f23, f30, f13, dyn # perform operation
fadd.s f23, f30, f13, rdn # perform operation
fadd.s f23, f30, f13, rmm # perform operation
fadd.s f23, f30, f13, rne # perform operation
fadd.s f23, f30, f13, rtz # perform operation
fadd.s f23, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
li x19, 0x3a6aaf5fcdbd744d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
fadd.s f19, f27, f7, dyn # perform operation
fadd.s f19, f27, f7, rdn # perform operation
fadd.s f19, f27, f7, rmm # perform operation
fadd.s f19, f27, f7, rne # perform operation
fadd.s f19, f27, f7, rtz # perform operation
fadd.s f19, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
li x6, 0x82820cd8a8b72b7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
fadd.s f6, f8, f22, dyn # perform operation
fadd.s f6, f8, f22, rdn # perform operation
fadd.s f6, f8, f22, rmm # perform operation
fadd.s f6, f8, f22, rne # perform operation
fadd.s f6, f8, f22, rtz # perform operation
fadd.s f6, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
li x1, 0x1c1b0c3c384698c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
fadd.s f1, f6, f27, dyn # perform operation
fadd.s f1, f6, f27, rdn # perform operation
fadd.s f1, f6, f27, rmm # perform operation
fadd.s f1, f6, f27, rne # perform operation
fadd.s f1, f6, f27, rtz # perform operation
fadd.s f1, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f6, f27 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x6e6a2030f4850e84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x82241a34ebd4ffbd # load x3 with value 0x82241a34ebd4ffbd
sw x3, 0(x2) # store 0x82241a34ebd4ffbd in memory
flw f6, 0(x2) # load 0x82241a34ebd4ffbd from memory into f6
li x3, 0x7729fd60c130741c # load x3 with value 0x7729fd60c130741c
sw x3, 0(x2) # store 0x7729fd60c130741c in memory
flw f16, 0(x2) # load 0x7729fd60c130741c from memory into f16
fadd.s f0, f6, f16 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x5777cb63da92d054 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x166e7a347c0f0ddb # load x3 with value 0x166e7a347c0f0ddb
sw x3, 0(x2) # store 0x166e7a347c0f0ddb in memory
flw f19, 0(x2) # load 0x166e7a347c0f0ddb from memory into f19
li x3, 0x98e94a22160d8b3c # load x3 with value 0x98e94a22160d8b3c
sw x3, 0(x2) # store 0x98e94a22160d8b3c in memory
flw f3, 0(x2) # load 0x98e94a22160d8b3c from memory into f3
fadd.s f1, f19, f3 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x2597e7ab29aebae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15161e7350e56d44 # load x3 with value 0x15161e7350e56d44
sw x3, 0(x2) # store 0x15161e7350e56d44 in memory
flw f13, 0(x2) # load 0x15161e7350e56d44 from memory into f13
li x3, 0x925d96725d200d1f # load x3 with value 0x925d96725d200d1f
sw x3, 0(x2) # store 0x925d96725d200d1f in memory
flw f8, 0(x2) # load 0x925d96725d200d1f from memory into f8
fadd.s f2, f13, f8 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x0fd72281d13058da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a22fa6bc44709fe # load x3 with value 0x3a22fa6bc44709fe
sw x3, 0(x2) # store 0x3a22fa6bc44709fe in memory
flw f26, 0(x2) # load 0x3a22fa6bc44709fe from memory into f26
li x3, 0xebc05b9e85fba20 # load x3 with value 0xebc05b9e85fba20
sw x3, 0(x2) # store 0xebc05b9e85fba20 in memory
flw f9, 0(x2) # load 0xebc05b9e85fba20 from memory into f9
fadd.s f3, f26, f9 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x1cd47d5ff096995d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a28b48a0659921c # load x3 with value 0x4a28b48a0659921c
sw x3, 0(x2) # store 0x4a28b48a0659921c in memory
flw f17, 0(x2) # load 0x4a28b48a0659921c from memory into f17
li x3, 0x3b3b43613f3d25c4 # load x3 with value 0x3b3b43613f3d25c4
sw x3, 0(x2) # store 0x3b3b43613f3d25c4 in memory
flw f29, 0(x2) # load 0x3b3b43613f3d25c4 from memory into f29
fadd.s f4, f17, f29 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xaeb58bc1338a9f9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x414dea0aec5a12a9 # load x3 with value 0x414dea0aec5a12a9
sw x3, 0(x2) # store 0x414dea0aec5a12a9 in memory
flw f17, 0(x2) # load 0x414dea0aec5a12a9 from memory into f17
li x3, 0x767efb249e736e75 # load x3 with value 0x767efb249e736e75
sw x3, 0(x2) # store 0x767efb249e736e75 in memory
flw f11, 0(x2) # load 0x767efb249e736e75 from memory into f11
fadd.s f5, f17, f11 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x3ab214d030da997c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78602b41578d14b3 # load x3 with value 0x78602b41578d14b3
sw x3, 0(x2) # store 0x78602b41578d14b3 in memory
flw f30, 0(x2) # load 0x78602b41578d14b3 from memory into f30
li x3, 0x7876eda09634f135 # load x3 with value 0x7876eda09634f135
sw x3, 0(x2) # store 0x7876eda09634f135 in memory
flw f9, 0(x2) # load 0x7876eda09634f135 from memory into f9
fadd.s f6, f30, f9 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x481671c222d8fee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x108184b3877e731f # load x3 with value 0x108184b3877e731f
sw x3, 0(x2) # store 0x108184b3877e731f in memory
flw f25, 0(x2) # load 0x108184b3877e731f from memory into f25
li x3, 0xf2740ec1187f51fa # load x3 with value 0xf2740ec1187f51fa
sw x3, 0(x2) # store 0xf2740ec1187f51fa in memory
flw f31, 0(x2) # load 0xf2740ec1187f51fa from memory into f31
fadd.s f7, f25, f31 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x38ded5b7c8e5358b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd659778bcc21bcaf # load x3 with value 0xd659778bcc21bcaf
sw x3, 0(x2) # store 0xd659778bcc21bcaf in memory
flw f21, 0(x2) # load 0xd659778bcc21bcaf from memory into f21
li x3, 0xa1cbdd39cc205b9e # load x3 with value 0xa1cbdd39cc205b9e
sw x3, 0(x2) # store 0xa1cbdd39cc205b9e in memory
flw f1, 0(x2) # load 0xa1cbdd39cc205b9e from memory into f1
fadd.s f8, f21, f1 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x56123787342431ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47f39cead4962ec6 # load x3 with value 0x47f39cead4962ec6
sw x3, 0(x2) # store 0x47f39cead4962ec6 in memory
flw f7, 0(x2) # load 0x47f39cead4962ec6 from memory into f7
li x3, 0x337623fb0aa319cb # load x3 with value 0x337623fb0aa319cb
sw x3, 0(x2) # store 0x337623fb0aa319cb in memory
flw f31, 0(x2) # load 0x337623fb0aa319cb from memory into f31
fadd.s f9, f7, f31 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xe63229d70f4172ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b6cc4bd4d3e2661 # load x3 with value 0x3b6cc4bd4d3e2661
sw x3, 0(x2) # store 0x3b6cc4bd4d3e2661 in memory
flw f21, 0(x2) # load 0x3b6cc4bd4d3e2661 from memory into f21
li x3, 0xb7523765252648be # load x3 with value 0xb7523765252648be
sw x3, 0(x2) # store 0xb7523765252648be in memory
flw f23, 0(x2) # load 0xb7523765252648be from memory into f23
fadd.s f10, f21, f23 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x948a56fb1e3b4c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x594bfc4850221427 # load x3 with value 0x594bfc4850221427
sw x3, 0(x2) # store 0x594bfc4850221427 in memory
flw f14, 0(x2) # load 0x594bfc4850221427 from memory into f14
li x3, 0x4a9defaa96b2767 # load x3 with value 0x4a9defaa96b2767
sw x3, 0(x2) # store 0x4a9defaa96b2767 in memory
flw f1, 0(x2) # load 0x4a9defaa96b2767 from memory into f1
fadd.s f11, f14, f1 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x4b83b1145e118807 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca6de6704dc01c81 # load x3 with value 0xca6de6704dc01c81
sw x3, 0(x2) # store 0xca6de6704dc01c81 in memory
flw f3, 0(x2) # load 0xca6de6704dc01c81 from memory into f3
li x3, 0xff21c076d8f94841 # load x3 with value 0xff21c076d8f94841
sw x3, 0(x2) # store 0xff21c076d8f94841 in memory
flw f16, 0(x2) # load 0xff21c076d8f94841 from memory into f16
fadd.s f12, f3, f16 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x250a2ea85510933d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5183ff7876c393fa # load x3 with value 0x5183ff7876c393fa
sw x3, 0(x2) # store 0x5183ff7876c393fa in memory
flw f28, 0(x2) # load 0x5183ff7876c393fa from memory into f28
li x3, 0xf4c8097ea80ad486 # load x3 with value 0xf4c8097ea80ad486
sw x3, 0(x2) # store 0xf4c8097ea80ad486 in memory
flw f3, 0(x2) # load 0xf4c8097ea80ad486 from memory into f3
fadd.s f13, f28, f3 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x04e342dfbd5ca46a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa14b58db09dcdeda # load x3 with value 0xa14b58db09dcdeda
sw x3, 0(x2) # store 0xa14b58db09dcdeda in memory
flw f18, 0(x2) # load 0xa14b58db09dcdeda from memory into f18
li x3, 0xc2a8ff3af682997f # load x3 with value 0xc2a8ff3af682997f
sw x3, 0(x2) # store 0xc2a8ff3af682997f in memory
flw f1, 0(x2) # load 0xc2a8ff3af682997f from memory into f1
fadd.s f14, f18, f1 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x8945feb470c9b069 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd383907dd1cec80e # load x3 with value 0xd383907dd1cec80e
sw x3, 0(x2) # store 0xd383907dd1cec80e in memory
flw f11, 0(x2) # load 0xd383907dd1cec80e from memory into f11
li x3, 0xc50dc462b61a81bc # load x3 with value 0xc50dc462b61a81bc
sw x3, 0(x2) # store 0xc50dc462b61a81bc in memory
flw f19, 0(x2) # load 0xc50dc462b61a81bc from memory into f19
fadd.s f15, f11, f19 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xaaffc136df521df8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6db6a6bf41cc27bc # load x3 with value 0x6db6a6bf41cc27bc
sw x3, 0(x2) # store 0x6db6a6bf41cc27bc in memory
flw f24, 0(x2) # load 0x6db6a6bf41cc27bc from memory into f24
li x3, 0xcf6cb8e46aa4168c # load x3 with value 0xcf6cb8e46aa4168c
sw x3, 0(x2) # store 0xcf6cb8e46aa4168c in memory
flw f7, 0(x2) # load 0xcf6cb8e46aa4168c from memory into f7
fadd.s f16, f24, f7 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xc869e22920913f38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd98d58b85cf6dce1 # load x3 with value 0xd98d58b85cf6dce1
sw x3, 0(x2) # store 0xd98d58b85cf6dce1 in memory
flw f7, 0(x2) # load 0xd98d58b85cf6dce1 from memory into f7
li x3, 0x9889a4778bcc4581 # load x3 with value 0x9889a4778bcc4581
sw x3, 0(x2) # store 0x9889a4778bcc4581 in memory
flw f4, 0(x2) # load 0x9889a4778bcc4581 from memory into f4
fadd.s f17, f7, f4 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xfb67f4b0442c9035 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf691f03fc12d4b9f # load x3 with value 0xf691f03fc12d4b9f
sw x3, 0(x2) # store 0xf691f03fc12d4b9f in memory
flw f19, 0(x2) # load 0xf691f03fc12d4b9f from memory into f19
li x3, 0x6d879993c45d59ee # load x3 with value 0x6d879993c45d59ee
sw x3, 0(x2) # store 0x6d879993c45d59ee in memory
flw f30, 0(x2) # load 0x6d879993c45d59ee from memory into f30
fadd.s f18, f19, f30 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x568f364d6db11e5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c948b45963683d1 # load x3 with value 0x9c948b45963683d1
sw x3, 0(x2) # store 0x9c948b45963683d1 in memory
flw f27, 0(x2) # load 0x9c948b45963683d1 from memory into f27
li x3, 0x144201e09cc97679 # load x3 with value 0x144201e09cc97679
sw x3, 0(x2) # store 0x144201e09cc97679 in memory
flw f4, 0(x2) # load 0x144201e09cc97679 from memory into f4
fadd.s f19, f27, f4 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x10c470a229dc0c89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15b35f6f7a835bfb # load x3 with value 0x15b35f6f7a835bfb
sw x3, 0(x2) # store 0x15b35f6f7a835bfb in memory
flw f23, 0(x2) # load 0x15b35f6f7a835bfb from memory into f23
li x3, 0x25975c4b522000b6 # load x3 with value 0x25975c4b522000b6
sw x3, 0(x2) # store 0x25975c4b522000b6 in memory
flw f21, 0(x2) # load 0x25975c4b522000b6 from memory into f21
fadd.s f20, f23, f21 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xf76e6acbde252a42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x265617aaa2529b14 # load x3 with value 0x265617aaa2529b14
sw x3, 0(x2) # store 0x265617aaa2529b14 in memory
flw f24, 0(x2) # load 0x265617aaa2529b14 from memory into f24
li x3, 0x857df468cebad188 # load x3 with value 0x857df468cebad188
sw x3, 0(x2) # store 0x857df468cebad188 in memory
flw f30, 0(x2) # load 0x857df468cebad188 from memory into f30
fadd.s f21, f24, f30 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xed483b2b7bf56b4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb315cb1e1f643fc4 # load x3 with value 0xb315cb1e1f643fc4
sw x3, 0(x2) # store 0xb315cb1e1f643fc4 in memory
flw f26, 0(x2) # load 0xb315cb1e1f643fc4 from memory into f26
li x3, 0x5b07e68f7ddf011b # load x3 with value 0x5b07e68f7ddf011b
sw x3, 0(x2) # store 0x5b07e68f7ddf011b in memory
flw f22, 0(x2) # load 0x5b07e68f7ddf011b from memory into f22
fadd.s f22, f26, f22 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x431da1d942c5bce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbee8ca4b8fc5d32 # load x3 with value 0xdbee8ca4b8fc5d32
sw x3, 0(x2) # store 0xdbee8ca4b8fc5d32 in memory
flw f14, 0(x2) # load 0xdbee8ca4b8fc5d32 from memory into f14
li x3, 0x1d74ffc270ca5745 # load x3 with value 0x1d74ffc270ca5745
sw x3, 0(x2) # store 0x1d74ffc270ca5745 in memory
flw f2, 0(x2) # load 0x1d74ffc270ca5745 from memory into f2
fadd.s f23, f14, f2 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xb5eb99105975ee15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f875af2fa778970 # load x3 with value 0x5f875af2fa778970
sw x3, 0(x2) # store 0x5f875af2fa778970 in memory
flw f20, 0(x2) # load 0x5f875af2fa778970 from memory into f20
li x3, 0x4d52223c30061f06 # load x3 with value 0x4d52223c30061f06
sw x3, 0(x2) # store 0x4d52223c30061f06 in memory
flw f13, 0(x2) # load 0x4d52223c30061f06 from memory into f13
fadd.s f24, f20, f13 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x7bb1c1a81b51025c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1bf70e03e2ff10a # load x3 with value 0xf1bf70e03e2ff10a
sw x3, 0(x2) # store 0xf1bf70e03e2ff10a in memory
flw f7, 0(x2) # load 0xf1bf70e03e2ff10a from memory into f7
li x3, 0x4a8c3c2d1662399f # load x3 with value 0x4a8c3c2d1662399f
sw x3, 0(x2) # store 0x4a8c3c2d1662399f in memory
flw f12, 0(x2) # load 0x4a8c3c2d1662399f from memory into f12
fadd.s f25, f7, f12 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xca362cae7aab6429 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1474d1d1e66e2881 # load x3 with value 0x1474d1d1e66e2881
sw x3, 0(x2) # store 0x1474d1d1e66e2881 in memory
flw f6, 0(x2) # load 0x1474d1d1e66e2881 from memory into f6
li x3, 0xbadf763c8f0a82c2 # load x3 with value 0xbadf763c8f0a82c2
sw x3, 0(x2) # store 0xbadf763c8f0a82c2 in memory
flw f7, 0(x2) # load 0xbadf763c8f0a82c2 from memory into f7
fadd.s f26, f6, f7 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xdabdf13425f2242c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad20f400fe31fec6 # load x3 with value 0xad20f400fe31fec6
sw x3, 0(x2) # store 0xad20f400fe31fec6 in memory
flw f9, 0(x2) # load 0xad20f400fe31fec6 from memory into f9
li x3, 0x6163bf4644901d88 # load x3 with value 0x6163bf4644901d88
sw x3, 0(x2) # store 0x6163bf4644901d88 in memory
flw f4, 0(x2) # load 0x6163bf4644901d88 from memory into f4
fadd.s f27, f9, f4 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xe984959eb2782fd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c52e2e54cfd2b8b # load x3 with value 0x3c52e2e54cfd2b8b
sw x3, 0(x2) # store 0x3c52e2e54cfd2b8b in memory
flw f3, 0(x2) # load 0x3c52e2e54cfd2b8b from memory into f3
li x3, 0x8317f1237c79e81d # load x3 with value 0x8317f1237c79e81d
sw x3, 0(x2) # store 0x8317f1237c79e81d in memory
flw f10, 0(x2) # load 0x8317f1237c79e81d from memory into f10
fadd.s f28, f3, f10 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x4511deefff07cbac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa97469722519361d # load x3 with value 0xa97469722519361d
sw x3, 0(x2) # store 0xa97469722519361d in memory
flw f25, 0(x2) # load 0xa97469722519361d from memory into f25
li x3, 0x585c6b93377b4a4f # load x3 with value 0x585c6b93377b4a4f
sw x3, 0(x2) # store 0x585c6b93377b4a4f in memory
flw f7, 0(x2) # load 0x585c6b93377b4a4f from memory into f7
fadd.s f29, f25, f7 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xf95aa14103327348 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x990e68164021099a # load x3 with value 0x990e68164021099a
sw x3, 0(x2) # store 0x990e68164021099a in memory
flw f29, 0(x2) # load 0x990e68164021099a from memory into f29
li x3, 0x7746f409f6d99415 # load x3 with value 0x7746f409f6d99415
sw x3, 0(x2) # store 0x7746f409f6d99415 in memory
flw f9, 0(x2) # load 0x7746f409f6d99415 from memory into f9
fadd.s f30, f29, f9 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xde634ce491ae458a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ada804a09e736a7 # load x3 with value 0x9ada804a09e736a7
sw x3, 0(x2) # store 0x9ada804a09e736a7 in memory
flw f16, 0(x2) # load 0x9ada804a09e736a7 from memory into f16
li x3, 0xeecc6412e18aca34 # load x3 with value 0xeecc6412e18aca34
sw x3, 0(x2) # store 0xeecc6412e18aca34 in memory
flw f29, 0(x2) # load 0xeecc6412e18aca34 from memory into f29
fadd.s f31, f16, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x12, 0xc1007eec312c3fe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24332d60b3d99bb2 # load x3 with value 0x24332d60b3d99bb2
sw x3, 0(x2) # store 0x24332d60b3d99bb2 in memory
flw f0, 0(x2) # load 0x24332d60b3d99bb2 from memory into f0
li x3, 0x9974bdb50f77a1fe # load x3 with value 0x9974bdb50f77a1fe
sw x3, 0(x2) # store 0x9974bdb50f77a1fe in memory
flw f18, 0(x2) # load 0x9974bdb50f77a1fe from memory into f18
fadd.s f12, f0, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x19, 0xc23159e388f5a71f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b94a79a5310b49 # load x3 with value 0x1b94a79a5310b49
sw x3, 0(x2) # store 0x1b94a79a5310b49 in memory
flw f1, 0(x2) # load 0x1b94a79a5310b49 from memory into f1
li x3, 0x8057a6159c72349d # load x3 with value 0x8057a6159c72349d
sw x3, 0(x2) # store 0x8057a6159c72349d in memory
flw f15, 0(x2) # load 0x8057a6159c72349d from memory into f15
fadd.s f19, f1, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x20, 0x8de5aee9057e5ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d42f78c0f9051f0 # load x3 with value 0x4d42f78c0f9051f0
sw x3, 0(x2) # store 0x4d42f78c0f9051f0 in memory
flw f2, 0(x2) # load 0x4d42f78c0f9051f0 from memory into f2
li x3, 0xc7d5538e2361000d # load x3 with value 0xc7d5538e2361000d
sw x3, 0(x2) # store 0xc7d5538e2361000d in memory
flw f4, 0(x2) # load 0xc7d5538e2361000d from memory into f4
fadd.s f20, f2, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x8, 0x38c25d8f347e456a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f67f2e6eb1c3c83 # load x3 with value 0x8f67f2e6eb1c3c83
sw x3, 0(x2) # store 0x8f67f2e6eb1c3c83 in memory
flw f3, 0(x2) # load 0x8f67f2e6eb1c3c83 from memory into f3
li x3, 0x10bb13110c14992a # load x3 with value 0x10bb13110c14992a
sw x3, 0(x2) # store 0x10bb13110c14992a in memory
flw f27, 0(x2) # load 0x10bb13110c14992a from memory into f27
fadd.s f8, f3, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x29, 0xc41515adcbf0b911 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa63a1198aa2e4788 # load x3 with value 0xa63a1198aa2e4788
sw x3, 0(x2) # store 0xa63a1198aa2e4788 in memory
flw f4, 0(x2) # load 0xa63a1198aa2e4788 from memory into f4
li x3, 0xc7470fb26b983b83 # load x3 with value 0xc7470fb26b983b83
sw x3, 0(x2) # store 0xc7470fb26b983b83 in memory
flw f8, 0(x2) # load 0xc7470fb26b983b83 from memory into f8
fadd.s f29, f4, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x7, 0xb4a91566257f4287 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x716b4c0990b82c55 # load x3 with value 0x716b4c0990b82c55
sw x3, 0(x2) # store 0x716b4c0990b82c55 in memory
flw f5, 0(x2) # load 0x716b4c0990b82c55 from memory into f5
li x3, 0x9051d74ac74a51a9 # load x3 with value 0x9051d74ac74a51a9
sw x3, 0(x2) # store 0x9051d74ac74a51a9 in memory
flw f22, 0(x2) # load 0x9051d74ac74a51a9 from memory into f22
fadd.s f7, f5, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x9, 0x44b4995471f97c60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa576b092a7c14c16 # load x3 with value 0xa576b092a7c14c16
sw x3, 0(x2) # store 0xa576b092a7c14c16 in memory
flw f6, 0(x2) # load 0xa576b092a7c14c16 from memory into f6
li x3, 0xf5b2e8f1b8524b60 # load x3 with value 0xf5b2e8f1b8524b60
sw x3, 0(x2) # store 0xf5b2e8f1b8524b60 in memory
flw f19, 0(x2) # load 0xf5b2e8f1b8524b60 from memory into f19
fadd.s f9, f6, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x12, 0x53bfe96634173fd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea88a3406840a177 # load x3 with value 0xea88a3406840a177
sw x3, 0(x2) # store 0xea88a3406840a177 in memory
flw f7, 0(x2) # load 0xea88a3406840a177 from memory into f7
li x3, 0x260d665e9dd94f00 # load x3 with value 0x260d665e9dd94f00
sw x3, 0(x2) # store 0x260d665e9dd94f00 in memory
flw f18, 0(x2) # load 0x260d665e9dd94f00 from memory into f18
fadd.s f12, f7, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x16, 0x2b5209fb4e225c05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee17e06b65baeef1 # load x3 with value 0xee17e06b65baeef1
sw x3, 0(x2) # store 0xee17e06b65baeef1 in memory
flw f8, 0(x2) # load 0xee17e06b65baeef1 from memory into f8
li x3, 0xe9b72ce37e3120c # load x3 with value 0xe9b72ce37e3120c
sw x3, 0(x2) # store 0xe9b72ce37e3120c in memory
flw f14, 0(x2) # load 0xe9b72ce37e3120c from memory into f14
fadd.s f16, f8, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x14, 0x78e4af5d56a0477e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd499bb4cc2ae8cfb # load x3 with value 0xd499bb4cc2ae8cfb
sw x3, 0(x2) # store 0xd499bb4cc2ae8cfb in memory
flw f9, 0(x2) # load 0xd499bb4cc2ae8cfb from memory into f9
li x3, 0xa45f36055ca5e045 # load x3 with value 0xa45f36055ca5e045
sw x3, 0(x2) # store 0xa45f36055ca5e045 in memory
flw f22, 0(x2) # load 0xa45f36055ca5e045 from memory into f22
fadd.s f14, f9, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x16, 0x413c69ede853f49c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1c09d1700e09712 # load x3 with value 0xf1c09d1700e09712
sw x3, 0(x2) # store 0xf1c09d1700e09712 in memory
flw f10, 0(x2) # load 0xf1c09d1700e09712 from memory into f10
li x3, 0xdffb4bd3ff0fe645 # load x3 with value 0xdffb4bd3ff0fe645
sw x3, 0(x2) # store 0xdffb4bd3ff0fe645 in memory
flw f30, 0(x2) # load 0xdffb4bd3ff0fe645 from memory into f30
fadd.s f16, f10, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x14, 0xf173dc4f9182cc3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec62b41d877b8b0b # load x3 with value 0xec62b41d877b8b0b
sw x3, 0(x2) # store 0xec62b41d877b8b0b in memory
flw f11, 0(x2) # load 0xec62b41d877b8b0b from memory into f11
li x3, 0x789a52d1ef7eaba4 # load x3 with value 0x789a52d1ef7eaba4
sw x3, 0(x2) # store 0x789a52d1ef7eaba4 in memory
flw f15, 0(x2) # load 0x789a52d1ef7eaba4 from memory into f15
fadd.s f14, f11, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x5, 0xe8783c78f5217485 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f3ad68b3a621da7 # load x3 with value 0x5f3ad68b3a621da7
sw x3, 0(x2) # store 0x5f3ad68b3a621da7 in memory
flw f12, 0(x2) # load 0x5f3ad68b3a621da7 from memory into f12
li x3, 0x382173b62470c8e7 # load x3 with value 0x382173b62470c8e7
sw x3, 0(x2) # store 0x382173b62470c8e7 in memory
flw f26, 0(x2) # load 0x382173b62470c8e7 from memory into f26
fadd.s f5, f12, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x12, 0xdcafea8411ba4df5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68410a809ed21a00 # load x3 with value 0x68410a809ed21a00
sw x3, 0(x2) # store 0x68410a809ed21a00 in memory
flw f13, 0(x2) # load 0x68410a809ed21a00 from memory into f13
li x3, 0xd38a6a467359004e # load x3 with value 0xd38a6a467359004e
sw x3, 0(x2) # store 0xd38a6a467359004e in memory
flw f28, 0(x2) # load 0xd38a6a467359004e from memory into f28
fadd.s f12, f13, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x14, 0x9dc962c7220e806d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79e0d7ccf833f576 # load x3 with value 0x79e0d7ccf833f576
sw x3, 0(x2) # store 0x79e0d7ccf833f576 in memory
flw f14, 0(x2) # load 0x79e0d7ccf833f576 from memory into f14
li x3, 0x68584fcb338748aa # load x3 with value 0x68584fcb338748aa
sw x3, 0(x2) # store 0x68584fcb338748aa in memory
flw f18, 0(x2) # load 0x68584fcb338748aa from memory into f18
fadd.s f14, f14, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x23, 0x6305c165978f1aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2dd2737e499eee3 # load x3 with value 0xf2dd2737e499eee3
sw x3, 0(x2) # store 0xf2dd2737e499eee3 in memory
flw f15, 0(x2) # load 0xf2dd2737e499eee3 from memory into f15
li x3, 0xa3d786d75d0104f4 # load x3 with value 0xa3d786d75d0104f4
sw x3, 0(x2) # store 0xa3d786d75d0104f4 in memory
flw f6, 0(x2) # load 0xa3d786d75d0104f4 from memory into f6
fadd.s f23, f15, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x5, 0xf2bde83551977292 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7bc21915c5cdbaeb # load x3 with value 0x7bc21915c5cdbaeb
sw x3, 0(x2) # store 0x7bc21915c5cdbaeb in memory
flw f16, 0(x2) # load 0x7bc21915c5cdbaeb from memory into f16
li x3, 0x31fb2501e5075d # load x3 with value 0x31fb2501e5075d
sw x3, 0(x2) # store 0x31fb2501e5075d in memory
flw f18, 0(x2) # load 0x31fb2501e5075d from memory into f18
fadd.s f5, f16, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x8, 0xf4e8824e8c473045 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5717a6cf2321876b # load x3 with value 0x5717a6cf2321876b
sw x3, 0(x2) # store 0x5717a6cf2321876b in memory
flw f17, 0(x2) # load 0x5717a6cf2321876b from memory into f17
li x3, 0x6213300c07922dcb # load x3 with value 0x6213300c07922dcb
sw x3, 0(x2) # store 0x6213300c07922dcb in memory
flw f19, 0(x2) # load 0x6213300c07922dcb from memory into f19
fadd.s f8, f17, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x14, 0x2510f669de94ebda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2816fc2133a18c7 # load x3 with value 0xb2816fc2133a18c7
sw x3, 0(x2) # store 0xb2816fc2133a18c7 in memory
flw f18, 0(x2) # load 0xb2816fc2133a18c7 from memory into f18
li x3, 0xf848d4f78799d57 # load x3 with value 0xf848d4f78799d57
sw x3, 0(x2) # store 0xf848d4f78799d57 in memory
flw f26, 0(x2) # load 0xf848d4f78799d57 from memory into f26
fadd.s f14, f18, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x9, 0x05d9543835a8c00f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x929d0b3defb4e276 # load x3 with value 0x929d0b3defb4e276
sw x3, 0(x2) # store 0x929d0b3defb4e276 in memory
flw f19, 0(x2) # load 0x929d0b3defb4e276 from memory into f19
li x3, 0xba02704decf36f6b # load x3 with value 0xba02704decf36f6b
sw x3, 0(x2) # store 0xba02704decf36f6b in memory
flw f13, 0(x2) # load 0xba02704decf36f6b from memory into f13
fadd.s f9, f19, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x26, 0xdb1282514520dc7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8096b64a49d2e442 # load x3 with value 0x8096b64a49d2e442
sw x3, 0(x2) # store 0x8096b64a49d2e442 in memory
flw f20, 0(x2) # load 0x8096b64a49d2e442 from memory into f20
li x3, 0xdcdc1f8ffa15554c # load x3 with value 0xdcdc1f8ffa15554c
sw x3, 0(x2) # store 0xdcdc1f8ffa15554c in memory
flw f6, 0(x2) # load 0xdcdc1f8ffa15554c from memory into f6
fadd.s f26, f20, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x4, 0x8e56a8fef26ee559 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcbfc26eb057f57ad # load x3 with value 0xcbfc26eb057f57ad
sw x3, 0(x2) # store 0xcbfc26eb057f57ad in memory
flw f21, 0(x2) # load 0xcbfc26eb057f57ad from memory into f21
li x3, 0x68fe1c57df7f633d # load x3 with value 0x68fe1c57df7f633d
sw x3, 0(x2) # store 0x68fe1c57df7f633d in memory
flw f26, 0(x2) # load 0x68fe1c57df7f633d from memory into f26
fadd.s f4, f21, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x17, 0x019621b4164dd674 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x411ab6426f4242bf # load x3 with value 0x411ab6426f4242bf
sw x3, 0(x2) # store 0x411ab6426f4242bf in memory
flw f22, 0(x2) # load 0x411ab6426f4242bf from memory into f22
li x3, 0x1d9db11420f1ab7a # load x3 with value 0x1d9db11420f1ab7a
sw x3, 0(x2) # store 0x1d9db11420f1ab7a in memory
flw f13, 0(x2) # load 0x1d9db11420f1ab7a from memory into f13
fadd.s f17, f22, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x26, 0x2a0c15c4beed8723 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce4c0cbe0c296c69 # load x3 with value 0xce4c0cbe0c296c69
sw x3, 0(x2) # store 0xce4c0cbe0c296c69 in memory
flw f23, 0(x2) # load 0xce4c0cbe0c296c69 from memory into f23
li x3, 0x5a13073d9622e2ee # load x3 with value 0x5a13073d9622e2ee
sw x3, 0(x2) # store 0x5a13073d9622e2ee in memory
flw f6, 0(x2) # load 0x5a13073d9622e2ee from memory into f6
fadd.s f26, f23, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x22, 0xad486d6e13db7bf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa49474a4ba01488a # load x3 with value 0xa49474a4ba01488a
sw x3, 0(x2) # store 0xa49474a4ba01488a in memory
flw f24, 0(x2) # load 0xa49474a4ba01488a from memory into f24
li x3, 0xdf0db3bf8809a740 # load x3 with value 0xdf0db3bf8809a740
sw x3, 0(x2) # store 0xdf0db3bf8809a740 in memory
flw f3, 0(x2) # load 0xdf0db3bf8809a740 from memory into f3
fadd.s f22, f24, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x21, 0xaf39238bd1fd8219 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78b6692d97d1d6c0 # load x3 with value 0x78b6692d97d1d6c0
sw x3, 0(x2) # store 0x78b6692d97d1d6c0 in memory
flw f25, 0(x2) # load 0x78b6692d97d1d6c0 from memory into f25
li x3, 0x62277e8a3da5df3 # load x3 with value 0x62277e8a3da5df3
sw x3, 0(x2) # store 0x62277e8a3da5df3 in memory
flw f12, 0(x2) # load 0x62277e8a3da5df3 from memory into f12
fadd.s f21, f25, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x7, 0x4b5f163c46a72e89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42c50d00fe26c0ef # load x3 with value 0x42c50d00fe26c0ef
sw x3, 0(x2) # store 0x42c50d00fe26c0ef in memory
flw f26, 0(x2) # load 0x42c50d00fe26c0ef from memory into f26
li x3, 0x5d92dbe497eb1334 # load x3 with value 0x5d92dbe497eb1334
sw x3, 0(x2) # store 0x5d92dbe497eb1334 in memory
flw f20, 0(x2) # load 0x5d92dbe497eb1334 from memory into f20
fadd.s f7, f26, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x22, 0x7bc8d9d8abfee8a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfde89e93a35f2de4 # load x3 with value 0xfde89e93a35f2de4
sw x3, 0(x2) # store 0xfde89e93a35f2de4 in memory
flw f27, 0(x2) # load 0xfde89e93a35f2de4 from memory into f27
li x3, 0x29c85482b8cdbc88 # load x3 with value 0x29c85482b8cdbc88
sw x3, 0(x2) # store 0x29c85482b8cdbc88 in memory
flw f12, 0(x2) # load 0x29c85482b8cdbc88 from memory into f12
fadd.s f22, f27, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x15, 0x8046e46bc0720a1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x868b1d16fb463728 # load x3 with value 0x868b1d16fb463728
sw x3, 0(x2) # store 0x868b1d16fb463728 in memory
flw f28, 0(x2) # load 0x868b1d16fb463728 from memory into f28
li x3, 0x766fe89ebf0ff537 # load x3 with value 0x766fe89ebf0ff537
sw x3, 0(x2) # store 0x766fe89ebf0ff537 in memory
flw f3, 0(x2) # load 0x766fe89ebf0ff537 from memory into f3
fadd.s f15, f28, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x8, 0x9d1c78acef83a525 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4700eb305119aa4b # load x3 with value 0x4700eb305119aa4b
sw x3, 0(x2) # store 0x4700eb305119aa4b in memory
flw f29, 0(x2) # load 0x4700eb305119aa4b from memory into f29
li x3, 0x9c4e119b87f53b89 # load x3 with value 0x9c4e119b87f53b89
sw x3, 0(x2) # store 0x9c4e119b87f53b89 in memory
flw f1, 0(x2) # load 0x9c4e119b87f53b89 from memory into f1
fadd.s f8, f29, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x16, 0xb0dda029ca2aba73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7556cf4b982fac2 # load x3 with value 0xa7556cf4b982fac2
sw x3, 0(x2) # store 0xa7556cf4b982fac2 in memory
flw f30, 0(x2) # load 0xa7556cf4b982fac2 from memory into f30
li x3, 0xffadfa41bd5794b4 # load x3 with value 0xffadfa41bd5794b4
sw x3, 0(x2) # store 0xffadfa41bd5794b4 in memory
flw f20, 0(x2) # load 0xffadfa41bd5794b4 from memory into f20
fadd.s f16, f30, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x18, 0xe069be5bbde014b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a802e01661a6060 # load x3 with value 0x1a802e01661a6060
sw x3, 0(x2) # store 0x1a802e01661a6060 in memory
flw f31, 0(x2) # load 0x1a802e01661a6060 from memory into f31
li x3, 0xb5dd39753e62520 # load x3 with value 0xb5dd39753e62520
sw x3, 0(x2) # store 0xb5dd39753e62520 in memory
flw f12, 0(x2) # load 0xb5dd39753e62520 from memory into f12
fadd.s f18, f31, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x13, 0x8e8d26b3bcd6884e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2d749407f25e7f0 # load x3 with value 0xf2d749407f25e7f0
sw x3, 0(x2) # store 0xf2d749407f25e7f0 in memory
flw f19, 0(x2) # load 0xf2d749407f25e7f0 from memory into f19
li x3, 0xd56f94985e27f904 # load x3 with value 0xd56f94985e27f904
sw x3, 0(x2) # store 0xd56f94985e27f904 in memory
flw f0, 0(x2) # load 0xd56f94985e27f904 from memory into f0
fadd.s f13, f19, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x6, 0x07d0bdb80e60d8ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc73e372d99c581f4 # load x3 with value 0xc73e372d99c581f4
sw x3, 0(x2) # store 0xc73e372d99c581f4 in memory
flw f14, 0(x2) # load 0xc73e372d99c581f4 from memory into f14
li x3, 0xbbdf4b92101ec8f1 # load x3 with value 0xbbdf4b92101ec8f1
sw x3, 0(x2) # store 0xbbdf4b92101ec8f1 in memory
flw f1, 0(x2) # load 0xbbdf4b92101ec8f1 from memory into f1
fadd.s f6, f14, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x5, 0xcb95c5c4626f541a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdcb26839bd5ed2a5 # load x3 with value 0xdcb26839bd5ed2a5
sw x3, 0(x2) # store 0xdcb26839bd5ed2a5 in memory
flw f12, 0(x2) # load 0xdcb26839bd5ed2a5 from memory into f12
li x3, 0x309a85f0790a4d49 # load x3 with value 0x309a85f0790a4d49
sw x3, 0(x2) # store 0x309a85f0790a4d49 in memory
flw f2, 0(x2) # load 0x309a85f0790a4d49 from memory into f2
fadd.s f5, f12, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x8, 0x89f26796c5d998a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4424d884890d43c # load x3 with value 0xe4424d884890d43c
sw x3, 0(x2) # store 0xe4424d884890d43c in memory
flw f9, 0(x2) # load 0xe4424d884890d43c from memory into f9
li x3, 0x2526e6869fe5a1ba # load x3 with value 0x2526e6869fe5a1ba
sw x3, 0(x2) # store 0x2526e6869fe5a1ba in memory
flw f3, 0(x2) # load 0x2526e6869fe5a1ba from memory into f3
fadd.s f8, f9, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x29, 0x423b436efa167954 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d69cf97879273c8 # load x3 with value 0x9d69cf97879273c8
sw x3, 0(x2) # store 0x9d69cf97879273c8 in memory
flw f24, 0(x2) # load 0x9d69cf97879273c8 from memory into f24
li x3, 0x6dabf74ca53cc4bd # load x3 with value 0x6dabf74ca53cc4bd
sw x3, 0(x2) # store 0x6dabf74ca53cc4bd in memory
flw f4, 0(x2) # load 0x6dabf74ca53cc4bd from memory into f4
fadd.s f29, f24, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x13, 0x27030bf5a13d599a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfcfe50520723f849 # load x3 with value 0xfcfe50520723f849
sw x3, 0(x2) # store 0xfcfe50520723f849 in memory
flw f21, 0(x2) # load 0xfcfe50520723f849 from memory into f21
li x3, 0x6a24973d16c77b0d # load x3 with value 0x6a24973d16c77b0d
sw x3, 0(x2) # store 0x6a24973d16c77b0d in memory
flw f5, 0(x2) # load 0x6a24973d16c77b0d from memory into f5
fadd.s f13, f21, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x19, 0x91a927054d65afb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2134a24407111204 # load x3 with value 0x2134a24407111204
sw x3, 0(x2) # store 0x2134a24407111204 in memory
flw f3, 0(x2) # load 0x2134a24407111204 from memory into f3
li x3, 0x3aa6d6076fbe09ac # load x3 with value 0x3aa6d6076fbe09ac
sw x3, 0(x2) # store 0x3aa6d6076fbe09ac in memory
flw f6, 0(x2) # load 0x3aa6d6076fbe09ac from memory into f6
fadd.s f19, f3, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x12, 0x5118114aa7b5d6e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51d4fd4b820318db # load x3 with value 0x51d4fd4b820318db
sw x3, 0(x2) # store 0x51d4fd4b820318db in memory
flw f13, 0(x2) # load 0x51d4fd4b820318db from memory into f13
li x3, 0xc8f26d4f728c155 # load x3 with value 0xc8f26d4f728c155
sw x3, 0(x2) # store 0xc8f26d4f728c155 in memory
flw f7, 0(x2) # load 0xc8f26d4f728c155 from memory into f7
fadd.s f12, f13, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x10, 0x9d6d2227d852b88a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaab633113ed6893a # load x3 with value 0xaab633113ed6893a
sw x3, 0(x2) # store 0xaab633113ed6893a in memory
flw f27, 0(x2) # load 0xaab633113ed6893a from memory into f27
li x3, 0x4d8cbbbbdd05a5ef # load x3 with value 0x4d8cbbbbdd05a5ef
sw x3, 0(x2) # store 0x4d8cbbbbdd05a5ef in memory
flw f8, 0(x2) # load 0x4d8cbbbbdd05a5ef from memory into f8
fadd.s f10, f27, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x1, 0x249e791e71851f3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7be53899b6e75030 # load x3 with value 0x7be53899b6e75030
sw x3, 0(x2) # store 0x7be53899b6e75030 in memory
flw f14, 0(x2) # load 0x7be53899b6e75030 from memory into f14
li x3, 0x9f1981fb22f0a811 # load x3 with value 0x9f1981fb22f0a811
sw x3, 0(x2) # store 0x9f1981fb22f0a811 in memory
flw f9, 0(x2) # load 0x9f1981fb22f0a811 from memory into f9
fadd.s f1, f14, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x5, 0x6bac444b148e6a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83346e1ce679136a # load x3 with value 0x83346e1ce679136a
sw x3, 0(x2) # store 0x83346e1ce679136a in memory
flw f27, 0(x2) # load 0x83346e1ce679136a from memory into f27
li x3, 0xae7c6b20cd42ce18 # load x3 with value 0xae7c6b20cd42ce18
sw x3, 0(x2) # store 0xae7c6b20cd42ce18 in memory
flw f10, 0(x2) # load 0xae7c6b20cd42ce18 from memory into f10
fadd.s f5, f27, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x31, 0x4ecedc3bd761d6bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a3f24a0dc08e502 # load x3 with value 0x3a3f24a0dc08e502
sw x3, 0(x2) # store 0x3a3f24a0dc08e502 in memory
flw f6, 0(x2) # load 0x3a3f24a0dc08e502 from memory into f6
li x3, 0x8cd78a2f905602b9 # load x3 with value 0x8cd78a2f905602b9
sw x3, 0(x2) # store 0x8cd78a2f905602b9 in memory
flw f11, 0(x2) # load 0x8cd78a2f905602b9 from memory into f11
fadd.s f31, f6, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x29, 0x124f3918887b5271 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2243247cef2ca185 # load x3 with value 0x2243247cef2ca185
sw x3, 0(x2) # store 0x2243247cef2ca185 in memory
flw f20, 0(x2) # load 0x2243247cef2ca185 from memory into f20
li x3, 0xaba99ea5d0455d49 # load x3 with value 0xaba99ea5d0455d49
sw x3, 0(x2) # store 0xaba99ea5d0455d49 in memory
flw f12, 0(x2) # load 0xaba99ea5d0455d49 from memory into f12
fadd.s f29, f20, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x2, 0x24a7320ce2edfb00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f88f135c4f8d69a # load x3 with value 0x1f88f135c4f8d69a
sw x3, 0(x2) # store 0x1f88f135c4f8d69a in memory
flw f15, 0(x2) # load 0x1f88f135c4f8d69a from memory into f15
li x3, 0x7f4593c3911a6a7f # load x3 with value 0x7f4593c3911a6a7f
sw x3, 0(x2) # store 0x7f4593c3911a6a7f in memory
flw f13, 0(x2) # load 0x7f4593c3911a6a7f from memory into f13
fadd.s f2, f15, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x17, 0xa96a9513fc352581 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x399afc97b877bc2e # load x3 with value 0x399afc97b877bc2e
sw x3, 0(x2) # store 0x399afc97b877bc2e in memory
flw f21, 0(x2) # load 0x399afc97b877bc2e from memory into f21
li x3, 0xdd106e765945c64d # load x3 with value 0xdd106e765945c64d
sw x3, 0(x2) # store 0xdd106e765945c64d in memory
flw f14, 0(x2) # load 0xdd106e765945c64d from memory into f14
fadd.s f17, f21, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x19, 0x5a223355ec1ef3d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xefa8f33f9cc3ddb3 # load x3 with value 0xefa8f33f9cc3ddb3
sw x3, 0(x2) # store 0xefa8f33f9cc3ddb3 in memory
flw f23, 0(x2) # load 0xefa8f33f9cc3ddb3 from memory into f23
li x3, 0xf2d7cdc8a02c7256 # load x3 with value 0xf2d7cdc8a02c7256
sw x3, 0(x2) # store 0xf2d7cdc8a02c7256 in memory
flw f15, 0(x2) # load 0xf2d7cdc8a02c7256 from memory into f15
fadd.s f19, f23, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x14, 0x09507f9596fe2dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3611177f33c237c8 # load x3 with value 0x3611177f33c237c8
sw x3, 0(x2) # store 0x3611177f33c237c8 in memory
flw f28, 0(x2) # load 0x3611177f33c237c8 from memory into f28
li x3, 0x33b6075082aaf5a8 # load x3 with value 0x33b6075082aaf5a8
sw x3, 0(x2) # store 0x33b6075082aaf5a8 in memory
flw f16, 0(x2) # load 0x33b6075082aaf5a8 from memory into f16
fadd.s f14, f28, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x20, 0xeec6eeda4ce5f7d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed2658fc4eebedb0 # load x3 with value 0xed2658fc4eebedb0
sw x3, 0(x2) # store 0xed2658fc4eebedb0 in memory
flw f26, 0(x2) # load 0xed2658fc4eebedb0 from memory into f26
li x3, 0x101534a221b3c759 # load x3 with value 0x101534a221b3c759
sw x3, 0(x2) # store 0x101534a221b3c759 in memory
flw f17, 0(x2) # load 0x101534a221b3c759 from memory into f17
fadd.s f20, f26, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x29, 0x8ba9187c92c1693d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a2903afa483183f # load x3 with value 0x4a2903afa483183f
sw x3, 0(x2) # store 0x4a2903afa483183f in memory
flw f1, 0(x2) # load 0x4a2903afa483183f from memory into f1
li x3, 0xab73391080e901ed # load x3 with value 0xab73391080e901ed
sw x3, 0(x2) # store 0xab73391080e901ed in memory
flw f18, 0(x2) # load 0xab73391080e901ed from memory into f18
fadd.s f29, f1, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x21, 0x94e7508263fac7af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813a8ee30b3d29be # load x3 with value 0x813a8ee30b3d29be
sw x3, 0(x2) # store 0x813a8ee30b3d29be in memory
flw f5, 0(x2) # load 0x813a8ee30b3d29be from memory into f5
li x3, 0x378aab1d796b76eb # load x3 with value 0x378aab1d796b76eb
sw x3, 0(x2) # store 0x378aab1d796b76eb in memory
flw f19, 0(x2) # load 0x378aab1d796b76eb from memory into f19
fadd.s f21, f5, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x9, 0xc10b91825d264510 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6f019908a7f2b81 # load x3 with value 0xd6f019908a7f2b81
sw x3, 0(x2) # store 0xd6f019908a7f2b81 in memory
flw f16, 0(x2) # load 0xd6f019908a7f2b81 from memory into f16
li x3, 0x1e7b1a0fa527b714 # load x3 with value 0x1e7b1a0fa527b714
sw x3, 0(x2) # store 0x1e7b1a0fa527b714 in memory
flw f20, 0(x2) # load 0x1e7b1a0fa527b714 from memory into f20
fadd.s f9, f16, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x9, 0xf517134929b4d778 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd302b26169538e22 # load x3 with value 0xd302b26169538e22
sw x3, 0(x2) # store 0xd302b26169538e22 in memory
flw f28, 0(x2) # load 0xd302b26169538e22 from memory into f28
li x3, 0x5db48ac47f2959d0 # load x3 with value 0x5db48ac47f2959d0
sw x3, 0(x2) # store 0x5db48ac47f2959d0 in memory
flw f21, 0(x2) # load 0x5db48ac47f2959d0 from memory into f21
fadd.s f9, f28, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x22, 0x7dad4df82a73a3aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd40f8325c489002 # load x3 with value 0xdd40f8325c489002
sw x3, 0(x2) # store 0xdd40f8325c489002 in memory
flw f14, 0(x2) # load 0xdd40f8325c489002 from memory into f14
li x3, 0x84fbe05b4f6824e0 # load x3 with value 0x84fbe05b4f6824e0
sw x3, 0(x2) # store 0x84fbe05b4f6824e0 in memory
flw f22, 0(x2) # load 0x84fbe05b4f6824e0 from memory into f22
fadd.s f22, f14, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x14, 0xad4b7f367dd9ff55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x805a174ec510d24b # load x3 with value 0x805a174ec510d24b
sw x3, 0(x2) # store 0x805a174ec510d24b in memory
flw f30, 0(x2) # load 0x805a174ec510d24b from memory into f30
li x3, 0x8d25135b73640ccb # load x3 with value 0x8d25135b73640ccb
sw x3, 0(x2) # store 0x8d25135b73640ccb in memory
flw f23, 0(x2) # load 0x8d25135b73640ccb from memory into f23
fadd.s f14, f30, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x19, 0x53186655b759d376 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c1524c4bc63081e # load x3 with value 0x1c1524c4bc63081e
sw x3, 0(x2) # store 0x1c1524c4bc63081e in memory
flw f27, 0(x2) # load 0x1c1524c4bc63081e from memory into f27
li x3, 0x50858eec8965727d # load x3 with value 0x50858eec8965727d
sw x3, 0(x2) # store 0x50858eec8965727d in memory
flw f24, 0(x2) # load 0x50858eec8965727d from memory into f24
fadd.s f19, f27, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x13, 0x054afafbfb5bdea6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x761b4a951be6967c # load x3 with value 0x761b4a951be6967c
sw x3, 0(x2) # store 0x761b4a951be6967c in memory
flw f12, 0(x2) # load 0x761b4a951be6967c from memory into f12
li x3, 0xf7e12b00d2b7b913 # load x3 with value 0xf7e12b00d2b7b913
sw x3, 0(x2) # store 0xf7e12b00d2b7b913 in memory
flw f25, 0(x2) # load 0xf7e12b00d2b7b913 from memory into f25
fadd.s f13, f12, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x27, 0x33c8156ad74bf2a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x32464406e3d826aa # load x3 with value 0x32464406e3d826aa
sw x3, 0(x2) # store 0x32464406e3d826aa in memory
flw f7, 0(x2) # load 0x32464406e3d826aa from memory into f7
li x3, 0x2b67f33df39948a7 # load x3 with value 0x2b67f33df39948a7
sw x3, 0(x2) # store 0x2b67f33df39948a7 in memory
flw f26, 0(x2) # load 0x2b67f33df39948a7 from memory into f26
fadd.s f27, f7, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x20, 0xfa323be1b53b52fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0bb1a5c746d0395 # load x3 with value 0xb0bb1a5c746d0395
sw x3, 0(x2) # store 0xb0bb1a5c746d0395 in memory
flw f1, 0(x2) # load 0xb0bb1a5c746d0395 from memory into f1
li x3, 0xbebf46c5b6de5c6c # load x3 with value 0xbebf46c5b6de5c6c
sw x3, 0(x2) # store 0xbebf46c5b6de5c6c in memory
flw f27, 0(x2) # load 0xbebf46c5b6de5c6c from memory into f27
fadd.s f20, f1, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x26, 0x4ce5a91ad49a846f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f525067f4a01b70 # load x3 with value 0x4f525067f4a01b70
sw x3, 0(x2) # store 0x4f525067f4a01b70 in memory
flw f10, 0(x2) # load 0x4f525067f4a01b70 from memory into f10
li x3, 0xfd4baa9d5744c045 # load x3 with value 0xfd4baa9d5744c045
sw x3, 0(x2) # store 0xfd4baa9d5744c045 in memory
flw f28, 0(x2) # load 0xfd4baa9d5744c045 from memory into f28
fadd.s f26, f10, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x22, 0xa2a4e2f7896ab5b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96bb6d380f9e017e # load x3 with value 0x96bb6d380f9e017e
sw x3, 0(x2) # store 0x96bb6d380f9e017e in memory
flw f8, 0(x2) # load 0x96bb6d380f9e017e from memory into f8
li x3, 0x1b2d75c47ad797f7 # load x3 with value 0x1b2d75c47ad797f7
sw x3, 0(x2) # store 0x1b2d75c47ad797f7 in memory
flw f29, 0(x2) # load 0x1b2d75c47ad797f7 from memory into f29
fadd.s f22, f8, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x13, 0x168a72e65fbba248 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d5b44e8aa0ce0c0 # load x3 with value 0x2d5b44e8aa0ce0c0
sw x3, 0(x2) # store 0x2d5b44e8aa0ce0c0 in memory
flw f18, 0(x2) # load 0x2d5b44e8aa0ce0c0 from memory into f18
li x3, 0xc2619917f415f289 # load x3 with value 0xc2619917f415f289
sw x3, 0(x2) # store 0xc2619917f415f289 in memory
flw f30, 0(x2) # load 0xc2619917f415f289 from memory into f30
fadd.s f13, f18, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x2, 0xa77d27101086e539 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23a3f0058fc0550 # load x3 with value 0x23a3f0058fc0550
sw x3, 0(x2) # store 0x23a3f0058fc0550 in memory
flw f3, 0(x2) # load 0x23a3f0058fc0550 from memory into f3
li x3, 0xac42ca6036972f1c # load x3 with value 0xac42ca6036972f1c
sw x3, 0(x2) # store 0xac42ca6036972f1c in memory
flw f31, 0(x2) # load 0xac42ca6036972f1c from memory into f31
fadd.s f2, f3, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
